import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class MascotaStruct extends FFFirebaseStruct {
  MascotaStruct({
    String? nombre,
    int? edad,
    int? peso,
    String? raza,
    bool? especie,
    String? foto,
    List<VacunaStruct>? vacunas,
    DocumentReference? userID,
    int? mascotaID,
    String? prueba,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _nombre = nombre,
        _edad = edad,
        _peso = peso,
        _raza = raza,
        _especie = especie,
        _foto = foto,
        _vacunas = vacunas,
        _userID = userID,
        _mascotaID = mascotaID,
        _prueba = prueba,
        super(firestoreUtilData);

  //"nombre" field
  String? _nombre;
  String get nombre => _nombre ?? '';
  set nombre(String? val) => _nombre = val;
  bool hasNombre() => _nombre != null;

  //"edad" field
  int? _edad;
  int get edad => _edad ?? 0;
  set edad(int? val) => _edad = val;
  void incrementEdad(int amount) => _edad = edad + amount;
  bool hasEdad() => _edad != null;

  //"peso" field
  int? _peso;
  int get peso => _peso ?? 0;
  set peso(int? val) => _peso = val;
  void incrementPeso(int amount) => _peso = peso + amount;
  bool hasPeso() => _peso != null;

  //"raza" field
  String? _raza;
  String get raza => _raza ?? '';
  set raza(String? val) => _raza = val;
  bool hasRaza() => _raza != null;

  //"especie" field
  bool? _especie;
  bool get especie => _especie ?? false;
  set especie(bool? val) => _especie = val;
  bool hasEspecie() => _especie != null;

  //"foto" field
  String? _foto;
  String get foto => _foto ?? '';
  set foto(String? val) => _foto = val;
  bool hasFoto() => _foto != null;

  //"vacunas" field
  List<VacunaStruct>? _vacunas;
  List<VacunaStruct> get vacunas => _vacunas ?? const [];
  set vacunas(List<VacunaStruct>? val) => _vacunas = val;
  void updateVacunas(Function(List<VacunaStruct>) updateFn) =>
      updateFn(_vacunas ??= []);
  bool hasVacunas() => _vacunas != null;

  //"userID" field
  DocumentReference? _userID;
  DocumentReference? get userID => _userID;
  set userID(DocumentReference? val) => _userID = val;
  bool hasUserID() => _userID != null;

  //"mascotaID" field
  int? _mascotaID;
  int get mascotaID => _mascotaID ?? 0;
  set mascotaID(int? val) => _mascotaID = val;
  void incrementMascotaID(int amount) => _mascotaID = mascotaID + amount;
  bool hasMascotaID() => _mascotaID != null;

  //"prueba" field
  String? _prueba;
  String get prueba => _prueba ?? '';
  set prueba(String? val) => _prueba = val;
  bool hasPrueba() => _prueba != null;

  static MascotaStruct fromMap(Map<String, dynamic> data) => MascotaStruct(
        nombre: data['nombre'] as String?,
        edad: castToType<int>(data['edad']),
        peso: castToType<int>(data['peso']),
        raza: data['raza'] as String?,
        especie: data['especie'] as bool?,
        foto: data['foto'] as String?,
        vacunas: getStructList(
          data['vacunas'],
          VacunaStruct.fromMap,
        ),
        userID: data['userID'] as DocumentReference?,
        mascotaID: castToType<int>(data['mascotaID']),
        prueba: data['prueba'] as String?,
      );

  static MascotaStruct? maybeFromMap(dynamic data) =>
      data is Map<String, dynamic> ? MascotaStruct.fromMap(data) : null;

  Map<String, dynamic> toMap() => {
        'nombre': _nombre,
        'edad': _edad,
        'peso': _peso,
        'raza': _raza,
        'especie': _especie,
        'foto': _foto,
        'vacunas': _vacunas?.map((e) => e.toMap()).toList(),
        'userID': _userID,
        'mascotaID': _mascotaID,
        'prueba': _prueba,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'nombre': serializeParam(
          _nombre,
          ParamType.String,
        ),
        'edad': serializeParam(
          _edad,
          ParamType.int,
        ),
        'peso': serializeParam(
          _peso,
          ParamType.int,
        ),
        'raza': serializeParam(
          _raza,
          ParamType.String,
        ),
        'especie': serializeParam(
          _especie,
          ParamType.bool,
        ),
        'foto': serializeParam(
          _foto,
          ParamType.String,
        ),
        'vacunas': serializeParam(
          _vacunas,
          ParamType.DataStruct,
          true,
        ),
        'userID': serializeParam(
          _userID,
          ParamType.DocumentReference,
        ),
        'mascotaID': serializeParam(
          _mascotaID,
          ParamType.int,
        ),
        'prueba': serializeParam(
          _prueba,
          ParamType.String,
        ),
      }.withoutNulls;

  static MascotaStruct fromSerializableMap(Map<String, dynamic> data) =>
      MascotaStruct(
        nombre: deserializeParam(
          data['nombre'],
          ParamType.String,
          false,
        ),
        edad: deserializeParam(
          data['edad'],
          ParamType.int,
          false,
        ),
        peso: deserializeParam(
          data['peso'],
          ParamType.int,
          false,
        ),
        raza: deserializeParam(
          data['raza'],
          ParamType.String,
          false,
        ),
        especie: deserializeParam(
          data['especie'],
          ParamType.bool,
          false,
        ),
        foto: deserializeParam(
          data['foto'],
          ParamType.String,
          false,
        ),
        vacunas: deserializeStructParam<VacunaStruct>(
          data['vacunas'],
          ParamType.DataStruct,
          true,
          structBuilder: VacunaStruct.fromSerializableMap,
        ),
        userID: deserializeParam(
          data['userID'],
          ParamType.DocumentReference,
          false,
          collectionNamePath: ['users'],
        ),
        mascotaID: deserializeParam(
          data['mascotaID'],
          ParamType.int,
          false,
        ),
        prueba: deserializeParam(
          data['prueba'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'MascotaStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    const listEquality = ListEquality();
    return other is MascotaStruct &&
        nombre == other.nombre &&
        edad == other.edad &&
        peso == other.peso &&
        raza == other.raza &&
        especie == other.especie &&
        foto == other.foto &&
        listEquality.equals(vacunas, other.vacunas) &&
        userID == other.userID &&
        mascotaID == other.mascotaID &&
        prueba == other.prueba;
  }

  @override
  int get hashCode => const ListEquality().hash([
        nombre,
        edad,
        peso,
        raza,
        especie,
        foto,
        vacunas,
        userID,
        mascotaID,
        prueba
      ]);
}

MascotaStruct createMascotaStruct({
  String? nombre,
  int? edad,
  int? peso,
  String? raza,
  bool? especie,
  String? foto,
  DocumentReference? userID,
  int? mascotaID,
  String? prueba,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    MascotaStruct(
      nombre: nombre,
      edad: edad,
      peso: peso,
      raza: raza,
      especie: especie,
      foto: foto,
      userID: userID,
      mascotaID: mascotaID,
      prueba: prueba,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

MascotaStruct? updateMascotaStruct(
  MascotaStruct? mascota, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    mascota
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addMascotaStructData(
  Map<String, dynamic> firestoreData,
  MascotaStruct? mascota,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (mascota == null) {
    return;
  }
  if (mascota.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && mascota.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final mascotaData = getMascotaFirestoreData(mascota, forFieldValue);
  final nestedData = mascotaData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = mascota.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getMascotaFirestoreData(
  MascotaStruct? mascota, [
  bool forFieldValue = false,
]) {
  if (mascota == null) {
    return {};
  }
  final firestoreData = mapToFirestore(mascota.toMap());

  mascota.firestoreUtilData.fieldValues.forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getMascotaListFirestoreData(
  List<MascotaStruct>? mascotas,
) =>
    mascotas?.map((e) => getMascotaFirestoreData(e, true)).toList() ?? [];