import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'menu_btn_model.dart';
export 'menu_btn_model.dart';

class MenuBtnWidget extends StatefulWidget {
  const MenuBtnWidget({Key? key}) : super(key: key);

  @override
  _MenuBtnWidgetState createState() => _MenuBtnWidgetState();
}

class _MenuBtnWidgetState extends State<MenuBtnWidget>
    with TickerProviderStateMixin {
  late MenuBtnModel _model;

  final animationsMap = {
    'iconButtonOnActionTriggerAnimation': AnimationInfo(
      trigger: AnimationTrigger.onActionTrigger,
      applyInitialState: true,
      effects: [
        RotateEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 600.ms,
          begin: 0.0,
          end: 1.0,
        ),
      ],
    ),
    'iconButtonOnPageLoadAnimation': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      applyInitialState: true,
      effects: [
        RotateEffect(
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
    _model = createModel(context, () => MenuBtnModel());

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
        tabletLandscape: false,
        desktop: false,
      ),
      child: Align(
        alignment: AlignmentDirectional(0.95, 0.92),
        child: FlutterFlowIconButton(
          borderColor: Colors.transparent,
          borderRadius: 30.0,
          borderWidth: 1.0,
          buttonSize: 60.0,
          fillColor: FlutterFlowTheme.of(context).secondary,
          icon: Icon(
            Icons.menu,
            color: FlutterFlowTheme.of(context).white,
            size: 40.0,
          ),
          onPressed: () async {
            if (FFAppState().menu) {
              FFAppState().update(() {
                FFAppState().menu = false;
              });
            } else {
              FFAppState().update(() {
                FFAppState().menu = true;
              });
            }

            if (animationsMap['iconButtonOnActionTriggerAnimation'] != null) {
              animationsMap['iconButtonOnActionTriggerAnimation']!
                  .controller
                  .forward(from: 0.0);
            }
          },
        )
            .animateOnPageLoad(animationsMap['iconButtonOnPageLoadAnimation']!)
            .animateOnActionTrigger(
              animationsMap['iconButtonOnActionTriggerAnimation']!,
            ),
      ),
    );
  }
}
