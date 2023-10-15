import '/auth/firebase_auth/auth_util.dart';
import '/dashboard/dashboard_widget.dart';
import '/etudiant_gstage/etudiant_gstage_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/gcompte_profil/gcompte_profil_widget.dart';
import '/professeur_gstage_doc1/professeur_gstage_doc1_widget.dart';
import '/responsable_de_stage_gest_st/responsable_de_stage_gest_st_widget.dart';
import '/responsable_gstage_doc1/responsable_gstage_doc1_widget.dart';
import '/validation/validation_widget.dart';
import '/visualiser_etablissement/visualiser_etablissement_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'menu_model.dart';
export 'menu_model.dart';

class MenuWidget extends StatefulWidget {
  const MenuWidget({Key? key}) : super(key: key);

  @override
  _MenuWidgetState createState() => _MenuWidgetState();
}

class _MenuWidgetState extends State<MenuWidget> {
  late MenuModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => MenuModel());

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
      visible: FFAppState().menu &&
          responsiveVisibility(
            context: context,
            tabletLandscape: false,
            desktop: false,
          ),
      child: Align(
        alignment: AlignmentDirectional(0.95, 0.95),
        child: Padding(
          padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 4.2),
          child: AnimatedContainer(
            duration: Duration(milliseconds: 600),
            curve: Curves.easeOut,
            width: 200.0,
            decoration: BoxDecoration(
              color: Color(0xFF262D34),
              borderRadius: BorderRadius.circular(20.0),
            ),
            child: Padding(
              padding: EdgeInsetsDirectional.fromSTEB(5.0, 5.0, 5.0, 5.0),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  if ((valueOrDefault(currentUserDocument?.role, '') ==
                          'professeur') ||
                      (valueOrDefault(currentUserDocument?.role, '') ==
                          'responsable'))
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(5.0, 5.0, 5.0, 5.0),
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
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      5.0, 5.0, 5.0, 5.0),
                                  child: Icon(
                                    Icons.speed_outlined,
                                    color:
                                        FFAppState().currentPage == 'Dashboard'
                                            ? Colors.black
                                            : Colors.white,
                                    size: 30.0,
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      5.0, 5.0, 5.0, 5.0),
                                  child: Text(
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
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  if (valueOrDefault(currentUserDocument?.role, '') == 'admin')
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(5.0, 5.0, 5.0, 5.0),
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
                            decoration: BoxDecoration(
                              color: valueOrDefault<Color>(
                                FFAppState().currentPage == 'Etablissements'
                                    ? FlutterFlowTheme.of(context).white
                                    : FlutterFlowTheme.of(context).secondary,
                                FlutterFlowTheme.of(context).white,
                              ),
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                            child: Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  5.0, 0.0, 0.0, 0.0),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        5.0, 5.0, 5.0, 5.0),
                                    child: Icon(
                                      Icons.business,
                                      color: FFAppState().currentPage ==
                                              'Etablissements'
                                          ? Colors.black
                                          : Colors.white,
                                      size: 30.0,
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        5.0, 5.0, 5.0, 5.0),
                                    child: Text(
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
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  if (valueOrDefault(currentUserDocument?.role, '') == 'admin')
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(5.0, 5.0, 5.0, 5.0),
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
                            decoration: BoxDecoration(
                              color: FFAppState().currentPage == 'Comptes'
                                  ? FlutterFlowTheme.of(context).white
                                  : FlutterFlowTheme.of(context).secondary,
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                            child: Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  5.0, 0.0, 0.0, 0.0),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        5.0, 5.0, 5.0, 5.0),
                                    child: Icon(
                                      Icons.people_outline,
                                      color:
                                          FFAppState().currentPage == 'Comptes'
                                              ? Colors.black
                                              : Colors.white,
                                      size: 30.0,
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        5.0, 5.0, 5.0, 5.0),
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
                        ),
                      ),
                    ),
                  if ((valueOrDefault(currentUserDocument?.role, '') ==
                          'etudiant') ||
                      (valueOrDefault(currentUserDocument?.role, '') ==
                          'responsable') ||
                      (valueOrDefault(currentUserDocument?.role, '') ==
                          'professeur'))
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(5.0, 5.0, 5.0, 5.0),
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
                              if (valueOrDefault(
                                      currentUserDocument?.role, '') ==
                                  'professeur') {
                                await Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) =>
                                        ProfesseurGstageDoc1Widget(),
                                  ),
                                );
                              } else {
                                if (valueOrDefault(
                                        currentUserDocument?.role, '') ==
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
                            decoration: BoxDecoration(
                              color: FFAppState().currentPage == 'Stages'
                                  ? FlutterFlowTheme.of(context).white
                                  : FlutterFlowTheme.of(context).secondary,
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                            child: Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  5.0, 0.0, 0.0, 0.0),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        5.0, 5.0, 5.0, 5.0),
                                    child: Icon(
                                      Icons.badge,
                                      color:
                                          FFAppState().currentPage == 'Stages'
                                              ? Colors.black
                                              : Colors.white,
                                      size: 30.0,
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        5.0, 5.0, 5.0, 5.0),
                                    child: Text(
                                      'Stages',
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily: 'Overpass',
                                            color: FFAppState().currentPage ==
                                                    'Stages'
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
                        ),
                      ),
                    ),
                  if (valueOrDefault(currentUserDocument?.role, '') ==
                      'responsable')
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(5.0, 5.0, 5.0, 5.0),
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
                                builder: (context) =>
                                    ResponsableGstageDoc1Widget(),
                              ),
                            );
                          },
                          child: Container(
                            width: MediaQuery.of(context).size.width * 0.7,
                            decoration: BoxDecoration(
                              color: FFAppState().currentPage == 'Documents'
                                  ? Colors.white
                                  : FlutterFlowTheme.of(context).secondary,
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      5.0, 5.0, 5.0, 5.0),
                                  child: Icon(
                                    Icons.file_copy_outlined,
                                    color:
                                        FFAppState().currentPage == 'Documents'
                                            ? Colors.black
                                            : Colors.white,
                                    size: 30.0,
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      5.0, 5.0, 5.0, 5.0),
                                  child: Text(
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
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(5.0, 5.0, 5.0, 5.0),
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
                        decoration: BoxDecoration(
                          color: FFAppState().currentPage == 'Profile'
                              ? FlutterFlowTheme.of(context).white
                              : FlutterFlowTheme.of(context).secondary,
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              5.0, 0.0, 0.0, 0.0),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    5.0, 5.0, 5.0, 5.0),
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
                                    5.0, 5.0, 5.0, 5.0),
                                child: Text(
                                  'Profile',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: 'Overpass',
                                        color: FFAppState().currentPage ==
                                                'Profile'
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
                    ),
                  ),
                  Container(
                    width: 100.0,
                    height: 65.0,
                    decoration: BoxDecoration(),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
