import '/backend/api_requests/api_calls.dart';
import '/backend/gemini/gemini.dart';
import '/flutter_flow/flutter_flow_choice_chips.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import 'recommendation1_gemini_f_i_n_a_l_widget.dart'
    show Recommendation1GeminiFINALWidget;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class Recommendation1GeminiFINALModel
    extends FlutterFlowModel<Recommendation1GeminiFINALWidget> {
  ///  Local state fields for this page.

  String prompt = 'prompt';

  ///  State fields for stateful widgets in this page.

  final formKey = GlobalKey<FormState>();
  // State field(s) for Monto widget.
  FocusNode? montoFocusNode;
  TextEditingController? montoTextController;
  String? Function(BuildContext, String?)? montoTextControllerValidator;
  String? _montoTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Please enter the patients full name.';
    }

    return null;
  }

  // State field(s) for NivelerieRiesgo widget.
  FormFieldController<List<String>>? nivelerieRiesgoValueController;
  String? get nivelerieRiesgoValue =>
      nivelerieRiesgoValueController?.value?.firstOrNull;
  set nivelerieRiesgoValue(String? val) =>
      nivelerieRiesgoValueController?.value = val != null ? [val] : [];
  // State field(s) for Plazo widget.
  FormFieldController<List<String>>? plazoValueController;
  String? get plazoValue => plazoValueController?.value?.firstOrNull;
  set plazoValue(String? val) =>
      plazoValueController?.value = val != null ? [val] : [];
  // State field(s) for ChoiceChipsDificulty widget.
  FormFieldController<List<String>>? choiceChipsDificultyValueController;
  String? get choiceChipsDificultyValue =>
      choiceChipsDificultyValueController?.value?.firstOrNull;
  set choiceChipsDificultyValue(String? val) =>
      choiceChipsDificultyValueController?.value = val != null ? [val] : [];
  // Stores action output result for [Backend Call - API (GetInfoForOneAccount)] action in Button widget.
  ApiCallResponse? bankAccount;
  // Stores action output result for [Gemini - Generate Text] action in Button widget.
  String? gemini;

  @override
  void initState(BuildContext context) {
    montoTextControllerValidator = _montoTextControllerValidator;
  }

  @override
  void dispose() {
    montoFocusNode?.dispose();
    montoTextController?.dispose();
  }
}
