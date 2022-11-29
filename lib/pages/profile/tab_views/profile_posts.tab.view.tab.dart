import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
//import 'package:skyconnect_starter/clean_image_card.comp.dart';
//import 'package:skyconnect_starter/components/image_card.comp.dart';
import 'package:skyconnect_starter/components/notfound.wdg.dart';
import 'package:skyconnect_starter/screens/image_view.srcn.dart';
import 'package:skyconnect_starter/screens/loading.scrn.dart';
import 'package:skyconnect_starter/theme/design.theme.dart';

class ProfilePostsTabView extends StatefulWidget {
  final String uid;
  const ProfilePostsTabView({Key? key, required this.uid}) : super(key: key);

  @override
  State<ProfilePostsTabView> createState() => _ProfilePostsTabViewState();
}

class _ProfilePostsTabViewState extends State<ProfilePostsTabView> {
  final db = FirebaseFirestore.instance;
  User? currentUser = FirebaseAuth.instance.currentUser;

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<QuerySnapshot>(
        stream: db.collection("users").snapshots(),
        builder: (context, snapshot) {
          if (snapshot.data == null) {
            return const LoadingScreen();
          } else {
            final allUsers = snapshot.data!.docs;
            final user = allUsers
                .firstWhere((element) => element.id == currentUser!.uid);
            final profileUser =
                allUsers.firstWhere((element) => element.id == widget.uid);

            return StreamBuilder<QuerySnapshot>(
                stream: db.collection("collections").snapshots(),
                builder: (context, snapshot) {
                  if (snapshot.data == null) {
                    return const LoadingScreen();
                  } else {
                    final collections = snapshot.data!.docs;
                    final myCollections = collections
                        .where((element) => element['uid'] == profileUser.id)
                        .toList();

                    return Container(
                      padding: EdgeInsets.symmetric(
                        vertical: Insets().appGap,
                        horizontal: Insets().appGap,
                      ),
                      child: myCollections.isEmpty
                          ? const NotFoundWDG()
                          : MasonryGridView.count(
                              crossAxisCount: 3,
                              mainAxisSpacing: Insets().appGap,
                              crossAxisSpacing: Insets().appGap,
                              itemCount: myCollections.length,
                              itemBuilder: (context, index) {
                                final cardUser = allUsers.firstWhere((el) =>
                                    el.id == myCollections[index]['uid']);
                                return Center();
                                // return CleanImageCard(
                                //   onTap: () {
                                //     Navigator.push(context, MaterialPageRoute(builder: (context) {
                                //       return ImageViewScreen(
                                //         avatarURL: cardUser['avatarURL'],
                                //         colID: myCollections[index].id,
                                //         username: cardUser['username'],
                                //       );
                                //     }));
                                //   },
                                //   colID: myCollections[index].id,
                                //   imageURL: myCollections[index]['imageURLs'][0],
                                // );
                              },
                            ),
                    );
                  }
                });
          }
        });
  }
}
