import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:path/path.dart';
import 'package:skyconnect_starter/components/app_drawer/skyShuleDrawer.dart';
import 'package:skyconnect_starter/components/downloadBar.comp.dart';
import 'package:skyconnect_starter/components/header.dart';
import 'package:skyconnect_starter/components/heading1.dart';
import 'package:skyconnect_starter/components/heading2.dart';
import 'package:skyconnect_starter/components/heading3.dart';
import 'package:skyconnect_starter/components/heading4.dart';
import 'package:skyconnect_starter/components/heading5.dart';
import 'package:skyconnect_starter/components/heading6.dart';
import 'package:skyconnect_starter/components/heading_text.dart';
import 'package:skyconnect_starter/components/searchBar.comp.dart';
import 'package:skyconnect_starter/components/searchInputOptions.comp.dart';
import 'package:skyconnect_starter/components/tile2.comp.dart';
import 'package:skyconnect_starter/components/tile3.comp.dart';
import 'package:skyconnect_starter/controllers/responsive.dart';
import 'package:skyconnect_starter/screens/Subjects/addSubject.scrn.dart';
import 'package:skyconnect_starter/screens/Users/student_admission.scrn.dart';
import 'package:skyconnect_starter/theme/design.theme.dart';

class streamSubjectTeacher extends StatefulWidget {
  const streamSubjectTeacher({super.key});

  @override
  State<streamSubjectTeacher> createState() => _streamSubjectTeacherState();
}

