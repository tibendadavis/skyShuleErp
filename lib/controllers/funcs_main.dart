import 'dart:convert';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'dart:math';
import 'package:get/get.dart';
import 'package:image_watermark/image_watermark.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';
import 'package:intl/intl.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:uuid/uuid.dart';
import 'package:skyconnect_starter/services/data.dart';
import 'package:skyconnect_starter/theme/design.theme.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:http/http.dart' as http;
import 'package:path_provider/path_provider.dart' as path_provider;

class Funcs {
  DateTime getDateToNextDays({required int days, required String from}) {
    var now = DateTime.now();
    if (from == "last") {
      return now.subtract(Duration(days: days));
    } else {
      return now.add(Duration(days: days));
    }
  }

  List<DateTime> getDatesInBetween(
      {required DateTime startDate, required DateTime endDate}) {
    List<DateTime> dates = [];
    for (int i = 0; i <= endDate.difference(startDate).inDays; i++) {
      dates.add(startDate.add(Duration(days: i)));
    }
    return dates;
  }

  changeLang(String s, {String? lang}) {
    if (lang == "EN") {
      Get.updateLocale(const Locale("en", "US"));
    } else if (lang == "SW") {
      Get.updateLocale(const Locale("sw", "TZ"));
    } else {
      Get.updateLocale(const Locale("en", "US"));
    }
  }

  final priceFormat = NumberFormat('#,###,000').format;

  final _chars =
      'AaBbCcDdEeFfGgHhIiJjKkLlMmNnOoPpQqRrSsTtUuVvWwXxYyZz1234567890';
  final Random _rnd = Random();

  String getRandomString(int length) => String.fromCharCodes(Iterable.generate(
      length, (_) => _chars.codeUnitAt(_rnd.nextInt(_chars.length))));

  String getRandomID() {
    var uuid = const Uuid();
    return uuid.v4();
  }

  String getInitials({required String string, int? limitTo}) {
    var buffer = StringBuffer();
    var split = string.toLowerCase().split(' ');
    for (var i = 0; i < (limitTo ?? 1); i++) {
      buffer.write(split[i][0].toUpperCase());
    }

    return buffer.toString();
  }

  String theKMBGenerator(int posts, {required int num}) {
    if (num > 999 && num < 99999) {
      return "${(num / 1000).round()}K";
    } else if (num > 99999 && num < 999999) {
      return "${(num / 1000).round().toStringAsFixed(0)}K";
    } else if (num > 999999 && num < 999999999) {
      return "${(num / 1000000).round()}M";
    } else if (num > 999999999) {
      return "${(num / 1000000000).round()}B";
    } else {
      return num.toString();
    }
  }

