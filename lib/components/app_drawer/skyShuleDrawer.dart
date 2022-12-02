import 'dart:html';

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
  final bool menu;
  final Function onTap;
  const skyShuleDrawer(
      {super.key, this.size, required this.onTap, required this.menu});

  @override
  State<skyShuleDrawer> createState() => _skyShuleDrawerState();
}

class _skyShuleDrawerState extends State<skyShuleDrawer> {
  late double _drawerSize;
  bool test = false;

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
        "selected": false
      },
      {
        "size": widget.size!,
        "value": "Users",
        "iconData": Icons.manage_accounts_outlined,
        "iconData2": Icons.keyboard_arrow_down_rounded,
        "selected": false,
        "submenu1": ["Students", manageStudents()],
        "submenu2": ["Parents"],
        "submenu3": ["Teachers"],
        "submenu4": ["Supporting Staff"],
      },
      {
        "size": widget.size!,
        "value": "Classes",
        "iconData": Icons.class_outlined,
        "selected": false
      },
      {
        "size": widget.size!,
        "value": "Streams",
        "iconData": Icons.stream_outlined,
        "selected": false
      },
      {
        "size": widget.size!,
        "value": "Subjects",
        "iconData": Icons.subject_outlined,
        "iconData2": Icons.keyboard_arrow_down_rounded,
        "selected": false,
        "submenu1": ["List of Students"],
        "submenu2": ["Class Subject"],
        "submenu3": ["Section Subject Teacher"],
        "submenu4ex": "Teaching Tools",
        "submenu4.1": ["Syllabus"],
        "submenu4.2": ["Scheme of Work"],
        "submenu4.3": ["Lesson Plan"],
        "submenu4.4": ["Class Journal"],
        "submenu4.5": ["Syllabus Reports"],
      },
      {
        "size": widget.size!,
        "value": "Syllabus",
        "iconData": Icons.outbox_outlined,
        "iconData2": Icons.keyboard_arrow_down_rounded,
        "selected": false,
        "submenu1": ["Students"],
        "submenu2": ["Parents"],
        "submenu3": ["Teachers"],
        "submenu4": ["Supporting Staff"],
      },
      {
        "size": widget.size!,
        "value": "Grading",
        "iconData": Icons.grading_outlined,
        "iconData2": Icons.keyboard_arrow_down_rounded,
        "selected": false,
        "submenu1": ["Default Grading"],
        "submenu2": ["Special Grade name"],
        "submenu3": ["Special Grading"],
      },
      {
        "size": widget.size!,
        "value": "Terms",
        "iconData": Icons.dashboard_rounded,
        "selected": false
      },
      {
        "size": widget.size!,
        "value": "Exams",
        "iconData": Icons.dashboard_rounded,
        "iconData2": Icons.keyboard_arrow_down_rounded,
        "selected": false,
        "submenu1ex": "Setting",
        "submenu2": ["Exam Schedule"],
        "submenu3ex": "Reports",
        "submenu4": ["Minor School Exams"],
        "submenu1.1": ["Exam Groups"],
        "submenu1.2": ["School Exams"],
        "submenu1.3": ["Class Allocation"],
        "submenu3.1": ["Single Reports"],
        "submenu3.2": ["Combined Reports"],
        "submenu3.3": ["CA Report"],
        "submenu3.4": ["Reports Created"],
      },
      {
        "size": widget.size!,
        "value": "Class Routine",
        "iconData": Icons.route_outlined,
        "selected": false,
      },
      {
        "size": widget.size!,
        "value": "Attendance",
        "iconData": Icons.dashboard_rounded,
        "iconData2": Icons.keyboard_arrow_down_rounded,
        "selected": false,
        "submenu1": ["Student Attendance"],
        "submenu2": ["Employee Attendance"],
        "submenu3": ["Exam Attendance"],
        "submenu4": ["Teacher on Duty"],
        "submenu5": ["Attendance Report"],
      },
      {
        "size": widget.size!,
        "value": "News & Announcements",
        "iconData": Icons.newspaper_outlined,
        "selected": false
      },
      {
        "size": widget.size!,
        "value": "Hostel Management",
        "iconData": Icons.house_outlined,
        "iconData2": Icons.keyboard_arrow_down_rounded,
        "selected": false,
        "submenu1": ["Hostel"],
        "submenu2": ["Members"],
      },
      {
        "size": widget.size!,
        "value": "Library",
        "iconData": Icons.library_add_check_outlined,
        "iconData2": Icons.keyboard_arrow_down_rounded,
        "selected": false,
        "submenu1": ["Members"],
        "submenu2": ["Books"],
        "submenu3": ["Issue"],
        "submenu4ex": "Library Report",
        "submenu4.1": ["General Report"],
        "submenu4.2": ["Other Report"],
      },
      {
        "size": widget.size!,
        "value": "eResources",
        "iconData": Icons.dashboard_rounded,
        "iconData2": Icons.keyboard_arrow_down_rounded,
        "selected": false,
        "submenu1": ["Files"],
        "submenu2": ["Live Studies"],
        "submenu3": ["Class Notes"],
        "submenu4": ["Online Exams"],
        "submenu5": ["Home Packages"],
        "submenu6": ["Online Discussion"],
      },
      {
        "size": widget.size!,
        "value": "Settings",
        "iconData": Icons.settings,
        "selected": false
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
                  (index) => Container(
                        child: DrawerItem(
                            size: items[index]["size"],
                            selected: items[index]["selected"],
                            value: items[index]["value"],
                            iconData: items[index]["iconData"],
                            iconData2: items[index]["iconData2"],
                            submenu1: items[index]["submenu1"],
                            submenu2: items[index]["submenu2"],
                            submenu3: items[index]["submenu3"],
                            submenu4: items[index]["submenu4"],
                            submenu5: items[index]["submenu5"],
                            submenu6: items[index]["submenu6"],
                            submenu11: items[index]["submenu1.1"],
                            submenu12: items[index]["submenu1.2"],
                            submenu13: items[index]["submenu1.3"],
                            submenu14: items[index]["submenu1.4"],
                            submenu31: items[index]["submenu3.1"],
                            submenu32: items[index]["submenu3.2"],
                            submenu33: items[index]["submenu3.3"],
                            submenu34: items[index]["submenu3.4"],
                            submenu41: items[index]["submenu4.1"],
                            submenu42: items[index]["submenu4.2"],
                            submenu43: items[index]["submenu4.3"],
                            submenu44: items[index]["submenu4.4"],
                            submenu45: items[index]["submenu4.5"],
                            link: items[index]["link"],
                            submenu1ex: items[index]["submenu1ex"],
                            submenu3ex: items[index]["submenu3ex"],
                            submenu4ex: items[index]["submenu4ex"],
                            onHover: (val) {
                              if (widget.menu)
                                setState(() {
                                  if (val) {
                                    _drawerSize = 250;
                                    items[index]
                                        .update("selected", (value) => true);
                                  } else {
                                    _drawerSize = 90;
                                    items[index]
                                        .update("selected", (value) => false);
                                  }
                                });
                              if (!widget.menu)
                                setState(() {
                                  items[index]
                                      .update("selected", (value) => true);
                                  _drawerSize = 250;
                                });
                              widget.onTap(_drawerSize);
                            },
                            onTap: (val) {
                              setState(() {
                                items[index].update("selected", (value) => val);
                              });
                            }),
                      ))
            ],
          ),
        ),
      ),
    );
  }
}
