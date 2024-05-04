import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'change_leave_status_component_model.dart';
export 'change_leave_status_component_model.dart';

class ChangeLeaveStatusComponentWidget extends StatefulWidget {
  const ChangeLeaveStatusComponentWidget({
    super.key,
    required this.leaveDoc,
    required this.employeeDocument,
  });

  final EmployeeLeaveRecord? leaveDoc;
  final DocumentReference? employeeDocument;

  @override
  State<ChangeLeaveStatusComponentWidget> createState() =>
      _ChangeLeaveStatusComponentWidgetState();
}

class _ChangeLeaveStatusComponentWidgetState
    extends State<ChangeLeaveStatusComponentWidget> {
  late ChangeLeaveStatusComponentModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ChangeLeaveStatusComponentModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.sizeOf(context).width * 1.0,
      decoration: BoxDecoration(
        color: FlutterFlowTheme.of(context).secondaryBackground,
        borderRadius: BorderRadius.circular(20.0),
      ),
      child: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0.0, 25.0, 0.0, 0.0),
              child: Text(
                'Do you want to remove this \nleave from the employee history ?',
                textAlign: TextAlign.center,
                style: FlutterFlowTheme.of(context).bodyMedium.override(
                      fontFamily: 'Outfit',
                      fontSize: 16.0,
                      letterSpacing: 0.0,
                      fontWeight: FontWeight.bold,
                    ),
              ),
            ),
            Align(
              alignment: AlignmentDirectional(0.0, 0.0),
              child: Container(
                width: MediaQuery.sizeOf(context).width * 0.8,
                decoration: BoxDecoration(),
                child: Align(
                  alignment: AlignmentDirectional(0.0, 0.0),
                  child: Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(0.0, 10.0, 0.0, 0.0),
                    child: Text(
                      widget.leaveDoc?.leaveType == 'Annual Leave'
                          ? 'We will add ${widget.leaveDoc?.numberOfDays?.toString()} days to the employee total annual leave '
                          : 'We will add ${widget.leaveDoc?.numberOfDays?.toString()} days to the employee total sick leave ',
                      style: FlutterFlowTheme.of(context).bodySmall.override(
                            fontFamily: 'Open Sans',
                            letterSpacing: 0.0,
                          ),
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0.0, 35.0, 0.0, 0.0),
              child: Container(
                width: () {
                  if (MediaQuery.sizeOf(context).width < kBreakpointSmall) {
                    return (MediaQuery.sizeOf(context).width * 0.35);
                  } else if (MediaQuery.sizeOf(context).width <
                      kBreakpointMedium) {
                    return (MediaQuery.sizeOf(context).width * 0.2);
                  } else if (MediaQuery.sizeOf(context).width <
                      kBreakpointLarge) {
                    return (MediaQuery.sizeOf(context).width * 0.2);
                  } else {
                    return (MediaQuery.sizeOf(context).width * 0.35);
                  }
                }(),
                height: 50.0,
                decoration: BoxDecoration(
                  color: FlutterFlowTheme.of(context).secondaryBackground,
                ),
                child: FFButtonWidget(
                  onPressed: () async {
                    if (widget.leaveDoc?.leaveType == 'Annual Leave') {
                      await widget.employeeDocument!.update({
                        ...mapToFirestore(
                          {
                            'activeLeaveDays': FieldValue.increment(
                                widget.leaveDoc!.numberOfDays),
                          },
                        ),
                      });
                      await widget.leaveDoc!.reference.delete();
                      Navigator.pop(context);
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                          content: Text(
                            'Leave status updated successfully',
                            style: GoogleFonts.getFont(
                              'Open Sans',
                              color: FlutterFlowTheme.of(context)
                                  .secondaryBackground,
                              fontSize: 12.0,
                            ),
                          ),
                          duration: Duration(milliseconds: 3000),
                          backgroundColor: Color(0xFF21F621),
                        ),
                      );
                    } else {
                      await widget.employeeDocument!.update({
                        ...mapToFirestore(
                          {
                            'activeSickLeaveDays': FieldValue.increment(
                                widget.leaveDoc!.numberOfDays),
                          },
                        ),
                      });
                      await widget.leaveDoc!.reference.delete();
                      Navigator.pop(context);
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                          content: Text(
                            'Leave status updated successfully',
                            style: GoogleFonts.getFont(
                              'Open Sans',
                              color: FlutterFlowTheme.of(context)
                                  .secondaryBackground,
                              fontSize: 12.0,
                            ),
                          ),
                          duration: Duration(milliseconds: 3000),
                          backgroundColor: Color(0xFF21F621),
                        ),
                      );
                    }
                  },
                  text: 'Confirm',
                  options: FFButtonOptions(
                    height: 40.0,
                    padding:
                        EdgeInsetsDirectional.fromSTEB(24.0, 0.0, 24.0, 0.0),
                    iconPadding:
                        EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                    color: FlutterFlowTheme.of(context).primary,
                    textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                          fontFamily: 'Open Sans',
                          color: Colors.white,
                          letterSpacing: 0.0,
                        ),
                    elevation: 3.0,
                    borderSide: BorderSide(
                      color: Colors.transparent,
                      width: 1.0,
                    ),
                    borderRadius: BorderRadius.circular(30.0),
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0.0, 20.0, 0.0, 50.0),
              child: Container(
                width: () {
                  if (MediaQuery.sizeOf(context).width < kBreakpointSmall) {
                    return (MediaQuery.sizeOf(context).width * 0.35);
                  } else if (MediaQuery.sizeOf(context).width <
                      kBreakpointMedium) {
                    return (MediaQuery.sizeOf(context).width * 0.2);
                  } else if (MediaQuery.sizeOf(context).width <
                      kBreakpointLarge) {
                    return (MediaQuery.sizeOf(context).width * 0.2);
                  } else {
                    return (MediaQuery.sizeOf(context).width * 0.35);
                  }
                }(),
                height: 50.0,
                decoration: BoxDecoration(
                  color: FlutterFlowTheme.of(context).secondaryBackground,
                ),
                child: FFButtonWidget(
                  onPressed: () async {
                    Navigator.pop(context);
                  },
                  text: 'Cancel',
                  options: FFButtonOptions(
                    height: 40.0,
                    padding:
                        EdgeInsetsDirectional.fromSTEB(24.0, 0.0, 24.0, 0.0),
                    iconPadding:
                        EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                    color: FlutterFlowTheme.of(context).error,
                    textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                          fontFamily: 'Open Sans',
                          color:
                              FlutterFlowTheme.of(context).secondaryBackground,
                          letterSpacing: 0.0,
                        ),
                    elevation: 3.0,
                    borderSide: BorderSide(
                      color: Colors.transparent,
                      width: 1.0,
                    ),
                    borderRadius: BorderRadius.circular(30.0),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
