// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ActiveReminderStruct extends BaseStruct {
  ActiveReminderStruct({
    String? medLabel,
    int? notificationId,
    DateTime? scheduledTime,
    String? nfcTag,
  })  : _medLabel = medLabel,
        _notificationId = notificationId,
        _scheduledTime = scheduledTime,
        _nfcTag = nfcTag;

  // "med_label" field.
  String? _medLabel;
  String get medLabel => _medLabel ?? '';
  set medLabel(String? val) => _medLabel = val;

  bool hasMedLabel() => _medLabel != null;

  // "notification_id" field.
  int? _notificationId;
  int get notificationId => _notificationId ?? 0;
  set notificationId(int? val) => _notificationId = val;

  void incrementNotificationId(int amount) =>
      notificationId = notificationId + amount;

  bool hasNotificationId() => _notificationId != null;

  // "scheduled_time" field.
  DateTime? _scheduledTime;
  DateTime? get scheduledTime => _scheduledTime;
  set scheduledTime(DateTime? val) => _scheduledTime = val;

  bool hasScheduledTime() => _scheduledTime != null;

  // "nfc_tag" field.
  String? _nfcTag;
  String get nfcTag => _nfcTag ?? '';
  set nfcTag(String? val) => _nfcTag = val;

  bool hasNfcTag() => _nfcTag != null;

  static ActiveReminderStruct fromMap(Map<String, dynamic> data) =>
      ActiveReminderStruct(
        medLabel: data['med_label'] as String?,
        notificationId: castToType<int>(data['notification_id']),
        scheduledTime: data['scheduled_time'] as DateTime?,
        nfcTag: data['nfc_tag'] as String?,
      );

  static ActiveReminderStruct? maybeFromMap(dynamic data) => data is Map
      ? ActiveReminderStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'med_label': _medLabel,
        'notification_id': _notificationId,
        'scheduled_time': _scheduledTime,
        'nfc_tag': _nfcTag,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'med_label': serializeParam(
          _medLabel,
          ParamType.String,
        ),
        'notification_id': serializeParam(
          _notificationId,
          ParamType.int,
        ),
        'scheduled_time': serializeParam(
          _scheduledTime,
          ParamType.DateTime,
        ),
        'nfc_tag': serializeParam(
          _nfcTag,
          ParamType.String,
        ),
      }.withoutNulls;

  static ActiveReminderStruct fromSerializableMap(Map<String, dynamic> data) =>
      ActiveReminderStruct(
        medLabel: deserializeParam(
          data['med_label'],
          ParamType.String,
          false,
        ),
        notificationId: deserializeParam(
          data['notification_id'],
          ParamType.int,
          false,
        ),
        scheduledTime: deserializeParam(
          data['scheduled_time'],
          ParamType.DateTime,
          false,
        ),
        nfcTag: deserializeParam(
          data['nfc_tag'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'ActiveReminderStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is ActiveReminderStruct &&
        medLabel == other.medLabel &&
        notificationId == other.notificationId &&
        scheduledTime == other.scheduledTime &&
        nfcTag == other.nfcTag;
  }

  @override
  int get hashCode => const ListEquality()
      .hash([medLabel, notificationId, scheduledTime, nfcTag]);
}

ActiveReminderStruct createActiveReminderStruct({
  String? medLabel,
  int? notificationId,
  DateTime? scheduledTime,
  String? nfcTag,
}) =>
    ActiveReminderStruct(
      medLabel: medLabel,
      notificationId: notificationId,
      scheduledTime: scheduledTime,
      nfcTag: nfcTag,
    );
