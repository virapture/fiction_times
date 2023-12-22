import 'package:cloud_firestore/cloud_firestore.dart';

abstract class AFirestoreCodable {
  DocumentReference? get reference;
}
