import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:graphic/graphic.dart';
import 'package:skyconnect_starter/components/heading5.dart';
import 'package:skyconnect_starter/components/heading6.dart';
import 'package:skyconnect_starter/controllers/responsive.dart';
import 'package:skyconnect_starter/pages/home/home.pg.dart';
import 'package:skyconnect_starter/screens/user_profile.scrn.dart';
import 'package:skyconnect_starter/theme/design.theme.dart';

class header extends StatefulWidget {
  final Function? onTap;
  header({
    super.key,
    this.onTap,
  });

  @override
  State<header> createState() => _headerState();
}

class _headerState extends State<header> {
  double _drawersize = 250;
  var _userProfile;
  bool _menu = false;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          !Responsive.isDesktop(context)
              ? Offstage()
              : SizedBox(
                  width: 35,
                  height: 35,
                  child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Palette().primaryColor,
                          padding: EdgeInsets.all(0),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(60))),
                      onPressed: () {
                        setState(() {
                          if (_drawersize == 250) {
                            _drawersize = 90;
                            _menu = true;
                          } else {
                            _drawersize = 250;
                            _menu = false;
                          }
                        });
                        widget.onTap!([_drawersize, _menu]);
                      },
                      child: Icon(
                        Icons.menu,
                        size: 19,
                      )),
                ),
          !Responsive.isDesktop(context) ? Offstage() : const Spacer(),
          Expanded(
            child: SizedBox(
              height: Insets().smallInputSize + 5,
              child: Container(
                padding: EdgeInsets.only(
                  left: Insets().appPadding,
                  right: Insets().appPadding,
                ),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(Insets().appRadius)),
                child: TextFormField(
                    decoration: const InputDecoration(
                        border: InputBorder.none,
                        suffixIcon: Icon(
                          Icons.search,
                          size: 20,
                        ),
                        hintText: "Search here...")),
              ),
            ),
          ),
          SizedBox(
            width: Insets().appGap,
          ),
          Icon(Icons.notifications_outlined),
          SizedBox(
            width: Insets().appGap,
          ),
          Icon(Icons.message_outlined),
          SizedBox(
            width: Insets().appGap,
          ),
          CircleAvatar(
            radius: Insets().appRadiusMid,
          ),
          SizedBox(
            width: Insets().appGap,
          ),
          Heading5(
            value: "Admin",
            fontWeight: FontWeight.bold,
          ),
          PopupMenuButton(
            child: Container(
              width: 20,
              alignment: Alignment.centerRight,
              child: Icon(
                Icons.keyboard_arrow_down,
              ),
            ),
            itemBuilder: (context) => [
              PopupMenuItem(
                  value: 1,
                  child: Row(
                    children: [
                      Icon(Icons.grid_view_rounded,
                          color: Palette().primaryColor, size: 20),
                      SizedBox(
                        width: 10,
                      ),
                      Heading5(
                        value: "View Profile",
                      ),
                    ],
                  )),
              PopupMenuItem(
                  value: 2,
                  child: Row(
                    children: [
                      Icon(Icons.lock, color: Palette().primaryColor, size: 20),
                      SizedBox(
                        width: 10,
                      ),
                      Heading5(
                        value: "Change Password",
                      ),
                    ],
                  )),
              PopupMenuItem(
                  value: 3,
                  child: Row(
                    children: [
                      Icon(Icons.model_training_rounded,
                          color: Palette().primaryColor, size: 20),
                      SizedBox(
                        width: 10,
                      ),
                      Heading5(
                        value: "Training",
                      ),
                    ],
                  )),
              PopupMenuItem(
                  value: 4,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Heading5(
                        value: "Log out",
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Icon(Icons.logout_rounded,
                          color: Palette().primaryColor, size: 20),
                    ],
                  ))
            ],
            offset: Offset(0, 35),
            color: Colors.white,
            elevation: 1.5,
            onSelected: (value) {
              if (value == 1) {
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => userProfile()));
              } else if (value == 2) {
              } else if (value == 3) {
              } else if (value == 4) {}
            },
          )
        ],
      ),
    );
  }
}
