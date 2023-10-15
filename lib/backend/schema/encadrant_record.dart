import 'dart:async';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class EncadrantRecord extends FirestoreRecord {
  EncadrantRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "nom" field.
  String? _nom;
  String get nom => _nom ?? '';
  bool hasNom() => _nom != null;

  // "prenom" field.
  String? _prenom;
  String get prenom => _prenom ?? '';
  bool hasPrenom() => _prenom != null;

  DocumentReference get parentReference => reference.parent.parent!;

  void _initializeFields() {
    _nom = snapshotData['nom'] as String?;
    _prenom = snapshotData['prenom'] as String?;
  }

  static Query<Map<String, dynamic>> collection([DocumentReference? parent]) =>
      parent != null
          ? parent.collection('encadrant')
          : FirebaseFirestore.instance.collectionGroup('encadrant');

  static DocumentReference createDoc(DocumentReference parent) =>
      parent.collection('encadrant').doc();

  static Stream<EncadrantRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => EncadrantRecord.fromSnapshot(s));

  static Future<EncadrantRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => EncadrantRecord.fromSnapshot(s));

  static EncadrantRecord fromSnapshot(DocumentSnapshot snapshot) =>
      EncadrantRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static EncadrantRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      EncadrantRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'EncadrantRecord(reference: ${reference.path}, data: $snapshotData)';
}

Map<String, dynamic> createEncadrantRecordData({
  String? nom,
  String? prenom,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'nom': nom,
      'prenom': prenom,
    }.withoutNulls,
  );

  return firestoreData;
}
