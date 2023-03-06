import 'dart:io';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:skyconnect_starter/components/heading2.dart';
import 'package:skyconnect_starter/components/heading3.dart';
import 'package:skyconnect_starter/components/heading6.dart';
import 'package:skyconnect_starter/components/loading.comp.dart';
import 'package:skyconnect_starter/controllers/funcs_main.dart';
import 'package:skyconnect_starter/database/boxes.dart';
import 'package:skyconnect_starter/database/db.dart';
import 'package:skyconnect_starter/database/firestore.dart';
import 'package:skyconnect_starter/screens/loading.scrn.dart';
import 'package:skyconnect_starter/services/data.dart';
import 'package:skyconnect_starter/theme/design.theme.dart';

class UsernameSetupPage extends StatefulWidget {
  const UsernameSetupPage({
    Key? key,
  }) : super(key: key);

  @override
  State<UsernameSetupPage> createState() => _UsernameSetupPageState();
}

class _UsernameSetupPageState extends State<UsernameSetupPage> {
  final db = FirebaseFirestore.instance;
  User? currentUser = FirebaseAuth.instance.currentUser;

  final _formKey = GlobalKey<FormState>();

  String language = "";
  String? username,
      email,
      fullName,
      location,
      phoneNumber,
      facility,
      avatarURL,
      country,
      city,
      address,
      status = "Active",
      password;
  String role = "User";
  bool isOnline = false;
  bool isDeleted = false;
  double credits = 0.0;
  DateTime? birthDate;
  DateTime dateAdded = DateTime.now();

  String? emailError;
  String? usernameError;
  String? passwordError;

  bool showPass = false;

  bool authIsLogin = true;
  bool isLoading = false;
  double calcHeight = 0.32;
  double logoSize = 130;
  bool connected = false;

  _checkInternet() async {
    try {
      final result = await InternetAddress.lookup('google.com');
      if (result.isNotEmpty && result[0].rawAddress.isNotEmpty) {
        connected = true;
        print("Success: Connected to the internet!");
      }
    } on SocketException catch (_) {
      connected = false;
      print("Failure: Not connected to the internet!");
    }
  }

