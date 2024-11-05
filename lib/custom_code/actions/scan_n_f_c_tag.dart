// Automatic FlutterFlow imports
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'package:flutter_nfc_kit/flutter_nfc_kit.dart';
import 'package:flutter/services.dart';

Future<void> scanNFCTag() async {
  var appState = FFAppState();

  NFCAvailability availability;
  try {
    availability = await FlutterNfcKit.nfcAvailability;
  } on PlatformException {
    availability = NFCAvailability.not_supported;
  }

  if (availability == NFCAvailability.not_supported) {
    print('NFC is not supported on this device.');
    return;
  }

  try {
    // Poll for the NFC tag
    NFCTag tag = await FlutterNfcKit.poll(
        timeout: Duration(seconds: 10),
        iosMultipleTagMessage: "Multiple tags found!",
        iosAlertMessage: "Scan your tag");
    updateNfcTagInAppState(appState, tag);
  } catch (e) {
    print('Error scanning NFC tag: $e');
  }
  await FlutterNfcKit.finish(iosAlertMessage: "Finished!");
}

void updateNfcTagInAppState(FFAppState appState, NFCTag? tag) {
  if (tag == null) {
    print('No NFC tag scanned.');
    return;
  }
  // Get the ID of the scanned NFC tag
  var currentTagId = tag.id;
  // Update the app state with the scanned NFC tag ID
  appState.update(() {
    appState.scannedNFCTag = currentTagId;
  });
}
// Set your action name, define your arguments and return parameter,
// and then add the boilerplate code using the green button on the right!
