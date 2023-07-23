import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class CourseCRNRecord extends FirestoreRecord {
  CourseCRNRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "ClassLocation" field.
  LatLng? _classLocation;
  LatLng? get classLocation => _classLocation;
  bool hasClassLocation() => _classLocation != null;

  // "Teacher" field.
  String? _teacher;
  String get teacher => _teacher ?? '';
  bool hasTeacher() => _teacher != null;

  // "className" field.
  String? _className;
  String get className => _className ?? '';
  bool hasClassName() => _className != null;

  // "crn" field.
  int? _crn;
  int get crn => _crn ?? 0;
  bool hasCrn() => _crn != null;

  // "dateTime" field.
  DateTime? _dateTime;
  DateTime? get dateTime => _dateTime;
  bool hasDateTime() => _dateTime != null;

  void _initializeFields() {
    _classLocation = snapshotData['ClassLocation'] as LatLng?;
    _teacher = snapshotData['Teacher'] as String?;
    _className = snapshotData['className'] as String?;
    _crn = castToType<int>(snapshotData['crn']);
    _dateTime = snapshotData['dateTime'] as DateTime?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('CourseCRN');

  static Stream<CourseCRNRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => CourseCRNRecord.fromSnapshot(s));

  static Future<CourseCRNRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => CourseCRNRecord.fromSnapshot(s));

  static CourseCRNRecord fromSnapshot(DocumentSnapshot snapshot) =>
      CourseCRNRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static CourseCRNRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      CourseCRNRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'CourseCRNRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is CourseCRNRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createCourseCRNRecordData({
  LatLng? classLocation,
  String? teacher,
  String? className,
  int? crn,
  DateTime? dateTime,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'ClassLocation': classLocation,
      'Teacher': teacher,
      'className': className,
      'crn': crn,
      'dateTime': dateTime,
    }.withoutNulls,
  );

  return firestoreData;
}

class CourseCRNRecordDocumentEquality implements Equality<CourseCRNRecord> {
  const CourseCRNRecordDocumentEquality();

  @override
  bool equals(CourseCRNRecord? e1, CourseCRNRecord? e2) {
    return e1?.classLocation == e2?.classLocation &&
        e1?.teacher == e2?.teacher &&
        e1?.className == e2?.className &&
        e1?.crn == e2?.crn &&
        e1?.dateTime == e2?.dateTime;
  }

  @override
  int hash(CourseCRNRecord? e) => const ListEquality()
      .hash([e?.classLocation, e?.teacher, e?.className, e?.crn, e?.dateTime]);

  @override
  bool isValidKey(Object? o) => o is CourseCRNRecord;
}
