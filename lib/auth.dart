// import 'dart:io';
// import 'package:cloud_firestore/cloud_firestore.dart';
// import 'package:firebase_auth/firebase_auth.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_svg/svg.dart';
// import 'package:get/get.dart';
// import 'package:google_sign_in/google_sign_in.dart';
// import 'package:hive_flutter/adapters.dart';
// import 'package:skyconnect_starter/components/heading3.dart';
// import 'package:skyconnect_starter/components/heading6.dart';
// import 'package:skyconnect_starter/components/heading_text.dart';
// import 'package:skyconnect_starter/components/loading.comp.dart';
// import 'package:skyconnect_starter/controllers/funcs_main.dart';
// import 'package:skyconnect_starter/database/boxes.dart';
// import 'package:skyconnect_starter/database/db.dart';
// import 'package:skyconnect_starter/database/firestore.dart';
// import 'package:skyconnect_starter/screens/loading.scrn.dart';
// import 'package:skyconnect_starter/services/data.dart';
// import 'package:skyconnect_starter/theme/design.theme.dart';

// class Auth extends StatefulWidget {
//   final String? notifToken;
//   final String title;
//   const Auth({
//     Key? key,
//     required this.notifToken,
//     required this.title,
//   }) : super(key: key);

//   @override
//   State<Auth> createState() => _AuthState();
// }

// class _AuthState extends State<Auth> {
//   final db = FirebaseFirestore.instance;

//   final _formKey = GlobalKey<FormState>();

//   String language = "";
//   String? username,
//       email,
//       fullName,
//       location,
//       phoneNumber,
//       facility,
//       avatarURL,
//       country,
//       city,
//       address,
//       status = "Active",
//       password;
//   String role = "User";
//   bool isOnline = false;
//   bool isDeleted = false;
//   double points = 0.0;
//   DateTime? birthDate;
//   DateTime dateAdded = DateTime.now();

//   String? emailError;
//   String? usernameError;
//   String? passwordError;

//   bool showPass = false;

//   bool authIsLogin = true;
//   bool isLoading = false;
//   double calcHeight = 0.32;
//   double logoSize = 130;
//   bool connected = false;

//   _checkInternet() async {
//     try {
//       final result = await InternetAddress.lookup('google.com');
//       if (result.isNotEmpty && result[0].rawAddress.isNotEmpty) {
//         connected = true;
//         print("Success: Connected to the internet!");
//       }
//     } on SocketException catch (_) {
//       connected = false;
//       print("Failure: Not connected to the internet!");
//     }
//   }

//   @override
//   void initState() {
//     _checkInternet();

//     super.initState();
//   }

//   @override
//   Widget build(BuildContext context) {
//     final Size size = MediaQuery.of(context).size;

//     return StreamBuilder<QuerySnapshot>(
//         stream: db.collection("notifications").snapshots(),
//         builder: (context, snapshot) {
//           if (snapshot.data == null) {
//             print("notification: null");
//             return const LoadingScreen();
//           } else {
//             final notifications = snapshot.data!.docs;

//             return StreamBuilder<QuerySnapshot>(
//                 stream: db.collection("saves").snapshots(),
//                 builder: (context, snapshot) {
//                   if (snapshot.data == null) {
//                     return const LoadingScreen();
//                   } else {
//                     final saves = snapshot.data!.docs;

//                     return StreamBuilder<QuerySnapshot>(
//                         stream: db.collection("followers").snapshots(),
//                         builder: (context, snapshot) {
//                           if (snapshot.data == null) {
//                             return const LoadingScreen();
//                           } else {
//                             final followers = snapshot.data!.docs;

//                             return StreamBuilder<QuerySnapshot>(
//                                 stream: db.collection("followings").snapshots(),
//                                 builder: (context, snapshot) {
//                                   if (snapshot.data == null) {
//                                     return const LoadingScreen();
//                                   } else {
//                                     final followings = snapshot.data!.docs;

//                                     return StreamBuilder<QuerySnapshot>(
//                                         stream:
//                                             db.collection("likes").snapshots(),
//                                         builder: (context, snapshot) {
//                                           if (snapshot.data == null) {
//                                             return const LoadingScreen();
//                                           } else {
//                                             final likes = snapshot.data!.docs;

