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
      _onBoardingDetailsFilled = prefs.getBool('ff_onBoardingDetailsFilled') ??
          _onBoardingDetailsFilled;
    });
  }

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  late SharedPreferences prefs;

  int _index = 0;
  int get index => _index;
  set index(int _value) {
    _index = _value;
  }

  bool _showFullEmployeeList = true;
  bool get showFullEmployeeList => _showFullEmployeeList;
  set showFullEmployeeList(bool _value) {
    _showFullEmployeeList = _value;
  }

  double _activeHours = 0.0;
  double get activeHours => _activeHours;
  set activeHours(double _value) {
    _activeHours = _value;
  }

  int _loopCounter = 0;
  int get loopCounter => _loopCounter;
  set loopCounter(int _value) {
    _loopCounter = _value;
  }

  double _breakHours = 0.0;
  double get breakHours => _breakHours;
  set breakHours(double _value) {
    _breakHours = _value;
  }

  List<String> _title = [
    'Date',
    'Full Name',
    'Total Active',
    'Total Break',
    'Total OverTime'
  ];
  List<String> get title => _title;
  set title(List<String> _value) {
    _title = _value;
  }

  void addToTitle(String _value) {
    _title.add(_value);
  }

  void removeFromTitle(String _value) {
    _title.remove(_value);
  }

  void removeAtIndexFromTitle(int _index) {
    _title.removeAt(_index);
  }

  void updateTitleAtIndex(
    int _index,
    String Function(String) updateFn,
  ) {
    _title[_index] = updateFn(_title[_index]);
  }

  void insertAtIndexInTitle(int _index, String _value) {
    _title.insert(_index, _value);
  }

  List<String> _excelData = [];
  List<String> get excelData => _excelData;
  set excelData(List<String> _value) {
    _excelData = _value;
  }

  void addToExcelData(String _value) {
    _excelData.add(_value);
  }

  void removeFromExcelData(String _value) {
    _excelData.remove(_value);
  }

  void removeAtIndexFromExcelData(int _index) {
    _excelData.removeAt(_index);
  }

  void updateExcelDataAtIndex(
    int _index,
    String Function(String) updateFn,
  ) {
    _excelData[_index] = updateFn(_excelData[_index]);
  }

  void insertAtIndexInExcelData(int _index, String _value) {
    _excelData.insert(_index, _value);
  }

  List<SheetDataStruct> _data = [];
  List<SheetDataStruct> get data => _data;
  set data(List<SheetDataStruct> _value) {
    _data = _value;
  }

  void addToData(SheetDataStruct _value) {
    _data.add(_value);
  }

  void removeFromData(SheetDataStruct _value) {
    _data.remove(_value);
  }

  void removeAtIndexFromData(int _index) {
    _data.removeAt(_index);
  }

  void updateDataAtIndex(
    int _index,
    SheetDataStruct Function(SheetDataStruct) updateFn,
  ) {
    _data[_index] = updateFn(_data[_index]);
  }

  void insertAtIndexInData(int _index, SheetDataStruct _value) {
    _data.insert(_index, _value);
  }

  double _totalActiveHour = 0.0;
  double get totalActiveHour => _totalActiveHour;
  set totalActiveHour(double _value) {
    _totalActiveHour = _value;
  }

  List<String> _areaList = [];
  List<String> get areaList => _areaList;
  set areaList(List<String> _value) {
    _areaList = _value;
  }

  void addToAreaList(String _value) {
    _areaList.add(_value);
  }

  void removeFromAreaList(String _value) {
    _areaList.remove(_value);
  }

  void removeAtIndexFromAreaList(int _index) {
    _areaList.removeAt(_index);
  }

  void updateAreaListAtIndex(
    int _index,
    String Function(String) updateFn,
  ) {
    _areaList[_index] = updateFn(_areaList[_index]);
  }

  void insertAtIndexInAreaList(int _index, String _value) {
    _areaList.insert(_index, _value);
  }

  DateTime? _endDate;
  DateTime? get endDate => _endDate;
  set endDate(DateTime? _value) {
    _endDate = _value;
  }

  bool _onBoardingDetailsFilled = false;
  bool get onBoardingDetailsFilled => _onBoardingDetailsFilled;
  set onBoardingDetailsFilled(bool _value) {
    _onBoardingDetailsFilled = _value;
    prefs.setBool('ff_onBoardingDetailsFilled', _value);
  }
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
