import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class EmployeesRecord extends FirestoreRecord {
  EmployeesRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "firstName" field.
  String? _firstName;
  String get firstName => _firstName ?? '';
  bool hasFirstName() => _firstName != null;

  // "lastName" field.
  String? _lastName;
  String get lastName => _lastName ?? '';
  bool hasLastName() => _lastName != null;

  // "isActive" field.
  bool? _isActive;
  bool get isActive => _isActive ?? false;
  bool hasIsActive() => _isActive != null;

  // "photoUrl" field.
  String? _photoUrl;
  String get photoUrl => _photoUrl ?? '';
  bool hasPhotoUrl() => _photoUrl != null;

  // "pinCode" field.
  String? _pinCode;
  String get pinCode => _pinCode ?? '';
  bool hasPinCode() => _pinCode != null;

  // "workingStatus" field.
  String? _workingStatus;
  String get workingStatus => _workingStatus ?? '';
  bool hasWorkingStatus() => _workingStatus != null;

  // "title" field.
  String? _title;
  String get title => _title ?? '';
  bool hasTitle() => _title != null;

  // "employeeDescription" field.
  String? _employeeDescription;
  String get employeeDescription => _employeeDescription ?? '';
  bool hasEmployeeDescription() => _employeeDescription != null;

  // "email" field.
  String? _email;
  String get email => _email ?? '';
  bool hasEmail() => _email != null;

  // "address" field.
  String? _address;
  String get address => _address ?? '';
  bool hasAddress() => _address != null;

  // "createdDate" field.
  DateTime? _createdDate;
  DateTime? get createdDate => _createdDate;
  bool hasCreatedDate() => _createdDate != null;

  // "onLeave" field.
  bool? _onLeave;
  bool get onLeave => _onLeave ?? false;
  bool hasOnLeave() => _onLeave != null;

  // "activeLeaveDays" field.
  double? _activeLeaveDays;
  double get activeLeaveDays => _activeLeaveDays ?? 0.0;
  bool hasActiveLeaveDays() => _activeLeaveDays != null;

  // "activeSickLeaveDays" field.
  double? _activeSickLeaveDays;
  double get activeSickLeaveDays => _activeSickLeaveDays ?? 0.0;
  bool hasActiveSickLeaveDays() => _activeSickLeaveDays != null;

  void _initializeFields() {
    _firstName = snapshotData['firstName'] as String?;
    _lastName = snapshotData['lastName'] as String?;
    _isActive = snapshotData['isActive'] as bool?;
    _photoUrl = snapshotData['photoUrl'] as String?;
    _pinCode = snapshotData['pinCode'] as String?;
    _workingStatus = snapshotData['workingStatus'] as String?;
    _title = snapshotData['title'] as String?;
    _employeeDescription = snapshotData['employeeDescription'] as String?;
    _email = snapshotData['email'] as String?;
    _address = snapshotData['address'] as String?;
    _createdDate = snapshotData['createdDate'] as DateTime?;
    _onLeave = snapshotData['onLeave'] as bool?;
    _activeLeaveDays = castToType<double>(snapshotData['activeLeaveDays']);
    _activeSickLeaveDays =
        castToType<double>(snapshotData['activeSickLeaveDays']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('employees');

  static Stream<EmployeesRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => EmployeesRecord.fromSnapshot(s));

  static Future<EmployeesRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => EmployeesRecord.fromSnapshot(s));

  static EmployeesRecord fromSnapshot(DocumentSnapshot snapshot) =>
      EmployeesRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static EmployeesRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      EmployeesRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'EmployeesRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is EmployeesRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createEmployeesRecordData({
  String? firstName,
  String? lastName,
  bool? isActive,
  String? photoUrl,
  String? pinCode,
  String? workingStatus,
  String? title,
  String? employeeDescription,
  String? email,
  String? address,
  DateTime? createdDate,
  bool? onLeave,
  double? activeLeaveDays,
  double? activeSickLeaveDays,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'firstName': firstName,
      'lastName': lastName,
      'isActive': isActive,
      'photoUrl': photoUrl,
      'pinCode': pinCode,
      'workingStatus': workingStatus,
      'title': title,
      'employeeDescription': employeeDescription,
      'email': email,
      'address': address,
      'createdDate': createdDate,
      'onLeave': onLeave,
      'activeLeaveDays': activeLeaveDays,
      'activeSickLeaveDays': activeSickLeaveDays,
    }.withoutNulls,
  );

  return firestoreData;
}

class EmployeesRecordDocumentEquality implements Equality<EmployeesRecord> {
  const EmployeesRecordDocumentEquality();

  @override
  bool equals(EmployeesRecord? e1, EmployeesRecord? e2) {
    return e1?.firstName == e2?.firstName &&
        e1?.lastName == e2?.lastName &&
        e1?.isActive == e2?.isActive &&
        e1?.photoUrl == e2?.photoUrl &&
        e1?.pinCode == e2?.pinCode &&
        e1?.workingStatus == e2?.workingStatus &&
        e1?.title == e2?.title &&
        e1?.employeeDescription == e2?.employeeDescription &&
        e1?.email == e2?.email &&
        e1?.address == e2?.address &&
        e1?.createdDate == e2?.createdDate &&
        e1?.onLeave == e2?.onLeave &&
        e1?.activeLeaveDays == e2?.activeLeaveDays &&
        e1?.activeSickLeaveDays == e2?.activeSickLeaveDays;
  }

  @override
  int hash(EmployeesRecord? e) => const ListEquality().hash([
        e?.firstName,
        e?.lastName,
        e?.isActive,
        e?.photoUrl,
        e?.pinCode,
        e?.workingStatus,
        e?.title,
        e?.employeeDescription,
        e?.email,
        e?.address,
        e?.createdDate,
        e?.onLeave,
        e?.activeLeaveDays,
        e?.activeSickLeaveDays
      ]);

  @override
  bool isValidKey(Object? o) => o is EmployeesRecord;
}