//                                             return StreamBuilder<QuerySnapshot>(
//                                                 stream: db
//                                                     .collection("users")
//                                                     .snapshots(),
//                                                 builder: (context, snapshot) {
//                                                   if (snapshot.data == null) {
//                                                     print("user: null");
//                                                     return const LoadingScreen();
//                                                   } else {
//                                                     final users =
//                                                         snapshot.data!.docs;

//                                                     Future<User?> signInWithGoogle(
//                                                         {required BuildContext
//                                                             context}) async {
//                                                       FirebaseAuth auth =
//                                                           FirebaseAuth.instance;
//                                                       User? user;

//                                                       final GoogleSignIn
//                                                           googleSignIn =
//                                                           GoogleSignIn();

//                                                       final GoogleSignInAccount?
//                                                           googleSignInAccount =
//                                                           await googleSignIn
//                                                               .signIn();

//                                                       if (googleSignInAccount !=
//                                                           null) {
//                                                         final GoogleSignInAuthentication
//                                                             googleSignInAuthentication =
//                                                             await googleSignInAccount
//                                                                 .authentication;

//                                                         final AuthCredential
//                                                             credential =
//                                                             GoogleAuthProvider
//                                                                 .credential(
//                                                           accessToken:
//                                                               googleSignInAuthentication
//                                                                   .accessToken,
//                                                           idToken:
//                                                               googleSignInAuthentication
//                                                                   .idToken,
//                                                         );

//                                                         try {
//                                                           final UserCredential
//                                                               userCredential =
//                                                               await auth
//                                                                   .signInWithCredential(
//                                                                       credential);

//                                                           user = userCredential
//                                                               .user;
//                                                           final dbCurrentUsers =
//                                                               users.where((element) =>
//                                                                   element["email"] ==
//                                                                       user!
//                                                                           .email &&
//                                                                   element["username"] !=
//                                                                       username);

//                                                           if (dbCurrentUsers
//                                                               .isEmpty) {
//                                                             DBService()
//                                                                 .updateUser(
//                                                               user!.uid,
//                                                               widget.notifToken ==
//                                                                       null
//                                                                   ? ""
//                                                                   : widget
//                                                                       .notifToken!,
//                                                               username,
//                                                               role,
//                                                               user.email,
//                                                               fullName,
//                                                               phoneNumber,
//                                                               user.photoURL,
//                                                               birthDate,
//                                                               location,
//                                                               points,
//                                                               isDeleted,
//                                                               status,
//                                                               dateAdded,
//                                                             );
//                                                           }

//                                                           // Adding notifications, saves and follows document for the user
//                                                           List allnotifIDs = [];
//                                                           notifications.forEach(
//                                                               (element) {
//                                                             allnotifIDs.add(
//                                                                 element.id);
//                                                           });
//                                                           if (!allnotifIDs
//                                                               .contains(
//                                                                   user!.uid)) {
//                                                             DBService()
//                                                                 .updateNotifications(
//                                                                     user.uid,
//                                                                     [],
//                                                                     dateAdded);
//                                                           }

//                                                           List allSavesIDs = [];
//                                                           saves.forEach(
//                                                               (element) {
//                                                             allSavesIDs.add(
//                                                                 element.id);
//                                                           });
//                                                           if (!allSavesIDs
//                                                               .contains(
//                                                                   user.uid)) {
//                                                             DBService()
//                                                                 .updateSaves(
//                                                                     user.uid,
//                                                                     [],
//                                                                     dateAdded);
//                                                           }

//                                                           List allFollowersIDs =
//                                                               [];
//                                                           followers.forEach(
//                                                               (element) {
//                                                             allFollowersIDs.add(
//                                                                 element.id);
//                                                           });
//                                                           if (!allFollowersIDs
//                                                               .contains(
//                                                                   user.uid)) {
//                                                             DBService()
//                                                                 .updateFollowers(
//                                                                     user.uid,
//                                                                     [],
//                                                                     dateAdded);
//                                                           }

//                                                           List allFollowingIDs =
//                                                               [];
//                                                           followings.forEach(
//                                                               (element) {
//                                                             allFollowingIDs.add(
//                                                                 element.id);
//                                                           });
//                                                           if (!allFollowingIDs
//                                                               .contains(
//                                                                   user.uid)) {
//                                                             DBService()
//                                                                 .updateFollowing(
//                                                                     user.uid,
//                                                                     [],
//                                                                     dateAdded);
//                                                           }

