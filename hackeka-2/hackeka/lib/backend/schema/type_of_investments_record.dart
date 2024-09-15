import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class TypeOfInvestmentsRecord extends FirestoreRecord {
  TypeOfInvestmentsRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "Name" field.
  String? _name;
  String get name => _name ?? '';
  bool hasName() => _name != null;

  // "Description" field.
  String? _description;
  String get description => _description ?? '';
  bool hasDescription() => _description != null;

  // "HowItGeneratesMoney" field.
  String? _howItGeneratesMoney;
  String get howItGeneratesMoney => _howItGeneratesMoney ?? '';
  bool hasHowItGeneratesMoney() => _howItGeneratesMoney != null;

  // "RiskLevel" field.
  String? _riskLevel;
  String get riskLevel => _riskLevel ?? '';
  bool hasRiskLevel() => _riskLevel != null;

  // "Benefits" field.
  String? _benefits;
  String get benefits => _benefits ?? '';
  bool hasBenefits() => _benefits != null;

  // "Risks" field.
  String? _risks;
  String get risks => _risks ?? '';
  bool hasRisks() => _risks != null;

  // "id" field.
  int? _id;
  int get id => _id ?? 0;
  bool hasId() => _id != null;

  void _initializeFields() {
    _name = snapshotData['Name'] as String?;
    _description = snapshotData['Description'] as String?;
    _howItGeneratesMoney = snapshotData['HowItGeneratesMoney'] as String?;
    _riskLevel = snapshotData['RiskLevel'] as String?;
    _benefits = snapshotData['Benefits'] as String?;
    _risks = snapshotData['Risks'] as String?;
    _id = castToType<int>(snapshotData['id']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('TypeOfInvestments');

  static Stream<TypeOfInvestmentsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => TypeOfInvestmentsRecord.fromSnapshot(s));

  static Future<TypeOfInvestmentsRecord> getDocumentOnce(
          DocumentReference ref) =>
      ref.get().then((s) => TypeOfInvestmentsRecord.fromSnapshot(s));

  static TypeOfInvestmentsRecord fromSnapshot(DocumentSnapshot snapshot) =>
      TypeOfInvestmentsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static TypeOfInvestmentsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      TypeOfInvestmentsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'TypeOfInvestmentsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is TypeOfInvestmentsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createTypeOfInvestmentsRecordData({
  String? name,
  String? description,
  String? howItGeneratesMoney,
  String? riskLevel,
  String? benefits,
  String? risks,
  int? id,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'Name': name,
      'Description': description,
      'HowItGeneratesMoney': howItGeneratesMoney,
      'RiskLevel': riskLevel,
      'Benefits': benefits,
      'Risks': risks,
      'id': id,
    }.withoutNulls,
  );

  return firestoreData;
}

class TypeOfInvestmentsRecordDocumentEquality
    implements Equality<TypeOfInvestmentsRecord> {
  const TypeOfInvestmentsRecordDocumentEquality();

  @override
  bool equals(TypeOfInvestmentsRecord? e1, TypeOfInvestmentsRecord? e2) {
    return e1?.name == e2?.name &&
        e1?.description == e2?.description &&
        e1?.howItGeneratesMoney == e2?.howItGeneratesMoney &&
        e1?.riskLevel == e2?.riskLevel &&
        e1?.benefits == e2?.benefits &&
        e1?.risks == e2?.risks &&
        e1?.id == e2?.id;
  }

  @override
  int hash(TypeOfInvestmentsRecord? e) => const ListEquality().hash([
        e?.name,
        e?.description,
        e?.howItGeneratesMoney,
        e?.riskLevel,
        e?.benefits,
        e?.risks,
        e?.id
      ]);

  @override
  bool isValidKey(Object? o) => o is TypeOfInvestmentsRecord;
}
