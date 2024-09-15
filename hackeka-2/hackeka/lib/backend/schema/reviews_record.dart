import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ReviewsRecord extends FirestoreRecord {
  ReviewsRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  bool hasName() => _name != null;

  // "summary" field.
  String? _summary;
  String get summary => _summary ?? '';
  bool hasSummary() => _summary != null;

  // "Terms" field.
  List<TerminologiesStruct>? _terms;
  List<TerminologiesStruct> get terms => _terms ?? const [];
  bool hasTerms() => _terms != null;

  // "warnings" field.
  List<String>? _warnings;
  List<String> get warnings => _warnings ?? const [];
  bool hasWarnings() => _warnings != null;

  // "comittments" field.
  List<CommitmentStruct>? _comittments;
  List<CommitmentStruct> get comittments => _comittments ?? const [];
  bool hasComittments() => _comittments != null;

  // "created_at" field.
  DateTime? _createdAt;
  DateTime? get createdAt => _createdAt;
  bool hasCreatedAt() => _createdAt != null;

  DocumentReference get parentReference => reference.parent.parent!;

  void _initializeFields() {
    _name = snapshotData['name'] as String?;
    _summary = snapshotData['summary'] as String?;
    _terms = getStructList(
      snapshotData['Terms'],
      TerminologiesStruct.fromMap,
    );
    _warnings = getDataList(snapshotData['warnings']);
    _comittments = getStructList(
      snapshotData['comittments'],
      CommitmentStruct.fromMap,
    );
    _createdAt = snapshotData['created_at'] as DateTime?;
  }

  static Query<Map<String, dynamic>> collection([DocumentReference? parent]) =>
      parent != null
          ? parent.collection('Reviews')
          : FirebaseFirestore.instance.collectionGroup('Reviews');

  static DocumentReference createDoc(DocumentReference parent, {String? id}) =>
      parent.collection('Reviews').doc(id);

  static Stream<ReviewsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => ReviewsRecord.fromSnapshot(s));

  static Future<ReviewsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => ReviewsRecord.fromSnapshot(s));

  static ReviewsRecord fromSnapshot(DocumentSnapshot snapshot) =>
      ReviewsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static ReviewsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      ReviewsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'ReviewsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is ReviewsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createReviewsRecordData({
  String? name,
  String? summary,
  DateTime? createdAt,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'name': name,
      'summary': summary,
      'created_at': createdAt,
    }.withoutNulls,
  );

  return firestoreData;
}

class ReviewsRecordDocumentEquality implements Equality<ReviewsRecord> {
  const ReviewsRecordDocumentEquality();

  @override
  bool equals(ReviewsRecord? e1, ReviewsRecord? e2) {
    const listEquality = ListEquality();
    return e1?.name == e2?.name &&
        e1?.summary == e2?.summary &&
        listEquality.equals(e1?.terms, e2?.terms) &&
        listEquality.equals(e1?.warnings, e2?.warnings) &&
        listEquality.equals(e1?.comittments, e2?.comittments) &&
        e1?.createdAt == e2?.createdAt;
  }

  @override
  int hash(ReviewsRecord? e) => const ListEquality().hash([
        e?.name,
        e?.summary,
        e?.terms,
        e?.warnings,
        e?.comittments,
        e?.createdAt
      ]);

  @override
  bool isValidKey(Object? o) => o is ReviewsRecord;
}
