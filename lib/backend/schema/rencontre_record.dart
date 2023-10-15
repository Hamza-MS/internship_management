import 'dart:async';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class RencontreRecord extends FirestoreRecord {
  RencontreRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "lien" field.
  String? _lien;
  String get lien => _lien ?? '';
  bool hasLien() => _lien != null;

  // "titre" field.
  String? _titre;
  String get titre => _titre ?? '';
  bool hasTitre() => _titre != null;

  // "Particiapnt" field.
  List<DocumentReference>? _particiapnt;
  List<DocumentReference> get particiapnt => _particiapnt ?? const [];
  bool hasParticiapnt() => _particiapnt != null;

  void _initializeFields() {
    _lien = snapshotData['lien'] as String?;
    _titre = snapshotData['titre'] as String?;
    _particiapnt = getDataList(snapshotData['Particiapnt']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('rencontre');

  static Stream<RencontreRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => RencontreRecord.fromSnapshot(s));

  static Future<RencontreRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => RencontreRecord.fromSnapshot(s));

  static RencontreRecord fromSnapshot(DocumentSnapshot snapshot) =>
      RencontreRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static RencontreRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      RencontreRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'RencontreRecord(reference: ${reference.path}, data: $snapshotData)';
}

Map<String, dynamic> createRencontreRecordData({
  String? lien,
  String? titre,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'lien': lien,
      'titre': titre,
    }.withoutNulls,
  );

  return firestoreData;
}
