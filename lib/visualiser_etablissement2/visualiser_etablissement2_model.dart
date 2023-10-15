import '/backend/backend.dart';
import '/components/menu_btn_widget.dart';
import '/components/menu_widget.dart';
import '/components/side_bar_widget.dart';
import '/components/top_bar_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:data_table_2/data_table_2.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class VisualiserEtablissement2Model extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  // Model for sideBar component.
  late SideBarModel sideBarModel;
  // State field(s) for TextField widget.
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;
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
    menuModel = createModel(context, () => MenuModel());
    menuBtnModel = createModel(context, () => MenuBtnModel());
    topBarModel = createModel(context, () => TopBarModel());
  }

  void dispose() {
    sideBarModel.dispose();
    textController?.dispose();
    menuModel.dispose();
    menuBtnModel.dispose();
    topBarModel.dispose();
  }

  /// Additional helper methods are added here.

}
