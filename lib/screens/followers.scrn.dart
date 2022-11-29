import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
// import 'package:skyconnect_starter/components/appbar_screen.comp.dart';
// import 'package:skyconnect_starter/components/follower_card.comp.dart';
import 'package:skyconnect_starter/components/notfound.wdg.dart';
import 'package:skyconnect_starter/screens/loading.scrn.dart';
import 'package:skyconnect_starter/screens/user.scrn.dart';
import 'package:skyconnect_starter/theme/design.theme.dart';

class FollowersScreen extends StatefulWidget {
  final String uid;
  const FollowersScreen({
    Key? key,
    required this.uid,
  }) : super(key: key);

  @override
  State<FollowersScreen> createState() => _FollowersScreenState();
}

class _FollowersScreenState extends State<FollowersScreen> {
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
                stream: db.collection("followers").snapshots(),
                builder: (context, snapshot) {
                  if (snapshot.data == null) {
                    return const LoadingScreen();
                  } else {
                    final allFollows = snapshot.data!.docs;
                    final myFollow = allFollows
                        .firstWhere((element) => element.id == widget.uid);
                    final myFollowerIDs = myFollow['followersIDs'];

                    return Scaffold(
                      body: SafeArea(
                        child: Stack(
                          children: [
                            Container(
                              margin:
                                  EdgeInsets.only(top: Insets().appBarHeight),
                              height: size.height,
                              child: myFollowerIDs.isNotEmpty
                                  ? NotFoundWDG(value: "No Followers!".tr)
                                  : SingleChildScrollView(
                                      child: Column(
                                        children: [
                                          if (myFollowerIDs.isEmpty)
                                            const NotFoundWDG(),
                                          ...List.generate(myFollowerIDs.length,
                                              (index) {
                                            final followerUser =
                                                users.firstWhere((element) =>
                                                    element.id ==
                                                    myFollowerIDs[index]);
                                            return Center();
                                            // return FollowerCard(
                                            //   uid: myFollowerIDs[index],
                                            //   onTap: () {
                                            //     Navigator.push(context, MaterialPageRoute(builder: (context) {
                                            //       return UserScreen(uid: myFollowerIDs[index]);
                                            //     }));
                                            //   },
                                            //   type: 'follower',
                                            //   avatarURL: followerUser['avatarURL'],
                                            //   username: followerUser['username'],
                                            //   role: followerUser['role'],
                                            // );
                                          }),
                                        ],
                                      ),
                                    ),
                            ),
                            // Positioned(
                            //   child: ScreenAppBar(
                            //     title: "${widget.uid == user.id ? "My " : ""}Followers",
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
