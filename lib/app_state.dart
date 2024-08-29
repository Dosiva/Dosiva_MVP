import 'package:flutter/material.dart';
import '/backend/schema/structs/index.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'flutter_flow/flutter_flow_util.dart';

class FFAppState extends ChangeNotifier {
  static FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  static void reset() {
    _instance = FFAppState._internal();
  }

  Future initializePersistedState() async {
    prefs = await SharedPreferences.getInstance();
    _safeInit(() {
      _recentNotificationID =
          prefs.getInt('ff_recentNotificationID') ?? _recentNotificationID;
    });
    _safeInit(() {
      _activeMedications = prefs
              .getStringList('ff_activeMedications')
              ?.map((x) {
                try {
                  return UserRegisteredMedicationStruct.fromSerializableMap(
                      jsonDecode(x));
                } catch (e) {
                  print("Can't decode persisted data type. Error: $e.");
                  return null;
                }
              })
              .withoutNulls
              .toList() ??
          _activeMedications;
    });
    _safeInit(() {
      _scheduledReminders = prefs
              .getStringList('ff_scheduledReminders')
              ?.map((x) {
                try {
                  return ActiveReminderStruct.fromSerializableMap(
                      jsonDecode(x));
                } catch (e) {
                  print("Can't decode persisted data type. Error: $e.");
                  return null;
                }
              })
              .withoutNulls
              .toList() ??
          _scheduledReminders;
    });
    _safeInit(() {
      _medicationHistory = prefs
              .getStringList('ff_medicationHistory')
              ?.map((x) {
                try {
                  return ActiveReminderStruct.fromSerializableMap(
                      jsonDecode(x));
                } catch (e) {
                  print("Can't decode persisted data type. Error: $e.");
                  return null;
                }
              })
              .withoutNulls
              .toList() ??
          _medicationHistory;
    });
  }

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  late SharedPreferences prefs;

  int _recentNotificationID = 0;
  int get recentNotificationID => _recentNotificationID;
  set recentNotificationID(int value) {
    _recentNotificationID = value;
    prefs.setInt('ff_recentNotificationID', value);
  }

  String _scannedNFCTag = '';
  String get scannedNFCTag => _scannedNFCTag;
  set scannedNFCTag(String value) {
    _scannedNFCTag = value;
  }

  List<UserRegisteredMedicationStruct> _activeMedications = [];
  List<UserRegisteredMedicationStruct> get activeMedications =>
      _activeMedications;
  set activeMedications(List<UserRegisteredMedicationStruct> value) {
    _activeMedications = value;
    prefs.setStringList(
        'ff_activeMedications', value.map((x) => x.serialize()).toList());
  }

  void addToActiveMedications(UserRegisteredMedicationStruct value) {
    activeMedications.add(value);
    prefs.setStringList('ff_activeMedications',
        _activeMedications.map((x) => x.serialize()).toList());
  }

  void removeFromActiveMedications(UserRegisteredMedicationStruct value) {
    activeMedications.remove(value);
    prefs.setStringList('ff_activeMedications',
        _activeMedications.map((x) => x.serialize()).toList());
  }

  void removeAtIndexFromActiveMedications(int index) {
    activeMedications.removeAt(index);
    prefs.setStringList('ff_activeMedications',
        _activeMedications.map((x) => x.serialize()).toList());
  }

  void updateActiveMedicationsAtIndex(
    int index,
    UserRegisteredMedicationStruct Function(UserRegisteredMedicationStruct)
        updateFn,
  ) {
    activeMedications[index] = updateFn(_activeMedications[index]);
    prefs.setStringList('ff_activeMedications',
        _activeMedications.map((x) => x.serialize()).toList());
  }

  void insertAtIndexInActiveMedications(
      int index, UserRegisteredMedicationStruct value) {
    activeMedications.insert(index, value);
    prefs.setStringList('ff_activeMedications',
        _activeMedications.map((x) => x.serialize()).toList());
  }

  UserRegisteredMedicationStruct _currentMedicationRegistration =
      UserRegisteredMedicationStruct.fromSerializableMap(jsonDecode(
          '{\"medicationWeekdays\":\"[\\\"true\\\",\\\"false\\\",\\\"false\\\",\\\"true\\\",\\\"false\\\",\\\"false\\\",\\\"false\\\"]\"}'));
  UserRegisteredMedicationStruct get currentMedicationRegistration =>
      _currentMedicationRegistration;
  set currentMedicationRegistration(UserRegisteredMedicationStruct value) {
    _currentMedicationRegistration = value;
  }

