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
import 'side_bar_model.dart';
export 'side_bar_model.dart';

class SideBarWidget extends StatefulWidget {
  const SideBarWidget({Key? key}) : super(key: key);

  @override
  _SideBarWidgetState createState() => _SideBarWidgetState();
}

class _SideBarWidgetState extends State<SideBarWidget>
    with TickerProviderStateMixin {
  late SideBarModel _model;

  final animationsMap = {
    'containerOnActionTriggerAnimation1': AnimationInfo(
      trigger: AnimationTrigger.onActionTrigger,
      applyInitialState: true,
      effects: [
        ScaleEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 300.ms,
          begin: Offset(1.0, 1.0),
          end: Offset(1.1, 1.1),
        ),
      ],
    ),
    'containerOnActionTriggerAnimation2': AnimationInfo(
      trigger: AnimationTrigger.onActionTrigger,
      applyInitialState: true,
      effects: [
        ScaleEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 300.ms,
          begin: Offset(1.0, 1.0),
          end: Offset(1.1, 1.1),
        ),
      ],
    ),
    'containerOnActionTriggerAnimation3': AnimationInfo(
      trigger: AnimationTrigger.onActionTrigger,
      applyInitialState: true,
      effects: [
        ScaleEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 300.ms,
          begin: Offset(1.0, 1.0),
          end: Offset(1.1, 1.1),
        ),
      ],
    ),
    'containerOnActionTriggerAnimation4': AnimationInfo(
      trigger: AnimationTrigger.onActionTrigger,
      applyInitialState: true,
      effects: [
        ScaleEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 300.ms,
          begin: Offset(1.0, 1.0),
          end: Offset(1.1, 1.1),
        ),
      ],
    ),
    'containerOnActionTriggerAnimation5': AnimationInfo(
      trigger: AnimationTrigger.onActionTrigger,
      applyInitialState: true,
      effects: [
        ScaleEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 300.ms,
          begin: Offset(1.0, 1.0),
          end: Offset(1.1, 1.1),
        ),
      ],
    ),
    'containerOnActionTriggerAnimation6': AnimationInfo(
      trigger: AnimationTrigger.onActionTrigger,
      applyInitialState: true,
      effects: [
        ScaleEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 300.ms,
          begin: Offset(1.0, 1.0),
          end: Offset(1.1, 1.1),
        ),
      ],
    ),
    'containerOnActionTriggerAnimation7': AnimationInfo(
      trigger: AnimationTrigger.onActionTrigger,
      applyInitialState: true,
      effects: [
        ScaleEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 300.ms,
          begin: Offset(1.0, 1.0),
          end: Offset(1.1, 1.1),
        ),
      ],
    ),
  };

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => SideBarModel());

    setupAnimations(
      animationsMap.values.where((anim) =>
          anim.trigger == AnimationTrigger.onActionTrigger ||
          !anim.applyInitialState),
      this,
    );

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return Visibility(
      visible: responsiveVisibility(
        context: context,
        phone: false,
        tablet: false,
      ),
      child: Container(
        width: 200.0,
        height: MediaQuery.of(context).size.height * 1.0,
        decoration: BoxDecoration(
          color: FlutterFlowTheme.of(context).secondary,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            Container(
              width: MediaQuery.of(context).size.width * 1.0,
              height: 70.0,
              decoration: BoxDecoration(),
            ),
            Container(
              width: double.infinity,
              decoration: BoxDecoration(),
              child: Column(
                mainAxisSize: MainAxisSize.max,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Divider(
                    thickness: 1.0,
                    indent: 20.0,
                    endIndent: 20.0,
                    color: FlutterFlowTheme.of(context).iconGray,
                  ),
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(20.0, 0.0, 0.0, 0.0),
                    child: Text(
                      'Navigation',
                      textAlign: TextAlign.start,
                      style: FlutterFlowTheme.of(context).titleMedium.override(
                            fontFamily: 'Overpass',
                            color: FlutterFlowTheme.of(context).background,
                            fontSize: 14.0,
                            letterSpacing: 2.0,
                            fontWeight: FontWeight.normal,
                          ),
                    ),
                  ),
                ],
              ),
            ),
            MouseRegion(
              opaque: false,
              cursor: MouseCursor.defer ?? MouseCursor.defer,
              child: Visibility(
                visible: (valueOrDefault(currentUserDocument?.role, '') ==
                        'professeur') ||
                    (valueOrDefault(currentUserDocument?.role, '') ==
                        'responsable'),
                child: Padding(
                  padding:
                      EdgeInsetsDirectional.fromSTEB(0.0, 10.0, 10.0, 10.0),
                  child: AuthUserStreamWidget(
                    builder: (context) => InkWell(
                      splashColor: Colors.transparent,
                      focusColor: Colors.transparent,
                      hoverColor: Colors.transparent,
                      highlightColor: Colors.transparent,
                      onTap: () async {
                        FFAppState().currentPage = 'Dashboard';
                        await Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => DashboardWidget(),
                          ),
                        );
                      },
                      child: Container(
                        width: MediaQuery.of(context).size.width * 0.7,
                        decoration: BoxDecoration(
                          color: FFAppState().currentPage == 'Dashboard'
                              ? Colors.white
                              : FlutterFlowTheme.of(context).secondary,
                          borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(0.0),
                            bottomRight: Radius.circular(20.0),
                            topLeft: Radius.circular(0.0),
                            topRight: Radius.circular(20.0),
                          ),
                        ),
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              5.0, 10.0, 0.0, 10.0),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    10.0, 0.0, 10.0, 0.0),
                                child: Icon(
                                  Icons.speed_outlined,
                                  color: FFAppState().currentPage == 'Dashboard'
                                      ? Colors.black
                                      : Colors.white,
                                  size: 30.0,
                                ),
                              ),
                              Text(
                                'Dashboard',
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      fontFamily: 'Overpass',
                                      color: FFAppState().currentPage ==
                                              'Dashboard'
                                          ? Colors.black
                                          : Colors.white,
                                      letterSpacing: 1.0,
                                      fontWeight: FontWeight.w500,
                                    ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ).animateOnActionTrigger(
                      animationsMap['containerOnActionTriggerAnimation1']!,
                    ),
                  ),
                ),
              ),
              onEnter: ((event) async {
                setState(() => _model.dashBMouseRegionHovered = true);
                if (FFAppState().currentPage != 'Dashboard') {
                  if (animationsMap['containerOnActionTriggerAnimation1'] !=
                      null) {
                    animationsMap['containerOnActionTriggerAnimation1']!
                        .controller
                        .forward();
                  }
                }
              }),
              onExit: ((event) async {
                setState(() => _model.dashBMouseRegionHovered = false);
                if (FFAppState().currentPage != 'Dashboard') {
                  if (animationsMap['containerOnActionTriggerAnimation1'] !=
                      null) {
                    animationsMap['containerOnActionTriggerAnimation1']!
                        .controller
                        .forward()
                        .whenComplete(
                            animationsMap['containerOnActionTriggerAnimation1']!
                                .controller
                                .reverse);
                  }
                }
              }),
            ),
            MouseRegion(
              opaque: false,
              cursor: MouseCursor.defer ?? MouseCursor.defer,
              child: Visibility(
                visible:
                    valueOrDefault(currentUserDocument?.role, '') == 'admin',
                child: Padding(
                  padding:
                      EdgeInsetsDirectional.fromSTEB(0.0, 10.0, 10.0, 10.0),
                  child: AuthUserStreamWidget(
                    builder: (context) => InkWell(
                      splashColor: Colors.transparent,
                      focusColor: Colors.transparent,
                      hoverColor: Colors.transparent,
                      highlightColor: Colors.transparent,
                      onTap: () async {
                        FFAppState().currentPage = 'Etablissements';
                        await Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) =>
                                VisualiserEtablissementWidget(),
                          ),
                        );
                      },
                      child: Container(
                        width: MediaQuery.of(context).size.width * 0.7,
                        decoration: BoxDecoration(
                          color: FFAppState().currentPage == 'Etablissements'
                              ? FlutterFlowTheme.of(context).white
                              : Color(0xFF262D34),
                          borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(0.0),
                            bottomRight: Radius.circular(20.0),
                            topLeft: Radius.circular(0.0),
                            topRight: Radius.circular(20.0),
                          ),
                        ),
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              5.0, 10.0, 0.0, 10.0),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    10.0, 0.0, 10.0, 0.0),
                                child: Icon(
                                  Icons.business,
                                  color: FFAppState().currentPage ==
                                          'Etablissements'
                                      ? Colors.black
                                      : Colors.white,
                                  size: 30.0,
                                ),
                              ),
                              Text(
                                'Etablissements',
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      fontFamily: 'Overpass',
                                      color: FFAppState().currentPage ==
                                              'Etablissements'
                                          ? Colors.black
                                          : Colors.white,
                                      letterSpacing: 1.0,
                                    ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ).animateOnActionTrigger(
                      animationsMap['containerOnActionTriggerAnimation2']!,
                    ),
                  ),
                ),
              ),
              onEnter: ((event) async {
                setState(() => _model.etsMouseRegionHovered = true);
                if (FFAppState().currentPage != 'Etablissements') {
                  if (animationsMap['containerOnActionTriggerAnimation2'] !=
                      null) {
                    animationsMap['containerOnActionTriggerAnimation2']!
                        .controller
                        .forward();
                  }
                }
              }),
              onExit: ((event) async {
                setState(() => _model.etsMouseRegionHovered = false);
                if (FFAppState().currentPage != 'Etablissements') {
                  if (animationsMap['containerOnActionTriggerAnimation2'] !=
                      null) {
                    animationsMap['containerOnActionTriggerAnimation2']!
                        .controller
                        .forward()
                        .whenComplete(
                            animationsMap['containerOnActionTriggerAnimation2']!
                                .controller
                                .reverse);
                  }
                }
              }),
            ),
            MouseRegion(
              opaque: false,
              cursor: MouseCursor.defer ?? MouseCursor.defer,
              child: Visibility(
                visible:
                    valueOrDefault(currentUserDocument?.role, '') == 'admin',
                child: Padding(
                  padding:
                      EdgeInsetsDirectional.fromSTEB(0.0, 10.0, 10.0, 10.0),
                  child: AuthUserStreamWidget(
                    builder: (context) => InkWell(
                      splashColor: Colors.transparent,
                      focusColor: Colors.transparent,
                      hoverColor: Colors.transparent,
                      highlightColor: Colors.transparent,
                      onTap: () async {
                        FFAppState().currentPage = 'Comptes';
                        await Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => ValidationWidget(),
                          ),
                        );
                      },
                      child: Container(
                        width: MediaQuery.of(context).size.width * 0.7,
                        decoration: BoxDecoration(
                          color: FFAppState().currentPage == 'Comptes'
                              ? Colors.white
                              : FlutterFlowTheme.of(context).secondary,
                          borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(0.0),
                            bottomRight: Radius.circular(20.0),
                            topLeft: Radius.circular(0.0),
                            topRight: Radius.circular(20.0),
                          ),
                        ),
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              5.0, 10.0, 0.0, 10.0),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    10.0, 0.0, 10.0, 10.0),
                                child: Icon(
                                  Icons.people_outline,
                                  color: FFAppState().currentPage == 'Comptes'
                                      ? Colors.black
                                      : Colors.white,
                                  size: 30.0,
                                ),
                              ),
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 0.0, 0.0, 7.0),
                                child: Text(
                                  'Comptes',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: 'Overpass',
                                        color: FFAppState().currentPage ==
                                                'Comptes'
                                            ? Colors.black
                                            : Colors.white,
                                        letterSpacing: 1.0,
                                      ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ).animateOnActionTrigger(
                      animationsMap['containerOnActionTriggerAnimation3']!,
                    ),
                  ),
                ),
              ),
              onEnter: ((event) async {
                setState(() => _model.cmptesMouseRegionHovered = true);
                if (FFAppState().currentPage != 'Comptes') {
                  if (animationsMap['containerOnActionTriggerAnimation3'] !=
                      null) {
                    animationsMap['containerOnActionTriggerAnimation3']!
                        .controller
                        .forward();
                  }
                }
              }),
              onExit: ((event) async {
                setState(() => _model.cmptesMouseRegionHovered = false);
                if (FFAppState().currentPage != 'Comptes') {
                  if (animationsMap['containerOnActionTriggerAnimation3'] !=
                      null) {
                    animationsMap['containerOnActionTriggerAnimation3']!
                        .controller
                        .forward()
                        .whenComplete(
                            animationsMap['containerOnActionTriggerAnimation3']!
                                .controller
                                .reverse);
                  }
                }
              }),
            ),
            MouseRegion(
              opaque: false,
              cursor: MouseCursor.defer ?? MouseCursor.defer,
              child: Visibility(
                visible: (valueOrDefault(currentUserDocument?.role, '') ==
                        'etudiant') ||
                    (valueOrDefault(currentUserDocument?.role, '') ==
                        'responsable') ||
                    (valueOrDefault(currentUserDocument?.role, '') ==
                        'professeur'),
                child: Padding(
                  padding:
                      EdgeInsetsDirectional.fromSTEB(0.0, 10.0, 10.0, 10.0),
                  child: AuthUserStreamWidget(
                    builder: (context) => InkWell(
                      splashColor: Colors.transparent,
                      focusColor: Colors.transparent,
                      hoverColor: Colors.transparent,
                      highlightColor: Colors.transparent,
                      onTap: () async {
                        FFAppState().currentPage = 'Stages';
                        if (valueOrDefault(currentUserDocument?.role, '') ==
                            'etudiant') {
                          await Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => EtudiantGstageWidget(),
                            ),
                          );
                        } else {
                          if (valueOrDefault(currentUserDocument?.role, '') ==
                              'professeur') {
                            await Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) =>
                                    ProfesseurGstageDoc1Widget(),
                              ),
                            );
                          } else {
                            if (valueOrDefault(currentUserDocument?.role, '') ==
                                'responsable') {
                              await Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) =>
                                      ResponsableDeStageGestStWidget(),
                                ),
                              );
                            }
                          }
                        }
                      },
                      child: Container(
                        width: MediaQuery.of(context).size.width * 0.7,
                        decoration: BoxDecoration(
                          color: FFAppState().currentPage == 'Stages'
                              ? Colors.white
                              : FlutterFlowTheme.of(context).secondary,
                          borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(0.0),
                            bottomRight: Radius.circular(20.0),
                            topLeft: Radius.circular(0.0),
                            topRight: Radius.circular(20.0),
                          ),
                        ),
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              5.0, 10.0, 0.0, 10.0),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    10.0, 0.0, 10.0, 10.0),
                                child: Icon(
                                  Icons.badge,
                                  color: FFAppState().currentPage == 'Stages'
                                      ? Colors.black
                                      : Colors.white,
                                  size: 30.0,
                                ),
                              ),
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 0.0, 0.0, 7.0),
                                child: Text(
                                  'Stages',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: 'Overpass',
                                        color:
                                            FFAppState().currentPage == 'Stages'
                                                ? Colors.black
                                                : Colors.white,
                                        letterSpacing: 1.0,
                                      ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ).animateOnActionTrigger(
                      animationsMap['containerOnActionTriggerAnimation4']!,
                    ),
                  ),
                ),
              ),
              onEnter: ((event) async {
                setState(() => _model.stagesMouseRegionHovered = true);
                if (FFAppState().currentPage != 'Stages') {
                  if (animationsMap['containerOnActionTriggerAnimation4'] !=
                      null) {
                    animationsMap['containerOnActionTriggerAnimation4']!
                        .controller
                        .forward();
                  }
                }
              }),
              onExit: ((event) async {
                setState(() => _model.stagesMouseRegionHovered = false);
                if (FFAppState().currentPage != 'Stages') {
                  if (animationsMap['containerOnActionTriggerAnimation4'] !=
                      null) {
                    animationsMap['containerOnActionTriggerAnimation4']!
                        .controller
                        .forward()
                        .whenComplete(
                            animationsMap['containerOnActionTriggerAnimation4']!
                                .controller
                                .reverse);
                  }
                }
              }),
            ),
            MouseRegion(
              opaque: false,
              cursor: MouseCursor.defer ?? MouseCursor.defer,
              child: Visibility(
                visible: valueOrDefault(currentUserDocument?.role, '') ==
                    'responsable',
                child: Padding(
                  padding:
                      EdgeInsetsDirectional.fromSTEB(0.0, 10.0, 10.0, 10.0),
                  child: AuthUserStreamWidget(
                    builder: (context) => InkWell(
                      splashColor: Colors.transparent,
                      focusColor: Colors.transparent,
                      hoverColor: Colors.transparent,
                      highlightColor: Colors.transparent,
                      onTap: () async {
                        FFAppState().currentPage = 'Documents';
                        await Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => ResponsableGstageDoc1Widget(),
                          ),
                        );
                      },
                      child: Container(
                        width: MediaQuery.of(context).size.width * 0.7,
                        decoration: BoxDecoration(
                          color: FFAppState().currentPage == 'Documents'
                              ? Colors.white
                              : FlutterFlowTheme.of(context).secondary,
                          borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(0.0),
                            bottomRight: Radius.circular(20.0),
                            topLeft: Radius.circular(0.0),
                            topRight: Radius.circular(20.0),
                          ),
                        ),
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              5.0, 10.0, 0.0, 10.0),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    10.0, 0.0, 10.0, 0.0),
                                child: Icon(
                                  Icons.file_copy_outlined,
                                  color: FFAppState().currentPage == 'Documents'
                                      ? Colors.black
                                      : Colors.white,
                                  size: 30.0,
                                ),
                              ),
                              Text(
                                'Documents',
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      fontFamily: 'Overpass',
                                      color: FFAppState().currentPage ==
                                              'Documents'
                                          ? Colors.black
                                          : Colors.white,
                                      letterSpacing: 1.0,
                                      fontWeight: FontWeight.w500,
                                    ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ).animateOnActionTrigger(
                      animationsMap['containerOnActionTriggerAnimation5']!,
                    ),
                  ),
                ),
              ),
              onEnter: ((event) async {
                setState(() => _model.docsMouseRegionHovered = true);
                if (FFAppState().currentPage != 'Documents') {
                  if (animationsMap['containerOnActionTriggerAnimation5'] !=
                      null) {
                    animationsMap['containerOnActionTriggerAnimation5']!
                        .controller
                        .forward();
                  }
                }
              }),
              onExit: ((event) async {
                setState(() => _model.docsMouseRegionHovered = false);
                if (FFAppState().currentPage != 'Documents') {
                  if (animationsMap['containerOnActionTriggerAnimation5'] !=
                      null) {
                    animationsMap['containerOnActionTriggerAnimation5']!
                        .controller
                        .forward()
                        .whenComplete(
                            animationsMap['containerOnActionTriggerAnimation5']!
                                .controller
                                .reverse);
                  }
                }
              }),
            ),
            Container(
              width: double.infinity,
              decoration: BoxDecoration(),
              child: Column(
                mainAxisSize: MainAxisSize.max,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Divider(
                    thickness: 1.0,
                    indent: 20.0,
                    endIndent: 20.0,
                    color: FlutterFlowTheme.of(context).iconGray,
                  ),
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(20.0, 0.0, 0.0, 0.0),
                    child: Text(
                      'Settings',
                      textAlign: TextAlign.start,
                      style: FlutterFlowTheme.of(context).titleMedium.override(
                            fontFamily: 'Overpass',
                            color: FlutterFlowTheme.of(context).background,
                            fontSize: 14.0,
                            letterSpacing: 2.0,
                            fontWeight: FontWeight.normal,
                          ),
                    ),
                  ),
                ],
              ),
            ),
            MouseRegion(
              opaque: false,
              cursor: MouseCursor.defer ?? MouseCursor.defer,
              child: Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0.0, 10.0, 10.0, 10.0),
                child: InkWell(
                  splashColor: Colors.transparent,
                  focusColor: Colors.transparent,
                  hoverColor: Colors.transparent,
                  highlightColor: Colors.transparent,
                  onTap: () async {
                    FFAppState().currentPage = 'Profile';
                    await Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => GcompteProfilWidget(),
                      ),
                    );
                  },
                  child: Container(
                    width: MediaQuery.of(context).size.width * 0.7,
                    decoration: BoxDecoration(
                      color: FFAppState().currentPage == 'Profile'
                          ? Colors.white
                          : FlutterFlowTheme.of(context).secondary,
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(0.0),
                        bottomRight: Radius.circular(20.0),
                        topLeft: Radius.circular(0.0),
                        topRight: Radius.circular(20.0),
                      ),
                    ),
                    child: Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(5.0, 10.0, 0.0, 10.0),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                10.0, 0.0, 10.0, 10.0),
                            child: Icon(
                              Icons.person_search_outlined,
                              color: FFAppState().currentPage == 'Profile'
                                  ? Colors.black
                                  : Colors.white,
                              size: 30.0,
                            ),
                          ),
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 0.0, 0.0, 7.0),
                            child: Text(
                              'Profile',
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    fontFamily: 'Overpass',
                                    color: FFAppState().currentPage == 'Profile'
                                        ? Colors.black
                                        : Colors.white,
                                    letterSpacing: 1.0,
                                    fontWeight: FontWeight.bold,
                                  ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ).animateOnActionTrigger(
                  animationsMap['containerOnActionTriggerAnimation6']!,
                ),
              ),
              onEnter: ((event) async {
                setState(() => _model.profileMouseRegionHovered = true);
                if (FFAppState().currentPage != 'Profile') {
                  if (animationsMap['containerOnActionTriggerAnimation6'] !=
                      null) {
                    animationsMap['containerOnActionTriggerAnimation6']!
                        .controller
                        .forward();
                  }
                }
              }),
              onExit: ((event) async {
                setState(() => _model.profileMouseRegionHovered = false);
                if (FFAppState().currentPage != 'Profile') {
                  if (animationsMap['containerOnActionTriggerAnimation6'] !=
                      null) {
                    animationsMap['containerOnActionTriggerAnimation6']!
                        .controller
                        .forward()
                        .whenComplete(
                            animationsMap['containerOnActionTriggerAnimation6']!
                                .controller
                                .reverse);
                  }
                }
              }),
            ),
            Spacer(),
            MouseRegion(
              opaque: false,
              cursor: MouseCursor.defer ?? MouseCursor.defer,
              child: InkWell(
                splashColor: Colors.transparent,
                focusColor: Colors.transparent,
                hoverColor: Colors.transparent,
                highlightColor: Colors.transparent,
                onTap: () async {
                  await authManager.signOut();
                  await Navigator.pushAndRemoveUntil(
                    context,
                    MaterialPageRoute(
                      builder: (context) => LoginWidget(),
                    ),
                    (r) => false,
                  );
                },
                child: Container(
                  decoration: BoxDecoration(),
                  child: Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(5.0, 10.0, 0.0, 10.0),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              10.0, 0.0, 10.0, 10.0),
                          child: Icon(
                            Icons.logout,
                            color: FlutterFlowTheme.of(context).white,
                            size: 30.0,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 0.0, 0.0, 7.0),
                          child: Text(
                            'Logout',
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: 'Overpass',
                                  color: FlutterFlowTheme.of(context).white,
                                  letterSpacing: 1.0,
                                ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ).animateOnActionTrigger(
                animationsMap['containerOnActionTriggerAnimation7']!,
              ),
              onEnter: ((event) async {
                setState(() => _model.logoutMouseRegionHovered = true);
                if (animationsMap['containerOnActionTriggerAnimation7'] !=
                    null) {
                  animationsMap['containerOnActionTriggerAnimation7']!
                      .controller
                      .forward();
                }
              }),
              onExit: ((event) async {
                setState(() => _model.logoutMouseRegionHovered = false);
                if (animationsMap['containerOnActionTriggerAnimation7'] !=
                    null) {
                  animationsMap['containerOnActionTriggerAnimation7']!
                      .controller
                      .forward()
                      .whenComplete(
                          animationsMap['containerOnActionTriggerAnimation7']!
                              .controller
                              .reverse);
                }
              }),
            ),
          ],
        ),
      ),
    );
  }
}
