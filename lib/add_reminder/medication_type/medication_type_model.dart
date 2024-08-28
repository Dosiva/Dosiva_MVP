import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'medication_type_widget.dart' show MedicationTypeWidget;
import 'package:flutter/material.dart';

class MedicationTypeModel extends FlutterFlowModel<MedicationTypeWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for DropDown widget.
  String? dropDownValue;
  FormFieldController<String>? dropDownValueController;
  // State field(s) for CountController widget.
  int? countControllerValue1;
  // State field(s) for CountController widget.
  int? countControllerValue2;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
