// Automatic FlutterFlow imports
import '/backend/backend.dart';
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'package:excel/excel.dart';

Future exportToExcel(
  String? reportName,
  List<String> title,
  List<String>? data,
  List<SheetDataStruct>? sheetData,
  bool isDaily,
) async {
  var excel = Excel.createExcel();
  var sheet = excel['Sheet1'];
  List<CellValue> dataList =
      title.map((value) => TextCellValue(value)).toList();
  sheet.appendRow(dataList);
  if (isDaily) {
    List<CellValue> dataList2 =
        data!.map((value) => TextCellValue(value)).toList();
    sheet.appendRow(dataList2);
  } else {
    for (var data in sheetData!) {
      List<CellValue> row = [
        TextCellValue(data.date.toString()),
        TextCellValue(data.name.toString()),
        TextCellValue(data.activeHours.toString()),
        TextCellValue(data.breakHours.toString()),
        TextCellValue(data.overtimeHours.toString()),
      ];
      sheet.appendRow(row);
    }
  }
  excel.save(fileName: '$reportName.xlsx');
}
