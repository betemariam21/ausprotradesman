import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/components/empty_scedule/empty_scedule_widget.dart';
import '/components/end_shift_component/end_shift_component_widget.dart';
import '/components/select_area_component/select_area_component_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/custom_code/actions/index.dart' as actions;
import '/flutter_flow/custom_functions.dart' as functions;
import 'shift_scedule_page_widget.dart' show ShiftScedulePageWidget;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class ShiftScedulePageModel extends FlutterFlowModel<ShiftScedulePageWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Stores action output result for [Backend Call - Create Document] action in Button widget.
  DriverDailyScheduleRecord? createDocument;
  // Stores action output result for [Firestore Query - Query a collection] action in Container widget.
  DriverDailyScheduleRecord? driverDailySchedule;
  // Stores action output result for [Firestore Query - Query a collection] action in Container widget.
  DriverDailyScheduleRecord? driverDailySchedule2;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
