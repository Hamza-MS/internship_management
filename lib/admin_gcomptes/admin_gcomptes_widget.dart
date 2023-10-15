import '/components/menu_btn_widget.dart';
import '/components/menu_widget.dart';
import '/components/side_bar_widget.dart';
import '/components/top_bar_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'admin_gcomptes_model.dart';
export 'admin_gcomptes_model.dart';

class AdminGcomptesWidget extends StatefulWidget {
  const AdminGcomptesWidget({Key? key}) : super(key: key);

  @override
  _AdminGcomptesWidgetState createState() => _AdminGcomptesWidgetState();
}

class _AdminGcomptesWidgetState extends State<AdminGcomptesWidget> {
  late AdminGcomptesModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();
  final _unfocusNode = FocusNode();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => AdminGcomptesModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    _unfocusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return GestureDetector(
      onTap: () => FocusScope.of(context).requestFocus(_unfocusNode),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).overlay,
        body: SafeArea(
          top: true,
          child: Stack(
            children: [
              Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  wrapWithModel(
                    model: _model.sideBarModel,
                    updateCallback: () => setState(() {}),
                    child: SideBarWidget(),
                  ),
                  Expanded(
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Container(
                          width: 100.0,
                          height: 70.0,
                          decoration: BoxDecoration(),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Align(
                alignment: AlignmentDirectional(0.95, 0.95),
                child: wrapWithModel(
                  model: _model.menuModel,
                  updateCallback: () => setState(() {}),
                  child: MenuWidget(),
                ),
              ),
              Align(
                alignment: AlignmentDirectional(0.95, 0.95),
                child: wrapWithModel(
                  model: _model.menuBtnModel,
                  updateCallback: () => setState(() {}),
                  child: MenuBtnWidget(),
                ),
              ),
              wrapWithModel(
                model: _model.topBarModel,
                updateCallback: () => setState(() {}),
                child: TopBarWidget(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
