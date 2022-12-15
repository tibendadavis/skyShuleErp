import 'dart:ui';
import 'package:camera/camera.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:overlay_support/overlay_support.dart';

import 'package:skyconnect_starter/database/boxes.dart';
import 'package:skyconnect_starter/pages/home/home.pg.dart';
import 'package:skyconnect_starter/screens/addClassRoutine.scrn.dart';
import 'package:skyconnect_starter/screens/addExamGroup.scrn.dart';
import 'package:skyconnect_starter/screens/addGrading.scrn.dart';
import 'package:skyconnect_starter/screens/addSchoolExam.scrn.dart';
import 'package:skyconnect_starter/screens/addStaff.scrn.dart';
import 'package:skyconnect_starter/screens/addStream.scrn.dart';
import 'package:skyconnect_starter/screens/addSubject.scrn.dart';
import 'package:skyconnect_starter/screens/addTeacher.scrn.dart';
import 'package:skyconnect_starter/screens/addTeacherOnDuty.scrn.dart';
import 'package:skyconnect_starter/screens/addTerm.scrn.dart';
import 'package:skyconnect_starter/screens/attendanceReport.scrn.dart';
import 'package:skyconnect_starter/screens/classAllocation.scrn.dart';
import 'package:skyconnect_starter/screens/classRoutine.scrn.dart';
import 'package:skyconnect_starter/screens/classSubjects.scrn.dart';
import 'package:skyconnect_starter/screens/classes.scrn.dart';
import 'package:skyconnect_starter/screens/defaultGrading.scrn.dart';
import 'package:skyconnect_starter/screens/employeeAttendance.scrn.dart';
import 'package:skyconnect_starter/screens/examAttendance.scrn.dart';
import 'package:skyconnect_starter/screens/examGroup.scrn.dart';
import 'package:skyconnect_starter/screens/listsubjects.scrn.dart';
import 'package:skyconnect_starter/screens/manage_students.scrn.dart';
import 'package:skyconnect_starter/screens/minorSchoolExams.scrn.dart';
import 'package:skyconnect_starter/screens/parents.scrn.dart';
import 'package:skyconnect_starter/screens/schoolExam.scrn.dart';
import 'package:skyconnect_starter/screens/specialGrading.scrn.dart';
import 'package:skyconnect_starter/screens/streamSubjectTeacher.scrn.dart';
import 'package:skyconnect_starter/screens/streams.scrn.dart';
import 'package:skyconnect_starter/screens/student_admission.scrn.dart';
import 'package:skyconnect_starter/screens/supportingStaff.scrn.dart';
import 'package:skyconnect_starter/screens/teacher.scrn.dart';
import 'package:skyconnect_starter/screens/teacherOnDuty.scrn.dart';
import 'package:skyconnect_starter/screens/terms.scrn.dart';
import 'package:skyconnect_starter/screens/userAttendanceView.scrn.dart';
import 'package:skyconnect_starter/screens/user_profile.scrn.dart';
import 'package:skyconnect_starter/services/locale_string.dart';
import 'package:provider/provider.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(MaterialApp(home: userAttendanceView()));
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
