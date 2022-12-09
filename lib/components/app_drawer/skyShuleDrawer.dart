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
import 'package:skyconnect_starter/screens/classRoutine.scrn.dart';
import 'package:skyconnect_starter/screens/classSubjects.scrn.dart';
import 'package:skyconnect_starter/screens/classes.scrn.dart';
import 'package:skyconnect_starter/screens/defaultGrading.scrn.dart';
import 'package:skyconnect_starter/screens/listsubjects.scrn.dart';
import 'package:skyconnect_starter/screens/manage_students.scrn.dart';
import 'package:skyconnect_starter/screens/parents.scrn.dart';
import 'package:skyconnect_starter/screens/specialGrading.scrn.dart';
import 'package:skyconnect_starter/screens/streamSubjectTeacher.scrn.dart';
import 'package:skyconnect_starter/screens/streams.scrn.dart';
import 'package:skyconnect_starter/screens/supportingStaff.scrn.dart';
import 'package:skyconnect_starter/screens/teacher.scrn.dart';
import 'package:skyconnect_starter/screens/terms.scrn.dart';
import 'package:skyconnect_starter/theme/design.theme.dart';

class skyShuleDrawer extends StatefulWidget {
  final double? size;
  final bool? menu;
  final bool? selected;
  final Function? onTap;
  const skyShuleDrawer(
      {super.key, this.size, this.onTap, this.menu, this.selected});

  @override
  State<skyShuleDrawer> createState() => _skyShuleDrawerState();
}

