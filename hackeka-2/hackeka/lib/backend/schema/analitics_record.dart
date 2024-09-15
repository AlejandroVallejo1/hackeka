import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class AnaliticsRecord extends FirestoreRecord {
  AnaliticsRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "views" field.
  int? _views;
  int get views => _views ?? 0;
  bool hasViews() => _views != null;

  // "avg_rating" field.
  double? _avgRating;
  double get avgRating => _avgRating ?? 0.0;
  bool hasAvgRating() => _avgRating != null;

  // "ratings" field.
  int? _ratings;
  int get ratings => _ratings ?? 0;
  bool hasRatings() => _ratings != null;

  void _initializeFields() {
    _views = castToType<int>(snapshotData['views']);
    _avgRating = castToType<double>(snapshotData['avg_rating']);
    _ratings = castToType<int>(snapshotData['ratings']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('analitics');

  static Stream<AnaliticsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => AnaliticsRecord.fromSnapshot(s));

  static Future<AnaliticsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => AnaliticsRecord.fromSnapshot(s));

  static AnaliticsRecord fromSnapshot(DocumentSnapshot snapshot) =>
      AnaliticsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static AnaliticsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      AnaliticsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'AnaliticsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is AnaliticsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createAnaliticsRecordData({
  int? views,
  double? avgRating,
  int? ratings,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'views': views,
      'avg_rating': avgRating,
      'ratings': ratings,
    }.withoutNulls,
  );

  return firestoreData;
}

class AnaliticsRecordDocumentEquality implements Equality<AnaliticsRecord> {
  const AnaliticsRecordDocumentEquality();

  @override
  bool equals(AnaliticsRecord? e1, AnaliticsRecord? e2) {
    return e1?.views == e2?.views &&
        e1?.avgRating == e2?.avgRating &&
        e1?.ratings == e2?.ratings;
  }

  @override
  int hash(AnaliticsRecord? e) =>
      const ListEquality().hash([e?.views, e?.avgRating, e?.ratings]);

  @override
  bool isValidKey(Object? o) => o is AnaliticsRecord;
}
