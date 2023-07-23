import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_place_picker.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import '/flutter_flow/place.dart';
import 'dart:io';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class AddCRNModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  // State field(s) for className widget.
  TextEditingController? classNameController;
  String? Function(BuildContext, String?)? classNameControllerValidator;
  // State field(s) for crn widget.
  TextEditingController? crnController;
  String? Function(BuildContext, String?)? crnControllerValidator;
  // State field(s) for teacher widget.
  String? teacherValue;
  FormFieldController<String>? teacherValueController;
  // State field(s) for classlocation widget.
  var classlocationValue = FFPlace();
  DateTime? datePicked;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {}

  void dispose() {
    classNameController?.dispose();
    crnController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
