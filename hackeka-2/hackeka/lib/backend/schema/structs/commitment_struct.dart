// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class CommitmentStruct extends FFFirebaseStruct {
  CommitmentStruct({
    String? type,
    String? name,
    String? description,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _type = type,
        _name = name,
        _description = description,
        super(firestoreUtilData);

  // "Type" field.
  String? _type;
  String get type => _type ?? '';
  set type(String? val) => _type = val;

  bool hasType() => _type != null;

  // "Name" field.
  String? _name;
  String get name => _name ?? '';
  set name(String? val) => _name = val;

  bool hasName() => _name != null;

  // "Description" field.
  String? _description;
  String get description => _description ?? '';
  set description(String? val) => _description = val;

  bool hasDescription() => _description != null;

  static CommitmentStruct fromMap(Map<String, dynamic> data) =>
      CommitmentStruct(
        type: data['Type'] as String?,
        name: data['Name'] as String?,
        description: data['Description'] as String?,
      );

  static CommitmentStruct? maybeFromMap(dynamic data) => data is Map
      ? CommitmentStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'Type': _type,
        'Name': _name,
        'Description': _description,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'Type': serializeParam(
          _type,
          ParamType.String,
        ),
        'Name': serializeParam(
          _name,
          ParamType.String,
        ),
        'Description': serializeParam(
          _description,
          ParamType.String,
        ),
      }.withoutNulls;

  static CommitmentStruct fromSerializableMap(Map<String, dynamic> data) =>
      CommitmentStruct(
        type: deserializeParam(
          data['Type'],
          ParamType.String,
          false,
        ),
        name: deserializeParam(
          data['Name'],
          ParamType.String,
          false,
        ),
        description: deserializeParam(
          data['Description'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'CommitmentStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is CommitmentStruct &&
        type == other.type &&
        name == other.name &&
        description == other.description;
  }

  @override
  int get hashCode => const ListEquality().hash([type, name, description]);
}

CommitmentStruct createCommitmentStruct({
  String? type,
  String? name,
  String? description,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    CommitmentStruct(
      type: type,
      name: name,
      description: description,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

CommitmentStruct? updateCommitmentStruct(
  CommitmentStruct? commitment, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    commitment
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addCommitmentStructData(
  Map<String, dynamic> firestoreData,
  CommitmentStruct? commitment,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (commitment == null) {
    return;
  }
  if (commitment.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && commitment.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final commitmentData = getCommitmentFirestoreData(commitment, forFieldValue);
  final nestedData = commitmentData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = commitment.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getCommitmentFirestoreData(
  CommitmentStruct? commitment, [
  bool forFieldValue = false,
]) {
  if (commitment == null) {
    return {};
  }
  final firestoreData = mapToFirestore(commitment.toMap());

  // Add any Firestore field values
  commitment.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getCommitmentListFirestoreData(
  List<CommitmentStruct>? commitments,
) =>
    commitments?.map((e) => getCommitmentFirestoreData(e, true)).toList() ?? [];
