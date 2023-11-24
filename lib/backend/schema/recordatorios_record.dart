import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class RecordatoriosRecord extends FirestoreRecord {
  RecordatoriosRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  //"idusario" field
  DocumentReference? _idusario;
  DocumentReference? get idusario => _idusario;
  bool hasIdusario() => _idusario != null;

  //"idMascota" field
  int? _idMascota;
  int get idMascota => _idMascota ?? 0;
  bool hasIdMascota() => _idMascota != null;

  //"tarea" field
  String? _tarea;
  String get tarea => _tarea ?? '';
  bool hasTarea() => _tarea != null;

  //"fecha" field
  DateTime? _fecha;
  DateTime? get fecha => _fecha;
  bool hasFecha() => _fecha != null;

  //"idRecordatorio" field
  int? _idRecordatorio;
  int get idRecordatorio => _idRecordatorio ?? 0;
  bool hasIdRecordatorio() => _idRecordatorio != null;

  void _initializeFields() {
    _idusario = snapshotData['idusario'] as DocumentReference?;
    _idMascota = castToType<int>(snapshotData['idMascota']);
    _tarea = snapshotData['tarea'] as String?;
    _fecha = snapshotData['fecha'] as DateTime?;
    _idRecordatorio = castToType<int>(snapshotData['idRecordatorio']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('recordatorios');

  static Stream<RecordatoriosRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => RecordatoriosRecord.fromSnapshot(s));

  static Future<RecordatoriosRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => RecordatoriosRecord.fromSnapshot(s));

  static RecordatoriosRecord fromSnapshot(DocumentSnapshot snapshot) =>
      RecordatoriosRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static RecordatoriosRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      RecordatoriosRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'RecordatoriosRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is RecordatoriosRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createRecordatoriosRecordData({
  DocumentReference? idusario,
  int? idMascota,
  String? tarea,
  DateTime? fecha,
  int? idRecordatorio,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'idusario': idusario,
      'idMascota': idMascota,
      'tarea': tarea,
      'fecha': fecha,
      'idRecordatorio': idRecordatorio,
    }.withoutNulls,
  );

  return firestoreData;
}

class RecordatoriosRecordDocumentEquality
    implements Equality<RecordatoriosRecord> {
  const RecordatoriosRecordDocumentEquality();

  @override
  bool equals(RecordatoriosRecord? e1, RecordatoriosRecord? e2) {
    return e1?.idusario == e2?.idusario &&
        e1?.idMascota == e2?.idMascota &&
        e1?.tarea == e2?.tarea &&
        e1?.fecha == e2?.fecha &&
        e1?.idRecordatorio == e2?.idRecordatorio;
  }

  @override
  int hash(RecordatoriosRecord? e) => const ListEquality()
      .hash([e?.idusario, e?.idMascota, e?.tarea, e?.fecha, e?.idRecordatorio]);

  @override
  bool isValidKey(Object? o) => o is RecordatoriosRecord;
}