  void showSnackBar(
      {required BuildContext context,
      required String mainLabel,
      required String actionLabel,
      required VoidCallback actionFunc,
      required String type}) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        backgroundColor: type == "info"
            ? Palette().appInfo2
            : type == "success"
                ? Palette().appSucc2
                : type == "error"
                    ? Palette().appError2
                    : type == "warning"
                        ? Palette().appWarn2
                        : Colors.white,
        action: SnackBarAction(
          textColor: Palette().primaryColorLight,
          label: actionLabel.tr,
          onPressed: () {
            actionFunc();
          },
        ),
        content: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            type == "info"
                ? Icon(
                    Icons.info_outline,
                    size: 30,
                    color: Palette().appInfo,
                  )
                : type == "success"
                    ? Icon(
                        Icons.check_circle_outline,
                        size: 30,
                        color: Palette().appSucc,
                      )
                    : type == "error"
                        ? Icon(
                            Icons.theater_comedy_outlined,
                            size: 30,
                            color: Palette().appError,
                          )
                        : type == "warning"
                            ? Icon(
                                Icons.warning_amber_outlined,
                                size: 30,
                                color: Palette().appWarn,
                              )
                            : const Offstage(),
            const SizedBox(
              width: 10,
            ),
            Expanded(
              child: Text(
                mainLabel.tr,
                style: TextStyle(
                  fontSize: Insets().appFontSize,
                  fontWeight: FontWeight.w300,
                  color: type == "info"
                      ? Palette().appInfo
                      : type == "success"
                          ? Palette().appSucc
                          : type == "error"
                              ? Palette().appError
                              : type == "warning"
                                  ? Palette().appWarn
                                  : Palette().primaryColor,
                ),
              ),
            ),
          ],
        ),
        duration: const Duration(seconds: 2),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(0),
        ),
      ),
    );
  }

  getDateString({required DateTime date}) {
    String _dateString = DateFormat("dd/MM/yyyy").format((date)).toString();
    return _dateString;
  }

  getYearMonth({required DateTime date}) {
    String _dateString = DateFormat("yyyyMM").format((date)).toString();
    return _dateString;
  }

  getDateStringShort({required DateTime date}) {
    String _dateString = DateFormat("MMMd").format((date)).toString();
    return _dateString;
  }

  getDateTimeString({required DateTime date}) {
    String _dateTimeString = DateFormat('yyyy-MM-dd / kk:mm').format(date);
    return _dateTimeString;
  }

  getSum({required List<int> list}) {
    var sum = list.reduce((a, b) => a + b);
    return sum;
  }

  Future<void> openLink({required String url}) async {
    if (!await launchUrl(
      Uri.parse(url),
      mode: LaunchMode.externalApplication,
    )) {
      throw 'Could not launch $url';
    }
  }

  openSMS({phoneNumber, message}) async {
    final String tempPhoneNumber =
        phoneNumber[0] == "0" ? phoneNumber.substring(1) : phoneNumber;
    final myAndroidNumber = tempPhoneNumber.replaceAllMapped(
        RegExp(r".{3}"), (match) => "${match.group(0)}");
    final myIphoneNumber = myAndroidNumber.replaceAll(" ", "-");

    if (Platform.isAndroid) {
      final uri = 'sms:+255 $myAndroidNumber?body=$message';
      await launchUrl(Uri.parse(uri));
    } else if (Platform.isIOS) {
      // iOS
      final uri = 'sms:0-$myIphoneNumber&body=$message';
      await launchUrl(Uri.parse(uri));
    }
  }

  openPhone({required String phoneNumber}) async {
    if (!await launchUrl(
      Uri.parse("tel://$phoneNumber"),
      mode: LaunchMode.externalApplication,
    )) {
      throw 'Could not launch $phoneNumber';
    }
  }

  Future<void> openMail({email, subject, message}) async {
    String? encodeQueryParameters(Map<String, String> params) {
      return params.entries
          .map((e) =>
              '${Uri.encodeComponent(e.key)}=${Uri.encodeComponent(e.value)}')
          .join('&');
    }

    final Uri emailLaunchUri = Uri(
      scheme: 'mailto',
      path: email,
      query: encodeQueryParameters(<String, String>{
        'subject': subject,
        'message': message,
      }),
    );

    launchUrl(emailLaunchUri);
  }

  String getBase64FormatFile({required String path}) {
    File file = File(path);
    print('File is = $file');
    List<int> fileInByte = file.readAsBytesSync();
    String fileInBase64 = base64Encode(fileInByte);
    return fileInBase64;
  }

  String convertToAgo({required DateTime date}) {
    Duration diff = DateTime.now().difference(date);

    if (diff.inDays >= 1) {
      return '${diff.inDays} day(s) ago';
    } else if (diff.inHours >= 1) {
      return '${diff.inHours} hour(s) ago';
    } else if (diff.inMinutes >= 1) {
      return '${diff.inMinutes} minute(s) ago';
    } else if (diff.inSeconds >= 1) {
      return '${diff.inSeconds} second(s) ago';
    } else {
      return 'Just Now';
    }
  }

  String getDuration({required DateTime startDate, required DateTime endDate}) {
    Duration diff = endDate.difference(startDate);

    if (diff.inDays >= 1) {
      return '${diff.inDays} ${"days".tr}';
    } else if (diff.inHours >= 1) {
      return '${diff.inHours} ${"Hours".tr}';
    } else if (diff.inMinutes >= 1) {
      return '${diff.inMinutes} ${"Minutes".tr}';
    } else if (diff.inSeconds >= 1) {
      return '${diff.inSeconds} ${"seconds".tr}';
    } else {
      return 'N/A'.tr;
    }
  }

  String getSalutation() {
    var now = DateTime.now();
    var hour = now.hour;

    if (hour < 12) {
      return "Good morning";
    } else if (hour < 18) {
      return "Good afternoon";
    } else {
      return "Good evening";
    }
  }

  Future<DateTime?> selectDate(
      {required BuildContext context, DateTime? initialDate}) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: initialDate ?? DateTime.now(),
      firstDate: DateTime(2015, 8),
      lastDate: DateTime(2101),
      builder: (BuildContext context, Widget? child) {
        return Theme(
          data: ThemeData.light().copyWith(
            colorScheme: ColorScheme.fromSwatch(
              primarySwatch: Colors.blue,
              primaryColorDark: Palette().primaryColor,
              accentColor: Palette().primaryColor,
            ),
            dialogBackgroundColor: Colors.white,
          ),
          child: child!,
        );
      },
    );
    if (picked != null && picked != initialDate) {
      return picked;
    } else {
      return picked;
    }
  }

  final initialDateRange = DateTimeRange(
    start: DateTime.now(),
    end: DateTime.now().add(Duration(days: 7)),
  );

  Future<DateTimeRange?> selectDateRange(
      {required BuildContext context, DateTime? initialDate}) async {
    final DateTimeRange? pickedRange = await showDateRangePicker(
      context: context,
      firstDate: DateTime(2022, 1, 1), // the earliest allowable
      lastDate: DateTime(2030, 12, 31), // the latest allowable
      currentDate: DateTime.now(),
      // initialDateRange: initialDateRange,

      // firstDate: DateTime.now(),
      // lastDate: DateTime.now().add(Duration(days: 365)),
      builder: (BuildContext context, Widget? child) {
        return Theme(
          data: ThemeData.light().copyWith(
            colorScheme: ColorScheme.fromSwatch(
              primarySwatch: Colors.green,
              primaryColorDark: Palette().primaryColor,
              accentColor: Palette().primaryColor,
            ),
            dialogBackgroundColor: Colors.white,
          ),
          child: child!,
        );
      },
    );
    if (pickedRange != null && pickedRange != initialDateRange) {
      return pickedRange;
    } else {
      return pickedRange;
    }
  }

  Future<TimeOfDay?> selectTime(
      {required BuildContext context, TimeOfDay? initialTime}) async {
    final TimeOfDay? picked = await showTimePicker(
      context: context,
      initialTime: initialTime ?? TimeOfDay.now(),
      builder: (BuildContext context, Widget? child) {
        return Theme(
          data: ThemeData.light().copyWith(
            colorScheme: ColorScheme.fromSwatch(
              primarySwatch: Colors.blue,
              primaryColorDark: Palette().primaryColor,
              accentColor: Palette().primaryColor,
            ),
            dialogBackgroundColor: Colors.white,
          ),
          child: child!,
        );
      },
    );
    if (picked != null && picked != initialTime) {
      return picked;
    } else {
      return picked;
    }
  }

  // checking internet status
  Future<bool> checkInternet() async {
    bool result = await InternetConnectionChecker().hasConnection;
    if (result == true) {
      print("Success: Connected to the internet!");
      return true;
    } else {
      print("Failure: Not connected to the internet!");
      return false;
    }
  }

  Future<Uint8List> convertNetworkImageToBytes(
      {required String netImage}) async {
    Uint8List? imgBytes =
        (await NetworkAssetBundle(Uri.parse(netImage)).load(netImage))
            .buffer
            .asUint8List();

    return imgBytes;
  }

  // getFirebaseImageReference({required String title, required String username}) {
  //   final imageRef = FirebaseStorage.instance
  //       .ref()
  //       .child("collections/$username/$title.png");
  //   return imageRef;
  // }

  // uploadToFirebaseAndGetURL({required String title, required String path, required String username}) async {
  //   final imageRef = await getFirebaseImageReference(title, username);

  //   try {
  //     String downloadURL = "";

  //     TaskSnapshot uploadedFile = await imageRef.putFile(File(path));

  //     if (uploadedFile.state == TaskState.success) {
  //       downloadURL = await imageRef.getDownloadURL();
  //     }

  //     return downloadURL;
  //   } on FirebaseException catch (e) {
  //     print("My error: $e");
  //     return null;
  //   }
  // }

  // Future<String?> uploadBytesToFirebaseAndGetURL(
  //    { required String title, required Uint8List imgBytes, required String username}) async {
  //   final imageRef = getFirebaseImageReference(title, username);

  //   try {
  //     String downloadURL = "";

  //     TaskSnapshot uploadedFile = await imageRef.putData(imgBytes);

  //     if (uploadedFile.state == TaskState.success) {
  //       downloadURL = await imageRef.getDownloadURL();
  //     }

  //     return downloadURL;
  //   } on FirebaseException catch (e) {
  //     print("My error: $e");
  //     return null;
  //   }
  // }

  Future<String?> downloadImage(
      {required String link,
      required String title,
      required String folder,
      String? waterMarkText,
      String? watermarkImage}) async {
    if (await Permission.storage.request().isGranted) {
      final Directory directory =
          await Directory("/storage/emulated/0/Download/${AppData().appName}")
              .create();
      final filePath = '${directory.path}/$title.png';

      Uint8List imgBytes =
          (await NetworkAssetBundle(Uri.parse(link)).load(link))
              .buffer
              .asUint8List();

      Uint8List? watermarkBytes = watermarkImage == null
          ? null
          : (await NetworkAssetBundle(Uri.parse(watermarkImage))
                  .load(watermarkImage))
              .buffer
              .asUint8List();

      final textWatermarkedBytes = await ImageWatermark.addTextWatermark(
        imgBytes: imgBytes,
        watermarkText: AppData().appName,
        dstX: Insets().appGap.toInt(),
        dstY: Insets().appGap.toInt(),
        color: Palette().primaryColor,
      );

      final imageWatermarkedBytes = await ImageWatermark.addImageWatermark(
        originalImageBytes: imgBytes, //image bytes
        waterkmarkImageBytes: textWatermarkedBytes, //watermark img bytes
        imgHeight: 45, //watermark img height
        imgWidth: 45, //watermark img width
        dstY: Insets().appGap.toInt() * 2,
        dstX: Insets().appGap.toInt(),
      );

      final combinedWatermarkedBytes = await ImageWatermark.addImageWatermark(
        originalImageBytes: textWatermarkedBytes, //image bytes
        waterkmarkImageBytes: watermarkBytes ?? imgBytes, //watermark img bytes
        imgHeight: 45, //watermark img height
        imgWidth: 45, //watermark img width
        dstY: 90,
        dstX: 90,
      );

      // converting to file
      final watermarkedFile = await File(filePath)
          .writeAsBytes(waterMarkText != null && watermarkImage != null
              ? combinedWatermarkedBytes
              : waterMarkText != null
                  ? imageWatermarkedBytes
                  : watermarkImage != null
                      ? textWatermarkedBytes
                      : imgBytes);

      return watermarkedFile.path;
    } else {
      return null;
    }
  }

