import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class AreaRecord extends FirestoreRecord {
  AreaRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  bool hasName() => _name != null;

  // "createdDate" field.
  DateTime? _createdDate;
  DateTime? get createdDate => _createdDate;
  bool hasCreatedDate() => _createdDate != null;

  // "desc" field.
  String? _desc;
  String get desc => _desc ?? '';
  bool hasDesc() => _desc != null;

  // "areaImage" field.
  String? _areaImage;
  String get areaImage => _areaImage ?? '';
  bool hasAreaImage() => _areaImage != null;

  void _initializeFields() {
    _name = snapshotData['name'] as String?;
    _createdDate = snapshotData['createdDate'] as DateTime?;
    _desc = snapshotData['desc'] as String?;
    _areaImage = snapshotData['areaImage'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('area');

  static Stream<AreaRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => AreaRecord.fromSnapshot(s));

  static Future<AreaRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => AreaRecord.fromSnapshot(s));

  static AreaRecord fromSnapshot(DocumentSnapshot snapshot) => AreaRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static AreaRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      AreaRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'AreaRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is AreaRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createAreaRecordData({
  String? name,
  DateTime? createdDate,
  String? desc,
  String? areaImage,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'name': name,
      'createdDate': createdDate,
      'desc': desc,
      'areaImage': areaImage,
    }.withoutNulls,
  );

  return firestoreData;
}

class AreaRecordDocumentEquality implements Equality<AreaRecord> {
  const AreaRecordDocumentEquality();

  @override
  bool equals(AreaRecord? e1, AreaRecord? e2) {
    return e1?.name == e2?.name &&
        e1?.createdDate == e2?.createdDate &&
        e1?.desc == e2?.desc &&
        e1?.areaImage == e2?.areaImage;
  }

  @override
  int hash(AreaRecord? e) => const ListEquality()
      .hash([e?.name, e?.createdDate, e?.desc, e?.areaImage]);

  @override
  bool isValidKey(Object? o) => o is AreaRecord;
}
