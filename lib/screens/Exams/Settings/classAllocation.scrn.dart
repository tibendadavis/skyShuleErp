import 'package:flutter/material.dart';
import 'package:skyconnect_starter/components/downloadBar.comp.dart';
import 'package:skyconnect_starter/components/heading_text.dart';
import 'package:skyconnect_starter/components/searchBar.comp.dart';
import 'package:skyconnect_starter/components/searchInputOptions.comp.dart';
import 'package:skyconnect_starter/components/tile2.comp.dart';
import 'package:skyconnect_starter/components/tile3.comp.dart';
import 'package:skyconnect_starter/controllers/responsive.dart';
import 'package:skyconnect_starter/theme/design.theme.dart';

class classAllocations extends StatefulWidget {
  const classAllocations({super.key});

  @override
  State<classAllocations> createState() => _supportingStaffState();
}

class _supportingStaffState extends State<classAllocations> {
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
            value: "Class Allocations",
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
                  icon: Icons.create,
                  link: null,
                  linkTitle: "Define Exam",
                )),
            SizedBox(
                width: Responsive.isDesktop(context)
                    ? 360
                    : MediaQuery.of(context).size.width,
                child: tile2(tileHeading: "Class Allocations", tileData: "7")),
          ],
        ),
        searchBar(
          title: "Search for Exams",
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
                                ? size.width / 20
                                : 25,
                    showCheckboxColumn: true,
                    checkboxHorizontalMargin: 10,
                    showBottomBorder: true,
                    columns: [
                      DataColumn(
                          label: SizedBox(
                        width: Responsive.isDesktop(context) ? 20 : null,
                        child: HeadingText(
                          size: 14,
                          value: "No.",
                          fontWeight: FontWeight.w700,
                        ),
                      )),
                      DataColumn(
                          label: HeadingText(
                        size: 14,
                        value: "Exam Name",
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
                        value: "Date",
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
                        value: "Note",
                        fontWeight: FontWeight.w700,
                      )),
                      DataColumn(
                          label: Expanded(
                        child: Center(
                          child: HeadingText(
                            size: 14,
                            value: "Action",
                            fontWeight: FontWeight.w700,
                          ),
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
                          value: "WEEKLY EXAMINATION",
                        )),
                        DataCell(HeadingText(
                          size: 14,
                          value: "FIRST TERM",
                        )),
                        DataCell(HeadingText(
                          size: 14,
                          value: "14 Jan 2022",
                        )),
                        DataCell(HeadingText(
                          size: 14,
                          value: "WE",
                        )),
                        DataCell(HeadingText(
                          size: 14,
                          value: " ",
                        )),
                        DataCell(Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            TextButton(
                              onPressed: () {},
                              child: HeadingText(
                                size: 14,
                                value: "Edit",
                              ),
                            ),
                            SizedBox(
                              width: 10,
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
                        DataCell(HeadingText(
                          size: 14,
                          value: "2",
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
                        DataCell(HeadingText(
                          size: 14,
                          value: " ",
                        )),
                        DataCell(Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            TextButton(
                              onPressed: () {},
                              child: HeadingText(
                                size: 14,
                                value: "Edit",
                              ),
                            ),
                            SizedBox(
                              width: 10,
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
                        DataCell(HeadingText(
                          size: 14,
                          value: "3",
                        )),
                        DataCell(HeadingText(
                          size: 14,
                          value: "TOP MARK VI MARCH 2022",
                        )),
                        DataCell(HeadingText(
                          size: 14,
                          value: "SECOND TERM",
                        )),
                        DataCell(HeadingText(
                          size: 14,
                          value: "09 Mar 2022",
                        )),
                        DataCell(HeadingText(
                          size: 14,
                          value: "TM6",
                        )),
                        DataCell(HeadingText(
                          size: 14,
                          value: " ",
                        )),
                        DataCell(Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            TextButton(
                              onPressed: () {},
                              child: HeadingText(
                                size: 14,
                                value: "Edit",
                              ),
                            ),
                            SizedBox(
                              width: 10,
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
                        DataCell(HeadingText(
                          size: 14,
                          value: "4",
                        )),
                        DataCell(HeadingText(
                          size: 14,
                          value: "MID TERM 1",
                        )),
                        DataCell(HeadingText(
                          size: 14,
                          value: "FIRST TERM",
                        )),
                        DataCell(HeadingText(
                          size: 14,
                          value: "04 Apr 2022",
                        )),
                        DataCell(HeadingText(
                          size: 14,
                          value: "MT1",
                        )),
                        DataCell(HeadingText(
                          size: 14,
                          value: " ",
                        )),
                        DataCell(Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            TextButton(
                              onPressed: () {},
                              child: HeadingText(
                                size: 14,
                                value: "Edit",
                              ),
                            ),
                            SizedBox(
                              width: 10,
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
                        DataCell(HeadingText(
                          size: 14,
                          value: "5",
                        )),
                        DataCell(HeadingText(
                          size: 14,
                          value: "TOP MARK 9",
                        )),
                        DataCell(HeadingText(
                          size: 14,
                          value: "FIRST TERM",
                        )),
                        DataCell(HeadingText(
                          size: 14,
                          value: "27 May 2022",
                        )),
                        DataCell(HeadingText(
                          size: 14,
                          value: "TM9",
                        )),
                        DataCell(HeadingText(
                          size: 14,
                          value: "'ALWAYS AIM AT THE TOP'",
                        )),
                        DataCell(Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            TextButton(
                              onPressed: () {},
                              child: HeadingText(
                                size: 14,
                                value: "Edit",
                              ),
                            ),
                            SizedBox(
                              width: 10,
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
                        DataCell(HeadingText(
                          size: 14,
                          value: "6",
                        )),
                        DataCell(HeadingText(
                          size: 14,
                          value: "TOP MARK 10",
                        )),
                        DataCell(HeadingText(
                          size: 14,
                          value: "FIRST TERM",
                        )),
                        DataCell(HeadingText(
                          size: 14,
                          value: "03 Jun 2022",
                        )),
                        DataCell(HeadingText(
                          size: 14,
                          value: "TM10",
                        )),
                        DataCell(HeadingText(
                          size: 14,
                          value: " ",
                        )),
                        DataCell(Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            TextButton(
                              onPressed: () {},
                              child: HeadingText(
                                size: 14,
                                value: "Edit",
                              ),
                            ),
                            SizedBox(
                              width: 10,
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
                        DataCell(HeadingText(
                          size: 14,
                          value: "7",
                        )),
                        DataCell(HeadingText(
                          size: 14,
                          value: "TOP MARK 11",
                        )),
                        DataCell(HeadingText(
                          size: 14,
                          value: "FIRST TERM",
                        )),
                        DataCell(HeadingText(
                          size: 14,
                          value: "10 Jun 2022",
                        )),
                        DataCell(HeadingText(
                          size: 14,
                          value: "TM11",
                        )),
                        DataCell(HeadingText(
                          size: 14,
                          value: " ",
                        )),
                        DataCell(Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            TextButton(
                              onPressed: () {},
                              child: HeadingText(
                                size: 14,
                                value: "Edit",
                              ),
                            ),
                            SizedBox(
                              width: 10,
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
                        DataCell(HeadingText(
                          size: 14,
                          value: "8",
                        )),
                        DataCell(HeadingText(
                          size: 14,
                          value: "TOP MARK 12",
                        )),
                        DataCell(HeadingText(
                          size: 14,
                          value: "FIRST TERM",
                        )),
                        DataCell(HeadingText(
                          size: 14,
                          value: "16 Jun 2022",
                        )),
                        DataCell(HeadingText(
                          size: 14,
                          value: "TM12",
                        )),
                        DataCell(HeadingText(
                          size: 14,
                          value: " ",
                        )),
                        DataCell(Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            TextButton(
                              onPressed: () {},
                              child: HeadingText(
                                size: 14,
                                value: "Edit",
                              ),
                            ),
                            SizedBox(
                              width: 10,
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
                        DataCell(HeadingText(
                          size: 14,
                          value: "9",
                        )),
                        DataCell(HeadingText(
                          size: 14,
                          value: "END OF JUNE EXAMINATION",
                        )),
                        DataCell(HeadingText(
                          size: 14,
                          value: "FIRST TERM",
                        )),
                        DataCell(HeadingText(
                          size: 14,
                          value: "20 Jun 2022",
                        )),
                        DataCell(HeadingText(
                          size: 14,
                          value: "EJE",
                        )),
                        DataCell(HeadingText(
                          size: 14,
                          value: " ",
                        )),
                        DataCell(Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            TextButton(
                              onPressed: () {},
                              child: HeadingText(
                                size: 14,
                                value: "Edit",
                              ),
                            ),
                            SizedBox(
                              width: 10,
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
          ]),
        )
      ])),
    );
  }
}
