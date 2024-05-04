// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class SheetDataStruct extends FFFirebaseStruct {
  SheetDataStruct({
    DateTime? date,
    String? activeHours,
    String? breakHours,
    String? overtimeHours,
    String? name,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _date = date,
        _activeHours = activeHours,
        _breakHours = breakHours,
        _overtimeHours = overtimeHours,
        _name = name,
        super(firestoreUtilData);

  // "date" field.
  DateTime? _date;
  DateTime? get date => _date;
  set date(DateTime? val) => _date = val;
  bool hasDate() => _date != null;

  // "activeHours" field.
  String? _activeHours;
  String get activeHours => _activeHours ?? '';
  set activeHours(String? val) => _activeHours = val;
  bool hasActiveHours() => _activeHours != null;

  // "breakHours" field.
  String? _breakHours;
  String get breakHours => _breakHours ?? '';
  set breakHours(String? val) => _breakHours = val;
  bool hasBreakHours() => _breakHours != null;

  // "overtimeHours" field.
  String? _overtimeHours;
  String get overtimeHours => _overtimeHours ?? '';
  set overtimeHours(String? val) => _overtimeHours = val;
  bool hasOvertimeHours() => _overtimeHours != null;

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  set name(String? val) => _name = val;
  bool hasName() => _name != null;

  static SheetDataStruct fromMap(Map<String, dynamic> data) => SheetDataStruct(
        date: data['date'] as DateTime?,
        activeHours: data['activeHours'] as String?,
        breakHours: data['breakHours'] as String?,
        overtimeHours: data['overtimeHours'] as String?,
        name: data['name'] as String?,
      );

  static SheetDataStruct? maybeFromMap(dynamic data) => data is Map
      ? SheetDataStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'date': _date,
        'activeHours': _activeHours,
        'breakHours': _breakHours,
        'overtimeHours': _overtimeHours,
        'name': _name,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'date': serializeParam(
          _date,
          ParamType.DateTime,
        ),
        'activeHours': serializeParam(
          _activeHours,
          ParamType.String,
        ),
        'breakHours': serializeParam(
          _breakHours,
          ParamType.String,
        ),
        'overtimeHours': serializeParam(
          _overtimeHours,
          ParamType.String,
        ),
        'name': serializeParam(
          _name,
          ParamType.String,
        ),
      }.withoutNulls;

  static SheetDataStruct fromSerializableMap(Map<String, dynamic> data) =>
      SheetDataStruct(
        date: deserializeParam(
          data['date'],
          ParamType.DateTime,
          false,
        ),
        activeHours: deserializeParam(
          data['activeHours'],
          ParamType.String,
          false,
        ),
        breakHours: deserializeParam(
          data['breakHours'],
          ParamType.String,
          false,
        ),
        overtimeHours: deserializeParam(
          data['overtimeHours'],
          ParamType.String,
          false,
        ),
        name: deserializeParam(
          data['name'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'SheetDataStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is SheetDataStruct &&
        date == other.date &&
        activeHours == other.activeHours &&
        breakHours == other.breakHours &&
        overtimeHours == other.overtimeHours &&
        name == other.name;
  }

  @override
  int get hashCode => const ListEquality()
      .hash([date, activeHours, breakHours, overtimeHours, name]);
}

SheetDataStruct createSheetDataStruct({
  DateTime? date,
  String? activeHours,
  String? breakHours,
  String? overtimeHours,
  String? name,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    SheetDataStruct(
      date: date,
      activeHours: activeHours,
      breakHours: breakHours,
      overtimeHours: overtimeHours,
      name: name,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

SheetDataStruct? updateSheetDataStruct(
  SheetDataStruct? sheetData, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    sheetData
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addSheetDataStructData(
  Map<String, dynamic> firestoreData,
  SheetDataStruct? sheetData,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (sheetData == null) {
    return;
  }
  if (sheetData.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && sheetData.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final sheetDataData = getSheetDataFirestoreData(sheetData, forFieldValue);
  final nestedData = sheetDataData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = sheetData.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getSheetDataFirestoreData(
  SheetDataStruct? sheetData, [
  bool forFieldValue = false,
]) {
  if (sheetData == null) {
    return {};
  }
  final firestoreData = mapToFirestore(sheetData.toMap());

  // Add any Firestore field values
  sheetData.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getSheetDataListFirestoreData(
  List<SheetDataStruct>? sheetDatas,
) =>
    sheetDatas?.map((e) => getSheetDataFirestoreData(e, true)).toList() ?? [];
