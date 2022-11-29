import 'package:badges/badges.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:get/get.dart';
import 'package:skyconnect_starter/components/loading.comp.dart';
import 'package:skyconnect_starter/components/notfound.wdg.dart';
import 'package:skyconnect_starter/const.dart';
import 'package:skyconnect_starter/screens/image_view.srcn.dart';
import 'package:skyconnect_starter/screens/loading.scrn.dart';
import 'package:skyconnect_starter/screens/notification.screen.dart';
import 'package:skyconnect_starter/theme/design.theme.dart';

class SavesPage extends StatefulWidget {
  const SavesPage({Key? key}) : super(key: key);

  @override
  State<SavesPage> createState() => _SavesPageState();
}

class _SavesPageState extends State<SavesPage> {
  final db = FirebaseFirestore.instance;
  User? currentUser = FirebaseAuth.instance.currentUser;

  final _formKey = GlobalKey<FormState>();

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;

    return StreamBuilder<QuerySnapshot>(
        stream: db.collection("users").snapshots(),
        builder: (context, snapshot) {
          if (snapshot.data == null) {
            return const LoadingScreen();
          } else {
            final allUsers = snapshot.data!.docs;
            final user = allUsers
                .firstWhere((element) => element.id == currentUser!.uid);

            return StreamBuilder<QuerySnapshot>(
                stream: db.collection("collections").snapshots(),
                builder: (context, snapshot) {
                  if (snapshot.data == null) {
                    return const LoadingScreen();
                  } else {
                    final collections = snapshot.data!.docs;

                    return SafeArea(
                      child: Scaffold(
                        body: Stack(
                          children: [
                            Container(
                              margin:
                                  EdgeInsets.only(top: Insets().appBarHeight),
                              height: size.height,
                              width: size.width,
                              padding: EdgeInsets.all(Insets().appGap),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  SizedBox(
                                    height: Insets().inputSize,
                                    child: TextFormField(
                                      decoration: InputDecoration(
                                        hintText: "Search",
                                        prefixIcon: IconButton(
                                          onPressed: () {},
                                          icon: const Icon(Icons.search),
                                        ),
                                        suffixIcon: IconButton(
                                          onPressed: () {},
                                          icon: const Icon(Icons
                                              .settings_input_composite_sharp),
                                        ),
                                      ),
                                      validator: (val) =>
                                          val!.isEmpty ? "Really :(".tr : null,
                                      onChanged: (val) {},
                                    ),
                                  ),
                                  SizedBox(
                                    height: Insets().appGap,
                                  ),
                                  Expanded(
                                      child: collections.isEmpty
                                          ? const NotFoundWDG()
                                          : GridView.count(
                                              mainAxisSpacing: Insets().appGap,
                                              crossAxisSpacing: Insets().appGap,
                                              crossAxisCount: 2,
                                              // childAspectRatio: (lastCols[] / itemHeight),
                                              controller: ScrollController(
                                                  keepScrollOffset: false),
                                              shrinkWrap: true,
                                              scrollDirection: Axis.vertical,
                                              children: [
                                                ...List.generate(
                                                    collections.length,
                                                    (index) => InkWell(
                                                          onTap: () {
                                                            Navigator.push(
                                                                context,
                                                                MaterialPageRoute(
                                                                    builder:
                                                                        (context) {
                                                              return ImageViewScreen(
                                                                avatarURL: user[
                                                                    'username'],
                                                                colID:
                                                                    collections[
                                                                            index]
                                                                        .id,
                                                                username: user[
                                                                    'username'],
                                                              );
                                                            }));
                                                          },
                                                          child: ClipRRect(
                                                            borderRadius: BorderRadius
                                                                .circular(Insets()
                                                                    .appRadiusMid),
                                                            child: collections[
                                                                            index]
                                                                        [
                                                                        'imageURL'] ==
                                                                    null
                                                                ? Image.asset(
                                                                    "assets/img/blank_image.png")
                                                                : CachedNetworkImage(
                                                                    imageUrl: collections[
                                                                            index]
                                                                        [
                                                                        'imageURL'],
                                                                    placeholder:
                                                                        (context,
                                                                                url) =>
                                                                            const SpinKitCubeGrid(
                                                                      color: Colors
                                                                          .white,
                                                                    ),
                                                                    errorWidget: (context,
                                                                            url,
                                                                            error) =>
                                                                        Image.asset(
                                                                            "assets/img/blank_image.jpeg"),
                                                                  ),
                                                          ),
                                                        ))
                                              ],
                                            ))
                                ],
                              ),
                            ),
                            Positioned(
                              top: 0,
                              child: Center(),
                              // child: MainAppBar(
                              //     showBorder: false,
                              //     leading: Image.asset("assets/img/logo.jpg", height: 30, width: 30,),
                              //     title: "My Saves",
                              //     actions: [
                              //       StreamBuilder<QuerySnapshot>(
                              //           stream: db.collection("notifications").snapshots(),
                              //           builder: (context, snapshot) {
                              //             if (snapshot.data == null) {
                              //               return const Loading();
                              //             } else {
                              //               final allNotifications = snapshot.data!.docs.where((element) => element.id == currentUser!.uid.toString());
                              //               final notifications = allNotifications.where((element) => element.id == currentUser!.uid.toString());
                              //               final notification = notifications.firstWhere((element) => true);
                              //               final List<Map> notifsTemp = notification['notifs'].toList().cast<Map>();
                              //               final List<Map> notifs = notifsTemp.where((element) => element['status'] == "Unread").toList().cast<Map>();

                              //               return InkWell(
                              //                 onTap: () {
                              //                   Navigator.push(context, MaterialPageRoute(builder: (context) {
                              //                     return const NotificationScreen();
                              //                   }));
                              //                 },
                              //                 child: Badge(
                              //                   showBadge: notifs.isEmpty
                              //                       ? false
                              //                       : true,
                              //                   badgeContent: Text(notifs.length.toString(), style: const TextStyle(color: Colors.white)),
                              //                   child: Container(
                              //                     height: 35,
                              //                     width: 35,
                              //                     decoration: BoxDecoration(
                              //                         border: Border.all(
                              //                           width: 1,
                              //                           color: Palette().borderColor,
                              //                         ),
                              //                         borderRadius: BorderRadius.circular(20)
                              //                     ),
                              //                     child: Icon(Icons.notifications, color: Colors.grey[700],),
                              //                   ),
                              //                 ),
                              //               );
                              //             }
                              //           }
                              //       ),
                              //     ]
                              // ),
                            ),
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
