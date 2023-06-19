import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:skyconnect_starter/components/heading5.dart';
import 'package:skyconnect_starter/controllers/globalVariables.dart';
import 'package:skyconnect_starter/controllers/responsive.dart';

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

  // bool _menu = false;
  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 1.5,
      child: Container(
        padding: EdgeInsets.only(
          top: Insets().appPadding / 2,
          bottom: Insets().appPadding / 4,
          right: Responsive.isDesktop(context) ? 10 : 5,
          left: Responsive.isDesktop(context) ? 15 : 5,
        ),
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
                              _drawersize = 60;
                              globalData.menu = true;
                            } else {
                              _drawersize = 250;
                              globalData.menu = false;
                            }
                          });
                          widget.onTap!([_drawersize, globalData.menu]);
                        },
                        child: Icon(
                          Icons.menu,
                          size: 19,
                        )),
                  ),
            !Responsive.isDesktop(context) ? Offstage() : const Spacer(),
            Expanded(
              child: SizedBox(
                height: Insets().smallInputSize,
                child: Container(
                  padding: EdgeInsets.only(
                    left: Responsive.isDesktop(context)
                        ? Insets().appPadding
                        : 10,
                    right: Responsive.isDesktop(context)
                        ? Insets().appPadding / 2
                        : 0,
                  ),
                  decoration: BoxDecoration(
                      color: Palette().primaryColorLight,
                      borderRadius: BorderRadius.circular(Insets().appRadius)),
                  child: TextFormField(
                      textAlignVertical: TextAlignVertical.center,
                      style: GoogleFonts.openSans(
                          fontSize: 17, fontWeight: FontWeight.w600),
                      decoration: InputDecoration(
                          border: InputBorder.none,
                          suffixIcon: Icon(
                            Icons.search,
                            size: 20,
                          ),
                          hintStyle: GoogleFonts.openSans(
                              fontSize: 17, fontWeight: FontWeight.w400),
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
            InkWell(onTap: () {}, child: Icon(Icons.message_outlined)),
            SizedBox(
              width: Insets().appGap,
            ),
            PopupMenuButton(
              child: Container(
                width: 111,
                alignment: Alignment.centerRight,
                child: Row(
                  children: [
                    CircleAvatar(
                      backgroundColor: Colors.transparent,
                      radius: Insets().appRadiusMid,
                      child:
                          ClipOval(child: Image.asset("assets/img/avatar.jpg")),
                    ),
                    SizedBox(
                      width: Insets().appGap / 2,
                    ),
                    Heading5(
                      value: "Admin",
                      fontWeight: FontWeight.bold,
                    ),
                    Icon(
                      Icons.keyboard_arrow_down,
                    ),
                  ],
                ),
              ),
              itemBuilder: (context) => [
                PopupMenuItem(
                    value: 1,
                    child: Row(
                      children: [
                        Icon(Icons.screen_lock_landscape_rounded,
                            color: Palette().primaryColor, size: 20),
                        SizedBox(
                          width: 10,
                        ),
                        Heading5(
                          value: "Lock Screen",
                        ),
                      ],
                    )),
                PopupMenuItem(
                    value: 2,
                    child: Row(
                      children: [
                        Icon(Icons.lock,
                            color: Palette().primaryColor, size: 20),
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
                } else if (value == 2) {
                } else if (value == 3) {
                  Navigator.pushReplacementNamed(context, "/");
                }
              },
            )
          ],
        ),
      ),
    );
  }
}
