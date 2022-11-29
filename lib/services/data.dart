import 'package:intl/intl.dart';

class AppData {
  String appID = "rabies3213";
  String appVersion = "1.1.2";
  String versionStatus = "Beta";
  String appDeveloper = "Yohana W. Msigwa";
  String developerCode = "teminal!_3213";
  String company = "SkyConnect.inc";
  String appName = "Vast Design";
  String defaultLang = "English";
  String splashText = "© ${DateFormat('yyyy').format(DateTime.now())} Bashmania, Inc.";
  String loginText1 = "Welcome";
  String loginContText = "Personalize the Bash-Mall for yourself";
  String loginText2 = "Sign in to continue";
  String dummyPhone = "0678815867";
  String dummyEmail = "example@mail.com";
  int appLoadingSeconds = 5;
  int screeLoaderDuration = 1;
  int caseEditDelayedMill = 200;

  int clientFormTotalSteps = 7;
  List userStatuses = ["Blocked", "Active"];
  List appointmentStatuses = ["Pending", "Attended"];
  List appointmentNames = ["Screening", "Attended"];
  List facilityStatuses = ["Blocked", "Active"];

  List userRoles = [
    "SU",
    "Administrator",
    "Manager",
    "Support",
    "User",
  ];

  List variationCounts = [
    "01",
    "02",
    "03",
    "04",
  ];

  List yesNoList = ["Yes", "No"];

// business Pre DataList
  List mySettingPreDataList = [
    {
      "uid" : null,
      "username" : null,
      "roleID" : null,
      "countryCode" : null,
      "facilityID" : null,
      "language": "EN",
      "signedInID": null,
      "dateAdded": DateTime.now(),
    },
  ];

  List filterPreDataList = [
    {
      "name": "Report Filter",
      "filters": {
        "uid": null,
        "startDate": null,
        "endDate": null,
        "startAge": null,
        "endAge": null,
      },
      "dateAdded": DateTime.now(),
    },
  ];
  // business Pre DataList/

  List generationStyles = [
    "All",
    "Lomography",
    "Wide Angle Lens",
    "Lego Bricks",
    "Anime",
    "50mm",
    "Digital Art",
    "Claymation",
    "4K photography",
    "UHD 8k",
    "Lego bricks",
    "isometric art",
  ];

}