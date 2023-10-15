import 'dart:async';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class DocumentRecord extends FirestoreRecord {
  DocumentRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "type" field.
  String? _type;
  String get type => _type ?? '';
  bool hasType() => _type != null;

  // "format" field.
  String? _format;
  String get format => _format ?? '';
  bool hasFormat() => _format != null;

  // "received" field.
  bool? _received;
  bool get received => _received ?? false;
  bool hasReceived() => _received != null;

  // "deadline" field.
  DateTime? _deadline;
  DateTime? get deadline => _deadline;
  bool hasDeadline() => _deadline != null;

  // "file" field.
  String? _file;
  String get file => _file ?? '';
  bool hasFile() => _file != null;

  DocumentReference get parentReference => reference.parent.parent!;

  void _initializeFields() {
    _type = snapshotData['type'] as String?;
    _format = snapshotData['format'] as String?;
    _received = snapshotData['received'] as bool?;
    _deadline = snapshotData['deadline'] as DateTime?;
    _file = snapshotData['file'] as String?;
  }

  static Query<Map<String, dynamic>> collection([DocumentReference? parent]) =>
      parent != null
          ? parent.collection('document')
          : FirebaseFirestore.instance.collectionGroup('document');

  static DocumentReference createDoc(DocumentReference parent) =>
      parent.collection('document').doc();

  static Stream<DocumentRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => DocumentRecord.fromSnapshot(s));

  static Future<DocumentRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => DocumentRecord.fromSnapshot(s));

  static DocumentRecord fromSnapshot(DocumentSnapshot snapshot) =>
      DocumentRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static DocumentRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      DocumentRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'DocumentRecord(reference: ${reference.path}, data: $snapshotData)';
}

Map<String, dynamic> createDocumentRecordData({
  String? type,
  String? format,
  bool? received,
  DateTime? deadline,
  String? file,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'type': type,
      'format': format,
      'received': received,
      'deadline': deadline,
      'file': file,
    }.withoutNulls,
  );

  return firestoreData;
}
