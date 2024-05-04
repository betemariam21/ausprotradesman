// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class LeaveStruct extends FFFirebaseStruct {
  LeaveStruct({
    DateTime? createdDate,
    String? leaveType,
    DateTime? leaveStartTime,
    DateTime? leaveFinalDay,
    DateTime? leaveDay,
    int? numberOfDays,
    String? leaveReason,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _createdDate = createdDate,
        _leaveType = leaveType,
        _leaveStartTime = leaveStartTime,
        _leaveFinalDay = leaveFinalDay,
        _leaveDay = leaveDay,
        _numberOfDays = numberOfDays,
        _leaveReason = leaveReason,
        super(firestoreUtilData);

  // "createdDate" field.
  DateTime? _createdDate;
  DateTime? get createdDate => _createdDate;
  set createdDate(DateTime? val) => _createdDate = val;
  bool hasCreatedDate() => _createdDate != null;

  // "leaveType" field.
  String? _leaveType;
  String get leaveType => _leaveType ?? '';
  set leaveType(String? val) => _leaveType = val;
  bool hasLeaveType() => _leaveType != null;

  // "leaveStartTime" field.
  DateTime? _leaveStartTime;
  DateTime? get leaveStartTime => _leaveStartTime;
  set leaveStartTime(DateTime? val) => _leaveStartTime = val;
  bool hasLeaveStartTime() => _leaveStartTime != null;

  // "leaveFinalDay" field.
  DateTime? _leaveFinalDay;
  DateTime? get leaveFinalDay => _leaveFinalDay;
  set leaveFinalDay(DateTime? val) => _leaveFinalDay = val;
  bool hasLeaveFinalDay() => _leaveFinalDay != null;

  // "leaveDay" field.
  DateTime? _leaveDay;
  DateTime? get leaveDay => _leaveDay;
  set leaveDay(DateTime? val) => _leaveDay = val;
  bool hasLeaveDay() => _leaveDay != null;

  // "numberOfDays" field.
  int? _numberOfDays;
  int get numberOfDays => _numberOfDays ?? 0;
  set numberOfDays(int? val) => _numberOfDays = val;
  void incrementNumberOfDays(int amount) =>
      _numberOfDays = numberOfDays + amount;
  bool hasNumberOfDays() => _numberOfDays != null;

  // "leaveReason" field.
  String? _leaveReason;
  String get leaveReason => _leaveReason ?? '';
  set leaveReason(String? val) => _leaveReason = val;
  bool hasLeaveReason() => _leaveReason != null;

  static LeaveStruct fromMap(Map<String, dynamic> data) => LeaveStruct(
        createdDate: data['createdDate'] as DateTime?,
        leaveType: data['leaveType'] as String?,
        leaveStartTime: data['leaveStartTime'] as DateTime?,
        leaveFinalDay: data['leaveFinalDay'] as DateTime?,
        leaveDay: data['leaveDay'] as DateTime?,
        numberOfDays: castToType<int>(data['numberOfDays']),
        leaveReason: data['leaveReason'] as String?,
      );

  static LeaveStruct? maybeFromMap(dynamic data) =>
      data is Map ? LeaveStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'createdDate': _createdDate,
        'leaveType': _leaveType,
        'leaveStartTime': _leaveStartTime,
        'leaveFinalDay': _leaveFinalDay,
        'leaveDay': _leaveDay,
        'numberOfDays': _numberOfDays,
        'leaveReason': _leaveReason,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'createdDate': serializeParam(
          _createdDate,
          ParamType.DateTime,
        ),
        'leaveType': serializeParam(
          _leaveType,
          ParamType.String,
        ),
        'leaveStartTime': serializeParam(
          _leaveStartTime,
          ParamType.DateTime,
        ),
        'leaveFinalDay': serializeParam(
          _leaveFinalDay,
          ParamType.DateTime,
        ),
        'leaveDay': serializeParam(
          _leaveDay,
          ParamType.DateTime,
        ),
        'numberOfDays': serializeParam(
          _numberOfDays,
          ParamType.int,
        ),
        'leaveReason': serializeParam(
          _leaveReason,
          ParamType.String,
        ),
      }.withoutNulls;

  static LeaveStruct fromSerializableMap(Map<String, dynamic> data) =>
      LeaveStruct(
        createdDate: deserializeParam(
          data['createdDate'],
          ParamType.DateTime,
          false,
        ),
        leaveType: deserializeParam(
          data['leaveType'],
          ParamType.String,
          false,
        ),
        leaveStartTime: deserializeParam(
          data['leaveStartTime'],
          ParamType.DateTime,
          false,
        ),
        leaveFinalDay: deserializeParam(
          data['leaveFinalDay'],
          ParamType.DateTime,
          false,
        ),
        leaveDay: deserializeParam(
          data['leaveDay'],
          ParamType.DateTime,
          false,
        ),
        numberOfDays: deserializeParam(
          data['numberOfDays'],
          ParamType.int,
          false,
        ),
        leaveReason: deserializeParam(
          data['leaveReason'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'LeaveStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is LeaveStruct &&
        createdDate == other.createdDate &&
        leaveType == other.leaveType &&
        leaveStartTime == other.leaveStartTime &&
        leaveFinalDay == other.leaveFinalDay &&
        leaveDay == other.leaveDay &&
        numberOfDays == other.numberOfDays &&
        leaveReason == other.leaveReason;
  }

  @override
  int get hashCode => const ListEquality().hash([
        createdDate,
        leaveType,
        leaveStartTime,
        leaveFinalDay,
        leaveDay,
        numberOfDays,
        leaveReason
      ]);
}

LeaveStruct createLeaveStruct({
  DateTime? createdDate,
  String? leaveType,
  DateTime? leaveStartTime,
  DateTime? leaveFinalDay,
  DateTime? leaveDay,
  int? numberOfDays,
  String? leaveReason,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    LeaveStruct(
      createdDate: createdDate,
      leaveType: leaveType,
      leaveStartTime: leaveStartTime,
      leaveFinalDay: leaveFinalDay,
      leaveDay: leaveDay,
      numberOfDays: numberOfDays,
      leaveReason: leaveReason,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

LeaveStruct? updateLeaveStruct(
  LeaveStruct? leave, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    leave
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addLeaveStructData(
  Map<String, dynamic> firestoreData,
  LeaveStruct? leave,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (leave == null) {
    return;
  }
  if (leave.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && leave.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final leaveData = getLeaveFirestoreData(leave, forFieldValue);
  final nestedData = leaveData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = leave.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getLeaveFirestoreData(
  LeaveStruct? leave, [
  bool forFieldValue = false,
]) {
  if (leave == null) {
    return {};
  }
  final firestoreData = mapToFirestore(leave.toMap());

  // Add any Firestore field values
  leave.firestoreUtilData.fieldValues.forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getLeaveListFirestoreData(
  List<LeaveStruct>? leaves,
) =>
    leaves?.map((e) => getLeaveFirestoreData(e, true)).toList() ?? [];
