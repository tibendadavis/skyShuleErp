import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pay/pay.dart';
//import 'package:skyconnect_starter/components/appbar_main.comp.dart';
//import 'package:skyconnect_starter/components/bash_icon_%20button.comp.dart';
//import 'package:skyconnect_starter/components/bash_tabbar.comp.dart';
import 'package:skyconnect_starter/components/heading3.dart';
import 'package:skyconnect_starter/components/heading4.dart';
import 'package:skyconnect_starter/components/heading5.dart';
import 'package:skyconnect_starter/controllers/funcs_app.dart';
import 'package:skyconnect_starter/pages/profile/tab_views/profile_posts.tab.view.tab.dart';
import 'package:skyconnect_starter/pages/profile/tab_views/profile_saves.tab.view.tab.dart';
import 'package:skyconnect_starter/screens/loading.scrn.dart';
import 'package:skyconnect_starter/screens/user_settings.scrn.dart';
import 'package:skyconnect_starter/services/data.dart';
import 'package:skyconnect_starter/theme/design.theme.dart';
import 'components/follow_bar.comp.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  final GlobalKey<ScaffoldState> _key = GlobalKey();

  final db = FirebaseFirestore.instance;
  User? currentUser = FirebaseAuth.instance.currentUser;

  bool showLoginCont = true;

  late PageController pageController;

  @override
  void initState() {
    super.initState();
    pageController = PageController(initialPage: _tabCurrentIndex);
  }

  int _tabCurrentIndex = 0;

  int? _buyingPoints;

  @override
  void dispose() {
    pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;

    return StreamBuilder<QuerySnapshot>(
        stream: db.collection("appData").snapshots(),
        builder: (context, snapshot) {
          if (snapshot.data == null) {
            return const LoadingScreen();
          } else {
            final appData = snapshot.data!.docs;
            final appDataPoints =
                appData.firstWhere((element) => element.id == "points");

            return StreamBuilder<QuerySnapshot>(
                stream: db.collection("users").snapshots(),
                builder: (context, snapshot) {
                  if (snapshot.data == null) {
                    return const LoadingScreen();
                  } else {
                    final allUsers = snapshot.data!.docs;
                    final user = allUsers.firstWhere(
                        (element) => element.id == currentUser!.uid);

                    return StreamBuilder<QuerySnapshot>(
                        stream: db.collection("collections").snapshots(),
                        builder: (context, snapshot) {
                          if (snapshot.data == null) {
                            return const LoadingScreen();
                          } else {
                            final collections = snapshot.data!.docs;
                            final myCollections = collections
                                .where((element) => element['uid'] == user.id)
                                .toList();

                            return DefaultTabController(
                              length: 3,
                              child: SafeArea(
                                child: Scaffold(
                                  key: _key,
                                  body: Stack(
                                    children: [
                                      Container(
                                        height: size.height,
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          children: [
                                            Container(
                                              height: size.height * .2,
                                              child: Stack(
                                                children: [
                                                  Container(
                                                    width: size.width,
                                                    height:
                                                        (size.height * .3) * .5,
                                                    child: user['coverURL'] ==
                                                            null
                                                        ? Image.asset(
                                                            "assets/img/cover.jpg",
                                                            fit: BoxFit.cover,
                                                          )
                                                        : Image.network(
                                                            user['coverURL'],
                                                            fit: BoxFit.cover,
                                                          ),
                                                  ),
                                                  Positioned(
                                                    top: 0,
                                                    child: Center(),
                                                    // child: MainAppBar(
                                                    //     backgroundColor: Colors.transparent,
                                                    //     showBorder: false,
                                                    //     leading: BashIconButton(
                                                    //       onTap: () => _key.currentState!.openDrawer(),
                                                    //       iconData: Icons.menu_open,
                                                    //       iconColor: Colors.grey,
                                                    //     ),
                                                    //     title: null,
                                                    //     actions: [
                                                    //       BashIconButton(
                                                    //         onTap: () {
                                                    //           Navigator.push(context, MaterialPageRoute(builder: (context) {
                                                    //             return UserSettingsScreen(uid: user.id,);
                                                    //           }));
                                                    //         },
                                                    //         iconData: Icons.settings,
                                                    //         iconColor: Colors.grey,
                                                    //       ),
                                                    //       SizedBox(width: Insets().appGap,),
                                                    //     ]
                                                    // ),
                                                  ),
                                                  Positioned(
                                                    left: size.width * .5 - 40,
                                                    top: size.height * .1,
                                                    child: Container(
                                                      decoration: BoxDecoration(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(40),
                                                        border: Border.all(
                                                          width: 2,
                                                          color: Palette()
                                                              .primaryColor,
                                                        ),
                                                      ),
                                                      child: CircleAvatar(
                                                        radius: 40,
                                                        backgroundImage:
                                                            Image.network(user[
                                                                    'avatarURL'])
                                                                .image,
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                            SizedBox(
                                              height: Insets().appPadding,
                                            ),
                                            InkWell(
                                              child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: [
                                                  Heading4(
                                                    value: user['username'],
                                                    fontWeight: FontWeight.w700,
                                                  ),
                                                  FuncsApp().getBadge(
                                                      role: user['role']),
                                                ],
                                              ),
                                            ),
                                            SizedBox(
                                              height: Insets().appGap,
                                            ),
                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: [
                                                Heading5(
                                                  value:
                                                      "${user['points']} Points",
                                                  fontWeight: FontWeight.w700,
                                                ),
                                                const SizedBox(
                                                  width: 5,
                                                ),
                                                InkWell(
                                                    onTap: () {
                                                      showModalBottomSheet(
                                                          context: context,
                                                          builder: (context) {
                                                            return Container(
                                                              padding: EdgeInsets
                                                                  .all(Insets()
                                                                      .appPadding),
                                                              child: Column(
                                                                children: [
                                                                  const Heading3(
                                                                      value:
                                                                          "Buy Points"),
                                                                  const Divider(),
                                                                  TextFormField(
                                                                    initialValue: _buyingPoints ==
                                                                            null
                                                                        ? null
                                                                        : _buyingPoints
                                                                            .toString(),
                                                                    decoration:
                                                                        InputDecoration(
                                                                      hintText:
                                                                          "Minimum ${appDataPoints['minimumBuy']} points"
                                                                              .tr,
                                                                      labelText:
                                                                          "Enter Amount of Credits",
                                                                      helperText:
                                                                          "Buy more than ${appDataPoints['vipAmount']} points to get a badge"
                                                                              .tr
                                                                              .tr,
                                                                    ),
                                                                    onChanged:
                                                                        (val) {
                                                                      setState(
                                                                          () {
                                                                        _buyingPoints =
                                                                            int.parse(val);
                                                                      });
                                                                    },
                                                                  ),
                                                                  SizedBox(
                                                                    height: Insets()
                                                                        .appPadding,
                                                                  ),
                                                                  if (_buyingPoints !=
                                                                          null &&
                                                                      _buyingPoints! >
                                                                          appDataPoints[
                                                                              'minimumBuy'])
                                                                    GooglePayButton(
                                                                      paymentConfigurationAsset:
                                                                          'default_payment_profile_google_pay.json',
                                                                      paymentItems: [
                                                                        PaymentItem(
                                                                          label:
                                                                              'Total'.tr,
                                                                          amount:
                                                                              "${appDataPoints['price'] * _buyingPoints}",
                                                                          status:
                                                                              PaymentItemStatus.final_price,
                                                                        )
                                                                      ],
                                                                      type: GooglePayButtonType
                                                                          .pay,
                                                                      margin: const EdgeInsets
                                                                              .only(
                                                                          top:
                                                                              15.0),
                                                                      onPaymentResult:
                                                                          (paymentResult) {
                                                                        debugPrint(
                                                                            paymentResult.toString());
                                                                        //todo
                                                                      },
                                                                      loadingIndicator:
                                                                          const Center(
                                                                        child:
                                                                            CircularProgressIndicator(),
                                                                      ),
                                                                    ),
                                                                ],
                                                              ),
                                                            );
                                                          });
                                                    },
                                                    child: Heading5(
                                                      value: "Top-Up".tr,
                                                      color: Palette()
                                                          .primaryColor,
                                                    )),
                                              ],
                                            ),
                                            SizedBox(
                                              height: Insets().appPadding,
                                            ),
                                            StreamBuilder<QuerySnapshot>(
                                                stream: db
                                                    .collection("followers")
                                                    .snapshots(),
                                                builder: (context, snapshot) {
                                                  if (snapshot.data == null) {
                                                    return const LoadingScreen();
                                                  } else {
                                                    final allFollowers =
                                                        snapshot.data!.docs;
                                                    final myFollowers =
                                                        allFollowers
                                                            .firstWhere(
                                                                (element) =>
                                                                    element
                                                                        .id ==
                                                                    user.id);
                                                    final List myFollowerIDs =
                                                        myFollowers[
                                                            'followersIDs'];

                                                    return StreamBuilder<
                                                            QuerySnapshot>(
                                                        stream: db
                                                            .collection(
                                                                "followings")
                                                            .snapshots(),
                                                        builder: (context,
                                                            snapshot) {
                                                          if (snapshot.data ==
                                                              null) {
                                                            return const LoadingScreen();
                                                          } else {
                                                            final allFollowings =
                                                                snapshot
                                                                    .data!.docs;
                                                            final myFollowing =
                                                                allFollowings.firstWhere(
                                                                    (element) =>
                                                                        element
                                                                            .id ==
                                                                        user.id);
                                                            final List
                                                                myFollowingIDs =
                                                                myFollowing[
                                                                    'followingIDs'];

                                                            return FollowBar(
                                                              uid: user.id,
                                                              followers:
                                                                  myFollowerIDs
                                                                      .length,
                                                              following:
                                                                  myFollowingIDs
                                                                      .length,
                                                              posts:
                                                                  myCollections
                                                                      .length,
                                                            );
                                                          }
                                                        });
                                                  }
                                                }),
                                            SizedBox(
                                              height: Insets().appGap,
                                            ),
                                            // BashTabbar(
                                            //     onChanged: (val) {
                                            //       setState(() {
                                            //         _tabCurrentIndex = val;
                                            //       });
                                            //       pageController.jumpToPage(_tabCurrentIndex);
                                            //     },
                                            //     currentIndex: _tabCurrentIndex,
                                            //     items: const <String>[
                                            //       "Posts",
                                            //       "Saves",
                                            //     ]
                                            // ),
                                            Expanded(
                                              child: PageView(
                                                controller: pageController,
                                                children: [
                                                  ProfilePostsTabView(
                                                    uid: user.id,
                                                  ),
                                                  ProfileSavesTabView(
                                                    uid: user.id,
                                                  ),
                                                ],
                                              ),
                                            )
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                  drawer: Drawer(
                                    // Add a ListView to the drawer. This ensures the user can scroll
                                    // through the options in the drawer if there isn't enough vertical
                                    // space to fit everything.
                                    child: ListView(
                                      // Important: Remove any padding from the ListView.
                                      padding: EdgeInsets.zero,
                                      children: [
                                        DrawerHeader(
                                          decoration: BoxDecoration(
                                            color: Palette().primaryColor,
                                          ),
                                          child: const Center(
                                              child: Text('Vast Design')),
                                        ),
                                        ListTile(
                                          title: Text('App Name'.tr),
                                          subtitle: Text(AppData().appName.tr),
                                          onTap: () {
                                            // Update the state of the app.
                                            // ...
                                          },
                                        ),
                                        ListTile(
                                          title: Text('Version'.tr),
                                          subtitle: const Text("1.0.0"),
                                          onTap: () {
                                            // Update the state of the app.
                                            // ...
                                          },
                                        ),
                                        ListTile(
                                          title: Text('Beta Testing'.tr),
                                          subtitle: Text(
                                            "Download".tr,
                                            style: TextStyle(
                                              color: Palette().primaryColor,
                                            ),
                                          ),
                                          onTap: () {
                                            // Update the state of the app.
                                            // ...
                                          },
                                        ),
                                        const Divider(),
                                        ListTile(
                                          title: Text('Logout'.tr),
                                          onTap: () {},
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
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