class _streamSubjectTeacherState extends State<streamSubjectTeacher> {
  bool _menu = false;
  double _drawersize = 250;
  var _classlevel;
  var _class;
  var _academicYear;
  var _stream;

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
      child: Expanded(
          child: Column(children: [
        Container(
          alignment: Alignment.bottomLeft,
          padding: EdgeInsets.only(
              left: Responsive.isDesktop(context)
                  ? Insets().appPadding * 2
                  : Insets().appPadding,
              right: Insets().appGap),
          child: HeadingText(
            size: Responsive.isDesktop(context) ? 35 : 30,
            value: "Subjects",
            fontWeight: FontWeight.w700,
            color: Colors.grey.shade800,
          ),
        ),
        Flex(
          direction:
              Responsive.isDesktop(context) ? Axis.horizontal : Axis.vertical,
          children: [
            SizedBox(
                width: Responsive.isDesktop(context)
                    ? 360
                    : MediaQuery.of(context).size.width,
                child: tile3(
                  icon: Icons.subject_outlined,
                  link: addSubject(),
                  linkTitle: "New Subject",
                )),
            SizedBox(
              width: Responsive.isDesktop(context)
                  ? 360
                  : MediaQuery.of(context).size.width,
              child: tile2(tileHeading: "Total Subject", tileData: "7"),
            ),
          ],
        ),
        searchBar(
          title: "Search for Subjects",
          opt1: searchInputOptions(title: "Class Level", opt1: ""),
          opt2: searchInputOptions(title: "Class", opt1: ""),
        ),
        downloadBar(results: "7"),
        Expanded(
          child: ListView(children: [
            Container(
              margin: EdgeInsets.only(
                left: Responsive.isDesktop(context) ? Insets().appPadding : 13,
                right: Responsive.isDesktop(context) ? Insets().appPadding : 13,
              ),
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(Insets().appGap + 4)),
              padding: EdgeInsets.only(
                  left: 15, right: 15, bottom: Insets().appPadding),
              child: Center(
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: DataTable(
                      headingTextStyle:
                          TextStyle(color: Palette().primaryColor),
                      horizontalMargin: 0,
                      columnSpacing: Responsive.isDesktop(context) ? 20 : 10,
                      columns: [
                        DataColumn(
                            label: Checkbox(
                          value: false,
                          onChanged: (value) {
                            setState(() {});
                          },
                        )),
                        DataColumn(
                            label: SizedBox(
                          child: HeadingText(
                            size: 14,
                            value: "No.",
                            fontWeight: FontWeight.w700,
                          ),
                        )),
                        DataColumn(
                            label: SizedBox(
                          width: Responsive.isDesktop(context) ? 150 : 100,
                          child: HeadingText(
                            size: 14,
                            value: "Stream",
                            fontWeight: FontWeight.w700,
                          ),
                        )),
                        DataColumn(
                            label: SizedBox(
                          width: Responsive.isDesktop(context) ? 150 : 100,
                          child: HeadingText(
                            size: 14,
                            value: "Subject",
                            fontWeight: FontWeight.w700,
                          ),
                        )),
                        DataColumn(
                            label: SizedBox(
                          width: Responsive.isDesktop(context) ? 250 : 100,
                          child: HeadingText(
                            size: 14,
                            value: "Teacher Name",
                            fontWeight: FontWeight.w700,
                          ),
                        )),
                        DataColumn(
                            label: SizedBox(
                          width: 100,
                          child: HeadingText(
                            size: 14,
                            value: "Student",
                            fontWeight: FontWeight.w700,
                          ),
                        )),
                        DataColumn(
                            label: SizedBox(
                          child: HeadingText(
                            size: 14,
                            value: "Action",
                            fontWeight: FontWeight.w700,
                          ),
                        )),
                      ],
                      rows: [
                        DataRow(cells: [
                          DataCell(Checkbox(
                            value: false,
                            onChanged: (value) {
                              setState(() {});
                            },
                          )),
                          DataCell(HeadingText(
                            size: 14,
                            value: "1",
                          )),
                          DataCell(HeadingText(
                            size: 14,
                            value: "ZEBRA",
                          )),
                          DataCell(HeadingText(
                            size: 14,
                            value: "Physics",
                          )),
                          DataCell(HeadingText(
                            size: 14,
                            value: "Venosa P Kigosi",
                          )),
                          DataCell(
                            HeadingText(
                              size: 14,
                              value: "44",
                            ),
                          ),
                          DataCell(Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              TextButton(
                                onPressed: () {},
                                child: HeadingText(
                                  size: 14,
                                  value: "View",
                                ),
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              TextButton(
                                onPressed: () {},
                                child: HeadingText(
                                  size: 14,
                                  value: "Edit",
                                ),
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              TextButton(
                                onPressed: () {},
                                child: HeadingText(
                                  size: 14,
                                  value: "Delete",
                                  color: Colors.red,
                                ),
                              ),
                            ],
                          ))
                        ]),
                        DataRow(cells: [
                          DataCell(Checkbox(
                            value: false,
                            onChanged: (value) {
                              setState(() {});
                            },
                          )),
                          DataCell(HeadingText(
                            size: 14,
                            value: "1",
                          )),
                          DataCell(HeadingText(
                            size: 14,
                            value: "ZEBRA",
                          )),
                          DataCell(HeadingText(
                            size: 14,
                            value: "Physics",
                          )),
                          DataCell(HeadingText(
                            size: 14,
                            value: "Venosa P Kigosi",
                          )),
                          DataCell(
                            HeadingText(
                              size: 14,
                              value: "44",
                            ),
                          ),
                          DataCell(Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              TextButton(
                                onPressed: () {},
                                child: HeadingText(
                                  size: 14,
                                  value: "View",
                                ),
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              TextButton(
                                onPressed: () {},
                                child: HeadingText(
                                  size: 14,
                                  value: "Edit",
                                ),
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              TextButton(
                                onPressed: () {},
                                child: HeadingText(
                                  size: 14,
                                  value: "Delete",
                                  color: Colors.red,
                                ),
                              ),
                            ],
                          ))
                        ]),
                        DataRow(cells: [
                          DataCell(Checkbox(
                            value: false,
                            onChanged: (value) {
                              setState(() {});
                            },
                          )),
                          DataCell(HeadingText(
                            size: 14,
                            value: "1",
                          )),
                          DataCell(HeadingText(
                            size: 14,
                            value: "ZEBRA",
                          )),
                          DataCell(HeadingText(
                            size: 14,
                            value: "Physics",
                          )),
                          DataCell(HeadingText(
                            size: 14,
                            value: "Venosa P Kigosi",
                          )),
                          DataCell(
                            HeadingText(
                              size: 14,
                              value: "44",
                            ),
                          ),
                          DataCell(Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              TextButton(
                                onPressed: () {},
                                child: HeadingText(
                                  size: 14,
                                  value: "View",
                                ),
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              TextButton(
                                onPressed: () {},
                                child: HeadingText(
                                  size: 14,
                                  value: "Edit",
                                ),
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              TextButton(
                                onPressed: () {},
                                child: HeadingText(
                                  size: 14,
                                  value: "Delete",
                                  color: Colors.red,
                                ),
                              ),
                            ],
                          ))
                        ]),
                        DataRow(cells: [
                          DataCell(Checkbox(
                            value: false,
                            onChanged: (value) {
                              setState(() {});
                            },
                          )),
                          DataCell(HeadingText(
                            size: 14,
                            value: "1",
                          )),
                          DataCell(HeadingText(
                            size: 14,
                            value: "ZEBRA",
                          )),
                          DataCell(HeadingText(
                            size: 14,
                            value: "Physics",
                          )),
                          DataCell(HeadingText(
                            size: 14,
                            value: "Venosa P Kigosi",
                          )),
                          DataCell(
                            HeadingText(
                              size: 14,
                              value: "44",
                            ),
                          ),
                          DataCell(Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              TextButton(
                                onPressed: () {},
                                child: HeadingText(
                                  size: 14,
                                  value: "View",
                                ),
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              TextButton(
                                onPressed: () {},
                                child: HeadingText(
                                  size: 14,
                                  value: "Edit",
                                ),
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              TextButton(
                                onPressed: () {},
                                child: HeadingText(
                                  size: 14,
                                  value: "Delete",
                                  color: Colors.red,
                                ),
                              ),
                            ],
                          ))
                        ]),
                        DataRow(cells: [
                          DataCell(Checkbox(
                            value: false,
                            onChanged: (value) {
                              setState(() {});
                            },
                          )),
                          DataCell(HeadingText(
                            size: 14,
                            value: "1",
                          )),
                          DataCell(HeadingText(
                            size: 14,
                            value: "ZEBRA",
                          )),
                          DataCell(HeadingText(
                            size: 14,
                            value: "Physics",
                          )),
                          DataCell(HeadingText(
                            size: 14,
                            value: "Venosa P Kigosi",
                          )),
                          DataCell(
                            HeadingText(
                              size: 14,
                              value: "44",
                            ),
                          ),
                          DataCell(Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              TextButton(
                                onPressed: () {},
                                child: HeadingText(
                                  size: 14,
                                  value: "View",
                                ),
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              TextButton(
                                onPressed: () {},
                                child: HeadingText(
                                  size: 14,
                                  value: "Edit",
                                ),
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              TextButton(
                                onPressed: () {},
                                child: HeadingText(
                                  size: 14,
                                  value: "Delete",
                                  color: Colors.red,
                                ),
                              ),
                            ],
                          ))
                        ]),
                      ]),
                ),
              ),
            ),
          ]),
        )
      ])),
    );
  }
}