//                                                           List allLikesIDs = [];
//                                                           likes.forEach(
//                                                               (element) {
//                                                             allLikesIDs.add(
//                                                                 element.id);
//                                                           });
//                                                           if (!allLikesIDs
//                                                               .contains(
//                                                                   user.uid)) {
//                                                             DBService()
//                                                                 .updateLikes(
//                                                                     user.uid,
//                                                                     [],
//                                                                     dateAdded);
//                                                           }
//                                                           // Adding notifications & saves document for the user/

//                                                           Funcs().showSnackBar(
//                                                             context,
//                                                             "You are logged in successfully!",
//                                                             "Okay",
//                                                             () {},
//                                                             "success",
//                                                           );
//                                                         } on FirebaseAuthException catch (e) {
//                                                           if (e.code ==
//                                                               'account-exists-with-different-credential') {
//                                                             // handle the error here
//                                                           } else if (e.code ==
//                                                               'invalid-credential') {
//                                                             // handle the error here
//                                                           }
//                                                         } catch (e) {
//                                                           // handle the error here
//                                                         }
//                                                       }

//                                                       return user;
//                                                     }

//                                                     return SafeArea(
//                                                       child: Scaffold(
//                                                         body: Container(
//                                                           padding: EdgeInsets
//                                                               .all(Insets()
//                                                                   .appPadding),
//                                                           height: size.height,
//                                                           width: size.width,
//                                                           child: Form(
//                                                             key: _formKey,
//                                                             child: Column(
//                                                               mainAxisAlignment:
//                                                                   MainAxisAlignment
//                                                                       .center,
//                                                               crossAxisAlignment:
//                                                                   CrossAxisAlignment
//                                                                       .center,
//                                                               children: [
//                                                                 const Spacer(),
//                                                                 Container(
//                                                                   width: 150,
//                                                                   height: 150,
//                                                                   child: Image
//                                                                       .asset(
//                                                                           "assets/img/logo.jpg"),
//                                                                 ),
//                                                                 HeadingText(
//                                                                   value:
//                                                                       "Vast Design",
//                                                                   color: Palette()
//                                                                       .primaryColor,
//                                                                   align: TextAlign
//                                                                       .center,
//                                                                   size: 28,
//                                                                   fontWeight:
//                                                                       FontWeight
//                                                                           .w500,
//                                                                 ),
//                                                                 const SizedBox(
//                                                                   height: 5,
//                                                                 ),
//                                                                 const Heading6(
//                                                                     value:
//                                                                         "Bundleless Imagination"),
//                                                                 SizedBox(
//                                                                   height: Insets()
//                                                                       .appPadding,
//                                                                 ),
//                                                                 const Heading3(
//                                                                     value:
//                                                                         "Continue with"),
//                                                                 SizedBox(
//                                                                   height: Insets()
//                                                                       .appPadding,
//                                                                 ),
//                                                                 GestureDetector(
//                                                                   onTap: () {
//                                                                     signInWithGoogle(
//                                                                         context:
//                                                                             context);
//                                                                   },
//                                                                   child:
//                                                                       Container(
//                                                                     decoration: BoxDecoration(
//                                                                         color: Colors
//                                                                             .red
//                                                                             .withOpacity(
//                                                                                 0.2),
//                                                                         borderRadius:
//                                                                             BorderRadius.circular(50)),
//                                                                     padding:
//                                                                         const EdgeInsets.all(
//                                                                             15),
//                                                                     child: Image
//                                                                         .asset(
//                                                                       "assets/img/google.png",
//                                                                       width: 32,
//                                                                       height:
//                                                                           32,
//                                                                     ),
//                                                                   ),
//                                                                 ),
//                                                                 const Spacer(),
//                                                                 Heading6(
//                                                                   value: AppData()
//                                                                       .splashText
//                                                                       .tr,
//                                                                   color: Palette()
//                                                                       .textColor,
//                                                                 ),
//                                                               ],
//                                                             ),
//                                                           ),
//                                                         ),
//                                                         bottomNavigationBar:
//                                                             Container(
//                                                           color: Colors.white,
//                                                           child: Row(
//                                                             children: [
//                                                               ValueListenableBuilder<
//                                                                       Box<
//                                                                           MySetting>>(
//                                                                   valueListenable:
//                                                                       Boxes.getMySettings()
//                                                                           .listenable(),
//                                                                   builder:
//                                                                       (context,
//                                                                           box,
//                                                                           _) {
//                                                                     final mySetting = box
//                                                                             .isEmpty
//                                                                         ? null
//                                                                         : box
//                                                                             .values
//                                                                             .firstWhere((element) =>
//                                                                                 true);

