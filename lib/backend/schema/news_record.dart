import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class NewsRecord extends FirestoreRecord {
  NewsRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "title" field.
  String? _title;
  String get title => _title ?? '';
  bool hasTitle() => _title != null;

  // "description" field.
  String? _description;
  String get description => _description ?? '';
  bool hasDescription() => _description != null;

  // "adminRef" field.
  DocumentReference? _adminRef;
  DocumentReference? get adminRef => _adminRef;
  bool hasAdminRef() => _adminRef != null;

  // "createdDate" field.
  DateTime? _createdDate;
  DateTime? get createdDate => _createdDate;
  bool hasCreatedDate() => _createdDate != null;

  // "newsCategory" field.
  List<String>? _newsCategory;
  List<String> get newsCategory => _newsCategory ?? const [];
  bool hasNewsCategory() => _newsCategory != null;

  // "newsImage" field.
  String? _newsImage;
  String get newsImage => _newsImage ?? '';
  bool hasNewsImage() => _newsImage != null;

  // "newsType" field.
  String? _newsType;
  String get newsType => _newsType ?? '';
  bool hasNewsType() => _newsType != null;

  void _initializeFields() {
    _title = snapshotData['title'] as String?;
    _description = snapshotData['description'] as String?;
    _adminRef = snapshotData['adminRef'] as DocumentReference?;
    _createdDate = snapshotData['createdDate'] as DateTime?;
    _newsCategory = getDataList(snapshotData['newsCategory']);
    _newsImage = snapshotData['newsImage'] as String?;
    _newsType = snapshotData['newsType'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('news');

  static Stream<NewsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => NewsRecord.fromSnapshot(s));

  static Future<NewsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => NewsRecord.fromSnapshot(s));

  static NewsRecord fromSnapshot(DocumentSnapshot snapshot) => NewsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static NewsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      NewsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'NewsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is NewsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createNewsRecordData({
  String? title,
  String? description,
  DocumentReference? adminRef,
  DateTime? createdDate,
  String? newsImage,
  String? newsType,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'title': title,
      'description': description,
      'adminRef': adminRef,
      'createdDate': createdDate,
      'newsImage': newsImage,
      'newsType': newsType,
    }.withoutNulls,
  );

  return firestoreData;
}

class NewsRecordDocumentEquality implements Equality<NewsRecord> {
  const NewsRecordDocumentEquality();

  @override
  bool equals(NewsRecord? e1, NewsRecord? e2) {
    const listEquality = ListEquality();
    return e1?.title == e2?.title &&
        e1?.description == e2?.description &&
        e1?.adminRef == e2?.adminRef &&
        e1?.createdDate == e2?.createdDate &&
        listEquality.equals(e1?.newsCategory, e2?.newsCategory) &&
        e1?.newsImage == e2?.newsImage &&
        e1?.newsType == e2?.newsType;
  }

  @override
  int hash(NewsRecord? e) => const ListEquality().hash([
        e?.title,
        e?.description,
        e?.adminRef,
        e?.createdDate,
        e?.newsCategory,
        e?.newsImage,
        e?.newsType
      ]);

  @override
  bool isValidKey(Object? o) => o is NewsRecord;
}
