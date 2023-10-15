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

class EtudiantGstageModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  // Model for sideBar component.
  late SideBarModel sideBarModel;
  bool isDataUploading1 = false;
  FFUploadedFile uploadedLocalFile1 =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl1 = '';

  bool isDataUploading2 = false;
  FFUploadedFile uploadedLocalFile2 =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl2 = '';

  bool isDataUploading3 = false;
  FFUploadedFile uploadedLocalFile3 =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl3 = '';

  bool isDataUploading4 = false;
  FFUploadedFile uploadedLocalFile4 =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl4 = '';

  bool isDataUploading5 = false;
  FFUploadedFile uploadedLocalFile5 =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl5 = '';

  bool isDataUploading6 = false;
  FFUploadedFile uploadedLocalFile6 =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl6 = '';

  bool isDataUploading7 = false;
  FFUploadedFile uploadedLocalFile7 =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl7 = '';

  bool isDataUploading8 = false;
  FFUploadedFile uploadedLocalFile8 =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl8 = '';

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
    menuModel.dispose();
    menuBtnModel.dispose();
    topBarModel.dispose();
  }

  /// Additional helper methods are added here.

}
