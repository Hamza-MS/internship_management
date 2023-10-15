import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/backend/firebase_storage/storage.dart';
import '/components/menu_btn_widget.dart';
import '/components/menu_widget.dart';
import '/components/side_bar_widget.dart';
import '/components/top_bar_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/upload_data.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'etudiant_gstage_model.dart';
export 'etudiant_gstage_model.dart';

class EtudiantGstageWidget extends StatefulWidget {
  const EtudiantGstageWidget({
    Key? key,
    this.userID,
  }) : super(key: key);

  final DocumentReference? userID;

  @override
  _EtudiantGstageWidgetState createState() => _EtudiantGstageWidgetState();
}

class _EtudiantGstageWidgetState extends State<EtudiantGstageWidget> {
  late EtudiantGstageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => EtudiantGstageModel());

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

    return FutureBuilder<List<DocumentRecord>>(
      future: queryDocumentRecordOnce(),
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
        List<DocumentRecord> etudiantGstageDocumentRecordList = snapshot.data!;
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
                          Expanded(
                            child: Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  2.0, 2.0, 2.0, 2.0),
                              child: DefaultTabController(
                                length: 2,
                                initialIndex: 0,
                                child: Column(
                                  children: [
                                    Align(
                                      alignment: Alignment(0.0, 0),
                                      child: TabBar(
                                        labelColor:
                                            FlutterFlowTheme.of(context).darkBG,
                                        labelStyle: FlutterFlowTheme.of(context)
                                            .bodyMedium,
                                        indicatorColor:
                                            FlutterFlowTheme.of(context)
                                                .secondary,
                                        tabs: [
                                          Tab(
                                            text: 'Document(s) requi(s)',
                                          ),
                                          Tab(
                                            text: 'Envoyer',
                                          ),
                                        ],
                                      ),
                                    ),
                                    Expanded(
                                      child: TabBarView(
                                        children: [
                                          SingleChildScrollView(
                                            child: Column(
                                              mainAxisSize: MainAxisSize.max,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.center,
                                              children: [
                                                Align(
                                                  alignment:
                                                      AlignmentDirectional(
                                                          0.0, -0.05),
                                                  child: Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(0.0, 40.0,
                                                                0.0, 0.0),
                                                    child: Container(
                                                      width:
                                                          MediaQuery.of(context)
                                                                  .size
                                                                  .width *
                                                              0.8,
                                                      height:
                                                          MediaQuery.of(context)
                                                                  .size
                                                                  .height *
                                                              0.6,
                                                      decoration: BoxDecoration(
                                                        color: FlutterFlowTheme
                                                                .of(context)
                                                            .secondaryBackground,
                                                        boxShadow: [
                                                          BoxShadow(
                                                            blurRadius: 3.0,
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .primary,
                                                            offset: Offset(
                                                                2.0, 2.0),
                                                            spreadRadius: 3.0,
                                                          )
                                                        ],
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(30.0),
                                                        border: Border.all(
                                                          width: 1.0,
                                                        ),
                                                      ),
                                                      child: Align(
                                                        alignment:
                                                            AlignmentDirectional(
                                                                0.0, 0.15),
                                                        child: Padding(
                                                          padding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      0.0,
                                                                      2.0,
                                                                      0.0,
                                                                      0.0),
                                                          child: FutureBuilder<
                                                              List<
                                                                  DocumentRecord>>(
                                                            future:
                                                                queryDocumentRecordOnce(
                                                              parent:
                                                                  currentUserReference,
                                                            ),
                                                            builder: (context,
                                                                snapshot) {
                                                              // Customize what your widget looks like when it's loading.
                                                              if (!snapshot
                                                                  .hasData) {
                                                                return Center(
                                                                  child:
                                                                      SizedBox(
                                                                    width: 50.0,
                                                                    height:
                                                                        50.0,
                                                                    child:
                                                                        SpinKitFadingCircle(
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .primary,
                                                                      size:
                                                                          50.0,
                                                                    ),
                                                                  ),
                                                                );
                                                              }
                                                              List<DocumentRecord>
                                                                  listViewDocumentRecordList =
                                                                  snapshot
                                                                      .data!;
                                                              return ListView
                                                                  .builder(
                                                                padding:
                                                                    EdgeInsets
                                                                        .zero,
                                                                scrollDirection:
                                                                    Axis.vertical,
                                                                itemCount:
                                                                    listViewDocumentRecordList
                                                                        .length,
                                                                itemBuilder:
                                                                    (context,
                                                                        listViewIndex) {
                                                                  final listViewDocumentRecord =
                                                                      listViewDocumentRecordList[
                                                                          listViewIndex];
                                                                  return ListTile(
                                                                    leading:
                                                                        Icon(
                                                                      Icons
                                                                          .file_copy,
                                                                    ),
                                                                    title: Text(
                                                                      listViewDocumentRecord
                                                                          .type,
                                                                      style: FlutterFlowTheme.of(
                                                                              context)
                                                                          .headlineSmall
                                                                          .override(
                                                                            fontFamily:
                                                                                'Overpass',
                                                                            fontSize:
                                                                                15.0,
                                                                            fontWeight:
                                                                                FontWeight.w600,
                                                                          ),
                                                                    ),
                                                                    subtitle:
                                                                        Text(
                                                                      listViewDocumentRecord
                                                                          .deadline!
                                                                          .toString(),
                                                                      style: FlutterFlowTheme.of(
                                                                              context)
                                                                          .titleSmall
                                                                          .override(
                                                                            fontFamily:
                                                                                'Overpass',
                                                                            fontSize:
                                                                                10.0,
                                                                          ),
                                                                    ),
                                                                    trailing:
                                                                        Icon(
                                                                      Icons
                                                                          .arrow_forward_ios,
                                                                      color: Color(
                                                                          0xFF303030),
                                                                      size:
                                                                          20.0,
                                                                    ),
                                                                    tileColor:
                                                                        Color(
                                                                            0xFFF5F5F5),
                                                                    dense:
                                                                        false,
                                                                  );
                                                                },
                                                              );
                                                            },
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                          Column(
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              Align(
                                                alignment: AlignmentDirectional(
                                                    -0.2, 0.0),
                                                child: Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          0.0, 50.0, 0.0, 0.0),
                                                  child: Row(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .center,
                                                    children: [
                                                      Align(
                                                        alignment:
                                                            AlignmentDirectional(
                                                                -0.3, -0.5),
                                                        child:
                                                            FlutterFlowIconButton(
                                                          borderColor: Colors
                                                              .transparent,
                                                          borderRadius: 30.0,
                                                          borderWidth: 1.0,
                                                          buttonSize: 60.0,
                                                          icon: Icon(
                                                            Icons
                                                                .cloud_download,
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .primary,
                                                            size: 30.0,
                                                          ),
                                                          onPressed: () {
                                                            print(
                                                                'IconButton pressed ...');
                                                          },
                                                        ),
                                                      ),
                                                      Text(
                                                        'Vous avez des fichiers à déposer',
                                                        style:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyMedium
                                                                .override(
                                                                  fontFamily:
                                                                      'Overpass',
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .darkBG,
                                                                ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ),
                                              Row(
                                                mainAxisSize: MainAxisSize.max,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: [
                                                  Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(30.0,
                                                                30.0, 0.0, 0.0),
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
                                                        final selectedFile =
                                                            await selectFile(
                                                                allowedExtensions: [
                                                              'pdf'
                                                            ]);
                                                        if (selectedFile !=
                                                            null) {
                                                          setState(() => _model
                                                                  .isDataUploading1 =
                                                              true);
                                                          FFUploadedFile?
                                                              selectedUploadedFile;
                                                          String? downloadUrl;
                                                          try {
                                                            showUploadMessage(
                                                              context,
                                                              'Uploading file...',
                                                              showLoading: true,
                                                            );
                                                            selectedUploadedFile =
                                                                FFUploadedFile(
                                                              name: selectedFile
                                                                  .storagePath
                                                                  .split('/')
                                                                  .last,
                                                              bytes:
                                                                  selectedFile
                                                                      .bytes,
                                                            );
                                                            downloadUrl =
                                                                await uploadData(
                                                                    selectedFile
                                                                        .storagePath,
                                                                    selectedFile
                                                                        .bytes);
                                                          } finally {
                                                            ScaffoldMessenger
                                                                    .of(context)
                                                                .hideCurrentSnackBar();
                                                            _model.isDataUploading1 =
                                                                false;
                                                          }
                                                          if (selectedUploadedFile !=
                                                                  null &&
                                                              downloadUrl !=
                                                                  null) {
                                                            setState(() {
                                                              _model.uploadedLocalFile1 =
                                                                  selectedUploadedFile!;
                                                              _model.uploadedFileUrl1 =
                                                                  downloadUrl!;
                                                            });
                                                            showUploadMessage(
                                                              context,
                                                              'Success!',
                                                            );
                                                          } else {
                                                            setState(() {});
                                                            showUploadMessage(
                                                              context,
                                                              'Failed to upload file',
                                                            );
                                                            return;
                                                          }
                                                        }

                                                        if (currentUserReference ==
                                                            currentUserReference) {
                                                          if (etudiantGstageDocumentRecordList
                                                                  .length >
                                                              0) {
                                                            final documentUpdateData =
                                                                createDocumentRecordData(
                                                              received: true,
                                                              file: _model
                                                                  .uploadedFileUrl1,
                                                            );
                                                            await etudiantGstageDocumentRecordList
                                                                .where((e) =>
                                                                    e.type ==
                                                                    'Rapport de stage')
                                                                .toList()[1]
                                                                .reference
                                                                .update(
                                                                    documentUpdateData);
                                                          }
                                                        }
                                                      },
                                                      child: Container(
                                                        width: MediaQuery.of(
                                                                    context)
                                                                .size
                                                                .width *
                                                            0.85,
                                                        height: MediaQuery.of(
                                                                    context)
                                                                .size
                                                                .height *
                                                            0.4,
                                                        constraints:
                                                            BoxConstraints(
                                                          maxWidth: MediaQuery.of(
                                                                      context)
                                                                  .size
                                                                  .width *
                                                              5.0,
                                                          maxHeight: 50.0,
                                                        ),
                                                        decoration:
                                                            BoxDecoration(
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .grayLines,
                                                          boxShadow: [
                                                            BoxShadow(
                                                              blurRadius: 3.0,
                                                              color: FlutterFlowTheme
                                                                      .of(context)
                                                                  .primary,
                                                              offset: Offset(
                                                                  0.0, 2.0),
                                                              spreadRadius: 3.0,
                                                            )
                                                          ],
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      30.0),
                                                        ),
                                                        child: Row(
                                                          mainAxisSize:
                                                              MainAxisSize.max,
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .center,
                                                          children: [
                                                            Expanded(
                                                              child: Padding(
                                                                padding:
                                                                    EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            20.0,
                                                                            0.0,
                                                                            5.0,
                                                                            0.0),
                                                                child: Text(
                                                                  'Rapport de stage',
                                                                  textAlign:
                                                                      TextAlign
                                                                          .start,
                                                                  style: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMedium
                                                                      .override(
                                                                        fontFamily:
                                                                            'Ubuntu',
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .darkBG,
                                                                        fontSize:
                                                                            18.0,
                                                                      ),
                                                                ),
                                                              ),
                                                            ),
                                                            FlutterFlowIconButton(
                                                              borderColor: Colors
                                                                  .transparent,
                                                              borderRadius:
                                                                  30.0,
                                                              borderWidth: 1.0,
                                                              buttonSize: 60.0,
                                                              icon: Icon(
                                                                Icons
                                                                    .upload_outlined,
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .darkBG,
                                                                size: 30.0,
                                                              ),
                                                              onPressed:
                                                                  () async {
                                                                final selectedFile =
                                                                    await selectFile(
                                                                        allowedExtensions: [
                                                                      'pdf'
                                                                    ]);
                                                                if (selectedFile !=
                                                                    null) {
                                                                  setState(() =>
                                                                      _model.isDataUploading2 =
                                                                          true);
                                                                  FFUploadedFile?
                                                                      selectedUploadedFile;
                                                                  String?
                                                                      downloadUrl;
                                                                  try {
                                                                    showUploadMessage(
                                                                      context,
                                                                      'Uploading file...',
                                                                      showLoading:
                                                                          true,
                                                                    );
                                                                    selectedUploadedFile =
                                                                        FFUploadedFile(
                                                                      name: selectedFile
                                                                          .storagePath
                                                                          .split(
                                                                              '/')
                                                                          .last,
                                                                      bytes: selectedFile
                                                                          .bytes,
                                                                    );
                                                                    downloadUrl = await uploadData(
                                                                        selectedFile
                                                                            .storagePath,
                                                                        selectedFile
                                                                            .bytes);
                                                                  } finally {
                                                                    ScaffoldMessenger.of(
                                                                            context)
                                                                        .hideCurrentSnackBar();
                                                                    _model.isDataUploading2 =
                                                                        false;
                                                                  }
                                                                  if (selectedUploadedFile !=
                                                                          null &&
                                                                      downloadUrl !=
                                                                          null) {
                                                                    setState(
                                                                        () {
                                                                      _model.uploadedLocalFile2 =
                                                                          selectedUploadedFile!;
                                                                      _model.uploadedFileUrl2 =
                                                                          downloadUrl!;
                                                                    });
                                                                    showUploadMessage(
                                                                      context,
                                                                      'Success!',
                                                                    );
                                                                  } else {
                                                                    setState(
                                                                        () {});
                                                                    showUploadMessage(
                                                                      context,
                                                                      'Failed to upload file',
                                                                    );
                                                                    return;
                                                                  }
                                                                }

                                                                if (currentUserReference ==
                                                                    currentUserReference) {
                                                                  if (etudiantGstageDocumentRecordList
                                                                          .length >
                                                                      0) {
                                                                    final documentUpdateData =
                                                                        createDocumentRecordData(
                                                                      received:
                                                                          true,
                                                                      file: _model
                                                                          .uploadedFileUrl2,
                                                                    );
                                                                    await etudiantGstageDocumentRecordList
                                                                        .where((e) =>
                                                                            e.type ==
                                                                            'Rapport de stage')
                                                                        .toList()[
                                                                            1]
                                                                        .reference
                                                                        .update(
                                                                            documentUpdateData);
                                                                  }
                                                                }
                                                              },
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                              Row(
                                                mainAxisSize: MainAxisSize.max,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: [
                                                  Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(30.0,
                                                                30.0, 0.0, 0.0),
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
                                                        final selectedFile =
                                                            await selectFile(
                                                                allowedExtensions: [
                                                              'pdf'
                                                            ]);
                                                        if (selectedFile !=
                                                            null) {
                                                          setState(() => _model
                                                                  .isDataUploading3 =
                                                              true);
                                                          FFUploadedFile?
                                                              selectedUploadedFile;
                                                          String? downloadUrl;
                                                          try {
                                                            showUploadMessage(
                                                              context,
                                                              'Uploading file...',
                                                              showLoading: true,
                                                            );
                                                            selectedUploadedFile =
                                                                FFUploadedFile(
                                                              name: selectedFile
                                                                  .storagePath
                                                                  .split('/')
                                                                  .last,
                                                              bytes:
                                                                  selectedFile
                                                                      .bytes,
                                                            );
                                                            downloadUrl =
                                                                await uploadData(
                                                                    selectedFile
                                                                        .storagePath,
                                                                    selectedFile
                                                                        .bytes);
                                                          } finally {
                                                            ScaffoldMessenger
                                                                    .of(context)
                                                                .hideCurrentSnackBar();
                                                            _model.isDataUploading3 =
                                                                false;
                                                          }
                                                          if (selectedUploadedFile !=
                                                                  null &&
                                                              downloadUrl !=
                                                                  null) {
                                                            setState(() {
                                                              _model.uploadedLocalFile3 =
                                                                  selectedUploadedFile!;
                                                              _model.uploadedFileUrl3 =
                                                                  downloadUrl!;
                                                            });
                                                            showUploadMessage(
                                                              context,
                                                              'Success!',
                                                            );
                                                          } else {
                                                            setState(() {});
                                                            showUploadMessage(
                                                              context,
                                                              'Failed to upload file',
                                                            );
                                                            return;
                                                          }
                                                        }

                                                        if (currentUserReference ==
                                                            currentUserReference) {
                                                          if (etudiantGstageDocumentRecordList
                                                                  .length >
                                                              0) {
                                                            final documentUpdateData =
                                                                createDocumentRecordData(
                                                              received: true,
                                                              file: _model
                                                                  .uploadedFileUrl3,
                                                            );
                                                            await etudiantGstageDocumentRecordList
                                                                .where((e) =>
                                                                    e.type ==
                                                                    'Attestation d\'assurance')
                                                                .toList()[1]
                                                                .reference
                                                                .update(
                                                                    documentUpdateData);
                                                          }
                                                        }
                                                      },
                                                      child: Container(
                                                        width: MediaQuery.of(
                                                                    context)
                                                                .size
                                                                .width *
                                                            0.85,
                                                        height: MediaQuery.of(
                                                                    context)
                                                                .size
                                                                .height *
                                                            0.4,
                                                        constraints:
                                                            BoxConstraints(
                                                          maxWidth: MediaQuery.of(
                                                                      context)
                                                                  .size
                                                                  .width *
                                                              5.0,
                                                          maxHeight: 50.0,
                                                        ),
                                                        decoration:
                                                            BoxDecoration(
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .grayLines,
                                                          boxShadow: [
                                                            BoxShadow(
                                                              blurRadius: 3.0,
                                                              color: FlutterFlowTheme
                                                                      .of(context)
                                                                  .primary,
                                                              offset: Offset(
                                                                  0.0, 2.0),
                                                              spreadRadius: 3.0,
                                                            )
                                                          ],
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      30.0),
                                                        ),
                                                        child: Row(
                                                          mainAxisSize:
                                                              MainAxisSize.max,
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .center,
                                                          children: [
                                                            Expanded(
                                                              child: Padding(
                                                                padding:
                                                                    EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            20.0,
                                                                            0.0,
                                                                            5.0,
                                                                            0.0),
                                                                child: Text(
                                                                  'Attestation d\'assurance',
                                                                  textAlign:
                                                                      TextAlign
                                                                          .start,
                                                                  style: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMedium
                                                                      .override(
                                                                        fontFamily:
                                                                            'Ubuntu',
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .darkBG,
                                                                        fontSize:
                                                                            18.0,
                                                                      ),
                                                                ),
                                                              ),
                                                            ),
                                                            FlutterFlowIconButton(
                                                              borderColor: Colors
                                                                  .transparent,
                                                              borderRadius:
                                                                  30.0,
                                                              borderWidth: 1.0,
                                                              buttonSize: 60.0,
                                                              icon: Icon(
                                                                Icons
                                                                    .upload_outlined,
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .darkBG,
                                                                size: 30.0,
                                                              ),
                                                              showLoadingIndicator:
                                                                  true,
                                                              onPressed:
                                                                  () async {
                                                                final selectedFile =
                                                                    await selectFile(
                                                                        allowedExtensions: [
                                                                      'pdf'
                                                                    ]);
                                                                if (selectedFile !=
                                                                    null) {
                                                                  setState(() =>
                                                                      _model.isDataUploading4 =
                                                                          true);
                                                                  FFUploadedFile?
                                                                      selectedUploadedFile;
                                                                  String?
                                                                      downloadUrl;
                                                                  try {
                                                                    showUploadMessage(
                                                                      context,
                                                                      'Uploading file...',
                                                                      showLoading:
                                                                          true,
                                                                    );
                                                                    selectedUploadedFile =
                                                                        FFUploadedFile(
                                                                      name: selectedFile
                                                                          .storagePath
                                                                          .split(
                                                                              '/')
                                                                          .last,
                                                                      bytes: selectedFile
                                                                          .bytes,
                                                                    );
                                                                    downloadUrl = await uploadData(
                                                                        selectedFile
                                                                            .storagePath,
                                                                        selectedFile
                                                                            .bytes);
                                                                  } finally {
                                                                    ScaffoldMessenger.of(
                                                                            context)
                                                                        .hideCurrentSnackBar();
                                                                    _model.isDataUploading4 =
                                                                        false;
                                                                  }
                                                                  if (selectedUploadedFile !=
                                                                          null &&
                                                                      downloadUrl !=
                                                                          null) {
                                                                    setState(
                                                                        () {
                                                                      _model.uploadedLocalFile4 =
                                                                          selectedUploadedFile!;
                                                                      _model.uploadedFileUrl4 =
                                                                          downloadUrl!;
                                                                    });
                                                                    showUploadMessage(
                                                                      context,
                                                                      'Success!',
                                                                    );
                                                                  } else {
                                                                    setState(
                                                                        () {});
                                                                    showUploadMessage(
                                                                      context,
                                                                      'Failed to upload file',
                                                                    );
                                                                    return;
                                                                  }
                                                                }

                                                                if (currentUserReference ==
                                                                    currentUserReference) {
                                                                  if (etudiantGstageDocumentRecordList
                                                                          .length >
                                                                      0) {
                                                                    final documentUpdateData =
                                                                        createDocumentRecordData(
                                                                      received:
                                                                          true,
                                                                      file: _model
                                                                          .uploadedFileUrl4,
                                                                    );
                                                                    await etudiantGstageDocumentRecordList
                                                                        .where((e) =>
                                                                            e.type ==
                                                                            'Attestation d\'assurance')
                                                                        .toList()[
                                                                            1]
                                                                        .reference
                                                                        .update(
                                                                            documentUpdateData);
                                                                  }
                                                                }
                                                              },
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                              Row(
                                                mainAxisSize: MainAxisSize.max,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: [
                                                  Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(30.0,
                                                                30.0, 0.0, 0.0),
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
                                                        final selectedFile =
                                                            await selectFile(
                                                                allowedExtensions: [
                                                              'pdf'
                                                            ]);
                                                        if (selectedFile !=
                                                            null) {
                                                          setState(() => _model
                                                                  .isDataUploading5 =
                                                              true);
                                                          FFUploadedFile?
                                                              selectedUploadedFile;
                                                          String? downloadUrl;
                                                          try {
                                                            showUploadMessage(
                                                              context,
                                                              'Uploading file...',
                                                              showLoading: true,
                                                            );
                                                            selectedUploadedFile =
                                                                FFUploadedFile(
                                                              name: selectedFile
                                                                  .storagePath
                                                                  .split('/')
                                                                  .last,
                                                              bytes:
                                                                  selectedFile
                                                                      .bytes,
                                                            );
                                                            downloadUrl =
                                                                await uploadData(
                                                                    selectedFile
                                                                        .storagePath,
                                                                    selectedFile
                                                                        .bytes);
                                                          } finally {
                                                            ScaffoldMessenger
                                                                    .of(context)
                                                                .hideCurrentSnackBar();
                                                            _model.isDataUploading5 =
                                                                false;
                                                          }
                                                          if (selectedUploadedFile !=
                                                                  null &&
                                                              downloadUrl !=
                                                                  null) {
                                                            setState(() {
                                                              _model.uploadedLocalFile5 =
                                                                  selectedUploadedFile!;
                                                              _model.uploadedFileUrl5 =
                                                                  downloadUrl!;
                                                            });
                                                            showUploadMessage(
                                                              context,
                                                              'Success!',
                                                            );
                                                          } else {
                                                            setState(() {});
                                                            showUploadMessage(
                                                              context,
                                                              'Failed to upload file',
                                                            );
                                                            return;
                                                          }
                                                        }

                                                        if (currentUserReference ==
                                                            currentUserReference) {
                                                          if (etudiantGstageDocumentRecordList
                                                                  .length >
                                                              0) {
                                                            final documentUpdateData =
                                                                createDocumentRecordData(
                                                              received: true,
                                                              file: _model
                                                                  .uploadedFileUrl5,
                                                            );
                                                            await etudiantGstageDocumentRecordList
                                                                .where((e) =>
                                                                    e.type ==
                                                                    'Fiche d\'evaluation')
                                                                .toList()[1]
                                                                .reference
                                                                .update(
                                                                    documentUpdateData);
                                                          }
                                                        }
                                                      },
                                                      child: Container(
                                                        width: MediaQuery.of(
                                                                    context)
                                                                .size
                                                                .width *
                                                            0.85,
                                                        height: MediaQuery.of(
                                                                    context)
                                                                .size
                                                                .height *
                                                            0.4,
                                                        constraints:
                                                            BoxConstraints(
                                                          maxWidth: MediaQuery.of(
                                                                      context)
                                                                  .size
                                                                  .width *
                                                              5.0,
                                                          maxHeight: 50.0,
                                                        ),
                                                        decoration:
                                                            BoxDecoration(
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .grayLines,
                                                          boxShadow: [
                                                            BoxShadow(
                                                              blurRadius: 3.0,
                                                              color: FlutterFlowTheme
                                                                      .of(context)
                                                                  .primary,
                                                              offset: Offset(
                                                                  0.0, 2.0),
                                                              spreadRadius: 3.0,
                                                            )
                                                          ],
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      30.0),
                                                        ),
                                                        child: Row(
                                                          mainAxisSize:
                                                              MainAxisSize.max,
                                                          children: [
                                                            Expanded(
                                                              child: Padding(
                                                                padding: EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        20.0,
                                                                        0.0,
                                                                        77.0,
                                                                        0.0),
                                                                child: Text(
                                                                  'Fiche d\'évaluation',
                                                                  textAlign:
                                                                      TextAlign
                                                                          .start,
                                                                  style: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMedium
                                                                      .override(
                                                                        fontFamily:
                                                                            'Ubuntu',
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .darkBG,
                                                                        fontSize:
                                                                            18.0,
                                                                      ),
                                                                ),
                                                              ),
                                                            ),
                                                            FlutterFlowIconButton(
                                                              borderColor: Colors
                                                                  .transparent,
                                                              borderRadius:
                                                                  30.0,
                                                              borderWidth: 1.0,
                                                              buttonSize: 60.0,
                                                              icon: Icon(
                                                                Icons
                                                                    .upload_outlined,
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .darkBG,
                                                                size: 30.0,
                                                              ),
                                                              onPressed:
                                                                  () async {
                                                                final selectedFile =
                                                                    await selectFile(
                                                                        allowedExtensions: [
                                                                      'pdf'
                                                                    ]);
                                                                if (selectedFile !=
                                                                    null) {
                                                                  setState(() =>
                                                                      _model.isDataUploading6 =
                                                                          true);
                                                                  FFUploadedFile?
                                                                      selectedUploadedFile;
                                                                  String?
                                                                      downloadUrl;
                                                                  try {
                                                                    showUploadMessage(
                                                                      context,
                                                                      'Uploading file...',
                                                                      showLoading:
                                                                          true,
                                                                    );
                                                                    selectedUploadedFile =
                                                                        FFUploadedFile(
                                                                      name: selectedFile
                                                                          .storagePath
                                                                          .split(
                                                                              '/')
                                                                          .last,
                                                                      bytes: selectedFile
                                                                          .bytes,
                                                                    );
                                                                    downloadUrl = await uploadData(
                                                                        selectedFile
                                                                            .storagePath,
                                                                        selectedFile
                                                                            .bytes);
                                                                  } finally {
                                                                    ScaffoldMessenger.of(
                                                                            context)
                                                                        .hideCurrentSnackBar();
                                                                    _model.isDataUploading6 =
                                                                        false;
                                                                  }
                                                                  if (selectedUploadedFile !=
                                                                          null &&
                                                                      downloadUrl !=
                                                                          null) {
                                                                    setState(
                                                                        () {
                                                                      _model.uploadedLocalFile6 =
                                                                          selectedUploadedFile!;
                                                                      _model.uploadedFileUrl6 =
                                                                          downloadUrl!;
                                                                    });
                                                                    showUploadMessage(
                                                                      context,
                                                                      'Success!',
                                                                    );
                                                                  } else {
                                                                    setState(
                                                                        () {});
                                                                    showUploadMessage(
                                                                      context,
                                                                      'Failed to upload file',
                                                                    );
                                                                    return;
                                                                  }
                                                                }

                                                                if (currentUserReference ==
                                                                    currentUserReference) {
                                                                  if (etudiantGstageDocumentRecordList
                                                                          .length >
                                                                      0) {
                                                                    final documentUpdateData =
                                                                        createDocumentRecordData(
                                                                      received:
                                                                          true,
                                                                      file: _model
                                                                          .uploadedFileUrl6,
                                                                    );
                                                                    await etudiantGstageDocumentRecordList
                                                                        .where((e) =>
                                                                            e.type ==
                                                                            'Fiche d\'evaluation')
                                                                        .toList()[
                                                                            1]
                                                                        .reference
                                                                        .update(
                                                                            documentUpdateData);
                                                                  }
                                                                }
                                                              },
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                              Row(
                                                mainAxisSize: MainAxisSize.max,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: [
                                                  Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(30.0,
                                                                30.0, 0.0, 0.0),
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
                                                        final selectedFile =
                                                            await selectFile(
                                                                allowedExtensions: [
                                                              'pdf'
                                                            ]);
                                                        if (selectedFile !=
                                                            null) {
                                                          setState(() => _model
                                                                  .isDataUploading7 =
                                                              true);
                                                          FFUploadedFile?
                                                              selectedUploadedFile;
                                                          String? downloadUrl;
                                                          try {
                                                            showUploadMessage(
                                                              context,
                                                              'Uploading file...',
                                                              showLoading: true,
                                                            );
                                                            selectedUploadedFile =
                                                                FFUploadedFile(
                                                              name: selectedFile
                                                                  .storagePath
                                                                  .split('/')
                                                                  .last,
                                                              bytes:
                                                                  selectedFile
                                                                      .bytes,
                                                            );
                                                            downloadUrl =
                                                                await uploadData(
                                                                    selectedFile
                                                                        .storagePath,
                                                                    selectedFile
                                                                        .bytes);
                                                          } finally {
                                                            ScaffoldMessenger
                                                                    .of(context)
                                                                .hideCurrentSnackBar();
                                                            _model.isDataUploading7 =
                                                                false;
                                                          }
                                                          if (selectedUploadedFile !=
                                                                  null &&
                                                              downloadUrl !=
                                                                  null) {
                                                            setState(() {
                                                              _model.uploadedLocalFile7 =
                                                                  selectedUploadedFile!;
                                                              _model.uploadedFileUrl7 =
                                                                  downloadUrl!;
                                                            });
                                                            showUploadMessage(
                                                              context,
                                                              'Success!',
                                                            );
                                                          } else {
                                                            setState(() {});
                                                            showUploadMessage(
                                                              context,
                                                              'Failed to upload file',
                                                            );
                                                            return;
                                                          }
                                                        }

                                                        if (currentUserReference ==
                                                            currentUserReference) {
                                                          if (etudiantGstageDocumentRecordList
                                                                  .length >
                                                              0) {
                                                            final documentUpdateData =
                                                                createDocumentRecordData(
                                                              received: true,
                                                              file: _model
                                                                  .uploadedFileUrl7,
                                                            );
                                                            await etudiantGstageDocumentRecordList
                                                                .where((e) =>
                                                                    e.type ==
                                                                    'CV')
                                                                .toList()[1]
                                                                .reference
                                                                .update(
                                                                    documentUpdateData);
                                                          }
                                                        }
                                                      },
                                                      child: Container(
                                                        width: MediaQuery.of(
                                                                    context)
                                                                .size
                                                                .width *
                                                            0.85,
                                                        height: MediaQuery.of(
                                                                    context)
                                                                .size
                                                                .height *
                                                            0.4,
                                                        constraints:
                                                            BoxConstraints(
                                                          maxWidth: MediaQuery.of(
                                                                      context)
                                                                  .size
                                                                  .width *
                                                              5.0,
                                                          maxHeight: 50.0,
                                                        ),
                                                        decoration:
                                                            BoxDecoration(
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .grayLines,
                                                          boxShadow: [
                                                            BoxShadow(
                                                              blurRadius: 3.0,
                                                              color: FlutterFlowTheme
                                                                      .of(context)
                                                                  .primary,
                                                              offset: Offset(
                                                                  0.0, 2.0),
                                                              spreadRadius: 3.0,
                                                            )
                                                          ],
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      30.0),
                                                        ),
                                                        child: Row(
                                                          mainAxisSize:
                                                              MainAxisSize.max,
                                                          children: [
                                                            Expanded(
                                                              child: Padding(
                                                                padding: EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        50.0,
                                                                        0.0,
                                                                        167.0,
                                                                        0.0),
                                                                child: Text(
                                                                  'CV',
                                                                  textAlign:
                                                                      TextAlign
                                                                          .start,
                                                                  style: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMedium
                                                                      .override(
                                                                        fontFamily:
                                                                            'Ubuntu',
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .darkBG,
                                                                        fontSize:
                                                                            18.0,
                                                                      ),
                                                                ),
                                                              ),
                                                            ),
                                                            FlutterFlowIconButton(
                                                              borderColor: Colors
                                                                  .transparent,
                                                              borderRadius:
                                                                  30.0,
                                                              borderWidth: 1.0,
                                                              buttonSize: 60.0,
                                                              icon: Icon(
                                                                Icons
                                                                    .upload_outlined,
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .darkBG,
                                                                size: 30.0,
                                                              ),
                                                              onPressed:
                                                                  () async {
                                                                final selectedFile =
                                                                    await selectFile(
                                                                        allowedExtensions: [
                                                                      'pdf'
                                                                    ]);
                                                                if (selectedFile !=
                                                                    null) {
                                                                  setState(() =>
                                                                      _model.isDataUploading8 =
                                                                          true);
                                                                  FFUploadedFile?
                                                                      selectedUploadedFile;
                                                                  String?
                                                                      downloadUrl;
                                                                  try {
                                                                    showUploadMessage(
                                                                      context,
                                                                      'Uploading file...',
                                                                      showLoading:
                                                                          true,
                                                                    );
                                                                    selectedUploadedFile =
                                                                        FFUploadedFile(
                                                                      name: selectedFile
                                                                          .storagePath
                                                                          .split(
                                                                              '/')
                                                                          .last,
                                                                      bytes: selectedFile
                                                                          .bytes,
                                                                    );
                                                                    downloadUrl = await uploadData(
                                                                        selectedFile
                                                                            .storagePath,
                                                                        selectedFile
                                                                            .bytes);
                                                                  } finally {
                                                                    ScaffoldMessenger.of(
                                                                            context)
                                                                        .hideCurrentSnackBar();
                                                                    _model.isDataUploading8 =
                                                                        false;
                                                                  }
                                                                  if (selectedUploadedFile !=
                                                                          null &&
                                                                      downloadUrl !=
                                                                          null) {
                                                                    setState(
                                                                        () {
                                                                      _model.uploadedLocalFile8 =
                                                                          selectedUploadedFile!;
                                                                      _model.uploadedFileUrl8 =
                                                                          downloadUrl!;
                                                                    });
                                                                    showUploadMessage(
                                                                      context,
                                                                      'Success!',
                                                                    );
                                                                  } else {
                                                                    setState(
                                                                        () {});
                                                                    showUploadMessage(
                                                                      context,
                                                                      'Failed to upload file',
                                                                    );
                                                                    return;
                                                                  }
                                                                }

                                                                if (currentUserReference ==
                                                                    currentUserReference) {
                                                                  if (etudiantGstageDocumentRecordList
                                                                          .length >
                                                                      0) {
                                                                    final documentUpdateData =
                                                                        createDocumentRecordData(
                                                                      received:
                                                                          true,
                                                                      file: _model
                                                                          .uploadedFileUrl8,
                                                                    );
                                                                    await etudiantGstageDocumentRecordList
                                                                        .where((e) =>
                                                                            e.type ==
                                                                            'CV')
                                                                        .toList()[
                                                                            1]
                                                                        .reference
                                                                        .update(
                                                                            documentUpdateData);
                                                                  }
                                                                }
                                                              },
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
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
    );
  }
}