//   Future<List<Uint8List>?> generateImages(
//       {required String prompt,
//       String? style,
//       required String imageSize,
//       required int variations}) async {
//     final uri = Uri.parse("https://api.openai.com/v1/images/generations");
//     final modifiedPrompt = "$prompt ${style == null ? "" : ", $style"}";
//     var requestBody = jsonEncode({
//       "prompt": modifiedPrompt,
//       "n": variations,
//       "size": imageSize,
//     });

//     // http.Response response = await http.post(
//     //   uri,
//     //   headers: <String, String>{
//     //     'Content-Type': 'application/json',
//     //     'Authorization': 'Bearer ${OpenAIKey().teminaliKey}',
//     //   },
//     //   body: requestBody,
//     // );

//     if (response.statusCode == 200) {
//       var responseJson = json.decode(response.body);
//       print('Status code success.. Image generated successfully!');

//       List returnedImages = responseJson['data'];

//       List<Uint8List> returnedBytes = [];
//       await Future.wait(returnedImages.map((element) async {
//         Uint8List result =
//             await convertNetworkImageToBytes(netImage: element['url']);
//         returnedBytes.add(result);
//       }));

//       print('Success.. API request was great..!');
//       return returnedBytes;
//     } else {
//       print('Error.. Check your API method or URL..!');
//       return null;
//     }
//   }
}

// if (await Permission.storage.request().isGranted) {
//
// } else {
//
// }
