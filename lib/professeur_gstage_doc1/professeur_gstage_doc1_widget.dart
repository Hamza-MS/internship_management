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
import 'professeur_gstage_doc1_model.dart';
export 'professeur_gstage_doc1_model.dart';

class ProfesseurGstageDoc1Widget extends StatefulWidget {
  const ProfesseurGstageDoc1Widget({Key? key}) : super(key: key);

  @override
  _ProfesseurGstageDoc1WidgetState createState() =>
      _ProfesseurGstageDoc1WidgetState();
}

class _ProfesseurGstageDoc1WidgetState
    extends State<ProfesseurGstageDoc1Widget> {
  late ProfesseurGstageDoc1Model _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ProfesseurGstageDoc1Model());

    _model.textController ??= TextEditingController();
    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return AuthUserStreamWidget(
      builder: (context) => FutureBuilder<List<UserRecord>>(
        future: queryUserRecordOnce(
          queryBuilder: (userRecord) => userRecord
              .where('role', isEqualTo: 'etudiant')
              .where('encadrant', isEqualTo: currentUserDocument!.encadrant),
        ),
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
          List<UserRecord> professeurGstageDoc1UserRecordList = snapshot.data!;
          return Scaffold(
            key: scaffoldKey,
            backgroundColor: FlutterFlowTheme.of(context).white,
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
                              width: MediaQuery.of(context).size.width * 1.0,
                              height: 70.0,
                              decoration: BoxDecoration(),
                            ),
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  10.0, 20.0, 10.0, 0.0),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Expanded(
                                    child: Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          12.0, 8.0, 12.0, 8.0),
                                      child: Container(
                                        width: double.infinity,
                                        height: 60.0,
                                        decoration: BoxDecoration(
                                          color: FlutterFlowTheme.of(context)
                                              .primary,
                                          borderRadius:
                                              BorderRadius.circular(30.0),
                                        ),
                                        child: Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  8.0, 0.0, 8.0, 0.0),
                                          child: Row(
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        4.0, 0.0, 4.0, 0.0),
                                                child: InkWell(
                                                  splashColor:
                                                      Colors.transparent,
                                                  focusColor:
                                                      Colors.transparent,
                                                  hoverColor:
                                                      Colors.transparent,
                                                  highlightColor:
                                                      Colors.transparent,
                                                  onTap: () async {
                                                    setState(() {
                                                      _model.simpleSearchResults1 =
                                                          TextSearch(
                                                        professeurGstageDoc1UserRecordList
                                                            .map(
                                                              (record) =>
                                                                  TextSearchItem(
                                                                      record, [
                                                                record.prenom!,
                                                                record.nom!
                                                              ]),
                                                            )
                                                            .toList(),
                                                      )
                                                              .search(_model
                                                                  .textController
                                                                  .text)
                                                              .map((r) =>
                                                                  r.object)
                                                              .toList();
                                                    });
                                                    setState(() {
                                                      FFAppState()
                                                          .showFullList = false;
                                                    });
                                                  },
                                                  child: Icon(
                                                    Icons.search_rounded,
                                                    color: Color(0xFFACB9C4),
                                                    size: 24.0,
                                                  ),
                                                ),
                                              ),
                                              Expanded(
                                                child: Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          4.0, 0.0, 0.0, 0.0),
                                                  child: TextFormField(
                                                    controller:
                                                        _model.textController,
                                                    onChanged: (_) =>
                                                        EasyDebounce.debounce(
                                                      '_model.textController',
                                                      Duration(
                                                          milliseconds: 2000),
                                                      () => setState(() {}),
                                                    ),
                                                    onFieldSubmitted:
                                                        (_) async {
                                                      setState(() {
                                                        _model.simpleSearchResults2 =
                                                            TextSearch(
                                                          professeurGstageDoc1UserRecordList
                                                              .map(
                                                                (record) =>
                                                                    TextSearchItem(
                                                                        record,
                                                                        [
                                                                      record
                                                                          .prenom!,
                                                                      record
                                                                          .nom!
                                                                    ]),
                                                              )
                                                              .toList(),
                                                        )
                                                                .search(_model
                                                                    .textController
                                                                    .text)
                                                                .map((r) =>
                                                                    r.object)
                                                                .toList();
                                                      });
                                                      setState(() {
                                                        FFAppState()
                                                                .showFullList =
                                                            false;
                                                      });
                                                    },
                                                    obscureText: false,
                                                    decoration: InputDecoration(
                                                      hintText: 'Search...',
                                                      enabledBorder:
                                                          UnderlineInputBorder(
                                                        borderSide: BorderSide(
                                                          color:
                                                              Color(0x00000000),
                                                          width: 1.0,
                                                        ),
                                                        borderRadius:
                                                            const BorderRadius
                                                                .only(
                                                          topLeft:
                                                              Radius.circular(
                                                                  4.0),
                                                          topRight:
                                                              Radius.circular(
                                                                  4.0),
                                                        ),
                                                      ),
                                                      focusedBorder:
                                                          UnderlineInputBorder(
                                                        borderSide: BorderSide(
                                                          color:
                                                              Color(0x00000000),
                                                          width: 1.0,
                                                        ),
                                                        borderRadius:
                                                            const BorderRadius
                                                                .only(
                                                          topLeft:
                                                              Radius.circular(
                                                                  4.0),
                                                          topRight:
                                                              Radius.circular(
                                                                  4.0),
                                                        ),
                                                      ),
                                                      errorBorder:
                                                          UnderlineInputBorder(
                                                        borderSide: BorderSide(
                                                          color:
                                                              Color(0x00000000),
                                                          width: 1.0,
                                                        ),
                                                        borderRadius:
                                                            const BorderRadius
                                                                .only(
                                                          topLeft:
                                                              Radius.circular(
                                                                  4.0),
                                                          topRight:
                                                              Radius.circular(
                                                                  4.0),
                                                        ),
                                                      ),
                                                      focusedErrorBorder:
                                                          UnderlineInputBorder(
                                                        borderSide: BorderSide(
                                                          color:
                                                              Color(0x00000000),
                                                          width: 1.0,
                                                        ),
                                                        borderRadius:
                                                            const BorderRadius
                                                                .only(
                                                          topLeft:
                                                              Radius.circular(
                                                                  4.0),
                                                          topRight:
                                                              Radius.circular(
                                                                  4.0),
                                                        ),
                                                      ),
                                                    ),
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily: 'Lato',
                                                          color:
                                                              Color(0xFF95A1AC),
                                                          fontSize: 14.0,
                                                          fontWeight:
                                                              FontWeight.normal,
                                                        ),
                                                    validator: _model
                                                        .textControllerValidator
                                                        .asValidator(context),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Row(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Expanded(
                                  child: Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        40.0, 25.0, 40.0, 0.0),
                                    child: Container(
                                      width: MediaQuery.of(context).size.width *
                                          0.8,
                                      height:
                                          MediaQuery.of(context).size.height *
                                              0.55,
                                      decoration: BoxDecoration(
                                        color: FlutterFlowTheme.of(context)
                                            .secondaryBackground,
                                        boxShadow: [
                                          BoxShadow(
                                            blurRadius: 3.0,
                                            color: FlutterFlowTheme.of(context)
                                                .primary,
                                            offset: Offset(0.0, 2.0),
                                            spreadRadius: 3.0,
                                          )
                                        ],
                                        borderRadius:
                                            BorderRadius.circular(30.0),
                                      ),
                                      child: SingleChildScrollView(
                                        child: Column(
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            if (FFAppState().showFullList)
                                              FutureBuilder<List<UserRecord>>(
                                                future: queryUserRecordOnce(
                                                  queryBuilder: (userRecord) =>
                                                      userRecord.where('role',
                                                          isEqualTo:
                                                              'etudiant'),
                                                ),
                                                builder: (context, snapshot) {
                                                  // Customize what your widget looks like when it's loading.
                                                  if (!snapshot.hasData) {
                                                    return Center(
                                                      child: SizedBox(
                                                        width: 50.0,
                                                        height: 50.0,
                                                        child:
                                                            SpinKitFadingCircle(
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .primary,
                                                          size: 50.0,
                                                        ),
                                                      ),
                                                    );
                                                  }
                                                  List<UserRecord>
                                                      listViewUserRecordList =
                                                      snapshot.data!;
                                                  return ListView.builder(
                                                    padding: EdgeInsets.zero,
                                                    shrinkWrap: true,
                                                    scrollDirection:
                                                        Axis.vertical,
                                                    itemCount:
                                                        listViewUserRecordList
                                                            .length,
                                                    itemBuilder: (context,
                                                        listViewIndex) {
                                                      final listViewUserRecord =
                                                          listViewUserRecordList[
                                                              listViewIndex];
                                                      return InkWell(
                                                        splashColor:
                                                            Colors.transparent,
                                                        focusColor:
                                                            Colors.transparent,
                                                        hoverColor:
                                                            Colors.transparent,
                                                        highlightColor:
                                                            Colors.transparent,
                                                        onTap: () async {
                                                          await Navigator.push(
                                                            context,
                                                            MaterialPageRoute(
                                                              builder: (context) =>
                                                                  ProfesseurGstageDoc2Widget(
                                                                nom:
                                                                    listViewUserRecord,
                                                              ),
                                                            ),
                                                          );
                                                        },
                                                        child: ListTile(
                                                          leading: Icon(
                                                            Icons.person_sharp,
                                                          ),
                                                          title: Text(
                                                            listViewUserRecord
                                                                .nom,
                                                            style: FlutterFlowTheme
                                                                    .of(context)
                                                                .bodyMedium
                                                                .override(
                                                                  fontFamily:
                                                                      'Overpass',
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .darkBG,
                                                                  fontSize:
                                                                      12.0,
                                                                ),
                                                          ),
                                                          subtitle: Text(
                                                            listViewUserRecord
                                                                .prenom,
                                                            style: FlutterFlowTheme
                                                                    .of(context)
                                                                .bodyMedium
                                                                .override(
                                                                  fontFamily:
                                                                      'Overpass',
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .darkBG,
                                                                  fontSize:
                                                                      10.0,
                                                                ),
                                                          ),
                                                          trailing: Icon(
                                                            Icons.arrow_right,
                                                            color: Color(
                                                                0xFF303030),
                                                            size: 20.0,
                                                          ),
                                                          tileColor:
                                                              Color(0xFFF5F5F5),
                                                          dense: false,
                                                        ),
                                                      );
                                                    },
                                                  );
                                                },
                                              ),
                                            Builder(
                                              builder: (context) {
                                                final names = _model
                                                    .simpleSearchResults2
                                                    .toList();
                                                return ListView.builder(
                                                  padding: EdgeInsets.zero,
                                                  shrinkWrap: true,
                                                  scrollDirection:
                                                      Axis.vertical,
                                                  itemCount: names.length,
                                                  itemBuilder:
                                                      (context, namesIndex) {
                                                    final namesItem =
                                                        names[namesIndex];
                                                    return InkWell(
                                                      splashColor:
                                                          Colors.transparent,
                                                      focusColor:
                                                          Colors.transparent,
                                                      hoverColor:
                                                          Colors.transparent,
                                                      highlightColor:
                                                          Colors.transparent,
                                                      onTap: () async {
                                                        await Navigator.push(
                                                          context,
                                                          MaterialPageRoute(
                                                            builder: (context) =>
                                                                ProfesseurGstageDoc2Widget(
                                                              nom: namesItem,
                                                            ),
                                                          ),
                                                        );
                                                      },
                                                      child: ListTile(
                                                        leading: Icon(
                                                          Icons.person_sharp,
                                                        ),
                                                        title: Text(
                                                          namesItem.nom,
                                                          style: FlutterFlowTheme
                                                                  .of(context)
                                                              .bodyMedium
                                                              .override(
                                                                fontFamily:
                                                                    'Overpass',
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .darkBG,
                                                                fontSize: 12.0,
                                                              ),
                                                        ),
                                                        subtitle: Text(
                                                          namesItem.prenom,
                                                          style: FlutterFlowTheme
                                                                  .of(context)
                                                              .bodyMedium
                                                              .override(
                                                                fontFamily:
                                                                    'Overpass',
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .darkBG,
                                                                fontSize: 10.0,
                                                              ),
                                                        ),
                                                        trailing: Icon(
                                                          Icons
                                                              .arrow_right_outlined,
                                                          color:
                                                              Color(0xFF303030),
                                                          size: 20.0,
                                                        ),
                                                        tileColor:
                                                            Color(0xFFF5F5F5),
                                                        dense: false,
                                                      ),
                                                    );
                                                  },
                                                );
                                              },
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  wrapWithModel(
                    model: _model.menuModel,
                    updateCallback: () => setState(() {}),
                    child: MenuWidget(),
                  ),
                  wrapWithModel(
                    model: _model.menuBtnModel,
                    updateCallback: () => setState(() {}),
                    child: MenuBtnWidget(),
                  ),
                  wrapWithModel(
                    model: _model.topBarModel,
                    updateCallback: () => setState(() {}),
                    child: TopBarWidget(),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
