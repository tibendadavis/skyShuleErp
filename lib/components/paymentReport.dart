import 'package:flutter/material.dart';
import 'package:skyconnect_starter/components/heading5.dart';
import 'package:skyconnect_starter/components/heading6.dart';
import 'package:skyconnect_starter/components/heading_text.dart';
import 'package:skyconnect_starter/controllers/responsive.dart';
import 'package:skyconnect_starter/theme/design.theme.dart';

class paymentReport extends StatefulWidget {
  const paymentReport({super.key});

  @override
  State<paymentReport> createState() => _paymentReportState();
}

class _paymentReportState extends State<paymentReport> {
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
              value: "PAYMENT RECORDS: ",
              fontWeight: FontWeight.bold,
              size: Responsive.isDesktop(context) ? 20 : 17,
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
                      value: "Optimize payments",
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
                      value: "Statement of Purpose",
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
          value: "Class Seven (Ruaha) Year: 2022",
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
                          label: Expanded(
                        child: Center(
                          child: HeadingText(
                            size: Responsive.isDesktop(context) ? 14 : 13,
                            value: "Invoice No.",
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      )),
                      DataColumn(
                          label: Expanded(
                        child: Center(
                          child: HeadingText(
                            size: Responsive.isDesktop(context) ? 14 : 13,
                            value: "Total Amount.",
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      )),
                      DataColumn(
                          label: Expanded(
                        child: Center(
                          child: HeadingText(
                            size: Responsive.isDesktop(context) ? 14 : 13,
                            value: "Total Paid",
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      )),
                      DataColumn(
                          label: Expanded(
                        child: Center(
                          child: HeadingText(
                            size: Responsive.isDesktop(context) ? 14 : 13,
                            value: "Total Unpaid",
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      )),
                      DataColumn(
                          label: Expanded(
                        child: Center(
                          child: HeadingText(
                            size: Responsive.isDesktop(context) ? 14 : 13,
                            value: "Advanced Amount",
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      )),
                      DataColumn(
                          label: Expanded(
                        child: Center(
                          child: HeadingText(
                            size: Responsive.isDesktop(context) ? 14 : 13,
                            value: "Previously Due Amount",
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      )),
                      DataColumn(
                          label: Expanded(
                        child: Center(
                          child: HeadingText(
                            size: Responsive.isDesktop(context) ? 14 : 13,
                            value: "Status",
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      )),
                      DataColumn(
                          label: Expanded(
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
                            value: "254",
                          ),
                        )),
                        DataCell(Center(
                          child: HeadingText(
                            size: Responsive.isDesktop(context) ? 14 : 13,
                            value: "2,500,000.00",
                          ),
                        )),
                        DataCell(Center(
                          child: HeadingText(
                            size: Responsive.isDesktop(context) ? 14 : 13,
                            value: "0",
                          ),
                        )),
                        DataCell(Center(
                          child: HeadingText(
                            size: Responsive.isDesktop(context) ? 14 : 13,
                            value: "0.00",
                          ),
                        )),
                        DataCell(Center(
                          child: HeadingText(
                            size: Responsive.isDesktop(context) ? 14 : 13,
                            value: "0.00",
                          ),
                        )),
                        DataCell(Center(
                          child: HeadingText(
                            size: Responsive.isDesktop(context) ? 14 : 13,
                            value: "0.00",
                          ),
                        )),
                        DataCell(Center(
                          child: HeadingText(
                            size: Responsive.isDesktop(context) ? 14 : 13,
                            value: "Fully Paid",
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
                            SizedBox(
                              width: 10,
                            ),
                            InkWell(
                              onTap: () {},
                              child: Icon(
                                Icons.delete_outline,
                                color: Palette().primaryColor,
                              ),
                            )
                          ],
                        )),
                      ]),
                    ]),
              ),
            ],
          ),
        ),
        SizedBox(
          height: Responsive.isDesktop(context) ? 10 : 5,
        ),
        Heading5(
          value: "Class Six (Mikumi) Year: 2021",
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
                          label: Expanded(
                        child: Center(
                          child: HeadingText(
                            size: Responsive.isDesktop(context) ? 14 : 13,
                            value: "Invoice No.",
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      )),
                      DataColumn(
                          label: Expanded(
                        child: Center(
                          child: HeadingText(
                            size: Responsive.isDesktop(context) ? 14 : 13,
                            value: "Total Amount.",
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      )),
                      DataColumn(
                          label: Expanded(
                        child: Center(
                          child: HeadingText(
                            size: Responsive.isDesktop(context) ? 14 : 13,
                            value: "Total Paid",
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      )),
                      DataColumn(
                          label: Expanded(
                        child: Center(
                          child: HeadingText(
                            size: Responsive.isDesktop(context) ? 14 : 13,
                            value: "Total Unpaid",
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      )),
                      DataColumn(
                          label: Expanded(
                        child: Center(
                          child: HeadingText(
                            size: Responsive.isDesktop(context) ? 14 : 13,
                            value: "Advanced Amount",
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      )),
                      DataColumn(
                          label: Expanded(
                        child: Center(
                          child: HeadingText(
                            size: Responsive.isDesktop(context) ? 14 : 13,
                            value: "Previously Due Amount",
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      )),
                      DataColumn(
                          label: Expanded(
                        child: Center(
                          child: HeadingText(
                            size: Responsive.isDesktop(context) ? 14 : 13,
                            value: "Status",
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      )),
                      DataColumn(
                          label: Expanded(
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
                            value: "254",
                          ),
                        )),
                        DataCell(Center(
                          child: HeadingText(
                            size: Responsive.isDesktop(context) ? 14 : 13,
                            value: "2,500,000.00",
                          ),
                        )),
                        DataCell(Center(
                          child: HeadingText(
                            size: Responsive.isDesktop(context) ? 14 : 13,
                            value: "0",
                          ),
                        )),
                        DataCell(Center(
                          child: HeadingText(
                            size: Responsive.isDesktop(context) ? 14 : 13,
                            value: "0.00",
                          ),
                        )),
                        DataCell(Center(
                          child: HeadingText(
                            size: Responsive.isDesktop(context) ? 14 : 13,
                            value: "0.00",
                          ),
                        )),
                        DataCell(Center(
                          child: HeadingText(
                            size: Responsive.isDesktop(context) ? 14 : 13,
                            value: "0.00",
                          ),
                        )),
                        DataCell(Center(
                          child: HeadingText(
                            size: Responsive.isDesktop(context) ? 14 : 13,
                            value: "Fully Paid",
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
                            SizedBox(
                              width: 10,
                            ),
                            InkWell(
                              onTap: () {},
                              child: Icon(
                                Icons.delete_outline,
                                color: Palette().primaryColor,
                              ),
                            )
                          ],
                        )),
                      ]),
                    ]),
              ),
            ],
          ),
        )
      ]),
    );
  }
}
