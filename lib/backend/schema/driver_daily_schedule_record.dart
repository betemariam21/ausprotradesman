import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class DriverDailyScheduleRecord extends FirestoreRecord {
  DriverDailyScheduleRecord._(
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

  // "finalLocation" field.
  LatLng? _finalLocation;
  LatLng? get finalLocation => _finalLocation;
  bool hasFinalLocation() => _finalLocation != null;

  // "tradesmanDocuments" field.
  List<String>? _tradesmanDocuments;
  List<String> get tradesmanDocuments => _tradesmanDocuments ?? const [];
  bool hasTradesmanDocuments() => _tradesmanDocuments != null;

  // "userReference" field.
  DocumentReference? _userReference;
  DocumentReference? get userReference => _userReference;
  bool hasUserReference() => _userReference != null;

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
    _finalLocation = snapshotData['finalLocation'] as LatLng?;
    _tradesmanDocuments = getDataList(snapshotData['tradesmanDocuments']);
    _userReference = snapshotData['userReference'] as DocumentReference?;
  }

  static Query<Map<String, dynamic>> collection([DocumentReference? parent]) =>
      parent != null
          ? parent.collection('driverDailySchedule')
          : FirebaseFirestore.instance.collectionGroup('driverDailySchedule');

  static DocumentReference createDoc(DocumentReference parent, {String? id}) =>
      parent.collection('driverDailySchedule').doc(id);

  static Stream<DriverDailyScheduleRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => DriverDailyScheduleRecord.fromSnapshot(s));

  static Future<DriverDailyScheduleRecord> getDocumentOnce(
          DocumentReference ref) =>
      ref.get().then((s) => DriverDailyScheduleRecord.fromSnapshot(s));

  static DriverDailyScheduleRecord fromSnapshot(DocumentSnapshot snapshot) =>
      DriverDailyScheduleRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static DriverDailyScheduleRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      DriverDailyScheduleRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'DriverDailyScheduleRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is DriverDailyScheduleRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createDriverDailyScheduleRecordData({
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
  LatLng? finalLocation,
  DocumentReference? userReference,
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
      'finalLocation': finalLocation,
      'userReference': userReference,
    }.withoutNulls,
  );

  // Handle nested data for "schedule" field.
  addSheetDataStructData(firestoreData, schedule, 'schedule');

  return firestoreData;
}

class DriverDailyScheduleRecordDocumentEquality
    implements Equality<DriverDailyScheduleRecord> {
  const DriverDailyScheduleRecordDocumentEquality();

  @override
  bool equals(DriverDailyScheduleRecord? e1, DriverDailyScheduleRecord? e2) {
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
        e1?.currentLocation == e2?.currentLocation &&
        e1?.finalLocation == e2?.finalLocation &&
        listEquality.equals(e1?.tradesmanDocuments, e2?.tradesmanDocuments) &&
        e1?.userReference == e2?.userReference;
  }

  @override
  int hash(DriverDailyScheduleRecord? e) => const ListEquality().hash([
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
        e?.currentLocation,
        e?.finalLocation,
        e?.tradesmanDocuments,
        e?.userReference
      ]);

  @override
  bool isValidKey(Object? o) => o is DriverDailyScheduleRecord;
}