  @override
  void initState() {
    _checkInternet();

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;

    return StreamBuilder<QuerySnapshot>(
        stream: db.collection("classifiedDatas").snapshots(),
        builder: (context, snapshot) {
          if (snapshot.data == null) {
            print("notification: null");
            return Container();
            //  return const LoadingScreen();
          } else {
            final classifiedDatas = snapshot.data!.docs;
            final credits = classifiedDatas
                .firstWhere((element) => element['name'] == "credits");
            final List creditsData = credits['data'];
            final registrationCredits = creditsData.firstWhere(
                (element) => element['name'] == "registrationCredits");

            return StreamBuilder<QuerySnapshot>(
                stream: db.collection("users").snapshots(),
                builder: (context, snapshot) {
                  if (snapshot.data == null) {
                    return Container();
                    //   return const LoadingScreen();
                  } else {
                    final users = snapshot.data!.docs;

                    return SafeArea(
                      child: Scaffold(
                        body: Container(
                          padding: EdgeInsets.all(Insets().appPadding),
                          height: size.height,
                          width: size.width,
                          child: Form(
                            key: _formKey,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                const Spacer(),
                                Container(
                                  width: 96,
                                  height: 96,
                                  child: Image.asset("assets/img/logo.jpg"),
                                ),
                                SizedBox(
                                  height: Insets().appPadding * 2,
                                ),
                                Heading3(
                                  value:
                                      "Setup your username and receive free ${registrationCredits['value']} credits",
                                ),
                                SizedBox(
                                  height: Insets().appPadding,
                                ),
                                TextFormField(
                                  decoration: InputDecoration(
                                    hintText: "eg. johnDoe".tr,
                                    labelText: "Username".tr,
                                  ),
                                  validator: (val) {
                                    List usernames = [];
                                    for (var element in users) {
                                      usernames.add(element['username']);
                                    }
                                    return val!.isEmpty
                                        ? "Username is required".tr
                                        : val.length < 3
                                            ? "Username must be longer than 3 chars long"
                                                .tr
                                            : usernames.contains(username)
                                                ? "Sorry, username already taken!"
                                                    .tr
                                                : null;
                                  },
                                  onChanged: (val) {
                                    setState(() {
                                      username = val;
                                    });
                                  },
                                ),
                                SizedBox(
                                  height: Insets().appPadding,
                                ),
                                Row(
                                  children: [
                                    ElevatedButton(
                                        onPressed: () {
                                          if (_formKey.currentState!
                                              .validate()) {
                                            DBService().updateSingleField(
                                                currentUser!.uid,
                                                {'username': username!},
                                                "users");
                                            DBService().updateSingleField(
                                                currentUser!.uid,
                                                {
                                                  'credits':
                                                      registrationCredits[
                                                          'value']
                                                },
                                                "users");
                                          }
                                        },
                                        child: Text("Finish".tr)),
                                  ],
                                ),
                                const Spacer(),
                                Heading6(
                                  value: AppData().splashText.tr,
                                  color: Palette().textColor,
                                ),
                              ],
                            ),
                          ),
                        ),
                        bottomNavigationBar: Container(
                          color: Colors.white,
                          child: Row(
                            children: [
                              ValueListenableBuilder<Box<MySetting>>(
                                  valueListenable:
                                      Boxes.getMySettings().listenable(),
                                  builder: (context, box, _) {
                                    final mySetting = box.isEmpty
                                        ? null
                                        : box.values
                                            .firstWhere((element) => true);

                                    if (mySetting == null) {
                                      return const Loading();
                                    } else {
                                      final currentLang = mySetting.language;

                                      return PopupMenuButton<String>(
                                        child: Padding(
                                          padding: EdgeInsets.symmetric(
                                              horizontal: Insets().appGap,
                                              vertical: Insets().appGap),
                                          child: Row(
                                            children: [
                                              SizedBox(
                                                height: 20,
                                                width: 20,
                                                child: SvgPicture.asset(
                                                  "assets/icons/flags/${currentLang == "Swahili" ? "tza" : currentLang == "English" ? "usa" : "usa"}.svg",
                                                ),
                                              ),
                                              const SizedBox(
                                                width: 5,
                                              ),
                                              Text(
                                                currentLang!,
                                                style: TextStyle(
                                                  color: Palette().textColor,
                                                  fontSize: 12,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        onSelected: (val) {
                                          setState(() {
                                            language = val;
                                          });

                                          // update in UI
                                          Funcs().changeLang(
                                            language.isEmpty
                                                ? currentLang
                                                : language,
                                          );

                                          // update In local db
                                          mySetting.language = language.isEmpty
                                              ? currentLang
                                              : language;
                                          mySetting.save();

                                          //Funcs().showSnackBar(context, "Language switched to $language!", "Okay", () {}, "success");
                                        },
                                        itemBuilder: (BuildContext context) {
                                          return {'Swahili', 'English'}
                                              .map((String choice) {
                                            return PopupMenuItem<String>(
                                              value: choice,
                                              child: Row(
                                                children: [
                                                  SizedBox(
                                                    height: 20,
                                                    width: 20,
                                                    child: choice == "Swahili"
                                                        ? SvgPicture.asset(
                                                            "assets/icons/flags/tza.svg",
                                                          )
                                                        : choice == "English"
                                                            ? SvgPicture.asset(
                                                                "assets/icons/flags/usa.svg",
                                                              )
                                                            : const Icon(
                                                                Icons.language,
                                                                size: 20,
                                                                color: Colors
                                                                    .redAccent,
                                                              ),
                                                  ),
                                                  const SizedBox(
                                                    width: 5,
                                                  ),
                                                  Text(
                                                    choice.tr,
                                                    style: TextStyle(
                                                      color:
                                                          Palette().textColor,
                                                      fontSize: 12,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            );
                                          }).toList();
                                        },
                                      );
                                    }
                                  }),
                            ],
                          ),
                        ),
                      ),
                    );
                  }
                });
          }
        });
  }
}
