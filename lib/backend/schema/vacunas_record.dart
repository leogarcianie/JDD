import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class VacunasRecord extends FirestoreRecord {
  VacunasRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  //"acronimo" field
  String? _acronimo;
  String get acronimo => _acronimo ?? '';
  bool hasAcronimo() => _acronimo != null;

  //"fecha" field
  DateTime? _fecha;
  DateTime? get fecha => _fecha;
  bool hasFecha() => _fecha != null;

  //"descripcion" field
  String? _descripcion;
  String get descripcion => _descripcion ?? '';
  bool hasDescripcion() => _descripcion != null;

  //"tipo" field
  bool? _tipo;
  bool get tipo => _tipo ?? false;
  bool hasTipo() => _tipo != null;

  //"mascotaID" field
  int? _mascotaID;
  int get mascotaID => _mascotaID ?? 0;
  bool hasMascotaID() => _mascotaID != null;

  //"userID" field
  DocumentReference? _userID;
  DocumentReference? get userID => _userID;
  bool hasUserID() => _userID != null;

  void _initializeFields() {
    _acronimo = snapshotData['acronimo'] as String?;
    _fecha = snapshotData['fecha'] as DateTime?;
    _descripcion = snapshotData['descripcion'] as String?;
    _tipo = snapshotData['tipo'] as bool?;
    _mascotaID = castToType<int>(snapshotData['mascotaID']);
    _userID = snapshotData['userID'] as DocumentReference?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('vacunas');

  static Stream<VacunasRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => VacunasRecord.fromSnapshot(s));

  static Future<VacunasRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => VacunasRecord.fromSnapshot(s));

  static VacunasRecord fromSnapshot(DocumentSnapshot snapshot) =>
      VacunasRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static VacunasRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      VacunasRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'VacunasRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is VacunasRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createVacunasRecordData({
  String? acronimo,
  DateTime? fecha,
  String? descripcion,
  bool? tipo,
  int? mascotaID,
  DocumentReference? userID,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'acronimo': acronimo,
      'fecha': fecha,
      'descripcion': descripcion,
      'tipo': tipo,
      'mascotaID': mascotaID,
      'userID': userID,
    }.withoutNulls,
  );

  return firestoreData;
}

class VacunasRecordDocumentEquality implements Equality<VacunasRecord> {
  const VacunasRecordDocumentEquality();

  @override
  bool equals(VacunasRecord? e1, VacunasRecord? e2) {
    return e1?.acronimo == e2?.acronimo &&
        e1?.fecha == e2?.fecha &&
        e1?.descripcion == e2?.descripcion &&
        e1?.tipo == e2?.tipo &&
        e1?.mascotaID == e2?.mascotaID &&
        e1?.userID == e2?.userID;
  }

  @override
  int hash(VacunasRecord? e) => const ListEquality().hash([
        e?.acronimo,
        e?.fecha,
        e?.descripcion,
        e?.tipo,
        e?.mascotaID,
        e?.userID
      ]);

  @override
  bool isValidKey(Object? o) => o is VacunasRecord;
}