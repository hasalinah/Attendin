import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class TeacherListRecord extends FirestoreRecord {
  TeacherListRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "ClassCRN" field.
  List<String>? _classCRN;
  List<String> get classCRN => _classCRN ?? const [];
  bool hasClassCRN() => _classCRN != null;

  // "UserID" field.
  int? _userID;
  int get userID => _userID ?? 0;
  bool hasUserID() => _userID != null;

  // "classLocation" field.
  LatLng? _classLocation;
  LatLng? get classLocation => _classLocation;
  bool hasClassLocation() => _classLocation != null;

  // "display_name" field.
  String? _displayName;
  String get displayName => _displayName ?? '';
  bool hasDisplayName() => _displayName != null;

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  bool hasName() => _name != null;

  void _initializeFields() {
    _classCRN = getDataList(snapshotData['ClassCRN']);
    _userID = castToType<int>(snapshotData['UserID']);
    _classLocation = snapshotData['classLocation'] as LatLng?;
    _displayName = snapshotData['display_name'] as String?;
    _name = snapshotData['name'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('TeacherList');

  static Stream<TeacherListRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => TeacherListRecord.fromSnapshot(s));

  static Future<TeacherListRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => TeacherListRecord.fromSnapshot(s));

  static TeacherListRecord fromSnapshot(DocumentSnapshot snapshot) =>
      TeacherListRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static TeacherListRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      TeacherListRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'TeacherListRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is TeacherListRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createTeacherListRecordData({
  int? userID,
  LatLng? classLocation,
  String? displayName,
  String? name,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'UserID': userID,
      'classLocation': classLocation,
      'display_name': displayName,
      'name': name,
    }.withoutNulls,
  );

  return firestoreData;
}

class TeacherListRecordDocumentEquality implements Equality<TeacherListRecord> {
  const TeacherListRecordDocumentEquality();

  @override
  bool equals(TeacherListRecord? e1, TeacherListRecord? e2) {
    const listEquality = ListEquality();
    return listEquality.equals(e1?.classCRN, e2?.classCRN) &&
        e1?.userID == e2?.userID &&
        e1?.classLocation == e2?.classLocation &&
        e1?.displayName == e2?.displayName &&
        e1?.name == e2?.name;
  }

  @override
  int hash(TeacherListRecord? e) => const ListEquality().hash(
      [e?.classCRN, e?.userID, e?.classLocation, e?.displayName, e?.name]);

  @override
  bool isValidKey(Object? o) => o is TeacherListRecord;
}
