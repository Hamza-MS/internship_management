import 'package:flutter/material.dart';
import '/backend/backend.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'flutter_flow/flutter_flow_util.dart';

class FFAppState extends ChangeNotifier {
  static final FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  Future initializePersistedState() async {}

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  bool _menu = false;
  bool get menu => _menu;
  set menu(bool _value) {
    _menu = _value;
  }

  bool _showFullList = true;
  bool get showFullList => _showFullList;
  set showFullList(bool _value) {
    _showFullList = _value;
  }

  DocumentReference? _idUser =
      FirebaseFirestore.instance.doc('/user/7S7Sc0vsJHcQvL6DSqLcUPIx3Fo1');
  DocumentReference? get idUser => _idUser;
  set idUser(DocumentReference? _value) {
    _idUser = _value;
  }

  String _currentPage = '';
  String get currentPage => _currentPage;
  set currentPage(String _value) {
    _currentPage = _value;
  }

  DocumentReference? _idEudiant =
      FirebaseFirestore.instance.doc('/user/7S7Sc0vsJHcQvL6DSqLcUPIx3Fo1');
  DocumentReference? get idEudiant => _idEudiant;
  set idEudiant(DocumentReference? _value) {
    _idEudiant = _value;
  }

  DocumentReference? _idProfesseur =
      FirebaseFirestore.instance.doc('/encadrant/ZR9Q4yZj5dj5qulxdFan');
  DocumentReference? get idProfesseur => _idProfesseur;
  set idProfesseur(DocumentReference? _value) {
    _idProfesseur = _value;
  }

  DocumentReference? _iduser =
      FirebaseFirestore.instance.doc('/user/7S7Sc0vsJHcQvL6DSqLcUPIx3Fo1');
  DocumentReference? get iduser => _iduser;
  set iduser(DocumentReference? _value) {
    _iduser = _value;
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
