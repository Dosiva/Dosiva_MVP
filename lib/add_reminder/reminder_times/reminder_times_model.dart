import '/flutter_flow/flutter_flow_util.dart';
import 'reminder_times_widget.dart' show ReminderTimesWidget;
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ReminderTimesModel extends FlutterFlowModel<ReminderTimesWidget> {
  ///  Local state fields for this page.

  bool specificIntervalEnabled = false;

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  DateTime? datePicked1;
  DateTime? datePicked2;
  DateTime? datePicked3;
  DateTime? datePicked4;
  DateTime? datePicked5;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
