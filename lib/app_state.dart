import 'package:shared_preferences/shared_preferences.dart';
import 'flutter_flow/lat_lng.dart';
import 'dart:convert';

class FFAppState {
  static final FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal() {
    initializePersistedState();
  }

  Future initializePersistedState() async {
    prefs = await SharedPreferences.getInstance();
    _accessToken = prefs.getString('ff_accessToken') ?? _accessToken;
    if (prefs.containsKey('ff_productList')) {
      try {
        _productList = jsonDecode(prefs.getString('ff_productList') ?? '');
      } catch (e) {
        print("Can't decode persisted json. Error: $e.");
      }
    }
  }

  late SharedPreferences prefs;

  String _accessToken = '';
  String get accessToken => _accessToken;
  set accessToken(String _value) {
    _accessToken = _value;
    prefs.setString('ff_accessToken', _value);
  }

  dynamic _productList;
  dynamic get productList => _productList;
  set productList(dynamic _value) {
    _productList = _value;
    prefs.setString('ff_productList', jsonEncode(_value));
  }

  DateTime? pickupDate;

  String pickupName = '';

  String pickupContact = '';

  String pickupStreetAddress = '';

  String pickOffice = '';

  String pickCity = '';

  String pickZip = '';

  String pickInstrucation = '';

  String pickMethod = 'Direct Handoff';

  bool isUserLoggin = false;

  dynamic userData;

  dynamic logResponse;

  dynamic planSelectedObj;
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
