import 'package:flutter/material.dart';
import 'package:skyconnect_starter/components/downloadBar.comp.dart';
import 'package:skyconnect_starter/components/heading_text.dart';
import 'package:skyconnect_starter/components/searchBar.comp.dart';
import 'package:skyconnect_starter/components/tile2.comp.dart';
import 'package:skyconnect_starter/components/tile3.comp.dart';
import 'package:skyconnect_starter/controllers/responsive.dart';
import 'package:skyconnect_starter/screens/Exams/Settings/addExamGroup.scrn.dart';
import 'package:skyconnect_starter/theme/design.theme.dart';

class examGroup extends StatefulWidget {
  const examGroup({super.key});

  @override
  State<examGroup> createState() => _supportingStaffState();
}

class _supportingStaffState extends State<examGroup> {
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
            value: "Exam Group",
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
                  link: addExamGroup(),
                  linkTitle: "New Exam Group",
                )),
            SizedBox(
              width: Responsive.isDesktop(context)
                  ? 360
                  : MediaQuery.of(context).size.width,
              child: tile2(tileHeading: "Exam Groups", tileData: "7"),
            ),
          ],
        ),
        searchBar(
          title: "Search for Exam Group",
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
                            ? size.width / 25
                            : Responsive.isDesktop(context) && size.width > 1600
                                ? size.width / 15
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
                        value: "Weight",
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
                          value: "Quizes",
                        )),
                        DataCell(HeadingText(
                          size: 14,
                          value: "20",
                        )),
                        DataCell(HeadingText(
                          size: 14,
                          value: "Minor Exams",
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
                          value: "Assignments",
                        )),
                        DataCell(HeadingText(
                          size: 14,
                          value: "20",
                        )),
                        DataCell(HeadingText(
                          size: 14,
                          value: "Minor Exams",
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
                          value: "Exercises",
                        )),
                        DataCell(HeadingText(
                          size: 14,
                          value: "10",
                        )),
                        DataCell(SizedBox(
                          width: Responsive.isDesktop(context) ? 600 : 400,
                          child: HeadingText(
                            size: 14,
                            value:
                                "This is a set of tasks assigned to students by their teachers to be completed outside the class",
                          ),
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
                          value: "Main Exams",
                        )),
                        DataCell(HeadingText(
                          size: 14,
                          value: "100",
                        )),
                        DataCell(SizedBox(
                          width: Responsive.isDesktop(context) ? 600 : 400,
                          child: HeadingText(
                            size: 14,
                            value:
                                "List of Exams Performed by all subjects at once",
                          ),
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
                          value: "WEEKLY TEST",
                        )),
                        DataCell(HeadingText(
                          size: 14,
                          value: "100",
                        )),
                        DataCell(SizedBox(
                          width: Responsive.isDesktop(context) ? 600 : 400,
                          child: HeadingText(
                            size: 14,
                            value:
                                "Exams and tests are a great way to assses what the students have learned with regards to particular subjects",
                          ),
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
                          value: "MONTHLY TEST",
                        )),
                        DataCell(HeadingText(
                          size: 14,
                          value: "100",
                        )),
                        DataCell(SizedBox(
                          width: Responsive.isDesktop(context) ? 600 : 400,
                          child: HeadingText(
                            size: 14,
                            value:
                                "Homework is a necessary part of school life which promote learning",
                          ),
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
