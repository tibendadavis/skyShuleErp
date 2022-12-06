import 'dart:ui';
import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:overlay_support/overlay_support.dart';

import 'package:skyconnect_starter/database/boxes.dart';
import 'package:skyconnect_starter/pages/home/home.pg.dart';
import 'package:skyconnect_starter/screens/classes.dart';
import 'package:skyconnect_starter/screens/listsubjects.dart';
import 'package:skyconnect_starter/screens/manage_students.scrn.dart';
import 'package:skyconnect_starter/screens/parents.dart';
import 'package:skyconnect_starter/screens/streams.dart';
import 'package:skyconnect_starter/screens/student_admission.scrn.dart';
import 'package:skyconnect_starter/screens/supportingStaff.dart';
import 'package:skyconnect_starter/screens/teacher.dart';
import 'package:skyconnect_starter/screens/terms.dart';
import 'package:skyconnect_starter/screens/user_profile.scrn.dart';
import 'package:skyconnect_starter/services/locale_string.dart';
import 'package:provider/provider.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(MaterialApp(home: terms()));
}

class MyApp extends StatefulWidget {
  final List<CameraDescription> cameras;
  MyApp({
    Key? key,
    required this.cameras,
  }) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  // DarkThemeProvider themeChangeProvider = DarkThemeProvider();

  void getCurrentAppTheme() async {
    // themeChangeProvider.darkTheme =
    //     await themeChangeProvider.darkThemePreference.getTheme();
  }

  @override
  void initState() {
    getCurrentAppTheme();
    super.initState();
  }

  Widget build(BuildContext context) {
    final mySetting =
        !Hive.isBoxOpen("mySettings") || Boxes.getMySettings().isEmpty
            ? null
            : Boxes.getMySettings().values.firstWhere((element) => true);

    return OverlaySupport.global(
      child: ChangeNotifierProvider(
        create: (BuildContext context) {},
        child: Consumer(
          builder: (BuildContext context, value, Widget? child) {
            return GetMaterialApp(
                translations: LocaleString(),
                locale: mySetting == null
                    ? const Locale("en", "US")
                    : mySetting.language == "English"
                        ? const Locale("en", "US")
                        : mySetting.language == "Swahili"
                            ? const Locale("sw", "TZ")
                            : const Locale("en", "US"),
                scrollBehavior: const MaterialScrollBehavior().copyWith(
                  dragDevices: {
                    PointerDeviceKind.mouse,
                    PointerDeviceKind.touch,
                    PointerDeviceKind.stylus,
                    PointerDeviceKind.unknown
                  },
                ),
                // theme: ThemeData.light(),
                // darkTheme: ThemeData.dark(),
                debugShowCheckedModeBanner: false,
                defaultTransition: Transition.fade,
                home: Center(
                  child: Text(
                    "Open sans testing",
                    style: TextStyle(
                        //fontFamily: 'google_fonts/static',
                        fontSize: 60,
                        color: Colors.black),
                  ),
                ));
          },
        ),
      ),
    );
  }
}
