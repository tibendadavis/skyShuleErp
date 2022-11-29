import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
//import 'package:skyconnect_starter/components/appbar_screen.comp.dart';
import 'package:skyconnect_starter/components/date_field/src/field.dart';
import 'package:skyconnect_starter/components/date_field/src/form_field.dart';
//import 'package:skyconnect_starter/components/image_picker.dart';
import 'package:skyconnect_starter/components/photo_uploads/avatar_upload.dart';
import 'package:skyconnect_starter/controllers/funcs_main.dart';
import 'package:skyconnect_starter/database/firestore.dart';
import 'package:skyconnect_starter/screens/loading.scrn.dart';
import 'package:skyconnect_starter/theme/design.theme.dart';

class UserSettingsScreen extends StatefulWidget {
  final String uid;
  const UserSettingsScreen({
    Key? key,
    required this.uid,
  }) : super(key: key);

  @override
  State<UserSettingsScreen> createState() => _UserSettingsScreenState();
}

class _UserSettingsScreenState extends State<UserSettingsScreen> {
  final db = FirebaseFirestore.instance;
  User? currentUser = FirebaseAuth.instance.currentUser;

  final _formKey = GlobalKey<FormState>();

  String? username;
  String? fullName;
  String? phoneNumber;
  String? email;
  String? avatarURL;
  String? location;
  DateTime? birthDate;

  bool dateInChanged = false;
  String? dateError;

  bool showImagePicker = false;
  bool isLoading = false;

  bool startsWithZero = false;

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;

