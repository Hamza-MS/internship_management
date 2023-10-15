import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/login/login_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'top_bar_model.dart';
export 'top_bar_model.dart';

class TopBarWidget extends StatefulWidget {
  const TopBarWidget({Key? key}) : super(key: key);

  @override
  _TopBarWidgetState createState() => _TopBarWidgetState();
}

class _TopBarWidgetState extends State<TopBarWidget>
    with TickerProviderStateMixin {
  late TopBarModel _model;

  final animationsMap = {
    'iconButtonOnActionTriggerAnimation': AnimationInfo(
      trigger: AnimationTrigger.onActionTrigger,
      applyInitialState: true,
      effects: [
        FadeEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 600.ms,
          begin: 0.0,
          end: 1.0,
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
    _model = createModel(context, () => TopBarModel());

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

    return Container(
      width: MediaQuery.of(context).size.width * 1.0,
      height: 70.0,
      decoration: BoxDecoration(
        color: FlutterFlowTheme.of(context).secondary,
        borderRadius: BorderRadius.circular(0.0),
        border: Border.all(
          color: FlutterFlowTheme.of(context).darkBG,
        ),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          if (responsiveVisibility(
            context: context,
            phone: false,
            tablet: false,
          ))
            Container(
              height: 100.0,
              decoration: BoxDecoration(),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(5.0, 5.0, 5.0, 5.0),
                    child: Image.asset(
                      'assets/images/logo.png',
                      width: 75.4,
                      height: 100.0,
                      fit: BoxFit.contain,
                    ),
                  ),
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(0.0, 10.0, 0.0, 0.0),
                    child: Text(
                      'Stage UIR',
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                            fontFamily: 'Overpass',
                            color: FlutterFlowTheme.of(context).white,
                            fontSize: 35.0,
                            fontWeight: FontWeight.w900,
                          ),
                    ),
                  ),
                ],
              ),
            ),
          if (responsiveVisibility(
            context: context,
            tabletLandscape: false,
            desktop: false,
          ))
            FlutterFlowIconButton(
              borderColor: Colors.transparent,
              borderRadius: 30.0,
              borderWidth: 1.0,
              buttonSize: 50.0,
              icon: Icon(
                Icons.arrow_back_ios,
                color: FlutterFlowTheme.of(context).white,
                size: 20.0,
              ),
              onPressed: () async {
                Navigator.pop(context);
              },
            ),
          Spacer(),
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(10.0, 0.0, 0.0, 0.0),
            child: Container(
              decoration: BoxDecoration(),
              child: Column(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  AuthUserStreamWidget(
                    builder: (context) => Text(
                      () {
                        if (valueOrDefault(currentUserDocument?.role, '') ==
                            'admin') {
                          return 'Administrateur';
                        } else if (valueOrDefault(
                                currentUserDocument?.role, '') ==
                            'etudiant') {
                          return 'Etudiant';
                        } else if (valueOrDefault(
                                currentUserDocument?.role, '') ==
                            'professeur') {
                          return 'Professeur';
                        } else if (valueOrDefault(
                                currentUserDocument?.role, '') ==
                            'responsable') {
                          return 'Responsable';
                        } else {
                          return 'GUEST';
                        }
                      }(),
                      style:
                          FlutterFlowTheme.of(context).headlineSmall.override(
                                fontFamily: 'Overpass',
                                color: FlutterFlowTheme.of(context).white,
                                letterSpacing: 1.0,
                              ),
                    ),
                  ),
                  Text(
                    () {
                      if (FFAppState().currentPage == 'Dashboard') {
                        return 'Dashboard';
                      } else if (FFAppState().currentPage == 'Profile') {
                        return 'Profile';
                      } else {
                        return 'Gestion des ${FFAppState().currentPage}';
                      }
                    }(),
                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                          fontFamily: 'Overpass',
                          color: FlutterFlowTheme.of(context).white,
                        ),
                  ),
                ],
              ),
            ),
          ),
          Spacer(),
          StreamBuilder<List<RencontreRecord>>(
            stream: queryRencontreRecord(),
            builder: (context, snapshot) {
              // Customize what your widget looks like when it's loading.
              if (!snapshot.hasData) {
                return Center(
                  child: SizedBox(
                    width: 50.0,
                    height: 50.0,
                    child: SpinKitFadingCircle(
                      color: FlutterFlowTheme.of(context).primary,
                      size: 50.0,
                    ),
                  ),
                );
              }
              List<RencontreRecord> notifIconButtonRencontreRecordList =
                  snapshot.data!;
              return FlutterFlowIconButton(
                borderColor: Colors.transparent,
                borderRadius: 30.0,
                borderWidth: 1.0,
                buttonSize: 40.0,
                icon: Icon(
                  Icons.notifications_none,
                  color: FlutterFlowTheme.of(context).white,
                  size: 30.0,
                ),
                onPressed: () {
                  print('notif_IconButton pressed ...');
                },
              ).animateOnActionTrigger(
                animationsMap['iconButtonOnActionTriggerAnimation']!,
              );
            },
          ),
          if (responsiveVisibility(
            context: context,
            tabletLandscape: false,
            desktop: false,
          ))
            FlutterFlowIconButton(
              borderColor: Colors.transparent,
              borderRadius: 30.0,
              borderWidth: 1.0,
              buttonSize: 40.0,
              icon: Icon(
                Icons.logout,
                color: FlutterFlowTheme.of(context).white,
                size: 30.0,
              ),
              onPressed: () async {
                await authManager.signOut();
                await Navigator.pushAndRemoveUntil(
                  context,
                  MaterialPageRoute(
                    builder: (context) => LoginWidget(),
                  ),
                  (r) => false,
                );
              },
            ),
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(5.0, 5.0, 5.0, 5.0),
            child: AuthUserStreamWidget(
              builder: (context) => Container(
                clipBehavior: Clip.antiAlias,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                ),
                child: Image.network(
                  valueOrDefault<String>(
                    currentUserPhoto,
                    'https://png.pngtree.com/png-vector/20190223/ourmid/pngtree-profile-line-black-icon-png-image_691065.jpg',
                  ),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
