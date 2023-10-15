import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/components/menu_btn_widget.dart';
import '/components/menu_widget.dart';
import '/components/side_bar_widget.dart';
import '/components/top_bar_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/professeur_gstage_doc2/professeur_gstage_doc2_widget.dart';
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:text_search/text_search.dart';

class ProfesseurGstageDoc1Model extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  // Model for sideBar component.
  late SideBarModel sideBarModel;
  List<UserRecord> simpleSearchResults1 = [];
  // State field(s) for TextField widget.
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;
  List<UserRecord> simpleSearchResults2 = [];
  // Model for menu component.
  late MenuModel menuModel;
  // Model for menu_btn component.
  late MenuBtnModel menuBtnModel;
  // Model for topBar component.
  late TopBarModel topBarModel;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    sideBarModel = createModel(context, () => SideBarModel());
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
