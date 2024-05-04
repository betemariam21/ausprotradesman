import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'device_change_widget.dart' show DeviceChangeWidget;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class DeviceChangeModel extends FlutterFlowModel<DeviceChangeWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  final formKey = GlobalKey<FormState>();
  // State field(s) for EmailAddressField widget.
  FocusNode? emailAddressFieldFocusNode;
  TextEditingController? emailAddressFieldTextController;
  String? Function(BuildContext, String?)?
      emailAddressFieldTextControllerValidator;
  String? _emailAddressFieldTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Email is required';
    }

    return null;
  }

  // State field(s) for devicechangereason widget.
  FocusNode? devicechangereasonFocusNode;
  TextEditingController? devicechangereasonTextController;
  String? Function(BuildContext, String?)?
      devicechangereasonTextControllerValidator;
  // Stores action output result for [Firestore Query - Query a collection] action in LogInButton widget.
  List<UsersRecord>? usersList;

  @override
  void initState(BuildContext context) {
    emailAddressFieldTextControllerValidator =
        _emailAddressFieldTextControllerValidator;
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    emailAddressFieldFocusNode?.dispose();
    emailAddressFieldTextController?.dispose();

    devicechangereasonFocusNode?.dispose();
    devicechangereasonTextController?.dispose();
  }
}
