import 'dart:async';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class EtablissementRecord extends FirestoreRecord {
  EtablissementRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "idE" field.
  int? _idE;
  int get idE => _idE ?? 0;
  bool hasIdE() => _idE != null;

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  bool hasName() => _name != null;

  // "email" field.
  String? _email;
  String get email => _email ?? '';
  bool hasEmail() => _email != null;

  // "numPost" field.
  int? _numPost;
  int get numPost => _numPost ?? 0;
  bool hasNumPost() => _numPost != null;

  // "tel" field.
  String? _tel;
  String get tel => _tel ?? '';
  bool hasTel() => _tel != null;

  // "region" field.
  LatLng? _region;
  LatLng? get region => _region;
  bool hasRegion() => _region != null;

  // "responsable" field.
  String? _responsable;
  String get responsable => _responsable ?? '';
  bool hasResponsable() => _responsable != null;

  void _initializeFields() {
    _idE = snapshotData['idE'] as int?;
    _name = snapshotData['name'] as String?;
    _email = snapshotData['email'] as String?;
    _numPost = snapshotData['numPost'] as int?;
    _tel = snapshotData['tel'] as String?;
    _region = snapshotData['region'] as LatLng?;
    _responsable = snapshotData['responsable'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('etablissement');

  static Stream<EtablissementRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => EtablissementRecord.fromSnapshot(s));

  static Future<EtablissementRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => EtablissementRecord.fromSnapshot(s));

  static EtablissementRecord fromSnapshot(DocumentSnapshot snapshot) =>
      EtablissementRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static EtablissementRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      EtablissementRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'EtablissementRecord(reference: ${reference.path}, data: $snapshotData)';
}

Map<String, dynamic> createEtablissementRecordData({
  int? idE,
  String? name,
  String? email,
  int? numPost,
  String? tel,
  LatLng? region,
  String? responsable,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'idE': idE,
      'name': name,
      'email': email,
      'numPost': numPost,
      'tel': tel,
      'region': region,
      'responsable': responsable,
    }.withoutNulls,
  );

  return firestoreData;
}
