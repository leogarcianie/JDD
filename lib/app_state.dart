import 'package:flutter/material.dart';
import '/backend/backend.dart';
import '/backend/schema/structs/index.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'flutter_flow/flutter_flow_util.dart';

class FFAppState extends ChangeNotifier {
  static FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  static void reset() {
    _instance = FFAppState._internal();
  }

  Future initializePersistedState() async {
    prefs = await SharedPreferences.getInstance();
    _safeInit(() {
      _nextID = prefs.getInt('ff_nextID') ?? _nextID;
    });
    _safeInit(() {
      _nextIDRec = prefs.getInt('ff_nextIDRec') ?? _nextIDRec;
    });
  }

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  late SharedPreferences prefs;

  int _currentMascotaID = 0;
  int get currentMascotaID => _currentMascotaID;
  set currentMascotaID(int _value) {
    _currentMascotaID = _value;
  }

  bool _icon = false;
  bool get icon => _icon;
  set icon(bool _value) {
    _icon = _value;
  }

  String _currentFoto = '';
  String get currentFoto => _currentFoto;
  set currentFoto(String _value) {
    _currentFoto = _value;
  }

  int _currentEdad = 0;
  int get currentEdad => _currentEdad;
  set currentEdad(int _value) {
    _currentEdad = _value;
  }

  int _currentPeso = 0;
  int get currentPeso => _currentPeso;
  set currentPeso(int _value) {
    _currentPeso = _value;
  }

  String _currentNombre = '';
  String get currentNombre => _currentNombre;
  set currentNombre(String _value) {
    _currentNombre = _value;
  }

  int _nextID = 0;
  int get nextID => _nextID;
  set nextID(int _value) {
    _nextID = _value;
    prefs.setInt('ff_nextID', _value);
  }

  int _nextIDRec = 0;
  int get nextIDRec => _nextIDRec;
  set nextIDRec(int _value) {
    _nextIDRec = _value;
    prefs.setInt('ff_nextIDRec', _value);
  }

  int _currentRecord = 0;
  int get currentRecord => _currentRecord;
  set currentRecord(int _value) {
    _currentRecord = _value;
  }

  String _currentRaza = '';
  String get currentRaza => _currentRaza;
  set currentRaza(String _value) {
    _currentRaza = _value;
  }

  String _currentEspecie = '';
  String get currentEspecie => _currentEspecie;
  set currentEspecie(String _value) {
    _currentEspecie = _value;
  }
}

LatLng? _latLngFromString(String? val) {
  if (val == null) {
    return null;
  }
  final split = val.split(',');
  final lat = double.parse(split.first);
  final lng = double.parse(split.last);
  return LatLng(lat, lng);
}

void _safeInit(Function() initializeField) {
  try {
    initializeField();
  } catch (_) {}
}

Future _safeInitAsync(Function() initializeField) async {
  try {
    await initializeField();
  } catch (_) {}
}
