// Automatic FlutterFlow imports
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
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
        channelGroupKey: 'scheduled_channel_group',
        channelKey: 'scheduled',
        channelName: 'Scheduled notifications',
        channelDescription: 'Notification channel for scheduled tests',
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

  int id = 0;
  List<ActiveReminderStruct>? activeReminders;

// Schedule everyday reminders
  if (activeMedications[0].reminderActive == true) {
    for (int j = 0; j < activeMedications.length; j++) {
      if (activeMedications[j].reminderFrequency == 1) {
        for (int i = 0; i < activeMedications[j].medicationTimesPerDay; i++) {
          await AwesomeNotifications().createNotification(
              content: NotificationContent(
                  id: id,
                  channelKey: 'scheduled',
                  title: activeMedications[j].label,
                  body: activeMedications[j].label),
              schedule: NotificationCalendar(
                  hour: activeMedications[j].reminderTimes[i].hour,
                  minute: activeMedications[j].reminderTimes[i].minute,
                  second: 00,
                  timeZone: localTimeZone,
                  preciseAlarm: true,
                  repeats: true));

          FFAppState().scheduledReminders.add(ActiveReminderStruct(
              medLabel: activeMedications[j].label,
              notificationId: id,
              scheduledTime: activeMedications[j].reminderTimes[i],
              nfcTag: activeMedications[j].nfcTag));

          id = id + 1;
        }
      }
    }
  }
}
// Set your action name, define your arguments and return parameter,
// and then add the boilerplate code using the green button on the right!
