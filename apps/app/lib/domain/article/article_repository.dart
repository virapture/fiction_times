import 'dart:async';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:fiction_times_app/domain/common/constant.dart';
import 'package:fiction_times_app/domain/common/firestore_timestamp.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../providers.dart';
import 'article.dart';

abstract class ArticleRepository {
  Future<Article> createArticle({
    required String reporter,
    required String source,
  });
  Future<List<Article>> fetchArticles();
  Future<Article?> fetchArticle(String articleId);
}

class ArticleRepositoryImpl implements ArticleRepository {
  ArticleRepositoryImpl(this.ref) : _firestore = ref.read(firestoreProvider);
  final FirebaseFirestore _firestore;
  final Ref ref;

  CollectionReference<Article?> getCollectionReference() =>
      _firestore.collection('articles').withConverter(
        fromFirestore: (snapshot, options) {
          if (!snapshot.exists) {
            return null;
          }
          return Article.fromSnapshot(snapshot)?.copyWith(
            reference: snapshot.reference,
          );
        },
        toFirestore: (value, _) {
          final data = value?.toJson();
          data?.remove('reference');
          return data ?? {};
        },
      );

  DocumentReference<Article?> _getDocumentReference(String id) =>
      getCollectionReference().doc(id);

  @override
  Future<Article> createArticle({
    required String reporter,
    required String source,
  }) async {
    final article = Article(
      reporter: reporter,
      source: source,
      body: '',
      title: '',
      createdAt: const FirestoreTimestamp.serverTimestamp(),
      updatedAt: const FirestoreTimestamp.serverTimestamp(),
    );
    final reference = getCollectionReference().doc();
    await reference.set(article);
    final completer = Completer<Article>();
    StreamSubscription<DocumentSnapshot>? subscription;
    subscription = reference.snapshots().listen(
      (snapshot) {
        final updatedArticle = snapshot.data();
        if (updatedArticle == null || snapshot.metadata.hasPendingWrites) {
          return;
        }
        if ((updatedArticle.error.isNotEmpty) ||
            (updatedArticle.body.isNotEmpty &&
                updatedArticle.title.isNotEmpty)) {
          // When the document is updated and the write is confirmed, complete the future
          completer.complete(updatedArticle);
          subscription?.cancel();
        }
      },
      onError: completer.completeError,
    );
    // Return the future that completes when the article is updated
    return completer.future;
  }

  @override
  Future<Article?> fetchArticle(String articleId) async {
    final snapshot = await _getDocumentReference(articleId).get();
    final article = snapshot.data();
    if (article == null) {
      return null;
    }
    return article;
  }

  @override
  Future<List<Article>> fetchArticles() async {
    final snapshot = await getCollectionReference()
        .orderBy('createdAt', descending: true)
        .limit(defaultLimit)
        .get();
    final articles = snapshot.docs
        .map((e) => e.data())
        .nonNulls
        .where((element) => element.body.isNotEmpty)
        .toList();
    return articles;
  }
}