class _skyShuleDrawerState extends State<skyShuleDrawer> {
  late double _drawerSize;
  var test = false;

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
        "selected": [false]
      },
      {
        "size": widget.size!,
        "value": "Users",
        "iconData": Icons.manage_accounts_outlined,
        "iconData2": Icons.keyboard_arrow_down_rounded,
        "selected": [false],
        "submenu1": ["Students", manageStudents(), Icons.person],
        "submenu2": ["Parents", parents(), Icons.supervisor_account_outlined],
        "submenu3": ["Teachers", teachers(), Icons.person],
        "submenu4": [
          "Supporting Staff",
          supportingStaff(),
          Icons.groups_outlined
        ],
      },
      {
        "size": widget.size!,
        "value": "Class",
        "link": classes(),
        "iconData": Icons.class_outlined,
        "selected": [false]
      },
      {
        "size": widget.size!,
        "value": "Streams",
        "link": streams(),
        "iconData": Icons.stream_outlined,
        "selected": [false]
      },
      {
        "size": widget.size!,
        "value": "Subjects",
        "iconData": Icons.subject_outlined,
        "iconData2": Icons.keyboard_arrow_down_rounded,
        "selected": [false],
        "submenu1": [
          "List of Subjects",
          listSubjects(),
          Icons.subject_outlined
        ],
        "submenu2": ["Class Subject", classSubjects(), Icons.subject_outlined],
        "submenu3": [
          "Stream Subject Teacher",
          streamSubjectTeacher(),
          Icons.subject_outlined
        ],
        "submenu4ex": "Teaching Tools",
        "submenu4.1": ["Syllabus", null, Icons.view_list_outlined],
        "submenu4.2": ["Scheme of Work", null, Icons.my_library_books],
        "submenu4.3": ["Lesson Plan", null, Icons.my_library_books],
        "submenu4.4": ["Class Journal", null, Icons.my_library_books],
        "submenu4.5": ["Syllabus Reports", null, Icons.my_library_books],
      },
      // {
      //   "size": widget.size!,
      //   "value": "Syllabus",
      //   "iconData": Icons.outbox_outlined,
      //   "iconData2": Icons.keyboard_arrow_down_rounded,
      //   "selected": [false],
      //   "submenu1": ["Students", null, Icons.person],
      //   "submenu2": ["Parents", null, Icons.supervisor_account_outlined],
      //   "submenu3": ["Teachers", null, Icons.person],
      //   "submenu4": ["Supporting Staff", null, Icons.groups_outlined],
      // },
      {
        "size": widget.size!,
        "value": "Grading",
        "iconData": Icons.grading_outlined,
        "iconData2": Icons.keyboard_arrow_down_rounded,
        "selected": [false],
        "submenu1": [
          "Default Grading",
          defaultGrading(),
          Icons.grading_outlined,
        ],
        // "submenu2": [
        //   "Special Grade name",
        //   null,
        //   Icons.grading_outlined,
        // ],
        "submenu3": [
          "Special Grading",
          specialGrading(),
          Icons.grading_outlined,
        ],
      },
      {
        "size": widget.size!,
        "value": "Terms",
        "link": terms(),
        "iconData": Icons.signal_cellular_alt_outlined,
        "selected": [false]
      },
      {
        "size": widget.size!,
        "value": "Exams",
        "iconData": Icons.quiz_rounded,
        "iconData2": Icons.keyboard_arrow_down_rounded,
        "selected": [false],
        "submenu1ex": "Setting",
        "submenu2": ["Exam Schedule", null, Icons.extension],
        "submenu3ex": "Reports",
        "submenu4": ["Minor School Exams", null, Icons.description],
        "submenu1.1": ["Exam Groups", null, Icons.text_snippet_outlined],
        "submenu1.2": ["School Exams", null, Icons.text_snippet_outlined],
        "submenu1.3": ["Class Allocation", null, Icons.text_snippet_outlined],
        "submenu3.1": ["Single Reports", null, Icons.text_snippet_outlined],
        "submenu3.2": ["Combined Reports", null, Icons.text_snippet_outlined],
        "submenu3.3": ["CA Report", null, Icons.text_snippet_outlined],
        "submenu3.4": ["Reports Created", null, Icons.text_snippet_outlined],
      },
      {
        "size": widget.size!,
        "value": "Class Routine",
        "link": classRoutine(),
        "iconData": Icons.route_outlined,
        "selected": [false],
      },
      {
        "size": widget.size!,
        "value": "Attendance",
        "iconData": Icons.content_paste,
        "iconData2": Icons.keyboard_arrow_down_rounded,
        "selected": [false],
        "submenu1": ["Student Attendance", null, Icons.groups],
        "submenu2": ["Employee Attendance", null, Icons.badge_outlined],
        "submenu3": [
          "Exam Attendance",
          null,
          Icons.airline_seat_recline_normal
        ],
        "submenu4": ["Teacher on Duty", null, Icons.notifications],
        "submenu5": ["Attendance Report", null, Icons.group],
      },
      {
        "size": widget.size!,
        "value": "News & Announcements",
        "iconData": Icons.newspaper_outlined,
        "selected": [false]
      },
      {
        "size": widget.size!,
        "value": "Hostel Management",
        "iconData": Icons.house_outlined,
        "iconData2": Icons.keyboard_arrow_down_rounded,
        "selected": [false],
        "submenu1": ["Hostel", null, Icons.airline_seat_individual_suite],
        "submenu2": ["Members", null, Icons.how_to_reg],
      },
      {
        "size": widget.size!,
        "value": "Library",
        "iconData": Icons.library_add_check_outlined,
        "iconData2": Icons.keyboard_arrow_down_rounded,
        "selected": [false],
        "submenu1": ["Members", null, Icons.how_to_reg],
        "submenu2": ["Books", null, Icons.book],
        "submenu3": ["Issue", null, Icons.stroller],
        "submenu4ex": "Library Report",
        "submenu4.1": ["General Report", null, Icons.summarize_outlined],
        "submenu4.2": ["Other Report", null, Icons.summarize_outlined],
      },
      {
        "size": widget.size!,
        "value": "eResources",
        "iconData": Icons.movie_creation_outlined,
        "iconData2": Icons.keyboard_arrow_down_rounded,
        "selected": [false],
        "submenu1": ["Files", null, Icons.file_copy_sharp],
        "submenu2": [
          "Live Studies",
          null,
          Icons.videocam,
        ],
        "submenu3": ["Class Notes", null, Icons.note_alt_sharp],
        "submenu4": ["Online Exams", null, Icons.book_online_outlined],
        "submenu5": ["Home Packages", null, Icons.inventory_outlined],
        "submenu6": ["Online Discussion", null, Icons.forum],
      },
      {
        "size": widget.size!,
        "value": "Settings",
        "iconData": Icons.settings,
        "selected": [false]
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
                            selected: items[index]["selected"][0],
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
                              if (widget.menu!)
                                setState(() {
                                  if (val) {
                                    _drawerSize = 250;
                                  } else {
                                    _drawerSize = 90;
                                  }
                                });
                              if (!widget.menu!)
                                setState(() {
                                  _drawerSize = 250;
                                });
                              widget.onTap!(_drawerSize);
                              widget.onTap!(_drawerSize);
                            },
                            onTap: (val) {
                              setState(() {
                                items[index]["selected"][0] = val;
                                print(items[index]["selected"][0]);
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
