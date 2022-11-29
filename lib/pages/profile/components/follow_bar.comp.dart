import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:skyconnect_starter/components/heading3.dart';
import 'package:skyconnect_starter/components/heading6.dart';
import 'package:skyconnect_starter/controllers/funcs_main.dart';
import 'package:skyconnect_starter/screens/followers.scrn.dart';
import 'package:skyconnect_starter/screens/followings.scrn.dart';
import 'package:skyconnect_starter/screens/posts.scrn.dart';
import 'package:skyconnect_starter/theme/design.theme.dart';

class FollowBar extends StatefulWidget {
  final int followers;
  final int following;
  final int posts;
  final String uid;
  const FollowBar(
      {Key? key,
      required this.followers,
      required this.following,
      required this.posts,
      required this.uid})
      : super(key: key);

  @override
  State<FollowBar> createState() => _FollowBarState();
}

class _FollowBarState extends State<FollowBar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: Insets().appGap),
      padding: const EdgeInsets.all(15),
      decoration: BoxDecoration(
        color: Colors.grey[200],
        borderRadius: BorderRadius.circular(Insets().appRadiusMid),
      ),
      child: Row(
        children: [
          Expanded(
              child: InkWell(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return PostsScreen(
                  uid: widget.uid,
                );
              }));
            },
            child: Column(
              children: [
                //  Heading3(value: Funcs().theKMBGenerator(widget.posts), fontWeight: FontWeight.w700),
                SizedBox(
                  height: Insets().appGap,
                ),
                Heading6(value: "Posts".tr),
              ],
            ),
          )),
          Expanded(
              child: InkWell(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return FollowersScreen(
                  uid: widget.uid,
                );
              }));
            },
            child: Column(
              children: [
                //   Heading3(value: Funcs().theKMBGenerator(widget.followers), fontWeight: FontWeight.w700,),
                SizedBox(
                  height: Insets().appGap,
                ),
                Heading6(value: "Followers".tr),
              ],
            ),
          )),
          Expanded(
              child: InkWell(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return FollowingScreen(
                  uid: widget.uid,
                );
              }));
            },
            child: Column(
              children: [
                //  Heading3(value: Funcs().theKMBGenerator(widget.following), fontWeight: FontWeight.w700),
                SizedBox(
                  height: Insets().appGap,
                ),
                Heading6(value: "Following".tr),
              ],
            ),
          )),
        ],
      ),
    );
  }
}
