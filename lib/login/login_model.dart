import '/auth/firebase_auth/auth_util.dart';
import '/components/logo_widget.dart';
import '/cree_compte/cree_compte_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/loading/loading_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class LoginModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  // Model for logo component.
  late LogoModel logoModel;
  // State field(s) for email widget.
  TextEditingController? emailController;
  String? Function(BuildContext, String?)? emailControllerValidator;
  // State field(s) for pwdField widget.
  TextEditingController? pwdFieldController;
  late bool pwdFieldVisibility;
  String? Function(BuildContext, String?)? pwdFieldControllerValidator;
  // State field(s) for emailFieldPC widget.
  TextEditingController? emailFieldPCController;
  String? Function(BuildContext, String?)? emailFieldPCControllerValidator;
  // State field(s) for pwdFieldPC widget.
  TextEditingController? pwdFieldPCController;
  late bool pwdFieldPCVisibility;
  String? Function(BuildContext, String?)? pwdFieldPCControllerValidator;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    logoModel = createModel(context, () => LogoModel());
    pwdFieldVisibility = false;
    pwdFieldPCVisibility = false;
  }

  void dispose() {
    logoModel.dispose();
    emailController?.dispose();
    pwdFieldController?.dispose();
    emailFieldPCController?.dispose();
    pwdFieldPCController?.dispose();
  }

  /// Additional helper methods are added here.

}
