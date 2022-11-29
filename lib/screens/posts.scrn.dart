import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
//import 'package:skyconnect_starter/components/appbar_screen.comp.dart';
//import 'package:skyconnect_starter/components/image_view.comp.dart';
import 'package:skyconnect_starter/components/notfound.wdg.dart';
import 'package:skyconnect_starter/screens/loading.scrn.dart';
import 'package:skyconnect_starter/services/data.dart';
import 'package:skyconnect_starter/theme/design.theme.dart';

class PostsScreen extends StatefulWidget {
  final String uid;
  const PostsScreen({
    Key? key,
    required this.uid,
  }) : super(key: key);

  @override
  State<PostsScreen> createState() => _PostsScreenState();
}

class _PostsScreenState extends State<PostsScreen> {
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
                stream: db.collection("collections").snapshots(),
                builder: (context, snapshot) {
                  if (snapshot.data == null) {
                    return const LoadingScreen();
                  } else {
                    final allCollections = snapshot.data!.docs;
                    final collections = allCollections
                        .where((element) => element['uid'] == widget.uid)
                        .toList();

                    return DefaultTabController(
                      length: AppData().generationStyles.length,
                      child: Scaffold(
                        body: SafeArea(
                          child: Stack(
                            children: [
                              Container(
                                padding: EdgeInsets.all(Insets().appGap),
                                margin:
                                    EdgeInsets.only(top: Insets().appBarHeight),
                                height: size.height,
                                child: collections.isEmpty
                                    ? NotFoundWDG(value: "No Posts!".tr)
                                    : SingleChildScrollView(
                                        child: Column(
                                          children: [
                                            Container(
                                              height: Insets().inputSize,
                                              child: TabBar(
                                                isScrollable: true,
                                                tabs: [
                                                  ...List.generate(
                                                      AppData()
                                                          .generationStyles
                                                          .length,
                                                      (index) => Tab(
                                                          text: AppData()
                                                                  .generationStyles[
                                                              index])),
                                                ],
                                              ),
                                            ),
                                            SizedBox(
                                              height: Insets().appPadding,
                                            ),
                                            SingleChildScrollView(
                                              child: Column(
                                                children: [
                                                  if (collections.isEmpty)
                                                    const NotFoundWDG(),
                                                  ...List.generate(
                                                      collections.length,
                                                      (index) => Center()
                                                      // ImageView(colID: collections[index].id,)
                                                      )
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                              ),
                              Positioned(
                                child: Center(),
                                // child: ScreenAppBar(
                                //   title: "Posts by ${user['username']}",
                                //   actions: const [

                                //   ],
                                // ),
                              )
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
