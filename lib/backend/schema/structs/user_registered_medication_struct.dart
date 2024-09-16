// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class UserRegisteredMedicationStruct extends BaseStruct {
  UserRegisteredMedicationStruct({
    String? label,
    String? type,
    int? remainingDoses,
    int? reminderType,
    int? reminderFrequency,
    List<bool>? medicationWeekdays,
    String? reminderMessage,
    bool? reminderActive,
    int? medicationTimesPerDay,
    int? medicationDosage,
    DateTime? reminderStartDate,
    DateTime? reminderEndDate,
    bool? startDateEnabled,
    bool? endDateEnabled,
    List<DateTime>? reminderTimes,
    String? nfcTag,
    String? medId,
    int? medicationDayInterval,
  })  : _label = label,
        _type = type,
        _remainingDoses = remainingDoses,
        _reminderType = reminderType,
        _reminderFrequency = reminderFrequency,
        _medicationWeekdays = medicationWeekdays,
        _reminderMessage = reminderMessage,
        _reminderActive = reminderActive,
        _medicationTimesPerDay = medicationTimesPerDay,
        _medicationDosage = medicationDosage,
        _reminderStartDate = reminderStartDate,
        _reminderEndDate = reminderEndDate,
        _startDateEnabled = startDateEnabled,
        _endDateEnabled = endDateEnabled,
        _reminderTimes = reminderTimes,
        _nfcTag = nfcTag,
        _medId = medId,
        _medicationDayInterval = medicationDayInterval;

  // "label" field.
  String? _label;
  String get label => _label ?? 'Min Medicin';
  set label(String? val) => _label = val;

  bool hasLabel() => _label != null;

  // "type" field.
  String? _type;
  String get type => _type ?? 'Piller';
  set type(String? val) => _type = val;

  bool hasType() => _type != null;

  // "remaining_doses" field.
  int? _remainingDoses;
  int get remainingDoses => _remainingDoses ?? 0;
  set remainingDoses(int? val) => _remainingDoses = val;

  void incrementRemainingDoses(int amount) =>
      remainingDoses = remainingDoses + amount;

  bool hasRemainingDoses() => _remainingDoses != null;

  // "reminder_type" field.
  int? _reminderType;
  int get reminderType => _reminderType ?? 0;
  set reminderType(int? val) => _reminderType = val;

  void incrementReminderType(int amount) =>
      reminderType = reminderType + amount;

  bool hasReminderType() => _reminderType != null;

  // "reminder_frequency" field.
  int? _reminderFrequency;
  int get reminderFrequency => _reminderFrequency ?? 0;
  set reminderFrequency(int? val) => _reminderFrequency = val;

  void incrementReminderFrequency(int amount) =>
      reminderFrequency = reminderFrequency + amount;

  bool hasReminderFrequency() => _reminderFrequency != null;

  // "medication_weekdays" field.
  List<bool>? _medicationWeekdays;
  List<bool> get medicationWeekdays => _medicationWeekdays ?? const [];
  set medicationWeekdays(List<bool>? val) => _medicationWeekdays = val;

  void updateMedicationWeekdays(Function(List<bool>) updateFn) {
    updateFn(_medicationWeekdays ??= []);
  }

  bool hasMedicationWeekdays() => _medicationWeekdays != null;

  // "reminder_message" field.
  String? _reminderMessage;
  String get reminderMessage => _reminderMessage ?? 'Take them meds, my guy';
  set reminderMessage(String? val) => _reminderMessage = val;

  bool hasReminderMessage() => _reminderMessage != null;

  // "reminder_active" field.
  bool? _reminderActive;
  bool get reminderActive => _reminderActive ?? false;
  set reminderActive(bool? val) => _reminderActive = val;

  bool hasReminderActive() => _reminderActive != null;

  // "medication_times_per_day" field.
  int? _medicationTimesPerDay;
  int get medicationTimesPerDay => _medicationTimesPerDay ?? 0;
  set medicationTimesPerDay(int? val) => _medicationTimesPerDay = val;

  void incrementMedicationTimesPerDay(int amount) =>
      medicationTimesPerDay = medicationTimesPerDay + amount;

  bool hasMedicationTimesPerDay() => _medicationTimesPerDay != null;

  // "medication_dosage" field.
  int? _medicationDosage;
  int get medicationDosage => _medicationDosage ?? 0;
  set medicationDosage(int? val) => _medicationDosage = val;

  void incrementMedicationDosage(int amount) =>
      medicationDosage = medicationDosage + amount;

  bool hasMedicationDosage() => _medicationDosage != null;

  // "reminder_start_date" field.
  DateTime? _reminderStartDate;
  DateTime? get reminderStartDate => _reminderStartDate;
  set reminderStartDate(DateTime? val) => _reminderStartDate = val;

  bool hasReminderStartDate() => _reminderStartDate != null;

  // "reminder_end_date" field.
  DateTime? _reminderEndDate;
  DateTime? get reminderEndDate => _reminderEndDate;
  set reminderEndDate(DateTime? val) => _reminderEndDate = val;

  bool hasReminderEndDate() => _reminderEndDate != null;

  // "start_date_enabled" field.
  bool? _startDateEnabled;
  bool get startDateEnabled => _startDateEnabled ?? false;
  set startDateEnabled(bool? val) => _startDateEnabled = val;

  bool hasStartDateEnabled() => _startDateEnabled != null;

  // "end_date_enabled" field.
  bool? _endDateEnabled;
  bool get endDateEnabled => _endDateEnabled ?? false;
  set endDateEnabled(bool? val) => _endDateEnabled = val;

  bool hasEndDateEnabled() => _endDateEnabled != null;

  // "reminder_times" field.
  List<DateTime>? _reminderTimes;
  List<DateTime> get reminderTimes => _reminderTimes ?? const [];
  set reminderTimes(List<DateTime>? val) => _reminderTimes = val;

  void updateReminderTimes(Function(List<DateTime>) updateFn) {
    updateFn(_reminderTimes ??= []);
  }

  bool hasReminderTimes() => _reminderTimes != null;

  // "nfc_tag" field.
  String? _nfcTag;
  String get nfcTag => _nfcTag ?? '';
  set nfcTag(String? val) => _nfcTag = val;

  bool hasNfcTag() => _nfcTag != null;

  // "med_id" field.
  String? _medId;
  String get medId => _medId ?? '';
  set medId(String? val) => _medId = val;

  bool hasMedId() => _medId != null;

  // "medication_day_interval" field.
  int? _medicationDayInterval;
  int get medicationDayInterval => _medicationDayInterval ?? 0;
  set medicationDayInterval(int? val) => _medicationDayInterval = val;

  void incrementMedicationDayInterval(int amount) =>
      medicationDayInterval = medicationDayInterval + amount;

  bool hasMedicationDayInterval() => _medicationDayInterval != null;

  static UserRegisteredMedicationStruct fromMap(Map<String, dynamic> data) =>
      UserRegisteredMedicationStruct(
        label: data['label'] as String?,
        type: data['type'] as String?,
        remainingDoses: castToType<int>(data['remaining_doses']),
        reminderType: castToType<int>(data['reminder_type']),
        reminderFrequency: castToType<int>(data['reminder_frequency']),
        medicationWeekdays: getDataList(data['medication_weekdays']),
        reminderMessage: data['reminder_message'] as String?,
        reminderActive: data['reminder_active'] as bool?,
        medicationTimesPerDay:
            castToType<int>(data['medication_times_per_day']),
        medicationDosage: castToType<int>(data['medication_dosage']),
        reminderStartDate: data['reminder_start_date'] as DateTime?,
        reminderEndDate: data['reminder_end_date'] as DateTime?,
        startDateEnabled: data['start_date_enabled'] as bool?,
        endDateEnabled: data['end_date_enabled'] as bool?,
        reminderTimes: getDataList(data['reminder_times']),
        nfcTag: data['nfc_tag'] as String?,
        medId: data['med_id'] as String?,
        medicationDayInterval: castToType<int>(data['medication_day_interval']),
      );

  static UserRegisteredMedicationStruct? maybeFromMap(dynamic data) =>
      data is Map
          ? UserRegisteredMedicationStruct.fromMap(data.cast<String, dynamic>())
          : null;

  Map<String, dynamic> toMap() => {
        'label': _label,
        'type': _type,
        'remaining_doses': _remainingDoses,
        'reminder_type': _reminderType,
        'reminder_frequency': _reminderFrequency,
        'medication_weekdays': _medicationWeekdays,
        'reminder_message': _reminderMessage,
        'reminder_active': _reminderActive,
        'medication_times_per_day': _medicationTimesPerDay,
        'medication_dosage': _medicationDosage,
        'reminder_start_date': _reminderStartDate,
        'reminder_end_date': _reminderEndDate,
        'start_date_enabled': _startDateEnabled,
        'end_date_enabled': _endDateEnabled,
        'reminder_times': _reminderTimes,
        'nfc_tag': _nfcTag,
        'med_id': _medId,
        'medication_day_interval': _medicationDayInterval,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'label': serializeParam(
          _label,
          ParamType.String,
        ),
        'type': serializeParam(
          _type,
          ParamType.String,
        ),
        'remaining_doses': serializeParam(
          _remainingDoses,
          ParamType.int,
        ),
        'reminder_type': serializeParam(
          _reminderType,
          ParamType.int,
        ),
        'reminder_frequency': serializeParam(
          _reminderFrequency,
          ParamType.int,
        ),
        'medication_weekdays': serializeParam(
          _medicationWeekdays,
          ParamType.bool,
          isList: true,
        ),
        'reminder_message': serializeParam(
          _reminderMessage,
          ParamType.String,
        ),
        'reminder_active': serializeParam(
          _reminderActive,
          ParamType.bool,
        ),
        'medication_times_per_day': serializeParam(
          _medicationTimesPerDay,
          ParamType.int,
        ),
        'medication_dosage': serializeParam(
          _medicationDosage,
          ParamType.int,
        ),
        'reminder_start_date': serializeParam(
          _reminderStartDate,
          ParamType.DateTime,
        ),
        'reminder_end_date': serializeParam(
          _reminderEndDate,
          ParamType.DateTime,
        ),
        'start_date_enabled': serializeParam(
          _startDateEnabled,
          ParamType.bool,
        ),
        'end_date_enabled': serializeParam(
          _endDateEnabled,
          ParamType.bool,
        ),
        'reminder_times': serializeParam(
          _reminderTimes,
          ParamType.DateTime,
          isList: true,
        ),
        'nfc_tag': serializeParam(
          _nfcTag,
          ParamType.String,
        ),
        'med_id': serializeParam(
          _medId,
          ParamType.String,
        ),
        'medication_day_interval': serializeParam(
          _medicationDayInterval,
          ParamType.int,
        ),
      }.withoutNulls;

  static UserRegisteredMedicationStruct fromSerializableMap(
          Map<String, dynamic> data) =>
      UserRegisteredMedicationStruct(
        label: deserializeParam(
          data['label'],
          ParamType.String,
          false,
        ),
        type: deserializeParam(
          data['type'],
          ParamType.String,
          false,
        ),
        remainingDoses: deserializeParam(
          data['remaining_doses'],
          ParamType.int,
          false,
        ),
        reminderType: deserializeParam(
          data['reminder_type'],
          ParamType.int,
          false,
        ),
        reminderFrequency: deserializeParam(
          data['reminder_frequency'],
          ParamType.int,
          false,
        ),
        medicationWeekdays: deserializeParam<bool>(
          data['medication_weekdays'],
          ParamType.bool,
          true,
        ),
        reminderMessage: deserializeParam(
          data['reminder_message'],
          ParamType.String,
          false,
        ),
        reminderActive: deserializeParam(
          data['reminder_active'],
          ParamType.bool,
          false,
        ),
        medicationTimesPerDay: deserializeParam(
          data['medication_times_per_day'],
          ParamType.int,
          false,
        ),
        medicationDosage: deserializeParam(
          data['medication_dosage'],
          ParamType.int,
          false,
        ),
        reminderStartDate: deserializeParam(
          data['reminder_start_date'],
          ParamType.DateTime,
          false,
        ),
        reminderEndDate: deserializeParam(
          data['reminder_end_date'],
          ParamType.DateTime,
          false,
        ),
        startDateEnabled: deserializeParam(
          data['start_date_enabled'],
          ParamType.bool,
          false,
        ),
        endDateEnabled: deserializeParam(
          data['end_date_enabled'],
          ParamType.bool,
          false,
        ),
        reminderTimes: deserializeParam<DateTime>(
          data['reminder_times'],
          ParamType.DateTime,
          true,
        ),
        nfcTag: deserializeParam(
          data['nfc_tag'],
          ParamType.String,
          false,
        ),
        medId: deserializeParam(
          data['med_id'],
          ParamType.String,
          false,
        ),
        medicationDayInterval: deserializeParam(
          data['medication_day_interval'],
          ParamType.int,
          false,
        ),
      );

  @override
  String toString() => 'UserRegisteredMedicationStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    const listEquality = ListEquality();
    return other is UserRegisteredMedicationStruct &&
        label == other.label &&
        type == other.type &&
        remainingDoses == other.remainingDoses &&
        reminderType == other.reminderType &&
        reminderFrequency == other.reminderFrequency &&
        listEquality.equals(medicationWeekdays, other.medicationWeekdays) &&
        reminderMessage == other.reminderMessage &&
        reminderActive == other.reminderActive &&
        medicationTimesPerDay == other.medicationTimesPerDay &&
        medicationDosage == other.medicationDosage &&
        reminderStartDate == other.reminderStartDate &&
        reminderEndDate == other.reminderEndDate &&
        startDateEnabled == other.startDateEnabled &&
        endDateEnabled == other.endDateEnabled &&
        listEquality.equals(reminderTimes, other.reminderTimes) &&
        nfcTag == other.nfcTag &&
        medId == other.medId &&
        medicationDayInterval == other.medicationDayInterval;
  }

  @override
  int get hashCode => const ListEquality().hash([
        label,
        type,
        remainingDoses,
        reminderType,
        reminderFrequency,
        medicationWeekdays,
        reminderMessage,
        reminderActive,
        medicationTimesPerDay,
        medicationDosage,
        reminderStartDate,
        reminderEndDate,
        startDateEnabled,
        endDateEnabled,
        reminderTimes,
        nfcTag,
        medId,
        medicationDayInterval
      ]);
}

UserRegisteredMedicationStruct createUserRegisteredMedicationStruct({
  String? label,
  String? type,
  int? remainingDoses,
  int? reminderType,
  int? reminderFrequency,
  String? reminderMessage,
  bool? reminderActive,
  int? medicationTimesPerDay,
  int? medicationDosage,
  DateTime? reminderStartDate,
  DateTime? reminderEndDate,
  bool? startDateEnabled,
  bool? endDateEnabled,
  String? nfcTag,
  String? medId,
  int? medicationDayInterval,
}) =>
    UserRegisteredMedicationStruct(
      label: label,
      type: type,
      remainingDoses: remainingDoses,
      reminderType: reminderType,
      reminderFrequency: reminderFrequency,
      reminderMessage: reminderMessage,
      reminderActive: reminderActive,
      medicationTimesPerDay: medicationTimesPerDay,
      medicationDosage: medicationDosage,
      reminderStartDate: reminderStartDate,
      reminderEndDate: reminderEndDate,
      startDateEnabled: startDateEnabled,
      endDateEnabled: endDateEnabled,
      nfcTag: nfcTag,
      medId: medId,
      medicationDayInterval: medicationDayInterval,
    );
