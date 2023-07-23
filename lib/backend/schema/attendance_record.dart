import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class AttendanceRecord extends FirestoreRecord {
  AttendanceRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "CourseCRN" field.
  DocumentReference? _courseCRN;
  DocumentReference? get courseCRN => _courseCRN;
  bool hasCourseCRN() => _courseCRN != null;

  // "Date" field.
  DateTime? _date;
  DateTime? get date => _date;
  bool hasDate() => _date != null;

  // "StudentID" field.
  String? _studentID;
  String get studentID => _studentID ?? '';
  bool hasStudentID() => _studentID != null;

  // "TeacherID" field.
  String? _teacherID;
  String get teacherID => _teacherID ?? '';
  bool hasTeacherID() => _teacherID != null;

  void _initializeFields() {
    _courseCRN = snapshotData['CourseCRN'] as DocumentReference?;
    _date = snapshotData['Date'] as DateTime?;
    _studentID = snapshotData['StudentID'] as String?;
    _teacherID = snapshotData['TeacherID'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Attendance');

  static Stream<AttendanceRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => AttendanceRecord.fromSnapshot(s));

  static Future<AttendanceRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => AttendanceRecord.fromSnapshot(s));

  static AttendanceRecord fromSnapshot(DocumentSnapshot snapshot) =>
      AttendanceRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static AttendanceRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      AttendanceRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'AttendanceRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is AttendanceRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createAttendanceRecordData({
  DocumentReference? courseCRN,
  DateTime? date,
  String? studentID,
  String? teacherID,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'CourseCRN': courseCRN,
      'Date': date,
      'StudentID': studentID,
      'TeacherID': teacherID,
    }.withoutNulls,
  );

  return firestoreData;
}

class AttendanceRecordDocumentEquality implements Equality<AttendanceRecord> {
  const AttendanceRecordDocumentEquality();

  @override
  bool equals(AttendanceRecord? e1, AttendanceRecord? e2) {
    return e1?.courseCRN == e2?.courseCRN &&
        e1?.date == e2?.date &&
        e1?.studentID == e2?.studentID &&
        e1?.teacherID == e2?.teacherID;
  }

  @override
  int hash(AttendanceRecord? e) => const ListEquality()
      .hash([e?.courseCRN, e?.date, e?.studentID, e?.teacherID]);

  @override
  bool isValidKey(Object? o) => o is AttendanceRecord;
}
