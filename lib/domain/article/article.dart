import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../common/document_reference_converter.dart';
import '../common/firestore_codable.dart';
import '../common/firestore_timestamp.dart';
import '../common/server_timestamp_converter.dart';

part 'article.freezed.dart';
part 'article.g.dart';

@freezed
abstract class Article with _$Article, FirestoreCodable {
  const factory Article({
    @ServerTimestampConverter() required FirestoreTimestamp createdAt,
    @ServerTimestampConverter() required FirestoreTimestamp updatedAt,
    @DocumentReferenceConverter() DocumentReference? reference,
    @Default('') String title,
    @Default('') String body,
    @Default('') String reporter,
    @Default('') String source,
  }) = _Article;

  const Article._();

  factory Article.fromJson(Map<String, dynamic> json) =>
      _$ArticleFromJson(json);

  static Article? fromSnapshot(
    DocumentSnapshot<Map<String, dynamic>> snapshot,
  ) {
    final data = snapshot.data();
    if (data == null) {
      return null;
    }
    final article = Article.fromJson(data).copyWith(
      reference: snapshot.reference,
    );
    return article;
  }
}
