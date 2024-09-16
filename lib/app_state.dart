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
      _userRegisteredMedicine = prefs
              .getStringList('ff_userRegisteredMedicine')
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
          _userRegisteredMedicine;
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
                  return MedicationEventStruct.fromSerializableMap(
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

  List<UserRegisteredMedicationStruct> _userRegisteredMedicine = [];
  List<UserRegisteredMedicationStruct> get userRegisteredMedicine =>
      _userRegisteredMedicine;
  set userRegisteredMedicine(List<UserRegisteredMedicationStruct> value) {
    _userRegisteredMedicine = value;
    prefs.setStringList(
        'ff_userRegisteredMedicine', value.map((x) => x.serialize()).toList());
  }

  void addToUserRegisteredMedicine(UserRegisteredMedicationStruct value) {
    userRegisteredMedicine.add(value);
    prefs.setStringList('ff_userRegisteredMedicine',
        _userRegisteredMedicine.map((x) => x.serialize()).toList());
  }

  void removeFromUserRegisteredMedicine(UserRegisteredMedicationStruct value) {
    userRegisteredMedicine.remove(value);
    prefs.setStringList('ff_userRegisteredMedicine',
        _userRegisteredMedicine.map((x) => x.serialize()).toList());
  }

  void removeAtIndexFromUserRegisteredMedicine(int index) {
    userRegisteredMedicine.removeAt(index);
    prefs.setStringList('ff_userRegisteredMedicine',
        _userRegisteredMedicine.map((x) => x.serialize()).toList());
  }

  void updateUserRegisteredMedicineAtIndex(
    int index,
    UserRegisteredMedicationStruct Function(UserRegisteredMedicationStruct)
        updateFn,
  ) {
    userRegisteredMedicine[index] = updateFn(_userRegisteredMedicine[index]);
    prefs.setStringList('ff_userRegisteredMedicine',
        _userRegisteredMedicine.map((x) => x.serialize()).toList());
  }

  void insertAtIndexInUserRegisteredMedicine(
      int index, UserRegisteredMedicationStruct value) {
    userRegisteredMedicine.insert(index, value);
    prefs.setStringList('ff_userRegisteredMedicine',
        _userRegisteredMedicine.map((x) => x.serialize()).toList());
  }

  UserRegisteredMedicationStruct _currentMedicineRegistration =
      UserRegisteredMedicationStruct.fromSerializableMap(jsonDecode(
          '{\"medication_weekdays\":\"[]\",\"reminder_times\":\"[]\"}'));
  UserRegisteredMedicationStruct get currentMedicineRegistration =>
      _currentMedicineRegistration;
  set currentMedicineRegistration(UserRegisteredMedicationStruct value) {
    _currentMedicineRegistration = value;
  }

  void updateCurrentMedicineRegistrationStruct(
      Function(UserRegisteredMedicationStruct) updateFn) {
    updateFn(_currentMedicineRegistration);
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

  List<MedicationEventStruct> _medicationHistory = [];
  List<MedicationEventStruct> get medicationHistory => _medicationHistory;
  set medicationHistory(List<MedicationEventStruct> value) {
    _medicationHistory = value;
    prefs.setStringList(
        'ff_medicationHistory', value.map((x) => x.serialize()).toList());
  }

  void addToMedicationHistory(MedicationEventStruct value) {
    medicationHistory.add(value);
    prefs.setStringList('ff_medicationHistory',
        _medicationHistory.map((x) => x.serialize()).toList());
  }

  void removeFromMedicationHistory(MedicationEventStruct value) {
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
    MedicationEventStruct Function(MedicationEventStruct) updateFn,
  ) {
    medicationHistory[index] = updateFn(_medicationHistory[index]);
    prefs.setStringList('ff_medicationHistory',
        _medicationHistory.map((x) => x.serialize()).toList());
  }

  void insertAtIndexInMedicationHistory(
      int index, MedicationEventStruct value) {
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