  void updateCurrentMedicationRegistrationStruct(
      Function(UserRegisteredMedicationStruct) updateFn) {
    updateFn(_currentMedicationRegistration);
  }

  List<ActiveReminderStruct> _scheduledReminders = [];
  List<ActiveReminderStruct> get scheduledReminders => _scheduledReminders;
  set scheduledReminders(List<ActiveReminderStruct> value) {
    _scheduledReminders = value;
    prefs.setStringList(
        'ff_scheduledReminders', value.map((x) => x.serialize()).toList());
  }

  void addToScheduledReminders(ActiveReminderStruct value) {
    scheduledReminders.add(value);
    prefs.setStringList('ff_scheduledReminders',
        _scheduledReminders.map((x) => x.serialize()).toList());
  }

  void removeFromScheduledReminders(ActiveReminderStruct value) {
    scheduledReminders.remove(value);
    prefs.setStringList('ff_scheduledReminders',
        _scheduledReminders.map((x) => x.serialize()).toList());
  }

  void removeAtIndexFromScheduledReminders(int index) {
    scheduledReminders.removeAt(index);
    prefs.setStringList('ff_scheduledReminders',
        _scheduledReminders.map((x) => x.serialize()).toList());
  }

  void updateScheduledRemindersAtIndex(
    int index,
    ActiveReminderStruct Function(ActiveReminderStruct) updateFn,
  ) {
    scheduledReminders[index] = updateFn(_scheduledReminders[index]);
    prefs.setStringList('ff_scheduledReminders',
        _scheduledReminders.map((x) => x.serialize()).toList());
  }

  void insertAtIndexInScheduledReminders(
      int index, ActiveReminderStruct value) {
    scheduledReminders.insert(index, value);
    prefs.setStringList('ff_scheduledReminders',
        _scheduledReminders.map((x) => x.serialize()).toList());
  }

  int _currentActiveMedicationIndex = 0;
  int get currentActiveMedicationIndex => _currentActiveMedicationIndex;
  set currentActiveMedicationIndex(int value) {
    _currentActiveMedicationIndex = value;
  }

  bool _currentMedicationIndexSet = false;
  bool get currentMedicationIndexSet => _currentMedicationIndexSet;
  set currentMedicationIndexSet(bool value) {
    _currentMedicationIndexSet = value;
  }

  List<ActiveReminderStruct> _medicationHistory = [];
  List<ActiveReminderStruct> get medicationHistory => _medicationHistory;
  set medicationHistory(List<ActiveReminderStruct> value) {
    _medicationHistory = value;
    prefs.setStringList(
        'ff_medicationHistory', value.map((x) => x.serialize()).toList());
  }

  void addToMedicationHistory(ActiveReminderStruct value) {
    medicationHistory.add(value);
    prefs.setStringList('ff_medicationHistory',
        _medicationHistory.map((x) => x.serialize()).toList());
  }

  void removeFromMedicationHistory(ActiveReminderStruct value) {
    medicationHistory.remove(value);
    prefs.setStringList('ff_medicationHistory',
        _medicationHistory.map((x) => x.serialize()).toList());
  }

  void removeAtIndexFromMedicationHistory(int index) {
    medicationHistory.removeAt(index);
    prefs.setStringList('ff_medicationHistory',
        _medicationHistory.map((x) => x.serialize()).toList());
  }

  void updateMedicationHistoryAtIndex(
    int index,
    ActiveReminderStruct Function(ActiveReminderStruct) updateFn,
  ) {
    medicationHistory[index] = updateFn(_medicationHistory[index]);
    prefs.setStringList('ff_medicationHistory',
        _medicationHistory.map((x) => x.serialize()).toList());
  }

  void insertAtIndexInMedicationHistory(int index, ActiveReminderStruct value) {
    medicationHistory.insert(index, value);
    prefs.setStringList('ff_medicationHistory',
        _medicationHistory.map((x) => x.serialize()).toList());
  }
}

void _safeInit(Function() initializeField) {
  try {
    initializeField();
  } catch (_) {}
}

Future _safeInitAsync(Function() initializeField) async {
  try {
    await initializeField();
  } catch (_) {}
}
