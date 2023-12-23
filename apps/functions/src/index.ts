/* eslint-disable max-len */
/* eslint-disable require-jsdoc */

/**
 * Import function triggers from their respective submodules:
 *
 * import {onCall} from 'firebase-functions/v2/https'
 * import {onDocumentWritten} from 'firebase-functions/v2/firestore'
 *
 * See a full list of supported triggers at https://firebase.google.com/docs/functions
 */

import {logger} from 'firebase-functions/v2'
import {
  DocumentOptions,
  QueryDocumentSnapshot,
  onDocumentCreated,
} from 'firebase-functions/v2/firestore'
import {GoogleGenerativeAI} from '@google/generative-ai'

const GEMINI_API_KEY = ''
const PROMPT = 'あなたは情報提供者から寄せられた情報をもとにユーモラスな記事を書き上げる編集長です。ユーザからの情報は文字数が少ないこともありますが、その情報を元に勝手に想像を膨らませて800文字前後の空想の記事を書いてください。レスポンスはJSON形式で、titleとbodyの要素を元に返却してください。下記が提供情報です。'

export const onCreateArticle =
  onDocumentCreated(getDefaultDocumentOptions({path: 'articles/{articleId}'}),
    async (event) => {
      try {
        const queryDocumentSnapshot = event.data
        if (!queryDocumentSnapshot) {
          // noinspection ExceptionCaughtLocallyJS
          throw new Error('documentReference is undefined at path')
        }
        await updateArticleByGeminiPro(queryDocumentSnapshot)
      } catch (error) {
        logger.error(error)
      }
    })

// CFのデフォルトオプション
function getDefaultDocumentOptions(
  {
    path,
    options,
  }: {
    path: string
    options?: Partial<DocumentOptions>
  }): DocumentOptions {
  return {
    document: path,
    region: 'asia-northeast1',
    timeoutSeconds: 90,
    memory: '256MiB',
    ...options,
  }
}

// gemini proにリクエストを投げて、articleを更新する
async function updateArticleByGeminiPro(queryDocumentSnapshot: QueryDocumentSnapshot) {
  const data = queryDocumentSnapshot.data()
  const source = data.source as string
  // gemini proにユーモラスな記事を書いてもらう
  const ai = new GoogleGenerativeAI(GEMINI_API_KEY)
  const model = ai.getGenerativeModel({model: 'gemini-pro'})
  const prompt = `${PROMPT}
\`\`\`
${source}
\`\`\`
`
  const response = await model.generateContentStream(prompt)
  let responseText = ''
  for await (const chunk of response.stream) {
    responseText += chunk.text()
  }
  // JSON 文字列のみを抽出
  const jsonMatch = responseText.match(/{.*}/s)
  if (!jsonMatch) {
    throw new Error('Invalid JSON response')
  }
  const json = JSON.parse(jsonMatch[0])
  // レスポンスを元に記事を更新する
  queryDocumentSnapshot.ref.update({
    title: json.title,
    body: json.body,
  })
}
