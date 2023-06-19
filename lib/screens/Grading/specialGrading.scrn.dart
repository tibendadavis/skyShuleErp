import 'package:flutter/material.dart';
import 'package:skyconnect_starter/components/downloadBar.comp.dart';
import 'package:skyconnect_starter/components/heading_text.dart';
import 'package:skyconnect_starter/components/searchBar.comp.dart';
import 'package:skyconnect_starter/components/searchInputOptions.comp.dart';
import 'package:skyconnect_starter/components/tile3.comp.dart';
import 'package:skyconnect_starter/controllers/responsive.dart';
import 'package:skyconnect_starter/screens/Grading/addSpecialGrading.scrn.dart';
import 'package:skyconnect_starter/theme/design.theme.dart';

class specialGrading extends StatefulWidget {
  const specialGrading({super.key});

  @override
  State<specialGrading> createState() => _specialGradingState();
}

class _specialGradingState extends State<specialGrading> {
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
            value: "Special Grade",
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
              child: tile3(
                icon: Icons.grading_outlined,
                link: addSpecialGrading(),
                linkTitle: "New Special Grade",
              ),
            ),
          ],
        ),
        searchBar(
            title: "Search for Special Grade ",
            opt1: searchInputOptions(
              title: "Special Grade Category",
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
                            ? size.width / 38
                            : Responsive.isDesktop(context) && size.width > 1600
                                ? size.width / 25
                                : 25,
                    showCheckboxColumn: true,
                    checkboxHorizontalMargin: 10,
                    showBottomBorder: true,
                    columns: [
                      DataColumn(
                          label: Expanded(
                        child: HeadingText(
                          size: 14,
                          value: "No.",
                          fontWeight: FontWeight.w700,
                        ),
                      )),
                      DataColumn(
                          label: HeadingText(
                        size: 14,
                        value: "Grade Name",
                        fontWeight: FontWeight.w700,
                      )),
                      DataColumn(
                          label: HeadingText(
                        size: 14,
                        value: "Grade Point",
                        fontWeight: FontWeight.w700,
                      )),
                      DataColumn(
                          label: HeadingText(
                        size: 14,
                        value: "Mark From",
                        fontWeight: FontWeight.w700,
                      )),
                      DataColumn(
                          label: HeadingText(
                        size: 14,
                        value: "Mark Up to",
                        fontWeight: FontWeight.w700,
                      )),
                      DataColumn(
                          label: HeadingText(
                        size: 14,
                        value: "Remark",
                        fontWeight: FontWeight.w700,
                      )),
                      DataColumn(
                          label: HeadingText(
                        size: 14,
                        value: "Overall Academic Note",
                        fontWeight: FontWeight.w700,
                      )),
                      DataColumn(
                          label: HeadingText(
                        size: 14,
                        value: "Overall Remark",
                        fontWeight: FontWeight.w700,
                      )),
                      DataColumn(
                          label: HeadingText(
                        size: 14,
                        value: "Action",
                        fontWeight: FontWeight.w700,
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
                          value: "A",
                        )),
                        DataCell(HeadingText(
                          size: 14,
                          value: "1",
                        )),
                        DataCell(HeadingText(
                          size: 14,
                          value: "41",
                        )),
                        DataCell(HeadingText(
                          size: 14,
                          value: "50",
                        )),
                        DataCell(HeadingText(
                          size: 14,
                          value: "Excellent",
                        )),
                        DataCell(HeadingText(
                          size: 14,
                          value: "Excellent",
                        )),
                        DataCell(HeadingText(
                          size: 14,
                          value: "Excellent",
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
                        DataCell(HeadingText(
                          size: 14,
                          value: "2",
                        )),
                        DataCell(HeadingText(
                          size: 14,
                          value: "B",
                        )),
                        DataCell(HeadingText(
                          size: 14,
                          value: "2",
                        )),
                        DataCell(HeadingText(
                          size: 14,
                          value: "31",
                        )),
                        DataCell(HeadingText(
                          size: 14,
                          value: "40",
                        )),
                        DataCell(HeadingText(
                          size: 14,
                          value: "Very Good",
                        )),
                        DataCell(HeadingText(
                          size: 14,
                          value: "Very Good",
                        )),
                        DataCell(HeadingText(
                          size: 14,
                          value: "Very Good",
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
                        DataCell(HeadingText(
                          size: 14,
                          value: "3",
                        )),
                        DataCell(HeadingText(
                          size: 14,
                          value: "C",
                        )),
                        DataCell(HeadingText(
                          size: 14,
                          value: "3",
                        )),
                        DataCell(HeadingText(
                          size: 14,
                          value: "21",
                        )),
                        DataCell(HeadingText(
                          size: 14,
                          value: "30",
                        )),
                        DataCell(HeadingText(
                          size: 14,
                          value: "Good",
                        )),
                        DataCell(HeadingText(
                          size: 14,
                          value: "Good",
                        )),
                        DataCell(HeadingText(
                          size: 14,
                          value: "Good",
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
                        DataCell(HeadingText(
                          size: 14,
                          value: "4",
                        )),
                        DataCell(HeadingText(
                          size: 14,
                          value: "D",
                        )),
                        DataCell(HeadingText(
                          size: 14,
                          value: "4",
                        )),
                        DataCell(HeadingText(
                          size: 14,
                          value: "11",
                        )),
                        DataCell(HeadingText(
                          size: 14,
                          value: "20",
                        )),
                        DataCell(HeadingText(
                          size: 14,
                          value: "Fair",
                        )),
                        DataCell(HeadingText(
                          size: 14,
                          value: "Fair",
                        )),
                        DataCell(HeadingText(
                          size: 14,
                          value: "Fair",
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
                        DataCell(HeadingText(
                          size: 14,
                          value: "5",
                        )),
                        DataCell(HeadingText(
                          size: 14,
                          value: "F",
                        )),
                        DataCell(HeadingText(
                          size: 14,
                          value: "5",
                        )),
                        DataCell(HeadingText(
                          size: 14,
                          value: "0",
                        )),
                        DataCell(HeadingText(
                          size: 14,
                          value: "10",
                        )),
                        DataCell(HeadingText(
                          size: 14,
                          value: "Poor",
                        )),
                        DataCell(HeadingText(
                          size: 14,
                          value: "Poor",
                        )),
                        DataCell(HeadingText(
                          size: 14,
                          value: "Poor",
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
          ]),
        )
      ])),
    );
  }
}
