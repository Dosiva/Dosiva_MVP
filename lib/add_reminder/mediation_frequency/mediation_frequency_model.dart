import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'mediation_frequency_widget.dart' show MediationFrequencyWidget;
import 'package:flutter/material.dart';

class MediationFrequencyModel
    extends FlutterFlowModel<MediationFrequencyWidget> {
  ///  Local state fields for this page.

  int? frequencyChoice;

  int? medicationTimesPerDay;

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for DropDown widget.
  String? dropDownValue1;
  FormFieldController<String>? dropDownValueController1;
  // State field(s) for DropDown widget.
  String? dropDownValue2;
  FormFieldController<String>? dropDownValueController2;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
