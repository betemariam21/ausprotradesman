import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class UsersRecord extends FirestoreRecord {
  UsersRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "email" field.
  String? _email;
  String get email => _email ?? '';
  bool hasEmail() => _email != null;

  // "display_name" field.
  String? _displayName;
  String get displayName => _displayName ?? '';
  bool hasDisplayName() => _displayName != null;

  // "photo_url" field.
  String? _photoUrl;
  String get photoUrl => _photoUrl ?? '';
  bool hasPhotoUrl() => _photoUrl != null;

  // "uid" field.
  String? _uid;
  String get uid => _uid ?? '';
  bool hasUid() => _uid != null;

  // "created_time" field.
  DateTime? _createdTime;
  DateTime? get createdTime => _createdTime;
  bool hasCreatedTime() => _createdTime != null;

  // "phone_number" field.
  String? _phoneNumber;
  String get phoneNumber => _phoneNumber ?? '';
  bool hasPhoneNumber() => _phoneNumber != null;

  // "lastName" field.
  String? _lastName;
  String get lastName => _lastName ?? '';
  bool hasLastName() => _lastName != null;

  // "firstName" field.
  String? _firstName;
  String get firstName => _firstName ?? '';
  bool hasFirstName() => _firstName != null;

  // "userRole" field.
  String? _userRole;
  String get userRole => _userRole ?? '';
  bool hasUserRole() => _userRole != null;

  // "isActive" field.
  bool? _isActive;
  bool get isActive => _isActive ?? false;
  bool hasIsActive() => _isActive != null;

  // "onBreak" field.
  bool? _onBreak;
  bool get onBreak => _onBreak ?? false;
  bool hasOnBreak() => _onBreak != null;

  // "accountApproved" field.
  bool? _accountApproved;
  bool get accountApproved => _accountApproved ?? false;
  bool hasAccountApproved() => _accountApproved != null;

  // "title" field.
  String? _title;
  String get title => _title ?? '';
  bool hasTitle() => _title != null;

  // "workingStatus" field.
  String? _workingStatus;
  String get workingStatus => _workingStatus ?? '';
  bool hasWorkingStatus() => _workingStatus != null;

  // "address" field.
  String? _address;
  String get address => _address ?? '';
  bool hasAddress() => _address != null;

  // "employeeDescription" field.
  String? _employeeDescription;
  String get employeeDescription => _employeeDescription ?? '';
  bool hasEmployeeDescription() => _employeeDescription != null;

  // "onBoardingDetails" field.
  bool? _onBoardingDetails;
  bool get onBoardingDetails => _onBoardingDetails ?? false;
  bool hasOnBoardingDetails() => _onBoardingDetails != null;

  // "tradesmanDocuments" field.
  List<String>? _tradesmanDocuments;
  List<String> get tradesmanDocuments => _tradesmanDocuments ?? const [];
  bool hasTradesmanDocuments() => _tradesmanDocuments != null;

  // "driverLicence" field.
  String? _driverLicence;
  String get driverLicence => _driverLicence ?? '';
  bool hasDriverLicence() => _driverLicence != null;

  // "dogman" field.
  String? _dogman;
  String get dogman => _dogman ?? '';
  bool hasDogman() => _dogman != null;

  // "craneLicence" field.
  String? _craneLicence;
  String get craneLicence => _craneLicence ?? '';
  bool hasCraneLicence() => _craneLicence != null;

  // "whiteCard" field.
  String? _whiteCard;
  String get whiteCard => _whiteCard ?? '';
  bool hasWhiteCard() => _whiteCard != null;

  // "forklift" field.
  String? _forklift;
  String get forklift => _forklift ?? '';
  bool hasForklift() => _forklift != null;

  // "deviceID" field.
  String? _deviceID;
  String get deviceID => _deviceID ?? '';
  bool hasDeviceID() => _deviceID != null;

  // "deviceChangeApproved" field.
  bool? _deviceChangeApproved;
  bool get deviceChangeApproved => _deviceChangeApproved ?? false;
  bool hasDeviceChangeApproved() => _deviceChangeApproved != null;

  // "deviceChangeRequested" field.
  bool? _deviceChangeRequested;
  bool get deviceChangeRequested => _deviceChangeRequested ?? false;
  bool hasDeviceChangeRequested() => _deviceChangeRequested != null;

  // "deviceChangeReason" field.
  String? _deviceChangeReason;
  String get deviceChangeReason => _deviceChangeReason ?? '';
  bool hasDeviceChangeReason() => _deviceChangeReason != null;

  void _initializeFields() {
    _email = snapshotData['email'] as String?;
    _displayName = snapshotData['display_name'] as String?;
    _photoUrl = snapshotData['photo_url'] as String?;
    _uid = snapshotData['uid'] as String?;
    _createdTime = snapshotData['created_time'] as DateTime?;
    _phoneNumber = snapshotData['phone_number'] as String?;
    _lastName = snapshotData['lastName'] as String?;
    _firstName = snapshotData['firstName'] as String?;
    _userRole = snapshotData['userRole'] as String?;
    _isActive = snapshotData['isActive'] as bool?;
    _onBreak = snapshotData['onBreak'] as bool?;
    _accountApproved = snapshotData['accountApproved'] as bool?;
    _title = snapshotData['title'] as String?;
    _workingStatus = snapshotData['workingStatus'] as String?;
    _address = snapshotData['address'] as String?;
    _employeeDescription = snapshotData['employeeDescription'] as String?;
    _onBoardingDetails = snapshotData['onBoardingDetails'] as bool?;
    _tradesmanDocuments = getDataList(snapshotData['tradesmanDocuments']);
    _driverLicence = snapshotData['driverLicence'] as String?;
    _dogman = snapshotData['dogman'] as String?;
    _craneLicence = snapshotData['craneLicence'] as String?;
    _whiteCard = snapshotData['whiteCard'] as String?;
    _forklift = snapshotData['forklift'] as String?;
    _deviceID = snapshotData['deviceID'] as String?;
    _deviceChangeApproved = snapshotData['deviceChangeApproved'] as bool?;
    _deviceChangeRequested = snapshotData['deviceChangeRequested'] as bool?;
    _deviceChangeReason = snapshotData['deviceChangeReason'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('users');

  static Stream<UsersRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => UsersRecord.fromSnapshot(s));

  static Future<UsersRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => UsersRecord.fromSnapshot(s));

  static UsersRecord fromSnapshot(DocumentSnapshot snapshot) => UsersRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static UsersRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      UsersRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'UsersRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is UsersRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createUsersRecordData({
  String? email,
  String? displayName,
  String? photoUrl,
  String? uid,
  DateTime? createdTime,
  String? phoneNumber,
  String? lastName,
  String? firstName,
  String? userRole,
  bool? isActive,
  bool? onBreak,
  bool? accountApproved,
  String? title,
  String? workingStatus,
  String? address,
  String? employeeDescription,
  bool? onBoardingDetails,
  String? driverLicence,
  String? dogman,
  String? craneLicence,
  String? whiteCard,
  String? forklift,
  String? deviceID,
  bool? deviceChangeApproved,
  bool? deviceChangeRequested,
  String? deviceChangeReason,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'email': email,
      'display_name': displayName,
      'photo_url': photoUrl,
      'uid': uid,
      'created_time': createdTime,
      'phone_number': phoneNumber,
      'lastName': lastName,
      'firstName': firstName,
      'userRole': userRole,
      'isActive': isActive,
      'onBreak': onBreak,
      'accountApproved': accountApproved,
      'title': title,
      'workingStatus': workingStatus,
      'address': address,
      'employeeDescription': employeeDescription,
      'onBoardingDetails': onBoardingDetails,
      'driverLicence': driverLicence,
      'dogman': dogman,
      'craneLicence': craneLicence,
      'whiteCard': whiteCard,
      'forklift': forklift,
      'deviceID': deviceID,
      'deviceChangeApproved': deviceChangeApproved,
      'deviceChangeRequested': deviceChangeRequested,
      'deviceChangeReason': deviceChangeReason,
    }.withoutNulls,
  );

  return firestoreData;
}

