import 'package:cloud_firestore/cloud_firestore.dart';

mixin FirestoreCodable {
  DocumentReference? get reference;
  String get id => reference?.id ?? '';
}
