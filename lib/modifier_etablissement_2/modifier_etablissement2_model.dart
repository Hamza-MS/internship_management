import '/components/menu_btn_widget.dart';
import '/components/menu_widget.dart';
import '/components/side_bar_widget.dart';
import '/components/top_bar_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class ModifierEtablissement2Model extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  // Model for sideBar component.
  late SideBarModel sideBarModel;
  // State field(s) for TextField widget.
  TextEditingController? textController1;
  String? Function(BuildContext, String?)? textController1Validator;
  // State field(s) for TextField widget.
  TextEditingController? textController2;
  String? Function(BuildContext, String?)? textController2Validator;
  // State field(s) for TextField widget.
  TextEditingController? textController3;
  String? Function(BuildContext, String?)? textController3Validator;
  // State field(s) for TextField widget.
  TextEditingController? textController4;
  String? Function(BuildContext, String?)? textController4Validator;
  // State field(s) for TextField widget.
  TextEditingController? textController5;
  late bool passwordVisibility;
  String? Function(BuildContext, String?)? textController5Validator;
  // Model for menu component.
  late MenuModel menuModel;
  // Model for menu_btn component.
  late MenuBtnModel menuBtnModel;
  // Model for topBar component.
  late TopBarModel topBarModel;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    sideBarModel = createModel(context, () => SideBarModel());
    passwordVisibility = false;
    menuModel = createModel(context, () => MenuModel());
    menuBtnModel = createModel(context, () => MenuBtnModel());
    topBarModel = createModel(context, () => TopBarModel());
  }

  void dispose() {
    sideBarModel.dispose();
    textController1?.dispose();
    textController2?.dispose();
    textController3?.dispose();
    textController4?.dispose();
    textController5?.dispose();
    menuModel.dispose();
    menuBtnModel.dispose();
    topBarModel.dispose();
  }

  /// Additional helper methods are added here.

}
