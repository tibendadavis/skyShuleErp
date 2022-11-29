import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
// import 'package:skyconnect_starter/components/appbar_screen.comp.dart';
// import 'package:skyconnect_starter/components/following_card.comp.dart';
import 'package:skyconnect_starter/components/notfound.wdg.dart';
import 'package:skyconnect_starter/screens/loading.scrn.dart';
import 'package:skyconnect_starter/screens/user.scrn.dart';
import 'package:skyconnect_starter/theme/design.theme.dart';

class FollowingScreen extends StatefulWidget {
  final String uid;
  const FollowingScreen({
    Key? key,
    required this.uid,
  }) : super(key: key);

  @override
  State<FollowingScreen> createState() => _FollowingScreenState();
}

class _FollowingScreenState extends State<FollowingScreen> {
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
            final user = users.firstWhere(
                (element) => element["email"] == currentUser!.email);

            return StreamBuilder<QuerySnapshot>(
                stream: db.collection("followings").snapshots(),
                builder: (context, snapshot) {
                  if (snapshot.data == null) {
                    return const LoadingScreen();
                  } else {
                    final allFollows = snapshot.data!.docs;
                    final myFollow = allFollows
                        .firstWhere((element) => element.id == widget.uid);
                    final myFollowingIDs = myFollow['followingIDs'];

                    return Scaffold(
                      body: SafeArea(
                        child: Stack(
                          children: [
                            Container(
                              margin:
                                  EdgeInsets.only(top: Insets().appBarHeight),
                              height: size.height,
                              child: myFollowingIDs.isNotEmpty
                                  ? NotFoundWDG(value: "No Following!".tr)
                                  : SingleChildScrollView(
                                      child: Column(
                                        children: [
                                          if (myFollowingIDs.isEmpty)
                                            const NotFoundWDG(),
                                          ...List.generate(
                                              myFollowingIDs.length, (index) {
                                            final followingUser =
                                                users.firstWhere((element) =>
                                                    element.id ==
                                                    myFollowingIDs[index]);
                                            return Center();
                                            // return FollowingCard(
                                            //   uid: myFollowingIDs[index],
                                            //   onTap: () {
                                            //     Navigator.push(context, MaterialPageRoute(builder: (context) {
                                            //       return UserScreen(uid: myFollowingIDs[index]);
                                            //     }));
                                            //   },
                                            //   type: 'following',
                                            //   avatarURL: followingUser['avatarURL'],
                                            //   username: followingUser['username'],
                                            //   role: followingUser['role'],
                                            // );
                                          }),
                                        ],
                                      ),
                                    ),
                            ),
                            // Positioned(
                            //   child: ScreenAppBar(
                            //     title: "${widget.uid == user.id ? "My " : ""}Following",
                            //     actions: const [

                            //     ],
                            //   ),
                            // )
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
