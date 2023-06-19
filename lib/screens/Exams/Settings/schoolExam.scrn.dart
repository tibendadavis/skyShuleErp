import 'package:flutter/material.dart';
import 'package:skyconnect_starter/components/downloadBar.comp.dart';
import 'package:skyconnect_starter/components/heading_text.dart';
import 'package:skyconnect_starter/components/searchBar.comp.dart';
import 'package:skyconnect_starter/components/searchInputOptions.comp.dart';
import 'package:skyconnect_starter/components/tile2.comp.dart';
import 'package:skyconnect_starter/components/tile3.comp.dart';
import 'package:skyconnect_starter/controllers/responsive.dart';
import 'package:skyconnect_starter/screens/Exams/Settings/addSchoolExam.scrn.dart';
import 'package:skyconnect_starter/theme/design.theme.dart';

class schoolExams extends StatefulWidget {
  const schoolExams({super.key});

  @override
  State<schoolExams> createState() => _supportingStaffState();
}

class _supportingStaffState extends State<schoolExams> {
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
            value: "School Exams",
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
                  icon: Icons.text_snippet_outlined,
                  link: addSchoolExam(),
                  linkTitle: "New Exam",
                )),
            SizedBox(
              width: Responsive.isDesktop(context)
                  ? 360
                  : MediaQuery.of(context).size.width,
              child: tile2(tileHeading: "School Exams", tileData: "7"),
            ),
          ],
        ),
        searchBar(
          title: "Search for School Exams",
          opt1: searchInputOptions(title: "Class Level", opt1: ""),
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
                            ? size.width / 45
                            : Responsive.isDesktop(context) && size.width > 1600
                                ? size.width / 20
                                : 25,
                    showCheckboxColumn: true,
                    checkboxHorizontalMargin: 10,
                    showBottomBorder: true,
                    columns: [
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
                        value: "Class Level",
                        fontWeight: FontWeight.w700,
                      )),
                      DataColumn(
                          label: HeadingText(
                        size: 14,
                        value: "Exam Group",
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
                          value: "Top Mark 2 June",
                        )),
                        DataCell(HeadingText(
                          size: 14,
                          value: "Primary",
                        )),
                        DataCell(HeadingText(
                          size: 14,
                          value: "Not Defined",
                        )),
                        DataCell(SizedBox(
                            width: Responsive.isDesktop(context) ? 400 : 300,
                            child: HeadingText(
                              size: 14,
                              value: " ",
                            ))),
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
                          value: "End of July Exams",
                        )),
                        DataCell(HeadingText(
                          size: 14,
                          value: "Primary",
                        )),
                        DataCell(HeadingText(
                          size: 14,
                          value: "Not Defined",
                        )),
                        DataCell(SizedBox(
                            width: Responsive.isDesktop(context) ? 500 : 300,
                            child: HeadingText(
                              size: 14,
                              value: " ",
                            ))),
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
                          value: "End of Term One Exams",
                        )),
                        DataCell(HeadingText(
                          size: 14,
                          value: "Primary",
                        )),
                        DataCell(HeadingText(
                          size: 14,
                          value: "Not Defined",
                        )),
                        DataCell(SizedBox(
                            width: Responsive.isDesktop(context) ? 500 : 300,
                            child: HeadingText(
                              size: 14,
                              value: " ",
                            ))),
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
                          value: "End of July Exams",
                        )),
                        DataCell(HeadingText(
                          size: 14,
                          value: "Primary",
                        )),
                        DataCell(HeadingText(
                          size: 14,
                          value: "Not Defined",
                        )),
                        DataCell(SizedBox(
                            width: Responsive.isDesktop(context) ? 500 : 300,
                            child: HeadingText(
                              size: 14,
                              value: " ",
                            ))),
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
                          value: "END OF QUARTER THREE EXAMS",
                        )),
                        DataCell(HeadingText(
                          size: 14,
                          value: "Primary",
                        )),
                        DataCell(HeadingText(
                          size: 14,
                          value: "Not Defined",
                        )),
                        DataCell(SizedBox(
                            width: Responsive.isDesktop(context) ? 500 : 300,
                            child: HeadingText(
                              size: 14,
                              value: " ",
                            ))),
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
                          value: "END OF QUARTER THREE EXAMS",
                        )),
                        DataCell(HeadingText(
                          size: 14,
                          value: "Nursery",
                        )),
                        DataCell(HeadingText(
                          size: 14,
                          value: "Not Defined",
                        )),
                        DataCell(SizedBox(
                            width: Responsive.isDesktop(context) ? 500 : 300,
                            child: HeadingText(
                              size: 14,
                              value: " ",
                            ))),
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
                          value: "END OF OCTOBER EXAMS",
                        )),
                        DataCell(HeadingText(
                          size: 14,
                          value: "Primary",
                        )),
                        DataCell(HeadingText(
                          size: 14,
                          value: "Not Defined",
                        )),
                        DataCell(SizedBox(
                            width: Responsive.isDesktop(context) ? 500 : 300,
                            child: HeadingText(
                              size: 14,
                              value: " ",
                            ))),
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
                          value: "END OF YEAR EXAMS",
                        )),
                        DataCell(HeadingText(
                          size: 14,
                          value: "Primary",
                        )),
                        DataCell(HeadingText(
                          size: 14,
                          value: "Not Defined",
                        )),
                        DataCell(SizedBox(
                            width: Responsive.isDesktop(context) ? 500 : 300,
                            child: HeadingText(
                              size: 14,
                              value: " ",
                            ))),
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
                          value: "JANUARY END OF MONTH",
                        )),
                        DataCell(HeadingText(
                          size: 14,
                          value: "Primary",
                        )),
                        DataCell(HeadingText(
                          size: 14,
                          value: "Not Defined",
                        )),
                        DataCell(SizedBox(
                            width: Responsive.isDesktop(context) ? 500 : 300,
                            child: HeadingText(
                              size: 14,
                              value: " ",
                            ))),
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
