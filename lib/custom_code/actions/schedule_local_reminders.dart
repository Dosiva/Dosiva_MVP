// Automatic FlutterFlow imports
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'package:awesome_notifications/awesome_notifications.dart';
import 'dart:math';

// Custom code start

//Custom code end

Future scheduleLocalReminders(
    List<UserRegisteredMedicationStruct> activeMedications) async {
  AwesomeNotifications().initialize(
    null,
    [
      NotificationChannel(
        channelGroupKey: 'reminder_channel_group',
        channelKey: 'reminder',
        channelName: 'Reminder notifications',
        channelDescription: 'Notification channel for standard reminders',
        channelShowBadge: true,
        locked: false,
      ),
    ],
  );
  AwesomeNotifications().isNotificationAllowed().then((isAllowed) {
    if (!isAllowed) {
      AwesomeNotifications().requestPermissionToSendNotifications();
    }
  });

  String localTimeZone =
      await AwesomeNotifications().getLocalTimeZoneIdentifier();

  await AwesomeNotifications().cancelAll();

  FFAppState().scheduledReminders.clear();

  int maxNotifications = 60;
  int remindersPerMedicine = 2;
  int maxRemindersPerDay = 3;
  int n = maxNotifications ~/
      (activeMedications.length * remindersPerMedicine * maxRemindersPerDay);

  int id = 0;

  String urlLandingPage = 'dosiva://dosiva.se/land/';
  String nfcTag = '';

// Schedule everyday reminders
  for (int j = 0; j < activeMedications.length; j++) {
    nfcTag = urlLandingPage + activeMedications[j].medId;
    if (activeMedications[j].reminderFrequency == 1) {
      for (int k = 0; k < n; k++) {
        for (int i = 0; i < activeMedications[j].medicationTimesPerDay; i++) {
          await AwesomeNotifications().createNotification(
              content: NotificationContent(
                  id: id,
                  channelKey: 'reminder',
                  title: activeMedications[j].label,
                  body: activeMedications[j].label),
              schedule: NotificationCalendar(
                  year: activeMedications[j].reminderStartDate?.year,
                  month: activeMedications[j].reminderStartDate?.month,
                  day: activeMedications[j].reminderStartDate?.day,
                  hour: activeMedications[j].reminderTimes[i].hour,
                  minute: activeMedications[j].reminderTimes[i].minute,
                  second: 00,
                  timeZone: localTimeZone,
                  preciseAlarm: true,
                  repeats: false));
// change tracker
          FFAppState().scheduledReminders.add(ActiveReminderStruct(
              medLabel: activeMedications[j].label,
              notificationId: id,
              scheduledTime: activeMedications[j].reminderStartDate,
              nfcTag: nfcTag));

          id = id + 1;
          activeMedications[j].reminderStartDate =
              activeMedications[j].reminderStartDate?.add(Duration(days: 1));
        }
      }
    } else if (activeMedications[j].reminderFrequency == 2) {}
  }
}
// Set your action name, define your arguments and return parameter,
// and then add the boilerplate code using the green button on the right!