//                                                                     if (mySetting ==
//                                                                         null) {
//                                                                       return const Loading();
//                                                                     } else {
//                                                                       final currentLang =
//                                                                           mySetting
//                                                                               .language;

//                                                                       return PopupMenuButton<
//                                                                           String>(
//                                                                         child:
//                                                                             Padding(
//                                                                           padding: EdgeInsets.symmetric(
//                                                                               horizontal: Insets().appGap,
//                                                                               vertical: Insets().appGap),
//                                                                           child:
//                                                                               Row(
//                                                                             children: [
//                                                                               SizedBox(
//                                                                                 height: 20,
//                                                                                 width: 20,
//                                                                                 child: SvgPicture.asset(
//                                                                                   "assets/icons/flags/${currentLang == "Swahili" ? "tza" : currentLang == "English" ? "usa" : "usa"}.svg",
//                                                                                 ),
//                                                                               ),
//                                                                               const SizedBox(
//                                                                                 width: 5,
//                                                                               ),
//                                                                               Text(
//                                                                                 currentLang!,
//                                                                                 style: TextStyle(
//                                                                                   color: Palette().textColor,
//                                                                                   fontSize: 12,
//                                                                                 ),
//                                                                               ),
//                                                                             ],
//                                                                           ),
//                                                                         ),
//                                                                         onSelected:
//                                                                             (val) {
//                                                                           setState(
//                                                                               () {
//                                                                             language =
//                                                                                 val;
//                                                                           });

//                                                                           // update in UI
//                                                                           Funcs()
//                                                                               .changeLang(
//                                                                             lang: language.isEmpty
//                                                                                 ? currentLang
//                                                                                 : language,
//                                                                           );

//                                                                           // update In local db
//                                                                           mySetting.language = language.isEmpty
//                                                                               ? currentLang
//                                                                               : language;
//                                                                           mySetting
//                                                                               .save();

//                                                                           Funcs().showSnackBar(
//                                                                               context: context,
//                                                                               "Language switched to $language!",
//                                                                               "Okay",
//                                                                               () {},
//                                                                               "success");
//                                                                         },
//                                                                         itemBuilder:
//                                                                             (BuildContext
//                                                                                 context) {
//                                                                           return {
//                                                                             'Swahili',
//                                                                             'English'
//                                                                           }.map((String
//                                                                               choice) {
//                                                                             return PopupMenuItem<String>(
//                                                                               value: choice,
//                                                                               child: Row(
//                                                                                 children: [
//                                                                                   SizedBox(
//                                                                                     height: 20,
//                                                                                     width: 20,
//                                                                                     child: choice == "Swahili"
//                                                                                         ? SvgPicture.asset(
//                                                                                             "assets/icons/flags/tza.svg",
//                                                                                           )
//                                                                                         : choice == "English"
//                                                                                             ? SvgPicture.asset(
//                                                                                                 "assets/icons/flags/usa.svg",
//                                                                                               )
//                                                                                             : const Icon(
//                                                                                                 Icons.language,
//                                                                                                 size: 20,
//                                                                                                 color: Colors.redAccent,
//                                                                                               ),
//                                                                                   ),
//                                                                                   const SizedBox(
//                                                                                     width: 5,
//                                                                                   ),
//                                                                                   Text(
//                                                                                     choice.tr,
//                                                                                     style: TextStyle(
//                                                                                       color: Palette().textColor,
//                                                                                       fontSize: 12,
//                                                                                     ),
//                                                                                   ),
//                                                                                 ],
//                                                                               ),
//                                                                             );
//                                                                           }).toList();
//                                                                         },
//                                                                       );
//                                                                     }
//                                                                   }),
//                                                             ],
//                                                           ),
//                                                         ),
//                                                       ),
//                                                     );
//                                                   }
//                                                 });
//                                           }
//                                         });
//                                   }
//                                 });
//                           }
//                         });
//                   }
//                 });
//           }
//         });
//   }
// }
