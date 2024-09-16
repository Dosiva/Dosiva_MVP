import 'dart:convert';
import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'lat_lng.dart';
import 'place.dart';
import 'uploaded_file.dart';
import '/backend/schema/structs/index.dart';

int? getMedicationIndex(
  List<UserRegisteredMedicationStruct>? medicationList,
  String? medId,
) {
  // Find the index of the medicationList item that contains the unique medID string
  if (medicationList != null && medId != null) {
    for (int i = 0; i < medicationList.length; i++) {
      if (medicationList[i].medId == medId) {
        return i;
      }
    }
  } else {
    return null;
  }
}

String generateMedId(List<UserRegisteredMedicationStruct>? medicationList) {
  // Generate a random 10 character String of letters and integers, and check that it is unique against every MedId item in MedicationList
  String randomString = '';
  bool isUnique = false;

  while (!isUnique) {
    // Generate random 10 character string
    final random = math.Random();
    final chars = 'abcdefghijklmnopqrstuvwxyz0123456789';
    randomString =
        List.generate(10, (index) => chars[random.nextInt(chars.length)])
            .join();

    // Check if it is unique against every MedId item in medicationList
    isUnique =
        medicationList?.every((med) => med.medId != randomString) ?? true;
  }

  return randomString;
}
