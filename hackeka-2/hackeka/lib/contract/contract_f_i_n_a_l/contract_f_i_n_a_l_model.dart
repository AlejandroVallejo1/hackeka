import '/backend/gemini/gemini.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/upload_data.dart';
import '/flutter_flow/random_data_util.dart' as random_data;
import 'contract_f_i_n_a_l_widget.dart' show ContractFINALWidget;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class ContractFINALModel extends FlutterFlowModel<ContractFINALWidget> {
  ///  State fields for stateful widgets in this page.

  bool isDataUploading = false;
  FFUploadedFile uploadedLocalFile =
      FFUploadedFile(bytes: Uint8List.fromList([]));

  // Stores action output result for [Gemini - Text From Image] action in Button widget.
  String? geminiResponse;
  // Stores action output result for [Gemini - Text From Image] action in Button widget.
  String? geminiResponse2;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
