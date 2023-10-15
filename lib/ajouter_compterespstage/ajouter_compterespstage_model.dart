import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class AjouterCompterespstageModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  // State field(s) for nameTextField widget.
  TextEditingController? nameTextFieldController;
  String? Function(BuildContext, String?)? nameTextFieldControllerValidator;
  // State field(s) for prenomtf widget.
  TextEditingController? prenomtfController;
  String? Function(BuildContext, String?)? prenomtfControllerValidator;
  // State field(s) for teltf widget.
  TextEditingController? teltfController;
  String? Function(BuildContext, String?)? teltfControllerValidator;
  // State field(s) for emailtf widget.
  TextEditingController? emailtfController;
  String? Function(BuildContext, String?)? emailtfControllerValidator;
  // State field(s) for pwdtf widget.
  TextEditingController? pwdtfController;
  late bool pwdtfVisibility;
  String? Function(BuildContext, String?)? pwdtfControllerValidator;
  // State field(s) for confirmpwdtf widget.
  TextEditingController? confirmpwdtfController;
  late bool confirmpwdtfVisibility;
  String? Function(BuildContext, String?)? confirmpwdtfControllerValidator;
  // State field(s) for DropDowntf widget.
  String? dropDowntfValue;
  FormFieldController<String>? dropDowntfValueController;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    pwdtfVisibility = false;
    confirmpwdtfVisibility = false;
  }

  void dispose() {
    nameTextFieldController?.dispose();
    prenomtfController?.dispose();
    teltfController?.dispose();
    emailtfController?.dispose();
    pwdtfController?.dispose();
    confirmpwdtfController?.dispose();
  }

  /// Additional helper methods are added here.

}
