import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
//import 'package:skyconnect_starter/clean_image_card.comp.dart';
import 'package:skyconnect_starter/components/loading.comp.dart';
import 'package:skyconnect_starter/components/notfound.wdg.dart';
import 'package:skyconnect_starter/screens/image_view.srcn.dart';
import 'package:skyconnect_starter/screens/loading.scrn.dart';
import 'package:skyconnect_starter/theme/design.theme.dart';

class ProfileSavesTabView extends StatefulWidget {
  final String uid;
  const ProfileSavesTabView({Key? key, required this.uid}) : super(key: key);

  @override
  State<ProfileSavesTabView> createState() => _ProfileSavesTabViewState();
}

class _ProfileSavesTabViewState extends State<ProfileSavesTabView> {
  final db = FirebaseFirestore.instance;
  User? currentUser = FirebaseAuth.instance.currentUser;

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

                    return StreamBuilder<QuerySnapshot>(
                        stream: db.collection("saves").snapshots(),
                        builder: (context, snapshot) {
                          if (snapshot.data == null) {
                            return const Loading();
                          } else {
                            final allSaves = snapshot.data!.docs;
                            final mySave = allSaves
                                .firstWhere((element) => element.id == user.id);
                            final mySaveColIDs = mySave['colIDs'];

                            return Container(
                              padding: EdgeInsets.symmetric(
                                vertical: Insets().appGap,
                                horizontal: Insets().appGap,
                              ),
                              child: mySaveColIDs.isEmpty
                                  ? const NotFoundWDG()
                                  : MasonryGridView.count(
                                      crossAxisCount: 3,
                                      mainAxisSpacing: Insets().appGap,
                                      crossAxisSpacing: Insets().appGap,
                                      itemCount: mySaveColIDs.length,
                                      itemBuilder: (context, index) {
                                        final cardCollection =
                                            collections.firstWhere((element) =>
                                                element.id ==
                                                mySaveColIDs[index]);
                                        final cardUser = allUsers.firstWhere(
                                            (el) =>
                                                el.id == cardCollection['uid']);
                                        return Center();
                                        // return CleanImageCard(
                                        //   onTap: () {
                                        //     Navigator.push(context, MaterialPageRoute(builder: (context) {
                                        //       return ImageViewScreen(
                                        //         avatarURL: cardUser['avatarURL'],
                                        //         colID: cardCollection.id,
                                        //         username: cardUser['username'],
                                        //       );
                                        //     }));
                                        //   },
                                        //   colID: cardCollection.id,
                                        //   imageURL: cardCollection['imageURLs'][0],
                                        // );
                                      },
                                    ),
                            );
                          }
                        });
                  }
                });
          }
        });
  }
}
