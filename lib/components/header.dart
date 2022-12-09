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
            width: 150,
            height: 37,
            child: Container(
              decoration: BoxDecoration(
                  color: Palette().primaryColorExtraLight,
                  borderRadius: BorderRadius.circular(Insets().appGap + 4)),
              child: Expanded(
                child: DropdownButton(
                  items: [
                    DropdownMenuItem(
                        value: "View Profile",
                        child: ListTile(
                          dense: true,
                          onTap: () {
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => userProfile()));
                          },
                          contentPadding: EdgeInsets.all(0),
                          minVerticalPadding: 0.0,
                          minLeadingWidth: 5,
                          horizontalTitleGap: 10,
                          title: Heading5(
                            value: "View Profile",
                          ),
                          leading: Icon(Icons.grid_view_rounded,
                              color: Palette().primaryColor, size: 20),
                        )),
                    DropdownMenuItem(
                        child: ListTile(
                          dense: true,
                          onTap: () {},
                          contentPadding: EdgeInsets.all(0),
                          minVerticalPadding: 0.0,
                          minLeadingWidth: 5,
                          horizontalTitleGap: 10,
                          title: Heading5(
                            value: "Change Password",
                          ),
                          leading: Icon(Icons.lock,
                              color: Palette().primaryColor, size: 20),
                        ),
                        value: "Change Password"),
                    DropdownMenuItem(
                        child: ListTile(
                          dense: true,
                          onTap: () {},
                          contentPadding: EdgeInsets.all(0),
                          minVerticalPadding: 0.0,
                          minLeadingWidth: 5,
                          horizontalTitleGap: 10,
                          title: Heading5(
                            value: "Training",
                          ),
                          leading: Icon(Icons.model_training_rounded,
                              color: Palette().primaryColor, size: 20),
                        ),
                        value: "Training"),
                    DropdownMenuItem(
                        child: ListTile(
                          dense: true,
                          onTap: () {},
                          contentPadding: EdgeInsets.all(0),
                          minVerticalPadding: 0.0,
                          minLeadingWidth: 5,
                          horizontalTitleGap: 10,
                          title: Heading5(
                            value: "Log out",
                          ),
                          trailing: Icon(Icons.logout,
                              color: Palette().primaryColor, size: 20),
                        ),
                        value: "Log out"),
                  ],
                  value: null,
                  isExpanded: true,
                  iconSize: 25,
                  elevation: 1,
                  icon: Icon(Icons.keyboard_arrow_down_outlined),
                  underline: SizedBox(),
                  dropdownColor: Colors.white,
                  borderRadius:
                      BorderRadius.circular(Insets().appRadiusMin + 2),
                  hint: Container(
                    //  alignment: Alignment.centerRight,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        CircleAvatar(
                          radius: Insets().appRadiusMid,
                        ),
                        SizedBox(
                          width: Insets().appGap + 4,
                        ),
                        Heading5(
                          value: "Admin",
                          fontWeight: FontWeight.bold,
                        ),
                      ],
                    ),
                  ),
                  onChanged: ((value) {
                    if (value is String) {
                      setState(() {
                        _userProfile = value;
                      });
                    }
                  }),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
