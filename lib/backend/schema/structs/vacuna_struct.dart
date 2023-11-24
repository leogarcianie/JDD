import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class VacunaStruct extends FFFirebaseStruct {
  VacunaStruct({
    String? acronimo,
    DateTime? fecha,
    String? descripcion,
    int? mascotaID,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _acronimo = acronimo,
        _fecha = fecha,
        _descripcion = descripcion,
        _mascotaID = mascotaID,
        super(firestoreUtilData);

  //"acronimo" field
  String? _acronimo;
  String get acronimo => _acronimo ?? '';
  set acronimo(String? val) => _acronimo = val;
  bool hasAcronimo() => _acronimo != null;

  //"fecha" field
  DateTime? _fecha;
  DateTime? get fecha => _fecha;
  set fecha(DateTime? val) => _fecha = val;
  bool hasFecha() => _fecha != null;

  //"descripcion" field
  String? _descripcion;
  String get descripcion => _descripcion ?? '';
  set descripcion(String? val) => _descripcion = val;
  bool hasDescripcion() => _descripcion != null;

  //"mascotaID" field
  int? _mascotaID;
  int get mascotaID => _mascotaID ?? 0;
  set mascotaID(int? val) => _mascotaID = val;
  void incrementMascotaID(int amount) => _mascotaID = mascotaID + amount;
  bool hasMascotaID() => _mascotaID != null;

  static VacunaStruct fromMap(Map<String, dynamic> data) => VacunaStruct(
        acronimo: data['acronimo'] as String?,
        fecha: data['fecha'] as DateTime?,
        descripcion: data['descripcion'] as String?,
        mascotaID: castToType<int>(data['mascotaID']),
      );

  static VacunaStruct? maybeFromMap(dynamic data) =>
      data is Map<String, dynamic> ? VacunaStruct.fromMap(data) : null;

  Map<String, dynamic> toMap() => {
        'acronimo': _acronimo,
        'fecha': _fecha,
        'descripcion': _descripcion,
        'mascotaID': _mascotaID,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'acronimo': serializeParam(
          _acronimo,
          ParamType.String,
        ),
        'fecha': serializeParam(
          _fecha,
          ParamType.DateTime,
        ),
        'descripcion': serializeParam(
          _descripcion,
          ParamType.String,
        ),
        'mascotaID': serializeParam(
          _mascotaID,
          ParamType.int,
        ),
      }.withoutNulls;

  static VacunaStruct fromSerializableMap(Map<String, dynamic> data) =>
      VacunaStruct(
        acronimo: deserializeParam(
          data['acronimo'],
          ParamType.String,
          false,
        ),
        fecha: deserializeParam(
          data['fecha'],
          ParamType.DateTime,
          false,
        ),
        descripcion: deserializeParam(
          data['descripcion'],
          ParamType.String,
          false,
        ),
        mascotaID: deserializeParam(
          data['mascotaID'],
          ParamType.int,
          false,
        ),
      );

  @override
  String toString() => 'VacunaStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is VacunaStruct &&
        acronimo == other.acronimo &&
        fecha == other.fecha &&
        descripcion == other.descripcion &&
        mascotaID == other.mascotaID;
  }

  @override
  int get hashCode =>
      const ListEquality().hash([acronimo, fecha, descripcion, mascotaID]);
}

VacunaStruct createVacunaStruct({
  String? acronimo,
  DateTime? fecha,
  String? descripcion,
  int? mascotaID,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    VacunaStruct(
      acronimo: acronimo,
      fecha: fecha,
      descripcion: descripcion,
      mascotaID: mascotaID,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

VacunaStruct? updateVacunaStruct(
  VacunaStruct? vacuna, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    vacuna
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addVacunaStructData(
  Map<String, dynamic> firestoreData,
  VacunaStruct? vacuna,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (vacuna == null) {
    return;
  }
  if (vacuna.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && vacuna.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final vacunaData = getVacunaFirestoreData(vacuna, forFieldValue);
  final nestedData = vacunaData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = vacuna.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getVacunaFirestoreData(
  VacunaStruct? vacuna, [
  bool forFieldValue = false,
]) {
  if (vacuna == null) {
    return {};
  }
  final firestoreData = mapToFirestore(vacuna.toMap());

  vacuna.firestoreUtilData.fieldValues.forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getVacunaListFirestoreData(
  List<VacunaStruct>? vacunas,
) =>
    vacunas?.map((e) => getVacunaFirestoreData(e, true)).toList() ?? [];