class UsersRecordDocumentEquality implements Equality<UsersRecord> {
  const UsersRecordDocumentEquality();

  @override
  bool equals(UsersRecord? e1, UsersRecord? e2) {
    const listEquality = ListEquality();
    return e1?.email == e2?.email &&
        e1?.displayName == e2?.displayName &&
        e1?.photoUrl == e2?.photoUrl &&
        e1?.uid == e2?.uid &&
        e1?.createdTime == e2?.createdTime &&
        e1?.phoneNumber == e2?.phoneNumber &&
        e1?.lastName == e2?.lastName &&
        e1?.firstName == e2?.firstName &&
        e1?.userRole == e2?.userRole &&
        e1?.isActive == e2?.isActive &&
        e1?.onBreak == e2?.onBreak &&
        e1?.accountApproved == e2?.accountApproved &&
        e1?.title == e2?.title &&
        e1?.workingStatus == e2?.workingStatus &&
        e1?.address == e2?.address &&
        e1?.employeeDescription == e2?.employeeDescription &&
        e1?.onBoardingDetails == e2?.onBoardingDetails &&
        listEquality.equals(e1?.tradesmanDocuments, e2?.tradesmanDocuments) &&
        e1?.driverLicence == e2?.driverLicence &&
        e1?.dogman == e2?.dogman &&
        e1?.craneLicence == e2?.craneLicence &&
        e1?.whiteCard == e2?.whiteCard &&
        e1?.forklift == e2?.forklift &&
        e1?.deviceID == e2?.deviceID &&
        e1?.deviceChangeApproved == e2?.deviceChangeApproved &&
        e1?.deviceChangeRequested == e2?.deviceChangeRequested &&
        e1?.deviceChangeReason == e2?.deviceChangeReason;
  }

  @override
  int hash(UsersRecord? e) => const ListEquality().hash([
        e?.email,
        e?.displayName,
        e?.photoUrl,
        e?.uid,
        e?.createdTime,
        e?.phoneNumber,
        e?.lastName,
        e?.firstName,
        e?.userRole,
        e?.isActive,
        e?.onBreak,
        e?.accountApproved,
        e?.title,
        e?.workingStatus,
        e?.address,
        e?.employeeDescription,
        e?.onBoardingDetails,
        e?.tradesmanDocuments,
        e?.driverLicence,
        e?.dogman,
        e?.craneLicence,
        e?.whiteCard,
        e?.forklift,
        e?.deviceID,
        e?.deviceChangeApproved,
        e?.deviceChangeRequested,
        e?.deviceChangeReason
      ]);

  @override
  bool isValidKey(Object? o) => o is UsersRecord;
}
