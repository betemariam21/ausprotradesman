import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class EmployeeLeaveRecord extends FirestoreRecord {
  EmployeeLeaveRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "createdDate" field.
  DateTime? _createdDate;
  DateTime? get createdDate => _createdDate;
  bool hasCreatedDate() => _createdDate != null;

  // "leaveType" field.
  String? _leaveType;
  String get leaveType => _leaveType ?? '';
  bool hasLeaveType() => _leaveType != null;

  // "leaveStartTime" field.
  DateTime? _leaveStartTime;
  DateTime? get leaveStartTime => _leaveStartTime;
  bool hasLeaveStartTime() => _leaveStartTime != null;

  // "leaveFinalDay" field.
  DateTime? _leaveFinalDay;
  DateTime? get leaveFinalDay => _leaveFinalDay;
  bool hasLeaveFinalDay() => _leaveFinalDay != null;

  // "leaveDay" field.
  DateTime? _leaveDay;
  DateTime? get leaveDay => _leaveDay;
  bool hasLeaveDay() => _leaveDay != null;

  // "leaveReason" field.
  String? _leaveReason;
  String get leaveReason => _leaveReason ?? '';
  bool hasLeaveReason() => _leaveReason != null;

  // "numberOfDays" field.
  double? _numberOfDays;
  double get numberOfDays => _numberOfDays ?? 0.0;
  bool hasNumberOfDays() => _numberOfDays != null;

  // "status" field.
  bool? _status;
  bool get status => _status ?? false;
  bool hasStatus() => _status != null;

  // "leaveDays" field.
  List<DateTime>? _leaveDays;
  List<DateTime> get leaveDays => _leaveDays ?? const [];
  bool hasLeaveDays() => _leaveDays != null;

  DocumentReference get parentReference => reference.parent.parent!;

  void _initializeFields() {
    _createdDate = snapshotData['createdDate'] as DateTime?;
    _leaveType = snapshotData['leaveType'] as String?;
    _leaveStartTime = snapshotData['leaveStartTime'] as DateTime?;
    _leaveFinalDay = snapshotData['leaveFinalDay'] as DateTime?;
    _leaveDay = snapshotData['leaveDay'] as DateTime?;
    _leaveReason = snapshotData['leaveReason'] as String?;
    _numberOfDays = castToType<double>(snapshotData['numberOfDays']);
    _status = snapshotData['status'] as bool?;
    _leaveDays = getDataList(snapshotData['leaveDays']);
  }

  static Query<Map<String, dynamic>> collection([DocumentReference? parent]) =>
      parent != null
          ? parent.collection('employeeLeave')
          : FirebaseFirestore.instance.collectionGroup('employeeLeave');

  static DocumentReference createDoc(DocumentReference parent, {String? id}) =>
      parent.collection('employeeLeave').doc(id);

  static Stream<EmployeeLeaveRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => EmployeeLeaveRecord.fromSnapshot(s));

  static Future<EmployeeLeaveRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => EmployeeLeaveRecord.fromSnapshot(s));

  static EmployeeLeaveRecord fromSnapshot(DocumentSnapshot snapshot) =>
      EmployeeLeaveRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static EmployeeLeaveRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      EmployeeLeaveRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'EmployeeLeaveRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is EmployeeLeaveRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createEmployeeLeaveRecordData({
  DateTime? createdDate,
  String? leaveType,
  DateTime? leaveStartTime,
  DateTime? leaveFinalDay,
  DateTime? leaveDay,
  String? leaveReason,
  double? numberOfDays,
  bool? status,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'createdDate': createdDate,
      'leaveType': leaveType,
      'leaveStartTime': leaveStartTime,
      'leaveFinalDay': leaveFinalDay,
      'leaveDay': leaveDay,
      'leaveReason': leaveReason,
      'numberOfDays': numberOfDays,
      'status': status,
    }.withoutNulls,
  );

  return firestoreData;
}

class EmployeeLeaveRecordDocumentEquality
    implements Equality<EmployeeLeaveRecord> {
  const EmployeeLeaveRecordDocumentEquality();

  @override
  bool equals(EmployeeLeaveRecord? e1, EmployeeLeaveRecord? e2) {
    const listEquality = ListEquality();
    return e1?.createdDate == e2?.createdDate &&
        e1?.leaveType == e2?.leaveType &&
        e1?.leaveStartTime == e2?.leaveStartTime &&
        e1?.leaveFinalDay == e2?.leaveFinalDay &&
        e1?.leaveDay == e2?.leaveDay &&
        e1?.leaveReason == e2?.leaveReason &&
        e1?.numberOfDays == e2?.numberOfDays &&
        e1?.status == e2?.status &&
        listEquality.equals(e1?.leaveDays, e2?.leaveDays);
  }

  @override
  int hash(EmployeeLeaveRecord? e) => const ListEquality().hash([
        e?.createdDate,
        e?.leaveType,
        e?.leaveStartTime,
        e?.leaveFinalDay,
        e?.leaveDay,
        e?.leaveReason,
        e?.numberOfDays,
        e?.status,
        e?.leaveDays
      ]);

  @override
  bool isValidKey(Object? o) => o is EmployeeLeaveRecord;
}
