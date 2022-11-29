import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:skyconnect_starter/components/heading3.dart';
import 'package:skyconnect_starter/components/heading5.dart';
import 'package:skyconnect_starter/components/heading6.dart';
import 'package:skyconnect_starter/components/heading_text.dart';
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
        Row(
          children: [
            Heading3(
              value: "SELECT CLASS TO VIEW EXAM RESULTS: ",
              fontWeight: FontWeight.bold,
            ),
            SizedBox(
              width: 15,
            ),
            InkWell(
              onTap: () {},
              child: Container(
                padding:
                    EdgeInsets.only(left: 10, right: 10, top: 2, bottom: 2),
                decoration: BoxDecoration(
                    border: Border.all(width: 1, color: Colors.black),
                    color: Color.fromARGB(115, 158, 158, 158),
                    borderRadius: BorderRadius.circular(40)),
                child: Heading6(
                  value: "Class Seven - 2022",
                ),
              ),
            ),
            SizedBox(
              width: 15,
            ),
            InkWell(
              onTap: () {},
              child: Container(
                padding:
                    EdgeInsets.only(left: 10, right: 10, top: 2, bottom: 2),
                decoration: BoxDecoration(
                    border: Border.all(width: 1, color: Colors.black),
                    color: Color.fromARGB(115, 158, 158, 158),
                    borderRadius: BorderRadius.circular(40)),
                child: Heading6(
                  value: "Class Six - 2021",
                ),
              ),
            ),
          ],
        ),
        SizedBox(
            width: MediaQuery.of(context).size.width,
            child: Divider(
              thickness: 1,
              color: Colors.grey,
            )),
        Heading5(
          value: "FIRST TERM: Single Exam Report",
          fontWeight: FontWeight.bold,
        ),
        SizedBox(
            width: MediaQuery.of(context).size.width,
            child: Divider(
              thickness: 1,
              color: Colors.grey,
            )),
        SizedBox(
          height: 140,
          child: Expanded(
            child: ListView(
              children: [
                DataTable(horizontalMargin: 0, columnSpacing: 10, columns: [
                  DataColumn(
                      label: Expanded(
                    child: Center(
                      child: HeadingText(
                        size: 11,
                        value: "Exam Name",
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  )),
                  DataColumn(
                      label: Expanded(
                    child: Center(
                      child: HeadingText(
                        size: 11,
                        value: "Exam Date",
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  )),
                  DataColumn(
                      label: Expanded(
                    child: Center(
                      child: HeadingText(
                        size: 11,
                        value: "Marketing Status",
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  )),
                  DataColumn(
                      label: Expanded(
                    child: Center(
                      child: HeadingText(
                        size: 11,
                        value: "Action",
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  )),
                ], rows: [
                  DataRow(cells: [
                    DataCell(Center(
                      child: HeadingText(
                        size: 11,
                        value: "MID TERM EXAM",
                      ),
                    )),
                    DataCell(Center(
                      child: HeadingText(
                        size: 11,
                        value: "23 MARCH 2022",
                      ),
                    )),
                    DataCell(Center(
                      child: HeadingText(
                        size: 11,
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
                                border:
                                    Border.all(width: 1, color: Colors.black),
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
                                    width: 1, color: Palette().primaryColor),
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
                        size: 11,
                        value: "END OF JUNE EXAM",
                      ),
                    )),
                    DataCell(Center(
                      child: HeadingText(
                        size: 11,
                        value: "20 JUNE 2022",
                      ),
                    )),
                    DataCell(Center(
                      child: HeadingText(
                        size: 11,
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
                                border:
                                    Border.all(width: 1, color: Colors.black),
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
                                    width: 1, color: Palette().primaryColor),
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
              ],
            ),
          ),
        ),
        SizedBox(
          height: 10,
        ),
        Heading5(
          value: "School Accumulative Reports",
          fontWeight: FontWeight.bold,
        ),
        SizedBox(
            width: MediaQuery.of(context).size.width,
            child: Divider(
              thickness: 1,
              color: Colors.grey,
            )),
        Expanded(
          child: ListView(
            children: [
              DataTable(horizontalMargin: 0, columnSpacing: 10, columns: [
                DataColumn(
                    label: Expanded(
                  child: Center(
                    child: HeadingText(
                      size: 11,
                      value: "Exam Name",
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                )),
                DataColumn(
                    label: Expanded(
                  child: Center(
                    child: HeadingText(
                      size: 11,
                      value: "Exam Date",
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                )),
                DataColumn(
                    label: Expanded(
                  child: Center(
                    child: HeadingText(
                      size: 11,
                      value: "Marketing Status",
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                )),
                DataColumn(
                    label: Expanded(
                  child: Center(
                    child: HeadingText(
                      size: 11,
                      value: "Action",
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                )),
              ], rows: [
                DataRow(cells: [
                  DataCell(Center(
                    child: HeadingText(
                      size: 11,
                      value: "MID TERM EXAM",
                    ),
                  )),
                  DataCell(Center(
                    child: HeadingText(
                      size: 11,
                      value: "23 MARCH 2022",
                    ),
                  )),
                  DataCell(Center(
                    child: HeadingText(
                      size: 11,
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
                              border: Border.all(width: 1, color: Colors.black),
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
                                  width: 1, color: Palette().primaryColor),
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
            ],
          ),
        ),
      ]),
    );
  }
}
