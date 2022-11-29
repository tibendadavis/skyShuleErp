import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
//import 'package:skyconnect_starter/components/appbar_screen.comp.dart';
import 'package:skyconnect_starter/components/notfound.wdg.dart';
//import 'package:skyconnect_starter/components/notification_card.comp.dart';
import 'package:skyconnect_starter/controllers/funcs_main.dart';
import 'package:skyconnect_starter/database/firestore.dart';
import 'package:skyconnect_starter/screens/loading.scrn.dart';
import 'package:skyconnect_starter/theme/design.theme.dart';

class NotificationScreen extends StatefulWidget {
  const NotificationScreen({
    Key? key,
  }) : super(key: key);

  @override
  State<NotificationScreen> createState() => _NotificationScreenState();
}

class _NotificationScreenState extends State<NotificationScreen> {
  final db = FirebaseFirestore.instance;
  User? currentUser = FirebaseAuth.instance.currentUser;

  bool notifyCleared = false;

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;

    return StreamBuilder<QuerySnapshot>(
        stream: db.collection("notifications").snapshots(),
        builder: (context, snapshot) {
          if (snapshot.data == null) {
            return const LoadingScreen();
          } else {
            final allNotifications = snapshot.data!.docs;
            final notifications = allNotifications
                .where((element) => element.id == currentUser!.uid);
            final notification = notifications.firstWhere((element) => true);
            final List<Map> notifs =
                notification['notifs'].toList().cast<Map>();
            notifs.sort((a, b) {
              var adate = a['dateAdded'];
              var bdate = b['dateAdded'];
              return bdate.compareTo(
                  adate); //to get the order other way just switch `adate & bdate`
            });

            return StreamBuilder<QuerySnapshot>(
                stream: db.collection("users").snapshots(),
                builder: (context, snapshot) {
                  if (snapshot.data == null) {
                    return const LoadingScreen();
                  } else {
                    final users = snapshot.data!.docs;
                    final user = users.firstWhere(
                        (element) => element["email"] == currentUser!.email);

                    return Scaffold(
                      body: SafeArea(
                        child: Stack(
                          children: [
                            Container(
                              margin:
                                  EdgeInsets.only(top: Insets().appBarHeight),
                              height: size.height,
                              child: notifs.isEmpty
                                  ? NotFoundWDG(value: "No notification!".tr)
                                  : ListView(
                                      children: [
                                        ...List.generate(notifs.length,
                                            (index) {
                                          return Center();
                                          // return NotificationCard(
                                          //   id: notifs[index]['id'],
                                          //   itemID: notification.id,
                                          //   from: user['role'],
                                          // );
                                        })
                                      ],
                                    ),
                            ),
                            Positioned(
                              child: Center(),
                              // child: ScreenAppBar(
                              //   title: "Notifications",
                              //   actions: [
                              //     IconButton(
                              //         onPressed: () {
                              //           List notifsTemp =
                              //               notification['notifs'];
                              //           for (var element
                              //               in List.from(notifsTemp)) {
                              //             if (element['status'] == "Read") {
                              //               notifsTemp.remove(element);
                              //             }
                              //           }

                              //           final notifs = notifsTemp;
                              //           DBService().updateNotifications(
                              //               currentUser!.uid,
                              //               notifs,
                              //               DateTime.now());

                              //           Funcs().showSnackBar(
                              //               context,
                              //               "All read notifications are cleared!",
                              //               "Okay",
                              //               () {},
                              //               "success");
                              //         },
                              //         icon: Icon(
                              //           Icons.clear_all,
                              //           color: Palette().textColor,
                              //         ))
                              //   ],
                              // ),
                            )
                          ],
                        ),
                      ),
                    );
                  }
                });
          }
        });
  }
}
