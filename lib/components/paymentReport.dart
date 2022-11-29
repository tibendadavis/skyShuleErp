import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:skyconnect_starter/components/heading2.dart';
import 'package:skyconnect_starter/components/heading3.dart';
import 'package:skyconnect_starter/components/heading5.dart';
import 'package:skyconnect_starter/components/heading6.dart';
import 'package:skyconnect_starter/components/heading_text.dart';
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
        Row(
          children: [
            Heading3(
              value: "PAYMENT RECORDS: ",
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
                  value: "Optimize payments",
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
                  value: "Statement of Purpose",
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
          value: "Class Seven (Ruaha) Year: 2022",
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
              DataTable(horizontalMargin: 0, columnSpacing: 20, columns: [
                DataColumn(
                    label: Expanded(
                  child: Center(
                    child: HeadingText(
                      size: 11,
                      value: "Invoice No.",
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                )),
                DataColumn(
                    label: Expanded(
                  child: Center(
                    child: HeadingText(
                      size: 11,
                      value: "Total Amount.",
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                )),
                DataColumn(
                    label: Expanded(
                  child: Center(
                    child: HeadingText(
                      size: 11,
                      value: "Total Paid",
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                )),
                DataColumn(
                    label: Expanded(
                  child: Center(
                    child: HeadingText(
                      size: 11,
                      value: "Total Unpaid",
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                )),
                DataColumn(
                    label: Expanded(
                  child: Center(
                    child: HeadingText(
                      size: 11,
                      value: "Advanced Amount",
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                )),
                DataColumn(
                    label: Expanded(
                  child: Center(
                    child: HeadingText(
                      size: 11,
                      value: "Previously Due Amount",
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                )),
                DataColumn(
                    label: Expanded(
                  child: Center(
                    child: HeadingText(
                      size: 11,
                      value: "Status",
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
                      value: "254",
                    ),
                  )),
                  DataCell(Center(
                    child: HeadingText(
                      size: 11,
                      value: "2,500,000.00",
                    ),
                  )),
                  DataCell(Center(
                    child: HeadingText(
                      size: 11,
                      value: "0",
                    ),
                  )),
                  DataCell(Center(
                    child: HeadingText(
                      size: 11,
                      value: "0.00",
                    ),
                  )),
                  DataCell(Center(
                    child: HeadingText(
                      size: 11,
                      value: "0.00",
                    ),
                  )),
                  DataCell(Center(
                    child: HeadingText(
                      size: 11,
                      value: "0.00",
                    ),
                  )),
                  DataCell(Center(
                    child: HeadingText(
                      size: 11,
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
            ],
          ),
        ),
        SizedBox(
          height: 10,
        ),
        Heading5(
          value: "Class Six (Mikumi) Year: 2021",
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
              DataTable(horizontalMargin: 0, columnSpacing: 20, columns: [
                DataColumn(
                    label: Expanded(
                  child: Center(
                    child: HeadingText(
                      size: 11,
                      value: "Invoice No.",
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                )),
                DataColumn(
                    label: Expanded(
                  child: Center(
                    child: HeadingText(
                      size: 11,
                      value: "Total Amount.",
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                )),
                DataColumn(
                    label: Expanded(
                  child: Center(
                    child: HeadingText(
                      size: 11,
                      value: "Total Paid",
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                )),
                DataColumn(
                    label: Expanded(
                  child: Center(
                    child: HeadingText(
                      size: 11,
                      value: "Total Unpaid",
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                )),
                DataColumn(
                    label: Expanded(
                  child: Center(
                    child: HeadingText(
                      size: 11,
                      value: "Advanced Amount",
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                )),
                DataColumn(
                    label: Expanded(
                  child: Center(
                    child: HeadingText(
                      size: 11,
                      value: "Previously Due Amount",
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                )),
                DataColumn(
                    label: Expanded(
                  child: Center(
                    child: HeadingText(
                      size: 11,
                      value: "Status",
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
                      value: "254",
                    ),
                  )),
                  DataCell(Center(
                    child: HeadingText(
                      size: 11,
                      value: "2,500,000.00",
                    ),
                  )),
                  DataCell(Center(
                    child: HeadingText(
                      size: 11,
                      value: "0",
                    ),
                  )),
                  DataCell(Center(
                    child: HeadingText(
                      size: 11,
                      value: "0.00",
                    ),
                  )),
                  DataCell(Center(
                    child: HeadingText(
                      size: 11,
                      value: "0.00",
                    ),
                  )),
                  DataCell(Center(
                    child: HeadingText(
                      size: 11,
                      value: "0.00",
                    ),
                  )),
                  DataCell(Center(
                    child: HeadingText(
                      size: 11,
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
            ],
          ),
        )
      ]),
    );
  }
}
