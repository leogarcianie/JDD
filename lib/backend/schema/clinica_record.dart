import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ClinicaRecord extends FirestoreRecord {
  ClinicaRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  //"mascotaid" field
  int? _mascotaid;
  int get mascotaid => _mascotaid ?? 0;
  bool hasMascotaid() => _mascotaid != null;

  //"fecha" field
  DateTime? _fecha;
  DateTime? get fecha => _fecha;
  bool hasFecha() => _fecha != null;

  //"motivo" field
  String? _motivo;
  String get motivo => _motivo ?? '';
  bool hasMotivo() => _motivo != null;

  //"diagnostico" field
  String? _diagnostico;
  String get diagnostico => _diagnostico ?? '';
  bool hasDiagnostico() => _diagnostico != null;

  //"destacada" field
  bool? _destacada;
  bool get destacada => _destacada ?? false;
  bool hasDestacada() => _destacada != null;

  //"userID" field
  DocumentReference? _userID;
  DocumentReference? get userID => _userID;
  bool hasUserID() => _userID != null;

  void _initializeFields() {
    _mascotaid = castToType<int>(snapshotData['mascotaid']);
    _fecha = snapshotData['fecha'] as DateTime?;
    _motivo = snapshotData['motivo'] as String?;
    _diagnostico = snapshotData['diagnostico'] as String?;
    _destacada = snapshotData['destacada'] as bool?;
    _userID = snapshotData['userID'] as DocumentReference?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('clinica');

  static Stream<ClinicaRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => ClinicaRecord.fromSnapshot(s));

  static Future<ClinicaRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => ClinicaRecord.fromSnapshot(s));

  static ClinicaRecord fromSnapshot(DocumentSnapshot snapshot) =>
      ClinicaRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static ClinicaRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      ClinicaRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'ClinicaRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is ClinicaRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createClinicaRecordData({
  int? mascotaid,
  DateTime? fecha,
  String? motivo,
  String? diagnostico,
  bool? destacada,
  DocumentReference? userID,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'mascotaid': mascotaid,
      'fecha': fecha,
      'motivo': motivo,
      'diagnostico': diagnostico,
      'destacada': destacada,
      'userID': userID,
    }.withoutNulls,
  );

  return firestoreData;
}

class ClinicaRecordDocumentEquality implements Equality<ClinicaRecord> {
  const ClinicaRecordDocumentEquality();

  @override
  bool equals(ClinicaRecord? e1, ClinicaRecord? e2) {
    return e1?.mascotaid == e2?.mascotaid &&
        e1?.fecha == e2?.fecha &&
        e1?.motivo == e2?.motivo &&
        e1?.diagnostico == e2?.diagnostico &&
        e1?.destacada == e2?.destacada &&
        e1?.userID == e2?.userID;
  }

  @override
  int hash(ClinicaRecord? e) => const ListEquality().hash([
        e?.mascotaid,
        e?.fecha,
        e?.motivo,
        e?.diagnostico,
        e?.destacada,
        e?.userID
      ]);

  @override
  bool isValidKey(Object? o) => o is ClinicaRecord;
}