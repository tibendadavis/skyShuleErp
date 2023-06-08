import 'package:flutter/material.dart';
import 'package:skyconnect_starter/components/downloadBar.comp.dart';
import 'package:skyconnect_starter/components/heading_text.dart';
import 'package:skyconnect_starter/components/searchBar.comp.dart';
import 'package:skyconnect_starter/components/searchInputOptions.comp.dart';
import 'package:skyconnect_starter/components/tile2.comp.dart';
import 'package:skyconnect_starter/controllers/responsive.dart';
import 'package:skyconnect_starter/main.dart';
import 'package:skyconnect_starter/screens/Mark/viewAddMark.scrn.dart';
import 'package:skyconnect_starter/theme/design.theme.dart';

class mark extends StatefulWidget {
  const mark({super.key});

  @override
  State<mark> createState() => _markState();
}

class _markState extends State<mark> {
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
              top: Insets().appPadding,
              left: Responsive.isDesktop(context)
                  ? Insets().appPadding * 2
                  : Insets().appPadding,
              right: Insets().appGap),
          child: HeadingText(
            size: Responsive.isDesktop(context) ? 35 : 30,
            value: "Mark",
            fontWeight: FontWeight.w700,
            color: Colors.grey.shade800,
          ),
        ),
        Flex(
          direction:
              Responsive.isDesktop(context) ? Axis.horizontal : Axis.vertical,
          children: [
            Container(
                width: Responsive.isDesktop(context) ? 360 : size.width,
                child: tile2(tileHeading: "Total Exams", tileData: "7")),
          ],
        ),
        searchBar(
            title: "Search for Exams",
            opt1: searchInputOptions(
              title: "Class Level",
              opt1: "",
            ),
            opt2: searchInputOptions(
              title: "Class",
              opt1: "",
            )),
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
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: DataTable(
                    dataRowHeight: 55,
                    headingTextStyle: TextStyle(color: Palette().primaryColor),
                    horizontalMargin: 0,
                    columnSpacing:
                        Responsive.isDesktop(context) && size.width < 1600
                            ? size.width / 55
                            : Responsive.isDesktop(context) && size.width > 1600
                                ? size.width / 40
                                : 25,
                    showCheckboxColumn: true,
                    checkboxHorizontalMargin: 10,
                    showBottomBorder: true,
                    columns: [
                      DataColumn(
                          label: Checkbox(
                        value: false,
                        onChanged: (value) {
                          setState(() {});
                        },
                      )),
                      DataColumn(
                          label: HeadingText(
                        size: 14,
                        value: "No.",
                        fontWeight: FontWeight.w700,
                      )),
                      DataColumn(
                          label: HeadingText(
                        size: 14,
                        value: "Exam",
                        fontWeight: FontWeight.w700,
                      )),
                      DataColumn(
                          label: HeadingText(
                        size: 14,
                        value: "Semester",
                        fontWeight: FontWeight.w700,
                      )),
                      DataColumn(
                          label: HeadingText(
                        size: 14,
                        value: "Exam Date",
                        fontWeight: FontWeight.w700,
                      )),
                      DataColumn(
                          label: HeadingText(
                        size: 14,
                        value: "Abbreviation",
                        fontWeight: FontWeight.w700,
                      )),
                      DataColumn(
                          label: HeadingText(
                        size: 14,
                        value: "Marking Status",
                        fontWeight: FontWeight.w700,
                      )),
                      DataColumn(
                          label: HeadingText(
                        size: 14,
                        value: "Action",
                        fontWeight: FontWeight.w700,
                      )),
                      DataColumn(
                          label: HeadingText(
                        size: 14,
                        value: "Comments",
                        fontWeight: FontWeight.w700,
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
                          value: "FEBRUARY MID QUARTER",
                        )),
                        DataCell(HeadingText(
                          size: 14,
                          value: "FIRST TERM",
                        )),
                        DataCell(HeadingText(
                          size: 14,
                          value: "18 Feb 2022",
                        )),
                        DataCell(HeadingText(
                          size: 14,
                          value: "FMQ",
                        )),
                        DataCell(Row(
                          children: [
                            HeadingText(
                              size: 14,
                              value: "0 out of 632:",
                            ),
                            SizedBox(
                              width: 3,
                            ),
                            Container(
                                decoration: BoxDecoration(
                                    color: Palette().borderColor,
                                    borderRadius: BorderRadius.circular(
                                        Insets().appRadius)),
                                padding: EdgeInsets.only(
                                    bottom: 3, left: 10, right: 10, top: 3),
                                child: HeadingText(
                                  size: 14,
                                  value: "632 remains",
                                  color: Colors.white,
                                ))
                          ],
                        )),
                        DataCell(Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            TextButton(
                              onPressed: () {
                                Navigator.of(context).push(MaterialPageRoute(
                                    builder: (context) =>
                                        MyHomePage(page: viewAddMark())));
                              },
                              child: HeadingText(
                                size: 14,
                                value: "(View|Add) Marks",
                              ),
                            ),
                          ],
                        )),
                        DataCell(Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            TextButton(
                              onPressed: () {},
                              child: HeadingText(
                                size: 14,
                                value: " ",
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
                          value: "FEBRUARY MID QUARTER",
                        )),
                        DataCell(HeadingText(
                          size: 14,
                          value: "FIRST TERM",
                        )),
                        DataCell(HeadingText(
                          size: 14,
                          value: "18 Feb 2022",
                        )),
                        DataCell(HeadingText(
                          size: 14,
                          value: "FMQ",
                        )),
                        DataCell(Row(
                          children: [
                            HeadingText(
                              size: 14,
                              value: "0 out of 632:",
                            ),
                            SizedBox(
                              width: 3,
                            ),
                            Container(
                                decoration: BoxDecoration(
                                    color: Palette().borderColor,
                                    borderRadius: BorderRadius.circular(
                                        Insets().appRadius)),
                                padding: EdgeInsets.only(
                                    bottom: 3, left: 10, right: 10, top: 3),
                                child: HeadingText(
                                  size: 14,
                                  value: "632 remains",
                                  color: Colors.white,
                                ))
                          ],
                        )),
                        DataCell(Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            TextButton(
                              onPressed: () {
                                Navigator.of(context).push(MaterialPageRoute(
                                    builder: (context) => viewAddMark()));
                              },
                              child: HeadingText(
                                size: 14,
                                value: "(View|Add) Marks",
                              ),
                            ),
                          ],
                        )),
                        DataCell(Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            TextButton(
                              onPressed: () {},
                              child: HeadingText(
                                size: 14,
                                value: " ",
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
                          value: "FEBRUARY MID QUARTER",
                        )),
                        DataCell(HeadingText(
                          size: 14,
                          value: "FIRST TERM",
                        )),
                        DataCell(HeadingText(
                          size: 14,
                          value: "18 Feb 2022",
                        )),
                        DataCell(HeadingText(
                          size: 14,
                          value: "FMQ",
                        )),
                        DataCell(Row(
                          children: [
                            HeadingText(
                              size: 14,
                              value: "0 out of 632:",
                            ),
                            SizedBox(
                              width: 3,
                            ),
                            Container(
                                decoration: BoxDecoration(
                                    color: Palette().borderColor,
                                    borderRadius: BorderRadius.circular(
                                        Insets().appRadius)),
                                padding: EdgeInsets.only(
                                    bottom: 3, left: 10, right: 10, top: 3),
                                child: HeadingText(
                                  size: 14,
                                  value: "632 remains",
                                  color: Colors.white,
                                ))
                          ],
                        )),
                        DataCell(Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            TextButton(
                              onPressed: () {
                                Navigator.of(context).push(MaterialPageRoute(
                                    builder: (context) => viewAddMark()));
                              },
                              child: HeadingText(
                                size: 14,
                                value: "(View|Add) Marks",
                              ),
                            ),
                          ],
                        )),
                        DataCell(Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            TextButton(
                              onPressed: () {},
                              child: HeadingText(
                                size: 14,
                                value: " ",
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
                          value: "FEBRUARY MID QUARTER",
                        )),
                        DataCell(HeadingText(
                          size: 14,
                          value: "FIRST TERM",
                        )),
                        DataCell(HeadingText(
                          size: 14,
                          value: "18 Feb 2022",
                        )),
                        DataCell(HeadingText(
                          size: 14,
                          value: "FMQ",
                        )),
                        DataCell(Row(
                          children: [
                            HeadingText(
                              size: 14,
                              value: "0 out of 632:",
                            ),
                            SizedBox(
                              width: 3,
                            ),
                            Container(
                                decoration: BoxDecoration(
                                    color: Palette().borderColor,
                                    borderRadius: BorderRadius.circular(
                                        Insets().appRadius)),
                                padding: EdgeInsets.only(
                                    bottom: 3, left: 10, right: 10, top: 3),
                                child: HeadingText(
                                  size: 14,
                                  value: "632 remains",
                                  color: Colors.white,
                                ))
                          ],
                        )),
                        DataCell(Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            TextButton(
                              onPressed: () {
                                Navigator.of(context).push(MaterialPageRoute(
                                    builder: (context) => viewAddMark()));
                              },
                              child: HeadingText(
                                size: 14,
                                value: "(View|Add) Marks",
                              ),
                            ),
                          ],
                        )),
                        DataCell(Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            TextButton(
                              onPressed: () {},
                              child: HeadingText(
                                size: 14,
                                value: " ",
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
                          value: "FEBRUARY MID QUARTER",
                        )),
                        DataCell(HeadingText(
                          size: 14,
                          value: "FIRST TERM",
                        )),
                        DataCell(HeadingText(
                          size: 14,
                          value: "18 Feb 2022",
                        )),
                        DataCell(HeadingText(
                          size: 14,
                          value: "FMQ",
                        )),
                        DataCell(Row(
                          children: [
                            HeadingText(
                              size: 14,
                              value: "0 out of 632:",
                            ),
                            SizedBox(
                              width: 3,
                            ),
                            Container(
                                decoration: BoxDecoration(
                                    color: Palette().borderColor,
                                    borderRadius: BorderRadius.circular(
                                        Insets().appRadius)),
                                padding: EdgeInsets.only(
                                    bottom: 3, left: 10, right: 10, top: 3),
                                child: HeadingText(
                                  size: 14,
                                  value: "632 remains",
                                  color: Colors.white,
                                ))
                          ],
                        )),
                        DataCell(Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            TextButton(
                              onPressed: () {
                                Navigator.of(context).push(MaterialPageRoute(
                                    builder: (context) => viewAddMark()));
                              },
                              child: HeadingText(
                                size: 14,
                                value: "(View|Add) Marks",
                              ),
                            ),
                          ],
                        )),
                        DataCell(Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            TextButton(
                              onPressed: () {},
                              child: HeadingText(
                                size: 14,
                                value: " ",
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
                          value: "FEBRUARY MID QUARTER",
                        )),
                        DataCell(HeadingText(
                          size: 14,
                          value: "FIRST TERM",
                        )),
                        DataCell(HeadingText(
                          size: 14,
                          value: "18 Feb 2022",
                        )),
                        DataCell(HeadingText(
                          size: 14,
                          value: "FMQ",
                        )),
                        DataCell(Row(
                          children: [
                            HeadingText(
                              size: 14,
                              value: "0 out of 632:",
                            ),
                            SizedBox(
                              width: 3,
                            ),
                            Container(
                                decoration: BoxDecoration(
                                    color: Palette().borderColor,
                                    borderRadius: BorderRadius.circular(
                                        Insets().appRadius)),
                                padding: EdgeInsets.only(
                                    bottom: 3, left: 10, right: 10, top: 3),
                                child: HeadingText(
                                  size: 14,
                                  value: "632 remains",
                                  color: Colors.white,
                                ))
                          ],
                        )),
                        DataCell(Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            TextButton(
                              onPressed: () {
                                Navigator.of(context).push(MaterialPageRoute(
                                    builder: (context) => viewAddMark()));
                              },
                              child: HeadingText(
                                size: 14,
                                value: "(View|Add) Marks",
                              ),
                            ),
                          ],
                        )),
                        DataCell(Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            TextButton(
                              onPressed: () {},
                              child: HeadingText(
                                size: 14,
                                value: " ",
                              ),
                            ),
                          ],
                        ))
                      ]),
                    ]),
              ),
            ),
          ]),
        )
      ])),
    );
  }
}
