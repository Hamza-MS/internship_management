import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/login/login_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class CreeCompteModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  // State field(s) for nameTextField widget.
  TextEditingController? nameTextFieldController;
  String? Function(BuildContext, String?)? nameTextFieldControllerValidator;
  // State field(s) for prenomTextField widget.
  TextEditingController? prenomTextFieldController;
  String? Function(BuildContext, String?)? prenomTextFieldControllerValidator;
  // State field(s) for telTextField widget.
  TextEditingController? telTextFieldController;
  String? Function(BuildContext, String?)? telTextFieldControllerValidator;
  // State field(s) for emailTextField widget.
  TextEditingController? emailTextFieldController;
  String? Function(BuildContext, String?)? emailTextFieldControllerValidator;
  // State field(s) for pwdTextField widget.
  TextEditingController? pwdTextFieldController;
  late bool pwdTextFieldVisibility;
  String? Function(BuildContext, String?)? pwdTextFieldControllerValidator;
  // State field(s) for confirmPwdTextField widget.
  TextEditingController? confirmPwdTextFieldController;
  late bool confirmPwdTextFieldVisibility;
  String? Function(BuildContext, String?)?
      confirmPwdTextFieldControllerValidator;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    pwdTextFieldVisibility = false;
    confirmPwdTextFieldVisibility = false;
  }

  void dispose() {
    nameTextFieldController?.dispose();
    prenomTextFieldController?.dispose();
    telTextFieldController?.dispose();
    emailTextFieldController?.dispose();
    pwdTextFieldController?.dispose();
    confirmPwdTextFieldController?.dispose();
  }

  /// Additional helper methods are added here.

}
