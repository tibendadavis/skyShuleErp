import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:skyconnect_starter/components/app_drawer/drawer_item.comp.dart';
import 'package:skyconnect_starter/components/heading1.dart';
import 'package:skyconnect_starter/components/heading3.dart';
import 'package:skyconnect_starter/components/heading4.dart';
import 'package:skyconnect_starter/components/heading5.dart';
import 'package:skyconnect_starter/components/heading6.dart';
import 'package:skyconnect_starter/pages/home/home.pg.dart';
import 'package:skyconnect_starter/screens/manage_students.scrn.dart';
import 'package:skyconnect_starter/theme/design.theme.dart';

class skyShuleDrawer extends StatefulWidget {
  final double? size;
  final Function onTap;
  const skyShuleDrawer({super.key, this.size, required this.onTap});

  @override
  State<skyShuleDrawer> createState() => _skyShuleDrawerState();
}

class _skyShuleDrawerState extends State<skyShuleDrawer> {
  late double _drawerSize;

  @override
  void initState() {
    _drawerSize = widget.size!;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    late List<Map> items = [
      {
        "size": widget.size!,
        "link": HomePage(),
        "value": "Dashboard",
        "iconData": Icons.dashboard_rounded,
        "iconData2": Icons.keyboard_arrow_down_rounded
      },
      {
        "size": widget.size!,
        "link": manageStudents(),
        "value": "Manage Students",
        "iconData": Icons.manage_accounts_outlined,
        "iconData2": Icons.keyboard_arrow_down_rounded
      },
      {
        "size": widget.size!,
        "link": "",
        "value": "Classes",
        "iconData": Icons.class_outlined,
      },
      {
        "size": widget.size!,
        "link": "",
        "value": "Streams",
        "iconData": Icons.stream_outlined,
      },
      {
        "size": widget.size!,
        "link": "",
        "value": "Subjects",
        "iconData": Icons.subject_outlined,
        "iconData2": Icons.keyboard_arrow_down_rounded
      },
      {
        "size": widget.size!,
        "link": "",
        "value": "Syllabus",
        "iconData": Icons.outbox_outlined,
        "iconData2": Icons.keyboard_arrow_down_rounded
      },
      {
        "size": widget.size!,
        "link": "",
        "value": "Grading",
        "iconData": Icons.grading_outlined,
        "iconData2": Icons.keyboard_arrow_down_rounded
      },
      {
        "size": widget.size!,
        "link": "",
        "value": "Terms",
        "iconData": Icons.dashboard_rounded,
      },
      {
        "size": widget.size!,
        "link": "",
        "value": "Exams",
        "iconData": Icons.dashboard_rounded,
        "iconData2": Icons.keyboard_arrow_down_rounded
      },
      {
        "size": widget.size!,
        "link": "",
        "value": "Class Routine",
        "iconData": Icons.route_outlined,
        "iconData2": Icons.keyboard_arrow_down_rounded
      },
      {
        "size": widget.size!,
        "link": "",
        "value": "Attendance",
        "iconData": Icons.dashboard_rounded,
        "iconData2": Icons.keyboard_arrow_down_rounded
      },
      {
        "size": widget.size!,
        "link": "",
        "value": "News & Announcements",
        "iconData": Icons.newspaper_outlined,
      },
      {
        "size": widget.size!,
        "link": "",
        "value": "Hostel Management",
        "iconData": Icons.house_outlined,
        "iconData2": Icons.keyboard_arrow_down_rounded
      },
      {
        "size": widget.size!,
        "link": "",
        "value": "Library",
        "iconData": Icons.library_add_check_outlined,
        "iconData2": Icons.keyboard_arrow_down_rounded
      },
      {
        "size": widget.size!,
        "link": "",
        "value": "eResources",
        "iconData": Icons.dashboard_rounded,
        "iconData2": Icons.keyboard_arrow_down_rounded
      },
      {
        "size": widget.size!,
        "link": "",
        "value": "Settings",
        "iconData": Icons.settings,
      }
    ];
    var size = MediaQuery.of(context).size;
    return Drawer(
      elevation: 1,
      child: Container(
        width: widget.size,
        color: Palette().primaryColor,
        padding: EdgeInsets.only(
            top: Insets().appPadding / 2, bottom: Insets().appPadding / 2),
        child: Expanded(
          child: ListView(
            children: [
              Center(
                child: CircleAvatar(
                  radius: 35,
                  backgroundColor: Palette().textColor,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              ...List.generate(
                  items.length,
                  (index) => DrawerItem(
                        size: items[index]["size"],
                        value: items[index]["value"],
                        iconData: items[index]["iconData"],
                        iconData2: items[index]["iconData2"],
                        onTap: (val) {
                          // if (items[index]["link"] != "")
                          //   Navigator.of(context).push(MaterialPageRoute(
                          //       builder: (context) => items[index]["link"]));
                          setState(() {
                            if (val) {
                              _drawerSize = 250;
                            } else {
                              _drawerSize = 90;
                            }
                          });
                          widget.onTap(_drawerSize);
                        },
                      ))
            ],
          ),
        ),
      ),
    );
  }
}
