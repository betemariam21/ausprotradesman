import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class NotificationsRecord extends FirestoreRecord {
  NotificationsRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "initial_page_name" field.
  String? _initialPageName;
  String get initialPageName => _initialPageName ?? '';
  bool hasInitialPageName() => _initialPageName != null;

  // "notification_image_url" field.
  String? _notificationImageUrl;
  String get notificationImageUrl => _notificationImageUrl ?? '';
  bool hasNotificationImageUrl() => _notificationImageUrl != null;

  // "notification_sound" field.
  String? _notificationSound;
  String get notificationSound => _notificationSound ?? '';
  bool hasNotificationSound() => _notificationSound != null;

  // "notification_text" field.
  String? _notificationText;
  String get notificationText => _notificationText ?? '';
  bool hasNotificationText() => _notificationText != null;

  // "num_sent" field.
  int? _numSent;
  int get numSent => _numSent ?? 0;
  bool hasNumSent() => _numSent != null;

  // "parameter_data" field.
  String? _parameterData;
  String get parameterData => _parameterData ?? '';
  bool hasParameterData() => _parameterData != null;

  // "sender" field.
  DocumentReference? _sender;
  DocumentReference? get sender => _sender;
  bool hasSender() => _sender != null;

  // "status" field.
  String? _status;
  String get status => _status ?? '';
  bool hasStatus() => _status != null;

  // "timestamp" field.
  DateTime? _timestamp;
  DateTime? get timestamp => _timestamp;
  bool hasTimestamp() => _timestamp != null;

  // "user_refs" field.
  String? _userRefs;
  String get userRefs => _userRefs ?? '';
  bool hasUserRefs() => _userRefs != null;

  void _initializeFields() {
    _initialPageName = snapshotData['initial_page_name'] as String?;
    _notificationImageUrl = snapshotData['notification_image_url'] as String?;
    _notificationSound = snapshotData['notification_sound'] as String?;
    _notificationText = snapshotData['notification_text'] as String?;
    _numSent = castToType<int>(snapshotData['num_sent']);
    _parameterData = snapshotData['parameter_data'] as String?;
    _sender = snapshotData['sender'] as DocumentReference?;
    _status = snapshotData['status'] as String?;
    _timestamp = snapshotData['timestamp'] as DateTime?;
    _userRefs = snapshotData['user_refs'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('notifications');

  static Stream<NotificationsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => NotificationsRecord.fromSnapshot(s));

  static Future<NotificationsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => NotificationsRecord.fromSnapshot(s));

  static NotificationsRecord fromSnapshot(DocumentSnapshot snapshot) =>
      NotificationsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static NotificationsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      NotificationsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'NotificationsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is NotificationsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createNotificationsRecordData({
  String? initialPageName,
  String? notificationImageUrl,
  String? notificationSound,
  String? notificationText,
  int? numSent,
  String? parameterData,
  DocumentReference? sender,
  String? status,
  DateTime? timestamp,
  String? userRefs,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'initial_page_name': initialPageName,
      'notification_image_url': notificationImageUrl,
      'notification_sound': notificationSound,
      'notification_text': notificationText,
      'num_sent': numSent,
      'parameter_data': parameterData,
      'sender': sender,
      'status': status,
      'timestamp': timestamp,
      'user_refs': userRefs,
    }.withoutNulls,
  );

  return firestoreData;
}

class NotificationsRecordDocumentEquality
    implements Equality<NotificationsRecord> {
  const NotificationsRecordDocumentEquality();

  @override
  bool equals(NotificationsRecord? e1, NotificationsRecord? e2) {
    return e1?.initialPageName == e2?.initialPageName &&
        e1?.notificationImageUrl == e2?.notificationImageUrl &&
        e1?.notificationSound == e2?.notificationSound &&
        e1?.notificationText == e2?.notificationText &&
        e1?.numSent == e2?.numSent &&
        e1?.parameterData == e2?.parameterData &&
        e1?.sender == e2?.sender &&
        e1?.status == e2?.status &&
        e1?.timestamp == e2?.timestamp &&
        e1?.userRefs == e2?.userRefs;
  }

  @override
  int hash(NotificationsRecord? e) => const ListEquality().hash([
        e?.initialPageName,
        e?.notificationImageUrl,
        e?.notificationSound,
        e?.notificationText,
        e?.numSent,
        e?.parameterData,
        e?.sender,
        e?.status,
        e?.timestamp,
        e?.userRefs
      ]);

  @override
  bool isValidKey(Object? o) => o is NotificationsRecord;
}