    return StreamBuilder<QuerySnapshot>(
        stream: db.collection("users").snapshots(),
        builder: (context, snapshot) {
          if (snapshot.data == null) {
            return const LoadingScreen();
          } else {
            final users = snapshot.data!.docs;
            final user =
                users.firstWhere((element) => element.id == currentUser!.uid);
            final profileUser =
                users.firstWhere((element) => element.id == widget.uid);

            return Scaffold(
              body: SafeArea(
                child: Stack(
                  children: [
                    Container(
                      padding: EdgeInsets.all(Insets().appPadding),
                      margin: EdgeInsets.only(top: Insets().appBarHeight),
                      height: size.height,
                      child: SingleChildScrollView(
                        child: Form(
                          key: _formKey,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              SizedBox(
                                height: Insets().appPadding,
                              ),
                              AvatarUploadWDG(
                                  onTap: () {
                                    setState(() {
                                      showImagePicker = !showImagePicker;
                                    });
                                  },
                                  currentImage: avatarURL ?? user['avatarURL'],
                                  name: avatarURL == null
                                      ? user['username']
                                      : null,
                                  isLoading: isLoading),
                              SizedBox(height: Insets().appPadding * 2),
                              TextFormField(
                                initialValue: user['username'],
                                decoration: InputDecoration(
                                  labelText: "Username".tr,
                                  prefixIcon:
                                      const Icon(Icons.account_circle_rounded),
                                ),
                                validator: (val) {
                                  if (val!.isEmpty) {
                                    return "Username is required!".tr;
                                  } else {
                                    var checkUsers = users.where((element) =>
                                        element['username'] == username);
                                    if (checkUsers.isNotEmpty) {
                                      return "Username is already used!".tr;
                                    } else {
                                      return null;
                                    }
                                  }
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
                              TextFormField(
                                initialValue: user['fullName'],
                                decoration: InputDecoration(
                                  labelText: "Full name".tr,
                                  prefixIcon:
                                      const Icon(Icons.account_circle_rounded),
                                ),
                                onChanged: (val) {
                                  setState(() {
                                    fullName = val;
                                  });
                                },
                              ),
                              SizedBox(
                                height: Insets().appPadding,
                              ),
                              TextFormField(
                                keyboardType: TextInputType.number,
                                inputFormatters: [
                                  FilteringTextInputFormatter.digitsOnly
                                ],
                                initialValue: user['phoneNumber'] == null
                                    ? phoneNumber
                                    : user['phoneNumber'][0] == "0"
                                        ? user['phoneNumber'].substring(1)
                                        : user['phoneNumber'],
                                maxLength: startsWithZero ? 10 : 9,
                                decoration: InputDecoration(
                                  labelText: "Phone Number".tr,
                                  prefixIcon: const Icon(Icons.phone),
                                  prefix: const Padding(
                                    padding: EdgeInsets.only(right: 5),
                                    child: Text("+255"),
                                  ),
                                  counterText: "",
                                ),
                                validator: (val) =>
                                    val!.isNotEmpty && !val.isPhoneNumber
                                        ? "Invalid phone number!".tr
                                        : null,
                                onChanged: (val) {
                                  setState(() {
                                    if (val[0] == "0") {
                                      startsWithZero = true;
                                    } else {
                                      startsWithZero = false;
                                    }

                                    phoneNumber = val[0] != "0" ? "0$val" : val;
                                  });
                                },
                              ),
                              SizedBox(
                                height: Insets().appPadding,
                              ),
                              DateTimeFormField(
                                initialValue: user['birthDate'] == null
                                    ? user['birthDate']
                                    : user['birthDate'].toDate(),
                                dateTextStyle: TextStyle(
                                  fontSize: Insets().appFontSize,
                                ),
                                decoration: InputDecoration(
                                  border: const OutlineInputBorder(),
                                  prefixIcon: const Icon(Icons.event_note),
                                  labelText: 'Birth Date'.tr,
                                ),
                                mode: DateTimeFieldPickerMode.date,
                                autovalidateMode:
                                    AutovalidateMode.onUserInteraction,
                                onDateSelected: (DateTime val) {
                                  setState(() {
                                    dateInChanged = true;
                                    birthDate = val;
                                  });
                                },
                              ),
                              SizedBox(
                                height: Insets().appPadding,
                              ),
                              TextFormField(
                                initialValue: user['location'],
                                decoration: InputDecoration(
                                  labelText: "Location".tr,
                                  prefixIcon: const Icon(Icons.location_on),
                                ),
                                onChanged: (val) {
                                  setState(() {
                                    location = val;
                                  });
                                },
                              ),
                              SizedBox(
                                height: Insets().appPadding,
                              ),
                              SizedBox(
                                height: Insets().inputSize,
                                child: ElevatedButton(
                                    onPressed: () {
                                      if (_formKey.currentState!.validate()) {
                                        DBService()
                                            .updateUser(
                                          user.id,
                                          user['notifToken'],
                                          username,
                                          user['role'],
                                          email,
                                          fullName,
                                          phoneNumber,
                                          avatarURL,
                                          birthDate,
                                          location,
                                          user['points'],
                                          user['isDeleted'],
                                          user['status'],
                                          user['dateAdded'].toDate(),
                                        )
                                            .whenComplete(() {
                                          // Funcs().showSnackBar(context, "Settings updated successfully", "Okay", () { }, "success");
                                        });
                                      }
                                    },
                                    child: Text("Update",
                                        style: GoogleFonts.questrial(
                                            textStyle: TextStyle(
                                          fontSize: Insets().appFontSize,
                                          fontWeight: FontWeight.w300,
                                        )))),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      child: Center(),
                      // child: ScreenAppBar(
                      //   title: "${profileUser['username']} ${"Profile".tr}",
                      //   actions: const [

                      //   ],
                      // ),
                    )
                  ],
                ),
              ),
              // floatingActionButton: !showImagePicker ? null : ImagePickerWDG(pick: const ["ImageGalley", "ImageCamera"], onSelect: (val) async {
              //   setState(() {
              //     showImagePicker = false;
              //   });
              //   setState(() {
              //     isLoading = false;
              //   });
              //   final returnedAvatarURL = await Funcs().uploadToFirebaseAndGetURL(user.id, val![0].path, user['username']);

              //   setState(() {
              //     avatarURL = returnedAvatarURL;
              //     isLoading = false;
              //   });
              // },),
            );
          }
        });
  }
}
