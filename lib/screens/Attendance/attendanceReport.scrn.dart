import 'package:flutter/material.dart';
import 'package:skyconnect_starter/components/downloadBar.comp.dart';
import 'package:skyconnect_starter/components/heading5.dart';
import 'package:skyconnect_starter/components/heading6.dart';
import 'package:skyconnect_starter/components/heading_text.dart';
import 'package:skyconnect_starter/components/searchBar.comp.dart';
import 'package:skyconnect_starter/components/searchInputDate.comp.dart';
import 'package:skyconnect_starter/controllers/responsive.dart';
import 'package:skyconnect_starter/theme/design.theme.dart';

class attendanceReport extends StatefulWidget {
  const attendanceReport({super.key});

  @override
  State<attendanceReport> createState() => _attendaceReportState();
}

class _attendaceReportState extends State<attendanceReport> {
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
            size: Responsive.isDesktop(context) ? 33 : 30,
            value: "Attendance Report",
            fontWeight: FontWeight.w700,
            color: Colors.grey.shade800,
          ),
        ),
        searchBar(
            title: "Search ",
            opt8: searchInputDate(title: "Start Date"),
            opt9: searchInputDate(
              title: "End Date",
            )),
        Flex(
          direction:
              Responsive.isDesktop(context) ? Axis.horizontal : Axis.vertical,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SizedBox(
              width: Responsive.isDesktop(context)
                  ? 410
                  : MediaQuery.of(context).size.width,
              child: Container(
                margin: EdgeInsets.only(
                    left: Responsive.isDesktop(context)
                        ? Insets().appPadding * 2
                        : Insets().appPadding,
                    right:
                        Responsive.isDesktop(context) ? 0 : Insets().appPadding,
                    top: Responsive.isDesktop(context)
                        ? Insets().appPadding
                        : 12,
                    bottom: Responsive.isDesktop(context)
                        ? Insets().appPadding
                        : 0),
                padding: EdgeInsets.only(
                    left: Insets().appPadding,
                    right: Insets().appPadding,
                    top: Insets().appGap + 2,
                    bottom: Insets().appGap + 2),
                decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: Palette().borderColor.withOpacity(0.6),
                        blurRadius: 15.0, // soften the shadow
                        spreadRadius: 2.0, //extend the shadow
                        offset: Offset(
                          1.0, // Move to right 5  horizontally
                          2.0, // Move to bottom 5 Vertically
                        ),
                      )
                    ],
                    color: Colors.white,
                    borderRadius:
                        BorderRadius.circular(Insets().appRadiusMin + 4)),
                child: SizedBox(
                  height: Responsive.isDesktop(context) ? 75 : 93,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Heading5(
                        value: "GENIUS KINGS NURSERY & PRIMARY SCHOOL",
                        fontWeight: FontWeight.bold,
                        color: Palette().primaryColor,
                      ),
                      Heading6(
                        value: "DSM - Segerea Kwa Bibi, DAR ES SALAAM",
                        color: Colors.grey.shade700,
                      ),
                      Heading6(
                        value: "Phone Number : 0612345670",
                        color: Colors.grey.shade700,
                      ),
                      Heading6(
                        value: "Email : info@geniuskings.ac.tz",
                        color: Colors.grey.shade700,
                      )
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(
              width: Responsive.isDesktop(context)
                  ? 410
                  : MediaQuery.of(context).size.width,
              child: Container(
                margin: EdgeInsets.only(
                    left: Responsive.isDesktop(context)
                        ? Insets().appPadding * 2
                        : Insets().appPadding,
                    top: Insets().appPadding / 2,
                    right: Responsive.isDesktop(context)
                        ? Insets().appPadding * 2
                        : Insets().appPadding,
                    bottom: Insets().appPadding / 2),
                padding: EdgeInsets.only(
                    left: Insets().appPadding,
                    right: Insets().appPadding,
                    top: Insets().appGap + 2,
                    bottom: Insets().appPadding),
                decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: Palette().borderColor.withOpacity(0.6),
                        blurRadius: 15.0, // soften the shadow
                        spreadRadius: 2.0, //extend the shadow
                        offset: Offset(
                          1.0, // Move to right 5  horizontally
                          2.0, // Move to bottom 5 Vertically
                        ),
                      )
                    ],
                    color: Colors.white,
                    borderRadius:
                        BorderRadius.circular(Insets().appRadiusMin + 4)),
                child: SizedBox(
                  height: Responsive.isDesktop(context) ? 75 : 60,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Heading5(
                        value: "ATTENDANCE REPORT",
                        fontWeight: FontWeight.bold,
                        color: Palette().primaryColor,
                      ),
                      Heading6(
                        value: "From : 01 Jan 2023",
                        color: Colors.grey.shade700,
                      ),
                      Heading6(
                        value: "To : 08 Oct 2023",
                        color: Colors.grey.shade700,
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              padding: EdgeInsets.only(
                  bottom: Insets().appPadding / 5,
                  left: Responsive.isDesktop(context)
                      ? Insets().appPadding * 2
                      : Insets().appPadding,
                  right: Insets().appPadding),
              child: HeadingText(
                size: Responsive.isDesktop(context) ? 25 : 19.7,
                value:
                    "GENIUS KINGS NURSERY & PRIMARY SCHOOL - ATTENDANCE REPORT",
                fontWeight: FontWeight.w700,
                color: Colors.grey.shade800,
              ),
            ),
          ],
        ),
        SizedBox(
          width: size.width,
          child: Container(
              padding: EdgeInsets.only(
                  left: Responsive.isDesktop(context)
                      ? Insets().appPadding * 2
                      : Insets().appPadding,
                  right: Responsive.isDesktop(context)
                      ? Insets().appPadding * 2
                      : Insets().appPadding),
              child: Divider(color: Colors.grey, thickness: 2)),
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
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: DataTable(
                    dataRowHeight: 55,
                    headingTextStyle: TextStyle(color: Palette().primaryColor),
                    horizontalMargin: 0,
                    columnSpacing:
                        Responsive.isDesktop(context) && size.width < 1600
                            ? size.width / 30
                            : Responsive.isDesktop(context) && size.width > 1600
                                ? size.width / 17
                                : 25,
                    showCheckboxColumn: false,
                    checkboxHorizontalMargin: 10,
                    showBottomBorder: true,
                    columns: [
                      DataColumn(
                          label: Container(
                        alignment: Alignment.bottomLeft,
                        child: HeadingText(
                          size: 14,
                          value: "No.",
                          fontWeight: FontWeight.w700,
                        ),
                      )),
                      DataColumn(
                          label: Container(
                        alignment: Alignment.bottomLeft,
                        child: HeadingText(
                          size: 14,
                          value: "CLASSES",
                          fontWeight: FontWeight.w700,
                        ),
                      )),
                      DataColumn(
                          label: Center(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            HeadingText(
                              size: 14,
                              value: "REGISTERED",
                              fontWeight: FontWeight.w700,
                            ),
                            SizedBox(
                              width: Responsive.isDesktop(context) ? 200 : 150,
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  HeadingText(
                                    size: 14,
                                    value: "BOYS",
                                    fontWeight: FontWeight.w700,
                                  ),
                                  HeadingText(
                                    size: 14,
                                    value: "GIRLS",
                                    fontWeight: FontWeight.w700,
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                      )),
                      DataColumn(
                          label: Center(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            HeadingText(
                              size: 14,
                              value: "PRESENTEES",
                              fontWeight: FontWeight.w700,
                            ),
                            SizedBox(
                              width: Responsive.isDesktop(context) ? 200 : 150,
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  HeadingText(
                                    size: 14,
                                    value: "BOYS",
                                    fontWeight: FontWeight.w700,
                                  ),
                                  HeadingText(
                                    size: 14,
                                    value: "GIRLS",
                                    fontWeight: FontWeight.w700,
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                      )),
                      DataColumn(
                          label: Center(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            HeadingText(
                              size: 14,
                              value: "ABSENTEES",
                              fontWeight: FontWeight.w700,
                            ),
                            SizedBox(
                              width: Responsive.isDesktop(context) ? 200 : 150,
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  HeadingText(
                                    size: 14,
                                    value: "BOYS",
                                    fontWeight: FontWeight.w700,
                                  ),
                                  HeadingText(
                                    size: 14,
                                    value: "GIRLS",
                                    fontWeight: FontWeight.w700,
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                      )),
                      DataColumn(
                          label: Center(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            HeadingText(
                              size: 14,
                              value: "PERMISSION",
                              fontWeight: FontWeight.w700,
                            ),
                            SizedBox(
                              width: Responsive.isDesktop(context) ? 200 : 150,
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  HeadingText(
                                    size: 14,
                                    value: "BOYS",
                                    fontWeight: FontWeight.w700,
                                  ),
                                  HeadingText(
                                    size: 14,
                                    value: "GIRLS",
                                    fontWeight: FontWeight.w700,
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                      )),
                    ],
                    rows: [
                      DataRow(cells: [
                        DataCell(HeadingText(
                          size: 14,
                          value: "1",
                        )),
                        DataCell(HeadingText(
                          size: 14,
                          value: "DAY CARE",
                        )),
                        DataCell(Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            HeadingText(
                              size: 14,
                              value: "9",
                            ),
                            HeadingText(
                              size: 14,
                              value: "9",
                            ),
                          ],
                        )),
                        DataCell(Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            HeadingText(
                              size: 14,
                              value: "0(0.0%)",
                            ),
                            HeadingText(
                              size: 14,
                              value: "0(0.0%)",
                            ),
                          ],
                        )),
                        DataCell(Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            HeadingText(
                              size: 14,
                              value: "0(0.0%)",
                            ),
                            HeadingText(
                              size: 14,
                              value: "0(0.0%)",
                            ),
                          ],
                        )),
                        DataCell(Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            HeadingText(
                              size: 14,
                              value: "0(0.0%)",
                            ),
                            HeadingText(
                              size: 14,
                              value: "0(0.0%)",
                            ),
                          ],
                        )),
                      ]),
                      DataRow(cells: [
                        DataCell(HeadingText(
                          size: 14,
                          value: "2",
                        )),
                        DataCell(HeadingText(
                          size: 14,
                          value: "BEGINNERS",
                        )),
                        DataCell(Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            HeadingText(
                              size: 14,
                              value: "9",
                            ),
                            HeadingText(
                              size: 14,
                              value: "9",
                            ),
                          ],
                        )),
                        DataCell(Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            HeadingText(
                              size: 14,
                              value: "0(0.0%)",
                            ),
                            HeadingText(
                              size: 14,
                              value: "0(0.0%)",
                            ),
                          ],
                        )),
                        DataCell(Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            HeadingText(
                              size: 14,
                              value: "0(0.0%)",
                            ),
                            HeadingText(
                              size: 14,
                              value: "0(0.0%)",
                            ),
                          ],
                        )),
                        DataCell(Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            HeadingText(
                              size: 14,
                              value: "0(0.0%)",
                            ),
                            HeadingText(
                              size: 14,
                              value: "0(0.0%)",
                            ),
                          ],
                        )),
                      ]),
                      DataRow(cells: [
                        DataCell(HeadingText(
                          size: 14,
                          value: "3",
                        )),
                        DataCell(HeadingText(
                          size: 14,
                          value: "INTERMEDIATE",
                        )),
                        DataCell(Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            HeadingText(
                              size: 14,
                              value: "9",
                            ),
                            HeadingText(
                              size: 14,
                              value: "9",
                            ),
                          ],
                        )),
                        DataCell(Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            HeadingText(
                              size: 14,
                              value: "0(0.0%)",
                            ),
                            HeadingText(
                              size: 14,
                              value: "0(0.0%)",
                            ),
                          ],
                        )),
                        DataCell(Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            HeadingText(
                              size: 14,
                              value: "0(0.0%)",
                            ),
                            HeadingText(
                              size: 14,
                              value: "0(0.0%)",
                            ),
                          ],
                        )),
                        DataCell(Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            HeadingText(
                              size: 14,
                              value: "0(0.0%)",
                            ),
                            HeadingText(
                              size: 14,
                              value: "0(0.0%)",
                            ),
                          ],
                        )),
                      ]),
                      DataRow(cells: [
                        DataCell(HeadingText(
                          size: 14,
                          value: "4",
                        )),
                        DataCell(HeadingText(
                          size: 14,
                          value: "PRE-UNIT",
                        )),
                        DataCell(Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            HeadingText(
                              size: 14,
                              value: "9",
                            ),
                            HeadingText(
                              size: 14,
                              value: "9",
                            ),
                          ],
                        )),
                        DataCell(Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            HeadingText(
                              size: 14,
                              value: "0(0.0%)",
                            ),
                            HeadingText(
                              size: 14,
                              value: "0(0.0%)",
                            ),
                          ],
                        )),
                        DataCell(Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            HeadingText(
                              size: 14,
                              value: "0(0.0%)",
                            ),
                            HeadingText(
                              size: 14,
                              value: "0(0.0%)",
                            ),
                          ],
                        )),
                        DataCell(Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            HeadingText(
                              size: 14,
                              value: "0(0.0%)",
                            ),
                            HeadingText(
                              size: 14,
                              value: "0(0.0%)",
                            ),
                          ],
                        )),
                      ]),
                      DataRow(cells: [
                        DataCell(HeadingText(
                          size: 14,
                          value: "5",
                        )),
                        DataCell(HeadingText(
                          size: 14,
                          value: "CLASS ONE",
                        )),
                        DataCell(Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            HeadingText(
                              size: 14,
                              value: "9",
                            ),
                            HeadingText(
                              size: 14,
                              value: "9",
                            ),
                          ],
                        )),
                        DataCell(Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            HeadingText(
                              size: 14,
                              value: "0(0.0%)",
                            ),
                            HeadingText(
                              size: 14,
                              value: "0(0.0%)",
                            ),
                          ],
                        )),
                        DataCell(Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            HeadingText(
                              size: 14,
                              value: "0(0.0%)",
                            ),
                            HeadingText(
                              size: 14,
                              value: "0(0.0%)",
                            ),
                          ],
                        )),
                        DataCell(Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            HeadingText(
                              size: 14,
                              value: "0(0.0%)",
                            ),
                            HeadingText(
                              size: 14,
                              value: "0(0.0%)",
                            ),
                          ],
                        )),
                      ]),
                      DataRow(cells: [
                        DataCell(HeadingText(
                          size: 14,
                          value: "6",
                        )),
                        DataCell(HeadingText(
                          size: 14,
                          value: "CLASS TWO",
                        )),
                        DataCell(Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            HeadingText(
                              size: 14,
                              value: "9",
                            ),
                            HeadingText(
                              size: 14,
                              value: "9",
                            ),
                          ],
                        )),
                        DataCell(Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            HeadingText(
                              size: 14,
                              value: "0(0.0%)",
                            ),
                            HeadingText(
                              size: 14,
                              value: "0(0.0%)",
                            ),
                          ],
                        )),
                        DataCell(Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            HeadingText(
                              size: 14,
                              value: "0(0.0%)",
                            ),
                            HeadingText(
                              size: 14,
                              value: "0(0.0%)",
                            ),
                          ],
                        )),
                        DataCell(Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            HeadingText(
                              size: 14,
                              value: "0(0.0%)",
                            ),
                            HeadingText(
                              size: 14,
                              value: "0(0.0%)",
                            ),
                          ],
                        )),
                      ]),
                      DataRow(cells: [
                        DataCell(HeadingText(
                          size: 14,
                          value: "7",
                        )),
                        DataCell(HeadingText(
                          size: 14,
                          value: "CLASS THREE",
                        )),
                        DataCell(Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            HeadingText(
                              size: 14,
                              value: "9",
                            ),
                            HeadingText(
                              size: 14,
                              value: "9",
                            ),
                          ],
                        )),
                        DataCell(Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            HeadingText(
                              size: 14,
                              value: "0(0.0%)",
                            ),
                            HeadingText(
                              size: 14,
                              value: "0(0.0%)",
                            ),
                          ],
                        )),
                        DataCell(Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            HeadingText(
                              size: 14,
                              value: "0(0.0%)",
                            ),
                            HeadingText(
                              size: 14,
                              value: "0(0.0%)",
                            ),
                          ],
                        )),
                        DataCell(Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            HeadingText(
                              size: 14,
                              value: "0(0.0%)",
                            ),
                            HeadingText(
                              size: 14,
                              value: "0(0.0%)",
                            ),
                          ],
                        )),
                      ]),
                      DataRow(cells: [
                        DataCell(HeadingText(
                          size: 14,
                          value: "8",
                        )),
                        DataCell(HeadingText(
                          size: 14,
                          value: "CLASS FOUR",
                        )),
                        DataCell(Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            HeadingText(
                              size: 14,
                              value: "9",
                            ),
                            HeadingText(
                              size: 14,
                              value: "9",
                            ),
                          ],
                        )),
                        DataCell(Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            HeadingText(
                              size: 14,
                              value: "0(0.0%)",
                            ),
                            HeadingText(
                              size: 14,
                              value: "0(0.0%)",
                            ),
                          ],
                        )),
                        DataCell(Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            HeadingText(
                              size: 14,
                              value: "0(0.0%)",
                            ),
                            HeadingText(
                              size: 14,
                              value: "0(0.0%)",
                            ),
                          ],
                        )),
                        DataCell(Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            HeadingText(
                              size: 14,
                              value: "0(0.0%)",
                            ),
                            HeadingText(
                              size: 14,
                              value: "0(0.0%)",
                            ),
                          ],
                        )),
                      ]),
                      DataRow(cells: [
                        DataCell(HeadingText(
                          size: 14,
                          value: "9",
                        )),
                        DataCell(HeadingText(
                          size: 14,
                          value: "CLASS FIVE",
                        )),
                        DataCell(Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            HeadingText(
                              size: 14,
                              value: "9",
                            ),
                            HeadingText(
                              size: 14,
                              value: "9",
                            ),
                          ],
                        )),
                        DataCell(Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            HeadingText(
                              size: 14,
                              value: "0(0.0%)",
                            ),
                            HeadingText(
                              size: 14,
                              value: "0(0.0%)",
                            ),
                          ],
                        )),
                        DataCell(Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            HeadingText(
                              size: 14,
                              value: "0(0.0%)",
                            ),
                            HeadingText(
                              size: 14,
                              value: "0(0.0%)",
                            ),
                          ],
                        )),
                        DataCell(Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            HeadingText(
                              size: 14,
                              value: "0(0.0%)",
                            ),
                            HeadingText(
                              size: 14,
                              value: "0(0.0%)",
                            ),
                          ],
                        )),
                      ]),
                      DataRow(cells: [
                        DataCell(HeadingText(
                          size: 14,
                          value: "10",
                        )),
                        DataCell(HeadingText(
                          size: 14,
                          value: "CLASS SIX",
                        )),
                        DataCell(Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            HeadingText(
                              size: 14,
                              value: "9",
                            ),
                            HeadingText(
                              size: 14,
                              value: "9",
                            ),
                          ],
                        )),
                        DataCell(Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            HeadingText(
                              size: 14,
                              value: "0(0.0%)",
                            ),
                            HeadingText(
                              size: 14,
                              value: "0(0.0%)",
                            ),
                          ],
                        )),
                        DataCell(Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            HeadingText(
                              size: 14,
                              value: "0(0.0%)",
                            ),
                            HeadingText(
                              size: 14,
                              value: "0(0.0%)",
                            ),
                          ],
                        )),
                        DataCell(Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            HeadingText(
                              size: 14,
                              value: "0(0.0%)",
                            ),
                            HeadingText(
                              size: 14,
                              value: "0(0.0%)",
                            ),
                          ],
                        )),
                      ]),
                      DataRow(cells: [
                        DataCell(HeadingText(
                          size: 14,
                          value: "11",
                        )),
                        DataCell(HeadingText(
                          size: 14,
                          value: "CLASS SEVEN",
                        )),
                        DataCell(Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            HeadingText(
                              size: 14,
                              value: "9",
                            ),
                            HeadingText(
                              size: 14,
                              value: "9",
                            ),
                          ],
                        )),
                        DataCell(Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            HeadingText(
                              size: 14,
                              value: "0(0.0%)",
                            ),
                            HeadingText(
                              size: 14,
                              value: "0(0.0%)",
                            ),
                          ],
                        )),
                        DataCell(Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            HeadingText(
                              size: 14,
                              value: "0(0.0%)",
                            ),
                            HeadingText(
                              size: 14,
                              value: "0(0.0%)",
                            ),
                          ],
                        )),
                        DataCell(Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            HeadingText(
                              size: 14,
                              value: "0(0.0%)",
                            ),
                            HeadingText(
                              size: 14,
                              value: "0(0.0%)",
                            ),
                          ],
                        )),
                      ])
                    ]),
              ),
            ),
          ]),
        )
      ])),
    );
  }
}
