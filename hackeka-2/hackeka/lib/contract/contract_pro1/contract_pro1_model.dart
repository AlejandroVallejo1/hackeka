import '/backend/api_requests/api_calls.dart';
import '/backend/firebase_storage/storage.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/upload_data.dart';
import 'contract_pro1_widget.dart' show ContractPro1Widget;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class ContractPro1Model extends FlutterFlowModel<ContractPro1Widget> {
  ///  State fields for stateful widgets in this page.

  bool isDataUploading = false;
  FFUploadedFile uploadedLocalFile =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl = '';

  // Stores action output result for [Backend Call - API (Make Api)] action in Button widget.
  ApiCallResponse? makeResponse;
  // Stores action output result for [Backend Call - API (Make Api)] action in Button widget.
  ApiCallResponse? makeResponseExample;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
