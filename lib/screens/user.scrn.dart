import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
//import 'package:skyconnect_starter/components/appbar_screen.comp.dart';
import 'package:skyconnect_starter/components/heading4.dart';
import 'package:skyconnect_starter/components/heading5.dart';
import 'package:skyconnect_starter/controllers/funcs_app.dart';
import 'package:skyconnect_starter/pages/profile/components/follow_bar.comp.dart';
import 'package:skyconnect_starter/pages/profile/tab_views/profile_posts.tab.view.tab.dart';
import 'package:skyconnect_starter/screens/loading.scrn.dart';
import 'package:skyconnect_starter/theme/design.theme.dart';

class UserScreen extends StatefulWidget {
  final String uid;
  const UserScreen({
    Key? key,
    required this.uid,
  }) : super(key: key);

  @override
  State<UserScreen> createState() => _UserScreenState();
}

class _UserScreenState extends State<UserScreen> {
  final db = FirebaseFirestore.instance;
  User? currentUser = FirebaseAuth.instance.currentUser;

  bool notifyCleared = false;

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

            return StreamBuilder<QuerySnapshot>(
                stream: db.collection("collections").snapshots(),
                builder: (context, snapshot) {
                  if (snapshot.data == null) {
                    return const LoadingScreen();
                  } else {
                    final collections = snapshot.data!.docs;
                    final myCollections = collections
                        .where((element) => element['uid'] == currentUser!.uid)
                        .toList();

                    return Scaffold(
                      body: SafeArea(
                        child: Stack(
                          children: [
                            Container(
                              margin:
                                  EdgeInsets.only(top: Insets().appBarHeight),
                              height: size.height,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  SizedBox(
                                    height: Insets().appPadding,
                                  ),
                                  Container(
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(45),
                                        border: Border.all(
                                          width: 2,
                                          color: Palette().primaryColor,
                                        )),
                                    child: CircleAvatar(
                                      radius: 45,
                                      backgroundImage:
                                          Image.network(user['avatarURL'])
                                              .image,
                                    ),
                                  ),
                                  SizedBox(
                                    height: Insets().appPadding,
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Heading4(
                                        value: user['username'],
                                        fontWeight: FontWeight.w700,
                                      ),
                                      FuncsApp().getBadge(role: user['role']),
                                    ],
                                  ),
                                  SizedBox(
                                    height: Insets().appGap,
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Icon(
                                        Icons.add,
                                        color: Palette().primaryColor,
                                      ),
                                      SizedBox(
                                        width: Insets().appGap,
                                      ),
                                      InkWell(
                                          onTap: () {},
                                          child: Heading5(
                                            value: "Follow".tr,
                                            color: Palette().primaryColor,
                                          )),
                                    ],
                                  ),
                                  SizedBox(
                                    height: Insets().appPadding,
                                  ),
                                  FollowBar(
                                    uid: user.id,
                                    followers: 3600,
                                    following: 100,
                                    posts: 500,
                                  ),
                                  SizedBox(
                                    height: Insets().appGap,
                                  ),
                                  Expanded(
                                    child: ProfilePostsTabView(
                                      uid: profileUser.id,
                                    ),
                                  )
                                ],
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
                    );
                  }
                });
          }
        });
  }
}
