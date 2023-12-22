import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'firestore_timestamp.dart';

class ServerTimestampConverter
    implements JsonConverter<FirestoreTimestamp, Object?> {
  const ServerTimestampConverter();

  @override
  FirestoreTimestamp fromJson(Object? timestamp) {
    if (timestamp == null) {
      return FirestoreTimestamp.date(DateTime.now());
    }
    return FirestoreTimestamp.date((timestamp as Timestamp).toDate());
  }

  @override
  Object? toJson(FirestoreTimestamp firestoreTimestamp) =>
      firestoreTimestamp.when(
        date: (DateTime date) => date,
        serverTimestamp: FieldValue.serverTimestamp,
      );
}

class ServerTimestampNullableConverter
    implements JsonConverter<FirestoreTimestamp?, Object?> {
  const ServerTimestampNullableConverter();

  @override
  FirestoreTimestamp? fromJson(Object? timestamp) {
    if (timestamp == null) {
      return null;
    }
    return FirestoreTimestamp.date((timestamp as Timestamp).toDate());
  }

  @override
  Object? toJson(FirestoreTimestamp? firestoreTimestamp) =>
      firestoreTimestamp?.when(
        date: (DateTime date) => date,
        serverTimestamp: FieldValue.serverTimestamp,
      );
}
