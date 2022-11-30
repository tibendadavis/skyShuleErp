import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
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
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: [
          !Responsive.isDesktop(context)
              ? Offstage()
              : ElevatedButton(
                  onPressed: () {
                    setState(() {
                      if (_drawersize == 250) {
                        _drawersize = 90;
                      } else {
                        _drawersize = 250;
                      }
                    });
                    widget.onTap!(_drawersize);
                  },
                  child: Icon(Icons.menu)),
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
          InkWell(
            onTap: () {
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (context) => userProfile()));
            },
            child: CircleAvatar(
              radius: Insets().appRadiusMid,
            ),
          ),
          SizedBox(
            width: Insets().appGap,
          ),
          Heading6(value: "Admin"),
          Icon(Icons.arrow_drop_down_rounded),
        ],
      ),
    );
  }
}
