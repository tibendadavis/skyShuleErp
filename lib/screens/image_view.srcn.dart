import 'package:cached_network_image/cached_network_image.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
//import 'package:skyconnect_starter/components/appbar_screen.comp.dart';
import 'package:skyconnect_starter/components/heading2.dart';
import 'package:skyconnect_starter/components/heading4.dart';
//import 'package:skyconnect_starter/components/like_share.comp.dart';
import 'package:skyconnect_starter/components/loading.comp.dart';
import 'package:skyconnect_starter/const.dart';
import 'package:skyconnect_starter/controllers/funcs_main.dart';
import 'package:skyconnect_starter/database/firestore.dart';
import 'package:skyconnect_starter/screens/loading.scrn.dart';
import 'package:skyconnect_starter/screens/user.scrn.dart';
import 'package:skyconnect_starter/theme/design.theme.dart';
//import 'package:reaction_askany/reaction_askany.dart';
import 'package:path_provider/path_provider.dart' as path_provider;

class ImageViewScreen extends StatefulWidget {
  final String? colID;
  final String username;
  final String avatarURL;
  const ImageViewScreen(
      {Key? key, required this.username, this.colID, required this.avatarURL})
      : super(key: key);

  @override
  State<ImageViewScreen> createState() => _ImageViewScreenState();
}

class _ImageViewScreenState extends State<ImageViewScreen> {
  final db = FirebaseFirestore.instance;
  User? currentUser = FirebaseAuth.instance.currentUser;

  final _formKey = GlobalKey<FormState>();

  bool showComments = false;
  String? _comment;

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
            final users = snapshot.data!.docs;
            final user =
                users.firstWhere((element) => element.id == currentUser!.uid);

