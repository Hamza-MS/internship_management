import '/auth/firebase_auth/auth_util.dart';
import '/dashboard/dashboard_widget.dart';
import '/etudiant_gstage/etudiant_gstage_widget.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/gcompte_profil/gcompte_profil_widget.dart';
import '/login/login_widget.dart';
import '/professeur_gstage_doc1/professeur_gstage_doc1_widget.dart';
import '/responsable_de_stage_gest_st/responsable_de_stage_gest_st_widget.dart';
import '/responsable_gstage_doc1/responsable_gstage_doc1_widget.dart';
import '/validation/validation_widget.dart';
import '/visualiser_etablissement/visualiser_etablissement_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class SideBarModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this component.

  // State field(s) for dashB_MouseRegion widget.
  bool dashBMouseRegionHovered = false;
  // State field(s) for ets_MouseRegion widget.
  bool etsMouseRegionHovered = false;
  // State field(s) for cmptes_MouseRegion widget.
  bool cmptesMouseRegionHovered = false;
  // State field(s) for stages_MouseRegion widget.
  bool stagesMouseRegionHovered = false;
  // State field(s) for docs_MouseRegion widget.
  bool docsMouseRegionHovered = false;
  // State field(s) for profile_MouseRegion widget.
  bool profileMouseRegionHovered = false;
  // State field(s) for logout_MouseRegion widget.
  bool logoutMouseRegionHovered = false;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {}

  void dispose() {}

  /// Additional helper methods are added here.

}
