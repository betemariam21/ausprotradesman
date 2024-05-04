import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class DailyScheduleRecord extends FirestoreRecord {
  DailyScheduleRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "date" field.
  DateTime? _date;
  DateTime? get date => _date;
  bool hasDate() => _date != null;

  // "startTime" field.
  DateTime? _startTime;
  DateTime? get startTime => _startTime;
  bool hasStartTime() => _startTime != null;

  // "endTime" field.
  DateTime? _endTime;
  DateTime? get endTime => _endTime;
  bool hasEndTime() => _endTime != null;

  // "lastBreakTime" field.
  DateTime? _lastBreakTime;
  DateTime? get lastBreakTime => _lastBreakTime;
  bool hasLastBreakTime() => _lastBreakTime != null;

  // "status" field.
  String? _status;
  String get status => _status ?? '';
  bool hasStatus() => _status != null;

  // "area" field.
  List<String>? _area;
  List<String> get area => _area ?? const [];
  bool hasArea() => _area != null;

  // "comments" field.
  String? _comments;
  String get comments => _comments ?? '';
  bool hasComments() => _comments != null;

  // "activeMinutes" field.
  double? _activeMinutes;
  double get activeMinutes => _activeMinutes ?? 0.0;
  bool hasActiveMinutes() => _activeMinutes != null;

  // "breakInMinutes" field.
  double? _breakInMinutes;
  double get breakInMinutes => _breakInMinutes ?? 0.0;
  bool hasBreakInMinutes() => _breakInMinutes != null;

  // "schedule" field.
  SheetDataStruct? _schedule;
  SheetDataStruct get schedule => _schedule ?? SheetDataStruct();
  bool hasSchedule() => _schedule != null;

  // "overtimeMinutes" field.
  double? _overtimeMinutes;
  double get overtimeMinutes => _overtimeMinutes ?? 0.0;
  bool hasOvertimeMinutes() => _overtimeMinutes != null;

  // "startStatus" field.
  String? _startStatus;
  String get startStatus => _startStatus ?? '';
  bool hasStartStatus() => _startStatus != null;

  // "currentLocation" field.
  LatLng? _currentLocation;
  LatLng? get currentLocation => _currentLocation;
  bool hasCurrentLocation() => _currentLocation != null;

  DocumentReference get parentReference => reference.parent.parent!;

  void _initializeFields() {
    _date = snapshotData['date'] as DateTime?;
    _startTime = snapshotData['startTime'] as DateTime?;
    _endTime = snapshotData['endTime'] as DateTime?;
    _lastBreakTime = snapshotData['lastBreakTime'] as DateTime?;
    _status = snapshotData['status'] as String?;
    _area = getDataList(snapshotData['area']);
    _comments = snapshotData['comments'] as String?;
    _activeMinutes = castToType<double>(snapshotData['activeMinutes']);
    _breakInMinutes = castToType<double>(snapshotData['breakInMinutes']);
    _schedule = SheetDataStruct.maybeFromMap(snapshotData['schedule']);
    _overtimeMinutes = castToType<double>(snapshotData['overtimeMinutes']);
    _startStatus = snapshotData['startStatus'] as String?;
    _currentLocation = snapshotData['currentLocation'] as LatLng?;
  }

  static Query<Map<String, dynamic>> collection([DocumentReference? parent]) =>
      parent != null
          ? parent.collection('dailySchedule')
          : FirebaseFirestore.instance.collectionGroup('dailySchedule');

  static DocumentReference createDoc(DocumentReference parent, {String? id}) =>
      parent.collection('dailySchedule').doc(id);

  static Stream<DailyScheduleRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => DailyScheduleRecord.fromSnapshot(s));

  static Future<DailyScheduleRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => DailyScheduleRecord.fromSnapshot(s));

  static DailyScheduleRecord fromSnapshot(DocumentSnapshot snapshot) =>
      DailyScheduleRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static DailyScheduleRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      DailyScheduleRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'DailyScheduleRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is DailyScheduleRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createDailyScheduleRecordData({
  DateTime? date,
  DateTime? startTime,
  DateTime? endTime,
  DateTime? lastBreakTime,
  String? status,
  String? comments,
  double? activeMinutes,
  double? breakInMinutes,
  SheetDataStruct? schedule,
  double? overtimeMinutes,
  String? startStatus,
  LatLng? currentLocation,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'date': date,
      'startTime': startTime,
      'endTime': endTime,
      'lastBreakTime': lastBreakTime,
      'status': status,
      'comments': comments,
      'activeMinutes': activeMinutes,
      'breakInMinutes': breakInMinutes,
      'schedule': SheetDataStruct().toMap(),
      'overtimeMinutes': overtimeMinutes,
      'startStatus': startStatus,
      'currentLocation': currentLocation,
    }.withoutNulls,
  );

  // Handle nested data for "schedule" field.
  addSheetDataStructData(firestoreData, schedule, 'schedule');

  return firestoreData;
}

class DailyScheduleRecordDocumentEquality
    implements Equality<DailyScheduleRecord> {
  const DailyScheduleRecordDocumentEquality();

  @override
  bool equals(DailyScheduleRecord? e1, DailyScheduleRecord? e2) {
    const listEquality = ListEquality();
    return e1?.date == e2?.date &&
        e1?.startTime == e2?.startTime &&
        e1?.endTime == e2?.endTime &&
        e1?.lastBreakTime == e2?.lastBreakTime &&
        e1?.status == e2?.status &&
        listEquality.equals(e1?.area, e2?.area) &&
        e1?.comments == e2?.comments &&
        e1?.activeMinutes == e2?.activeMinutes &&
        e1?.breakInMinutes == e2?.breakInMinutes &&
        e1?.schedule == e2?.schedule &&
        e1?.overtimeMinutes == e2?.overtimeMinutes &&
        e1?.startStatus == e2?.startStatus &&
        e1?.currentLocation == e2?.currentLocation;
  }

  @override
  int hash(DailyScheduleRecord? e) => const ListEquality().hash([
        e?.date,
        e?.startTime,
        e?.endTime,
        e?.lastBreakTime,
        e?.status,
        e?.area,
        e?.comments,
        e?.activeMinutes,
        e?.breakInMinutes,
        e?.schedule,
        e?.overtimeMinutes,
        e?.startStatus,
        e?.currentLocation
      ]);

  @override
  bool isValidKey(Object? o) => o is DailyScheduleRecord;
}
