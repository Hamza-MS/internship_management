import 'dart:async';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class StageRecord extends FirestoreRecord {
  StageRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "idS" field.
  int? _idS;
  int get idS => _idS ?? 0;
  bool hasIdS() => _idS != null;

  // "nomEntreprise" field.
  String? _nomEntreprise;
  String get nomEntreprise => _nomEntreprise ?? '';
  bool hasNomEntreprise() => _nomEntreprise != null;

  // "dateDebut" field.
  DateTime? _dateDebut;
  DateTime? get dateDebut => _dateDebut;
  bool hasDateDebut() => _dateDebut != null;

  // "dateFin" field.
  DateTime? _dateFin;
  DateTime? get dateFin => _dateFin;
  bool hasDateFin() => _dateFin != null;

  void _initializeFields() {
    _idS = snapshotData['idS'] as int?;
    _nomEntreprise = snapshotData['nomEntreprise'] as String?;
    _dateDebut = snapshotData['dateDebut'] as DateTime?;
    _dateFin = snapshotData['dateFin'] as DateTime?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('stage');

  static Stream<StageRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => StageRecord.fromSnapshot(s));

  static Future<StageRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => StageRecord.fromSnapshot(s));

  static StageRecord fromSnapshot(DocumentSnapshot snapshot) => StageRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static StageRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      StageRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'StageRecord(reference: ${reference.path}, data: $snapshotData)';
}

Map<String, dynamic> createStageRecordData({
  int? idS,
  String? nomEntreprise,
  DateTime? dateDebut,
  DateTime? dateFin,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'idS': idS,
      'nomEntreprise': nomEntreprise,
      'dateDebut': dateDebut,
      'dateFin': dateFin,
    }.withoutNulls,
  );

  return firestoreData;
}
