import '/backend/backend.dart';
import '/components/side_bar_widget.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:data_table_2/data_table_2.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class SUPPRIMERCopyModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  // State field(s) for TextField widget.
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;
  // Model for sideBar component.
  late SideBarModel sideBarModel;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    dataTableShowLogs = false; // Disables noisy DataTable2 debug statements.
    sideBarModel = createModel(context, () => SideBarModel());
  }

  void dispose() {
    textController?.dispose();
    sideBarModel.dispose();
  }

  /// Additional helper methods are added here.

}