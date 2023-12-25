import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

class DocumentReferenceConverter
    implements JsonConverter<DocumentReference, DocumentReference> {
  const DocumentReferenceConverter();

  @override
  DocumentReference fromJson(DocumentReference docRef) => docRef;

  @override
  DocumentReference toJson(DocumentReference docRef) => docRef;
}

class DocumentReferenceNullableConverter
    implements JsonConverter<DocumentReference?, DocumentReference?> {
  const DocumentReferenceNullableConverter();

  @override
  DocumentReference? fromJson(DocumentReference? docRef) => docRef;

  @override
  DocumentReference? toJson(DocumentReference? docRef) => docRef;
}

class DocumentReferenceStringConverter
    implements JsonConverter<DocumentReference?, String?> {
  const DocumentReferenceStringConverter();

  @override
  DocumentReference? fromJson(String? docRefPath) =>
      docRefPath == null ? null : FirebaseFirestore.instance.doc(docRefPath);

  @override
  String? toJson(DocumentReference? docRef) => docRef?.path;
}

class ArrayDocumentReferenceConverter
    implements JsonConverter<List<DocumentReference>, List<dynamic>> {
  const ArrayDocumentReferenceConverter();

  @override
  List<DocumentReference> fromJson(List<dynamic> docRefs) =>
      docRefs.map((e) => e as DocumentReference).toList();

  @override
  List<DocumentReference> toJson(List<DocumentReference> docRefs) => docRefs;
}
