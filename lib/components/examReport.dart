import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:skyconnect_starter/components/heading5.dart';
import 'package:skyconnect_starter/components/heading6.dart';
import 'package:skyconnect_starter/components/heading_text.dart';
import 'package:skyconnect_starter/controllers/responsive.dart';
import 'package:skyconnect_starter/theme/design.theme.dart';

class examReport extends StatefulWidget {
  const examReport({super.key});

  @override
  State<examReport> createState() => _examReportState();
}

class _examReportState extends State<examReport> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Flex(
          direction:
              Responsive.isDesktop(context) ? Axis.horizontal : Axis.vertical,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            HeadingText(
              size: Responsive.isDesktop(context) ? 20 : 17,
              value: "SELECT CLASS TO VIEW EXAM RESULTS: ",
              fontWeight: FontWeight.bold,
            ),
            SizedBox(
              width: Responsive.isDesktop(context) ? 15 : 0,
              height: Responsive.isDesktop(context) ? 0 : 5,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                InkWell(
                  onTap: () {},
                  child: Container(
                    padding: EdgeInsets.only(
                        left: Responsive.isDesktop(context) ? 10 : 5,
                        right: Responsive.isDesktop(context) ? 10 : 5,
                        top: 2,
                        bottom: 2),
                    decoration: BoxDecoration(
                        border: Border.all(width: 1, color: Colors.black),
                        color: Color.fromARGB(115, 158, 158, 158),
                        borderRadius: BorderRadius.circular(40)),
                    child: HeadingText(
                      size: Responsive.isDesktop(context) ? 13 : 12,
                      value: "Class Seven - 2022",
                    ),
                  ),
                ),
                SizedBox(
                  width: Responsive.isDesktop(context) ? 15 : 5,
                ),
                InkWell(
                  onTap: () {},
                  child: Container(
                    padding: EdgeInsets.only(
                        left: Responsive.isDesktop(context) ? 10 : 5,
                        right: Responsive.isDesktop(context) ? 10 : 5,
                        top: 2,
                        bottom: 2),
                    decoration: BoxDecoration(
                        border: Border.all(width: 1, color: Colors.black),
                        color: Color.fromARGB(115, 158, 158, 158),
                        borderRadius: BorderRadius.circular(40)),
                    child: HeadingText(
                      size: Responsive.isDesktop(context) ? 13 : 12,
                      value: "Class Six - 2021",
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
        SizedBox(
          height: Responsive.isDesktop(context) ? 0 : 5,
        ),
        SizedBox(
            width: MediaQuery.of(context).size.width,
            child: Divider(thickness: 1, color: Colors.grey)),
        Heading5(
          value: "FIRST TERM: Single Exam Report",
          fontWeight: FontWeight.bold,
        ),
        SizedBox(
            width: MediaQuery.of(context).size.width,
            child: Divider(thickness: 1, color: Colors.grey)),
        Expanded(
          child: ListView(
            children: [
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: DataTable(
                    headingTextStyle: TextStyle(color: Palette().primaryColor),
                    horizontalMargin: 0,
                    columnSpacing: Responsive.isDesktop(context) ? 20 : 10,
                    columns: [
                      DataColumn(
                          label: SizedBox(
                        width: Responsive.isDesktop(context) ? 200 : 100,
                        child: Center(
                          child: HeadingText(
                            size: Responsive.isDesktop(context) ? 14 : 13,
                            value: "Exam Name",
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      )),
                      DataColumn(
                          label: SizedBox(
                        width: Responsive.isDesktop(context) ? 200 : 100,
                        child: Center(
                          child: HeadingText(
                            size: Responsive.isDesktop(context) ? 14 : 13,
                            value: "Exam Date",
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      )),
                      DataColumn(
                          label: SizedBox(
                        width: Responsive.isDesktop(context) ? 200 : 100,
                        child: Center(
                          child: HeadingText(
                            size: Responsive.isDesktop(context) ? 14 : 13,
                            value: "Marketing Status",
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      )),
                      DataColumn(
                          label: SizedBox(
                        width: Responsive.isDesktop(context) ? 200 : 100,
                        child: Center(
                          child: HeadingText(
                            size: Responsive.isDesktop(context) ? 14 : 13,
                            value: "Action",
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      )),
                    ],
                    rows: [
                      DataRow(cells: [
                        DataCell(Center(
                          child: HeadingText(
                            size: Responsive.isDesktop(context) ? 14 : 13,
                            value: "MID TERM EXAM",
                          ),
                        )),
                        DataCell(Center(
                          child: HeadingText(
                            size: Responsive.isDesktop(context) ? 14 : 13,
                            value: "23 MARCH 2022",
                          ),
                        )),
                        DataCell(Center(
                          child: HeadingText(
                            size: Responsive.isDesktop(context) ? 14 : 13,
                            value: "6 MARKED SUBJECTS",
                          ),
                        )),
                        DataCell(Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            InkWell(
                              onTap: () {},
                              child: Container(
                                padding: EdgeInsets.only(
                                    left: 10, right: 10, top: 2, bottom: 2),
                                decoration: BoxDecoration(
                                    border: Border.all(
                                        width: 1, color: Colors.black),
                                    color: Color.fromARGB(115, 158, 158, 158),
                                    borderRadius: BorderRadius.circular(40)),
                                child: Heading6(
                                  value: "View",
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            InkWell(
                              onTap: () {},
                              child: Container(
                                padding: EdgeInsets.only(
                                    left: 10, right: 10, top: 2, bottom: 2),
                                decoration: BoxDecoration(
                                    border: Border.all(
                                        width: 1,
                                        color: Palette().primaryColor),
                                    color: Color.fromARGB(255, 255, 255, 255),
                                    borderRadius: BorderRadius.circular(40)),
                                child: Row(
                                  children: [
                                    Icon(
                                      Icons.cloud_download_outlined,
                                      color: Palette().primaryColor,
                                    ),
                                    SizedBox(
                                      width: 5,
                                    ),
                                    Heading6(
                                      value: "Download",
                                      color: Palette().primaryColor,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        )),
                      ]),
                      DataRow(cells: [
                        DataCell(Center(
                          child: HeadingText(
                            size: Responsive.isDesktop(context) ? 14 : 13,
                            value: "END OF JUNE EXAM",
                          ),
                        )),
                        DataCell(Center(
                          child: HeadingText(
                            size: Responsive.isDesktop(context) ? 14 : 13,
                            value: "20 JUNE 2022",
                          ),
                        )),
                        DataCell(Center(
                          child: HeadingText(
                            size: Responsive.isDesktop(context) ? 14 : 13,
                            value: "6 MARKED SUBJECTS",
                          ),
                        )),
                        DataCell(Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            InkWell(
                              onTap: () {},
                              child: Container(
                                padding: EdgeInsets.only(
                                    left: 10, right: 10, top: 2, bottom: 2),
                                decoration: BoxDecoration(
                                    border: Border.all(
                                        width: 1, color: Colors.black),
                                    color: Color.fromARGB(115, 158, 158, 158),
                                    borderRadius: BorderRadius.circular(40)),
                                child: Heading6(
                                  value: "View",
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            InkWell(
                              onTap: () {},
                              child: Container(
                                padding: EdgeInsets.only(
                                    left: 10, right: 10, top: 2, bottom: 2),
                                decoration: BoxDecoration(
                                    border: Border.all(
                                        width: 1,
                                        color: Palette().primaryColor),
                                    color: Color.fromARGB(255, 255, 255, 255),
                                    borderRadius: BorderRadius.circular(40)),
                                child: Row(
                                  children: [
                                    Icon(
                                      Icons.cloud_download_outlined,
                                      color: Palette().primaryColor,
                                    ),
                                    SizedBox(
                                      width: 5,
                                    ),
                                    Heading6(
                                      value: "Download",
                                      color: Palette().primaryColor,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        )),
                      ]),
                    ]),
              ),
            ],
          ),
        ),
        SizedBox(
          height: Responsive.isDesktop(context) ? 10 : 20,
        ),
        Heading5(
          value: "School Accumulative Reports",
          fontWeight: FontWeight.bold,
        ),
        SizedBox(
            width: MediaQuery.of(context).size.width,
            child: Divider(thickness: 1, color: Colors.grey)),
        Expanded(
          child: ListView(
            children: [
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: DataTable(
                    headingTextStyle: TextStyle(color: Palette().primaryColor),
                    horizontalMargin: 0,
                    columnSpacing: Responsive.isDesktop(context) ? 20 : 10,
                    columns: [
                      DataColumn(
                          label: SizedBox(
                        width: Responsive.isDesktop(context) ? 200 : 100,
                        child: Center(
                          child: HeadingText(
                            size: Responsive.isDesktop(context) ? 14 : 13,
                            value: "Exam Name",
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      )),
                      DataColumn(
                          label: SizedBox(
                        width: Responsive.isDesktop(context) ? 200 : 100,
                        child: Center(
                          child: HeadingText(
                            size: Responsive.isDesktop(context) ? 14 : 13,
                            value: "Exam Date",
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      )),
                      DataColumn(
                          label: SizedBox(
                        width: Responsive.isDesktop(context) ? 200 : 100,
                        child: Center(
                          child: HeadingText(
                            size: Responsive.isDesktop(context) ? 14 : 13,
                            value: "Marketing Status",
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      )),
                      DataColumn(
                          label: SizedBox(
                        width: Responsive.isDesktop(context) ? 200 : 100,
                        child: Center(
                          child: HeadingText(
                            size: Responsive.isDesktop(context) ? 14 : 13,
                            value: "Action",
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      )),
                    ],
                    rows: [
                      DataRow(cells: [
                        DataCell(Center(
                          child: HeadingText(
                            size: Responsive.isDesktop(context) ? 14 : 13,
                            value: "MID TERM EXAM",
                          ),
                        )),
                        DataCell(Center(
                          child: HeadingText(
                            size: Responsive.isDesktop(context) ? 14 : 13,
                            value: "23 MARCH 2022",
                          ),
                        )),
                        DataCell(Center(
                          child: HeadingText(
                            size: Responsive.isDesktop(context) ? 14 : 13,
                            value: "6 MARKED SUBJECTS",
                          ),
                        )),
                        DataCell(Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            InkWell(
                              onTap: () {},
                              child: Container(
                                padding: EdgeInsets.only(
                                    left: 10, right: 10, top: 2, bottom: 2),
                                decoration: BoxDecoration(
                                    border: Border.all(
                                        width: 1, color: Colors.black),
                                    color: Color.fromARGB(115, 158, 158, 158),
                                    borderRadius: BorderRadius.circular(40)),
                                child: Heading6(
                                  value: "View",
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            InkWell(
                              onTap: () {},
                              child: Container(
                                padding: EdgeInsets.only(
                                    left: 10, right: 10, top: 2, bottom: 2),
                                decoration: BoxDecoration(
                                    border: Border.all(
                                        width: 1,
                                        color: Palette().primaryColor),
                                    color: Color.fromARGB(255, 255, 255, 255),
                                    borderRadius: BorderRadius.circular(40)),
                                child: Row(
                                  children: [
                                    Icon(
                                      Icons.cloud_download_outlined,
                                      color: Palette().primaryColor,
                                    ),
                                    SizedBox(
                                      width: 5,
                                    ),
                                    Heading6(
                                      value: "Download",
                                      color: Palette().primaryColor,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        )),
                      ]),
                    ]),
              ),
            ],
          ),
        ),
      ]),
    );
  }
}
