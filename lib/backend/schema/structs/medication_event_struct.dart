// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class MedicationEventStruct extends BaseStruct {
  MedicationEventStruct({
    DateTime? registeredTime,
    String? medLabel,
    String? medId,
    bool? scheduled,
    DateTime? scheduledTime,
    bool? onTime,
  })  : _registeredTime = registeredTime,
        _medLabel = medLabel,
        _medId = medId,
        _scheduled = scheduled,
        _scheduledTime = scheduledTime,
        _onTime = onTime;

  // "registered_time" field.
  DateTime? _registeredTime;
  DateTime? get registeredTime => _registeredTime;
  set registeredTime(DateTime? val) => _registeredTime = val;

  bool hasRegisteredTime() => _registeredTime != null;

  // "med_label" field.
  String? _medLabel;
  String get medLabel => _medLabel ?? '';
  set medLabel(String? val) => _medLabel = val;

  bool hasMedLabel() => _medLabel != null;

  // "med_id" field.
  String? _medId;
  String get medId => _medId ?? '';
  set medId(String? val) => _medId = val;

  bool hasMedId() => _medId != null;

  // "scheduled" field.
  bool? _scheduled;
  bool get scheduled => _scheduled ?? false;
  set scheduled(bool? val) => _scheduled = val;

  bool hasScheduled() => _scheduled != null;

  // "scheduled_time" field.
  DateTime? _scheduledTime;
  DateTime? get scheduledTime => _scheduledTime;
  set scheduledTime(DateTime? val) => _scheduledTime = val;

  bool hasScheduledTime() => _scheduledTime != null;

  // "on_time" field.
  bool? _onTime;
  bool get onTime => _onTime ?? false;
  set onTime(bool? val) => _onTime = val;

  bool hasOnTime() => _onTime != null;

  static MedicationEventStruct fromMap(Map<String, dynamic> data) =>
      MedicationEventStruct(
        registeredTime: data['registered_time'] as DateTime?,
        medLabel: data['med_label'] as String?,
        medId: data['med_id'] as String?,
        scheduled: data['scheduled'] as bool?,
        scheduledTime: data['scheduled_time'] as DateTime?,
        onTime: data['on_time'] as bool?,
      );

  static MedicationEventStruct? maybeFromMap(dynamic data) => data is Map
      ? MedicationEventStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'registered_time': _registeredTime,
        'med_label': _medLabel,
        'med_id': _medId,
        'scheduled': _scheduled,
        'scheduled_time': _scheduledTime,
        'on_time': _onTime,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'registered_time': serializeParam(
          _registeredTime,
          ParamType.DateTime,
        ),
        'med_label': serializeParam(
          _medLabel,
          ParamType.String,
        ),
        'med_id': serializeParam(
          _medId,
          ParamType.String,
        ),
        'scheduled': serializeParam(
          _scheduled,
          ParamType.bool,
        ),
        'scheduled_time': serializeParam(
          _scheduledTime,
          ParamType.DateTime,
        ),
        'on_time': serializeParam(
          _onTime,
          ParamType.bool,
        ),
      }.withoutNulls;

  static MedicationEventStruct fromSerializableMap(Map<String, dynamic> data) =>
      MedicationEventStruct(
        registeredTime: deserializeParam(
          data['registered_time'],
          ParamType.DateTime,
          false,
        ),
        medLabel: deserializeParam(
          data['med_label'],
          ParamType.String,
          false,
        ),
        medId: deserializeParam(
          data['med_id'],
          ParamType.String,
          false,
        ),
        scheduled: deserializeParam(
          data['scheduled'],
          ParamType.bool,
          false,
        ),
        scheduledTime: deserializeParam(
          data['scheduled_time'],
          ParamType.DateTime,
          false,
        ),
        onTime: deserializeParam(
          data['on_time'],
          ParamType.bool,
          false,
        ),
      );

  @override
  String toString() => 'MedicationEventStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is MedicationEventStruct &&
        registeredTime == other.registeredTime &&
        medLabel == other.medLabel &&
        medId == other.medId &&
        scheduled == other.scheduled &&
        scheduledTime == other.scheduledTime &&
        onTime == other.onTime;
  }

  @override
  int get hashCode => const ListEquality().hash(
      [registeredTime, medLabel, medId, scheduled, scheduledTime, onTime]);
}

MedicationEventStruct createMedicationEventStruct({
  DateTime? registeredTime,
  String? medLabel,
  String? medId,
  bool? scheduled,
  DateTime? scheduledTime,
  bool? onTime,
}) =>
    MedicationEventStruct(
      registeredTime: registeredTime,
      medLabel: medLabel,
      medId: medId,
      scheduled: scheduled,
      scheduledTime: scheduledTime,
      onTime: onTime,
    );
