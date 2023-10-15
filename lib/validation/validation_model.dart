import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/components/menu_btn_widget.dart';
import '/components/menu_widget.dart';
import '/components/side_bar_widget.dart';
import '/components/top_bar_widget.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:data_table_2/data_table_2.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class ValidationModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  // Model for sideBar component.
  late SideBarModel sideBarModel;
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
  // Model for menu component.
  late MenuModel menuModel;
  // Model for menu_btn component.
  late MenuBtnModel menuBtnModel;
  // Model for topBar component.
  late TopBarModel topBarModel;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    sideBarModel = createModel(context, () => SideBarModel());
    dataTableShowLogs = false; // Disables noisy DataTable2 debug statements.
    dataTableShowLogs = false; // Disables noisy DataTable2 debug statements.
    pwdtfVisibility = false;
    confirmpwdtfVisibility = false;
    menuModel = createModel(context, () => MenuModel());
    menuBtnModel = createModel(context, () => MenuBtnModel());
    topBarModel = createModel(context, () => TopBarModel());
  }

  void dispose() {
    sideBarModel.dispose();
    nameTextFieldController?.dispose();
    prenomtfController?.dispose();
    teltfController?.dispose();
    emailtfController?.dispose();
    pwdtfController?.dispose();
    confirmpwdtfController?.dispose();
    menuModel.dispose();
    menuBtnModel.dispose();
    topBarModel.dispose();
  }

  /// Additional helper methods are added here.

}
