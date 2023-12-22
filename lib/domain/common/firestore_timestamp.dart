import 'package:freezed_annotation/freezed_annotation.dart';

part 'firestore_timestamp.freezed.dart';
part 'firestore_timestamp.g.dart';

@freezed
class FirestoreTimestamp with _$FirestoreTimestamp {
  const factory FirestoreTimestamp.date(DateTime date) = Date;

  const factory FirestoreTimestamp.serverTimestamp() = ServerTimestamp;

  factory FirestoreTimestamp.fromJson(Map<String, dynamic> json) =>
      _$FirestoreTimestampFromJson(json);

  static DateTime toDate(FirestoreTimestamp firestoreTimestamp) =>
      firestoreTimestamp.when(
        date: (date) => date,
        serverTimestamp: DateTime.now,
      );
}

extension FirestoreTimestampExtension on FirestoreTimestamp {
  DateTime toDate() => FirestoreTimestamp.toDate(this);

  int compareTo(FirestoreTimestamp other) {
    return toDate().compareTo(other.toDate());
  }
}
