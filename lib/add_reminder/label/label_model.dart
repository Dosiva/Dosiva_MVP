import '/flutter_flow/flutter_flow_util.dart';
import 'label_widget.dart' show LabelWidget;
import 'package:flutter/material.dart';

class LabelModel extends FlutterFlowModel<LabelWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    textFieldFocusNode?.dispose();
    textController?.dispose();
  }
}