            return StreamBuilder<QuerySnapshot>(
                stream: db.collection("collections").snapshots(),
                builder: (context, snapshot) {
                  if (snapshot.data == null) {
                    return const LoadingScreen();
                  } else {
                    final collections = snapshot.data!.docs;
                    final collection = widget.colID == null
                        ? null
                        : collections.firstWhere(
                            (element) => element.id == widget.colID);

                    return Scaffold(
                      body: SafeArea(
                        child: Stack(
                          children: [
                            Container(
                              margin:
                                  EdgeInsets.only(top: Insets().appBarHeight),
                              padding: EdgeInsets.all(Insets().appGap),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  ListTile(
                                    leading: CircleAvatar(
                                      backgroundImage:
                                          Image.network(widget.avatarURL).image,
                                    ),
                                    title: Text(widget.username),
                                  ),
                                  SizedBox(
                                    height: Insets().appGap,
                                  ),
                                  Container(
                                    height: size.height * .45,
                                    child: Center(
                                      child: collection == null
                                          ? const Loading()
                                          : Stack(
                                              children: [
                                                ClipRRect(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          Insets()
                                                              .appRadiusMid),
                                                  child: CachedNetworkImage(
                                                    fit: BoxFit.cover,
                                                    height: size.height * .45,
                                                    width: size.width,
                                                    imageUrl:
                                                        collection['imageURLs']
                                                            [0],
                                                    placeholder: (context,
                                                            url) =>
                                                        const SpinKitCubeGrid(
                                                      color: Colors.white,
                                                    ),
                                                    errorWidget: (context, url,
                                                            error) =>
                                                        Image.asset(
                                                            "assets/img/blank_image.jpeg"),
                                                  ),
                                                ),
                                                Positioned(
                                                  bottom: 0,
                                                  right: 0,
                                                  child: StreamBuilder<
                                                          QuerySnapshot>(
                                                      stream: db
                                                          .collection("likes")
                                                          .snapshots(),
                                                      builder:
                                                          (context, snapshot) {
                                                        if (snapshot.data ==
                                                            null) {
                                                          return const Loading();
                                                        } else {
                                                          final allLikes =
                                                              snapshot
                                                                  .data!.docs;
                                                          final likes = allLikes
                                                              .where((element) =>
                                                                  element['colIDs']
                                                                      .contains(
                                                                          widget
                                                                              .colID));
                                                          final myLike = allLikes
                                                              .firstWhere(
                                                                  (element) =>
                                                                      element
                                                                          .id ==
                                                                      user.id);
                                                          List myLikeColIDs =
                                                              myLike['colIDs'];

                                                          return InkWell(
                                                              onTap: () {
                                                                if (myLikeColIDs
                                                                    .contains(widget
                                                                        .colID)) {
                                                                  myLikeColIDs
                                                                      .remove(widget
                                                                          .colID);
                                                                  DBService().updateSingleField(
                                                                      currentUser!
                                                                          .uid,
                                                                      {
                                                                        "colIDs":
                                                                            myLikeColIDs
                                                                      },
                                                                      "likes");
                                                                } else {
                                                                  myLikeColIDs
                                                                      .add(widget
                                                                          .colID);
                                                                  DBService().updateSingleField(
                                                                      currentUser!
                                                                          .uid,
                                                                      {
                                                                        "colIDs":
                                                                            myLikeColIDs
                                                                      },
                                                                      "likes");
                                                                }
                                                              },
                                                              child: Center());
                                                        }
                                                      }),
                                                ),
                                              ],
                                            ),
                                    ),
                                  ),
                                  SizedBox(
                                    height: Insets().appPadding,
                                  ),
                                  const Heading2(value: "Prompt"),
                                  SizedBox(
                                    height: Insets().appGap,
                                  ),
                                  Heading4(value: collection!['prompt']),
                                ],
                              ),
                            ),
                            Positioned(child: Center()
                                // child: ScreenAppBar(
                                //   leading: IconButton(onPressed: () async {
                                //     Navigator.pop(context);
                                //   }, icon: const Icon(Icons.arrow_back,)),
                                //   showBorder: false,
                                //   title: null,
                                //   actions: [
                                //     StreamBuilder<QuerySnapshot>(
                                //         stream: db.collection("appData").snapshots(),
                                //         builder: (context, snapshot) {
                                //           if (snapshot.data == null) {
                                //             return const LoadingScreen();
                                //           } else {
                                //             final appData = snapshot.data!.docs;
                                //             final appDataImages = appData.firstWhere((element) => element.id == "images");

                                //             return TextButton.icon(onPressed: () async {
                                //               var copywriteUser = users.firstWhere((element) => element.id == collection['uid']);
                                //               var folder = "Downloads";
                                //               var watermarkImage = appDataImages['logo'];
                                //               final imagePath = await Funcs().downloadImage(
                                //                 link: collection['imageURL'],
                                //                 title: collection.id,
                                //                 folder: folder,
                                //                 waterMarkText: "@${copywriteUser['username']}",
                                //                 watermarkImage: watermarkImage,
                                //               ).whenComplete(() => Funcs().showSnackBar(context, "Image downloaded successfully", "actionLabel", () { }, "success",));
                                //               print(imagePath);
                                //             }, label: const Text("Download"), icon: const Icon(Icons.sim_card_download_outlined));
                                //           }
                                //         }
                                //     ),
                                //   ],
                                // ),
                                ),
                            Positioned(
                              bottom: 0,
                              child: StreamBuilder<QuerySnapshot>(
                                  stream: db.collection("comments").snapshots(),
                                  builder: (context, snapshot) {
                                    if (snapshot.data == null) {
                                      return const LoadingScreen();
                                    } else {
                                      final allComments = snapshot.data!.docs;
                                      final comments = allComments
                                          .where((element) =>
                                              element['colID'] == collection.id)
                                          .toList();

                                      return Container(
                                        decoration: BoxDecoration(
                                          color: Colors.white,
                                          borderRadius: BorderRadius.only(
                                            topLeft: Radius.circular(
                                                Insets().appRadiusMid),
                                            topRight: Radius.circular(
                                                Insets().appRadiusMid),
                                          ),
                                          boxShadow: [
                                            BoxShadow(
                                              color:
                                                  Colors.grey.withOpacity(0.5),
                                              spreadRadius: 2,
                                              blurRadius: 5,
                                              offset: const Offset(0,
                                                  3), // changes position of shadow
                                            ),
                                          ],
                                        ),
                                        padding:
                                            EdgeInsets.all(Insets().appGap),
                                        // height: Insets().inputSize+(Insets().appGap*2),
                                        width: size.width,
                                        child: Column(
                                          children: [
                                            Row(
                                              children: [
                                                Expanded(
                                                  child: Form(
                                                    key: _formKey,
                                                    child: SizedBox(
                                                      height:
                                                          Insets().inputSize,
                                                      child: TextFormField(
                                                        decoration:
                                                            InputDecoration(
                                                          hintText: "Comment",
                                                          suffixIcon:
                                                              IconButton(
                                                            onPressed: () {
                                                              if (_formKey
                                                                  .currentState!
                                                                  .validate()) {
                                                                DBService().updateComments(
                                                                    Funcs()
                                                                        .getRandomID(),
                                                                    collection
                                                                        .id,
                                                                    currentUser!
                                                                        .uid,
                                                                    _comment!,
                                                                    [],
                                                                    DateTime
                                                                        .now());
                                                              }
                                                            },
                                                            icon: const Icon(
                                                                Icons.send),
                                                          ),
                                                        ),
                                                        onChanged: (val) {
                                                          _comment = val;
                                                        },
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                                IconButton(
                                                    onPressed: () {
                                                      setState(() {
                                                        showComments =
                                                            !showComments;
                                                      });
                                                    },
                                                    icon: Icon(
                                                      showComments
                                                          ? Icons
                                                              .keyboard_arrow_down
                                                          : Icons
                                                              .keyboard_arrow_up,
                                                      size: 30,
                                                    ))
                                              ],
                                            ),
                                            SizedBox(
                                              height: Insets().appPadding,
                                            ),
                                            ...List.generate(
                                                showComments
                                                    ? (comments.length > 5
                                                        ? 5
                                                        : comments.length)
                                                    : (comments.length > 2
                                                        ? 2
                                                        : comments.length),
                                                (index) {
                                              var commenter = users.firstWhere(
                                                  (element) =>
                                                      element.id ==
                                                      comments[index]['uid']);

                                              return Container(
                                                margin: EdgeInsets.only(
                                                    bottom: Insets().appGap),
                                                child: Row(
                                                  children: [
                                                    InkWell(
                                                      onTap: () {
                                                        Navigator.push(context,
                                                            MaterialPageRoute(
                                                                builder:
                                                                    (context) {
                                                          return UserScreen(
                                                            uid: commenter.id,
                                                          );
                                                        }));
                                                      },
                                                      child: CircleAvatar(
                                                        radius: 18,
                                                        backgroundImage: Image
                                                                .network(commenter[
                                                                    'avatarURL'])
                                                            .image,
                                                      ),
                                                    ),
                                                    SizedBox(
                                                      width: Insets().appGap,
                                                    ),
                                                    Container(
                                                      padding: const EdgeInsets
                                                          .symmetric(
                                                        vertical: 12.0,
                                                        horizontal: 20.0,
                                                      ),
                                                      decoration: BoxDecoration(
                                                        color: Palette()
                                                            .primaryColor
                                                            .withOpacity(0.2),
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(30),
                                                      ),
                                                      child: Text(
                                                        comments[index]
                                                            ['content'],
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              );
                                            })
                                          ],
                                        ),
                                      );
                                    }
                                  }),
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
