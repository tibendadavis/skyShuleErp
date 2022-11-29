import 'dart:io';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:onesignal_flutter/onesignal_flutter.dart';
import 'package:overlay_support/overlay_support.dart';
import 'package:path_provider/path_provider.dart' as path_provider;
import 'package:skyconnect_starter/controllers/funcs_main.dart';
import 'package:skyconnect_starter/database/boxes.dart';
import 'package:skyconnect_starter/database/db.dart';
import 'package:skyconnect_starter/services/data.dart';
import 'package:skyconnect_starter/theme/design.theme.dart';

class FuncsApp {
  // Future openingBoxes() async {
  //   Directory dir = await path_provider.getApplicationDocumentsDirectory();
  //   final dataCenterDir = Directory("${dir.path}\\mall_data_runner\\");
  //   if (!dataCenterDir.existsSync()) {
  //     dataCenterDir.createSync(recursive: true);
  //   } else {
  //     // activate delete when you want to clear all data (Development mode only)
  //     // dataCenterDir.deleteSync(recursive: true);
  //   }

  //   Hive.init(dataCenterDir.path);

  //   Hive.registerAdapter(MySettingAdapter());
  //   await Hive.openBox<MySetting>("mySettings");

  //   Hive.registerAdapter(FilterAdapter());
  //   await Hive.openBox<Filter>("filters");
  // }

  Future addPreBoxesData() async {
    //adding pre/default my settings
    final mySettingsBox = Boxes.getMySettings();
    if (mySettingsBox.length < 1) {
      for (var element in AppData().mySettingPreDataList.reversed) {
        final mySetting = MySetting()
          ..id = Funcs().getRandomID()
          ..uid = element["uid"]
          ..username = element["username"]
          ..roleID = element["roleID"]
          ..countryCode = element["countryCode"]
          ..facilityID = element["countryCode"]
          ..language = element["language"]
          ..signedInID = element["signedInID"]
          ..dateAdded = element["dateAdded"];

        mySettingsBox.add(mySetting);
      }
    } else {
      print("Default my settings already added!");
    }
    //adding pre/default my settings/

    //adding pre/default my settings
    final filtersBox = Boxes.getFilters();
    if (filtersBox.length < 1) {
      for (var element in AppData().filterPreDataList.reversed) {
        final filter = Filter()
          ..id = Funcs().getRandomID()
          ..name = element["name"]
          ..filters = element["filters"]
          ..dateAdded = element["dateAdded"];

        filtersBox.add(filter);
      }
    } else {
      print("Default my settings already added!");
    }
    //adding pre/default my settings/
  }

  void oneSignalInit() {
    //Remove this method to stop OneSignal Debugging
    OneSignal.shared.setLogLevel(OSLogLevel.verbose, OSLogLevel.none);

    OneSignal.shared.setAppId("782443da-e8d0-4b6c-a3bd-e97b4ef6d00f");

    // The promptForPushNotificationsWithUserResponse function will show the iOS or Android push notification prompt. We recommend removing the following code and instead using an In-App Message to prompt for notification permission
    OneSignal.shared.promptUserForPushNotificationPermission().then((accepted) {
      print("Accepted permission: $accepted");
    });

    OneSignal.shared.setNotificationWillShowInForegroundHandler(
        (OSNotificationReceivedEvent event) {
      // Will be called whenever a notification is received in foreground
      // Display Notification, pass null param for not displaying the notification
      event.complete(event.notification);
    });

    //overly support
    debugDefaultTargetPlatformOverride = TargetPlatform.android;

    kNotificationSlideDuration = const Duration(milliseconds: 500);
    kNotificationDuration = const Duration(milliseconds: 3000);
    // Overlay support
  }

  void handleSendNotification(
      {required String playerId,
      required String content,
      required String heading}) async {
    // var imgUrlString = "http://cdn1-www.dogtime.com/assets/uploads/gallery/30-impossibly-cute-puppies/impossibly-cute-puppy-2.jpg";

    var notification = OSCreateNotification(
        // androidLargeIcon: "http://cdn1-www.dogtime.com/assets/uploads/gallery/30-impossibly-cute-puppies/impossibly-cute-puppy-2.jpg",
        // androidSmallIcon: "http://cdn1-www.dogtime.com/assets/uploads/gallery/30-impossibly-cute-puppies/impossibly-cute-puppy-2.jpg",
        // androidSound: "",
        // iosSound: "",
        playerIds: [playerId],
        content: content,
        heading: heading,
        iosAttachments: null,
        // iosAttachments: {"id1": imgUrlString},
        bigPicture: null,
        buttons: [
          // OSActionButton(text: "test1", id: "id1"),
          // OSActionButton(text: "test2", id: "id2")
        ]);

    var response = await OneSignal.shared.postNotification(notification);

    print(response);
  }

  Widget getBadge({required role}) {
    if (role == "Developer" ||
        role == "Administrator" ||
        role == "Partner" ||
        role == "VIP") {
      return Padding(
        padding: EdgeInsets.only(left: Insets().appGap),
        child: const Icon(
          Icons.verified,
          size: 16,
          color: Colors.blue,
        ),
      );
    } else {
      return Container();
    }
  }
}
