import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class MascotasRecord extends FirestoreRecord {
  MascotasRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  //"userID" field
  DocumentReference? _userID;
  DocumentReference? get userID => _userID;
  bool hasUserID() => _userID != null;

  //"mascotaID" field
  int? _mascotaID;
  int get mascotaID => _mascotaID ?? 0;
  bool hasMascotaID() => _mascotaID != null;

  //"nombre" field
  String? _nombre;
  String get nombre => _nombre ?? '';
  bool hasNombre() => _nombre != null;

  //"edad" field
  int? _edad;
  int get edad => _edad ?? 0;
  bool hasEdad() => _edad != null;

  //"peso" field
  int? _peso;
  int get peso => _peso ?? 0;
  bool hasPeso() => _peso != null;

  //"foto" field
  String? _foto;
  String get foto => _foto ?? '';
  bool hasFoto() => _foto != null;

  //"raza" field
  String? _raza;
  String get raza => _raza ?? '';
  bool hasRaza() => _raza != null;

  //"especie" field
  String? _especie;
  String get especie => _especie ?? '';
  bool hasEspecie() => _especie != null;

  void _initializeFields() {
    _userID = snapshotData['userID'] as DocumentReference?;
    _mascotaID = castToType<int>(snapshotData['mascotaID']);
    _nombre = snapshotData['nombre'] as String?;
    _edad = castToType<int>(snapshotData['edad']);
    _peso = castToType<int>(snapshotData['peso']);
    _foto = snapshotData['foto'] as String?;
    _raza = snapshotData['raza'] as String?;
    _especie = snapshotData['especie'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('mascotas');

  static Stream<MascotasRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => MascotasRecord.fromSnapshot(s));

  static Future<MascotasRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => MascotasRecord.fromSnapshot(s));

  static MascotasRecord fromSnapshot(DocumentSnapshot snapshot) =>
      MascotasRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static MascotasRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      MascotasRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'MascotasRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is MascotasRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createMascotasRecordData({
  DocumentReference? userID,
  int? mascotaID,
  String? nombre,
  int? edad,
  int? peso,
  String? foto,
  String? raza,
  String? especie,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'userID': userID,
      'mascotaID': mascotaID,
      'nombre': nombre,
      'edad': edad,
      'peso': peso,
      'foto': foto,
      'raza': raza,
      'especie': especie,
    }.withoutNulls,
  );

  return firestoreData;
}

class MascotasRecordDocumentEquality implements Equality<MascotasRecord> {
  const MascotasRecordDocumentEquality();

  @override
  bool equals(MascotasRecord? e1, MascotasRecord? e2) {
    return e1?.userID == e2?.userID &&
        e1?.mascotaID == e2?.mascotaID &&
        e1?.nombre == e2?.nombre &&
        e1?.edad == e2?.edad &&
        e1?.peso == e2?.peso &&
        e1?.foto == e2?.foto &&
        e1?.raza == e2?.raza &&
        e1?.especie == e2?.especie;
  }

  @override
  int hash(MascotasRecord? e) => const ListEquality().hash([
        e?.userID,
        e?.mascotaID,
        e?.nombre,
        e?.edad,
        e?.peso,
        e?.foto,
        e?.raza,
        e?.especie
      ]);

  @override
  bool isValidKey(Object? o) => o is MascotasRecord;
}