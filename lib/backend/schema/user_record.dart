import 'dart:async';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class UserRecord extends FirestoreRecord {
  UserRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "email" field.
  String? _email;
  String get email => _email ?? '';
  bool hasEmail() => _email != null;

  // "photo_url" field.
  String? _photoUrl;
  String get photoUrl => _photoUrl ?? '';
  bool hasPhotoUrl() => _photoUrl != null;

  // "phone_number" field.
  String? _phoneNumber;
  String get phoneNumber => _phoneNumber ?? '';
  bool hasPhoneNumber() => _phoneNumber != null;

  // "nom" field.
  String? _nom;
  String get nom => _nom ?? '';
  bool hasNom() => _nom != null;

  // "prenom" field.
  String? _prenom;
  String get prenom => _prenom ?? '';
  bool hasPrenom() => _prenom != null;

  // "display_name" field.
  String? _displayName;
  String get displayName => _displayName ?? '';
  bool hasDisplayName() => _displayName != null;

  // "created_time" field.
  DateTime? _createdTime;
  DateTime? get createdTime => _createdTime;
  bool hasCreatedTime() => _createdTime != null;

  // "role" field.
  String? _role;
  String get role => _role ?? '';
  bool hasRole() => _role != null;

  // "niveau" field.
  int? _niveau;
  int get niveau => _niveau ?? 0;
  bool hasNiveau() => _niveau != null;

  // "stage" field.
  String? _stage;
  String get stage => _stage ?? '';
  bool hasStage() => _stage != null;

  // "document" field.
  DocumentReference? _document;
  DocumentReference? get document => _document;
  bool hasDocument() => _document != null;

  // "uid" field.
  String? _uid;
  String get uid => _uid ?? '';
  bool hasUid() => _uid != null;

  // "student_id" field.
  String? _studentId;
  String get studentId => _studentId ?? '';
  bool hasStudentId() => _studentId != null;

  // "encadrant" field.
  DocumentReference? _encadrant;
  DocumentReference? get encadrant => _encadrant;
  bool hasEncadrant() => _encadrant != null;

  // "etablissement" field.
  String? _etablissement;
  String get etablissement => _etablissement ?? '';
  bool hasEtablissement() => _etablissement != null;

  void _initializeFields() {
    _email = snapshotData['email'] as String?;
    _photoUrl = snapshotData['photo_url'] as String?;
    _phoneNumber = snapshotData['phone_number'] as String?;
    _nom = snapshotData['nom'] as String?;
    _prenom = snapshotData['prenom'] as String?;
    _displayName = snapshotData['display_name'] as String?;
    _createdTime = snapshotData['created_time'] as DateTime?;
    _role = snapshotData['role'] as String?;
    _niveau = snapshotData['niveau'] as int?;
    _stage = snapshotData['stage'] as String?;
    _document = snapshotData['document'] as DocumentReference?;
    _uid = snapshotData['uid'] as String?;
    _studentId = snapshotData['student_id'] as String?;
    _encadrant = snapshotData['encadrant'] as DocumentReference?;
    _etablissement = snapshotData['etablissement'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('user');

  static Stream<UserRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => UserRecord.fromSnapshot(s));

  static Future<UserRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => UserRecord.fromSnapshot(s));

  static UserRecord fromSnapshot(DocumentSnapshot snapshot) => UserRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static UserRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      UserRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'UserRecord(reference: ${reference.path}, data: $snapshotData)';
}

Map<String, dynamic> createUserRecordData({
  String? email,
  String? photoUrl,
  String? phoneNumber,
  String? nom,
  String? prenom,
  String? displayName,
  DateTime? createdTime,
  String? role,
  int? niveau,
  String? stage,
  DocumentReference? document,
  String? uid,
  String? studentId,
  DocumentReference? encadrant,
  String? etablissement,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'email': email,
      'photo_url': photoUrl,
      'phone_number': phoneNumber,
      'nom': nom,
      'prenom': prenom,
      'display_name': displayName,
      'created_time': createdTime,
      'role': role,
      'niveau': niveau,
      'stage': stage,
      'document': document,
      'uid': uid,
      'student_id': studentId,
      'encadrant': encadrant,
      'etablissement': etablissement,
    }.withoutNulls,
  );

  return firestoreData;
}
