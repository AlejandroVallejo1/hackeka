// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class TerminologiesStruct extends FFFirebaseStruct {
  TerminologiesStruct({
    String? name,
    String? description,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _name = name,
        _description = description,
        super(firestoreUtilData);

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

  static TerminologiesStruct fromMap(Map<String, dynamic> data) =>
      TerminologiesStruct(
        name: data['Name'] as String?,
        description: data['Description'] as String?,
      );

  static TerminologiesStruct? maybeFromMap(dynamic data) => data is Map
      ? TerminologiesStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'Name': _name,
        'Description': _description,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'Name': serializeParam(
          _name,
          ParamType.String,
        ),
        'Description': serializeParam(
          _description,
          ParamType.String,
        ),
      }.withoutNulls;

  static TerminologiesStruct fromSerializableMap(Map<String, dynamic> data) =>
      TerminologiesStruct(
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
  String toString() => 'TerminologiesStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is TerminologiesStruct &&
        name == other.name &&
        description == other.description;
  }

  @override
  int get hashCode => const ListEquality().hash([name, description]);
}

TerminologiesStruct createTerminologiesStruct({
  String? name,
  String? description,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    TerminologiesStruct(
      name: name,
      description: description,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

TerminologiesStruct? updateTerminologiesStruct(
  TerminologiesStruct? terminologies, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    terminologies
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addTerminologiesStructData(
  Map<String, dynamic> firestoreData,
  TerminologiesStruct? terminologies,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (terminologies == null) {
    return;
  }
  if (terminologies.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && terminologies.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final terminologiesData =
      getTerminologiesFirestoreData(terminologies, forFieldValue);
  final nestedData =
      terminologiesData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = terminologies.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getTerminologiesFirestoreData(
  TerminologiesStruct? terminologies, [
  bool forFieldValue = false,
]) {
  if (terminologies == null) {
    return {};
  }
  final firestoreData = mapToFirestore(terminologies.toMap());

  // Add any Firestore field values
  terminologies.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getTerminologiesListFirestoreData(
  List<TerminologiesStruct>? terminologiess,
) =>
    terminologiess
        ?.map((e) => getTerminologiesFirestoreData(e, true))
        .toList() ??
    [];
