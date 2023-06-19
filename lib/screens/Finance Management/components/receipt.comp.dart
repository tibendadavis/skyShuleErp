import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:skyconnect_starter/components/heading2.dart';
import 'package:skyconnect_starter/components/heading4.dart';
import 'package:skyconnect_starter/components/heading5.dart';
import 'package:skyconnect_starter/components/heading_text.dart';
import 'package:skyconnect_starter/controllers/responsive.dart';

class receipt extends StatefulWidget {
  final String name;
  final String regNo;
  final String date;
  final String paidAmount;
  final String stdClass;
  final String rollNo;
  final String mobile;
  final String feeAmount;
  final String feeName;

  receipt({
    required this.name,
    required this.regNo,
    required this.date,
    required this.paidAmount,
    required this.stdClass,
    required this.rollNo,
    required this.mobile,
    required this.feeAmount,
    required this.feeName,
  });

  @override
  State<receipt> createState() => _receiptState();
}

class _receiptState extends State<receipt> {
  DateTime now = DateTime.now();

  @override
  Widget build(BuildContext context) {
    String formattedDate = DateFormat('kk:mm:ss \n EEE d MMM').format(now);
    return Container(
      width: Responsive.isDesktop(context)
          ? MediaQuery.of(context).size.width / 2.1
          : MediaQuery.of(context).size.width,
      height: 394,
      decoration: BoxDecoration(
        border: Border.all(color: Colors.black, width: 1.3),
        borderRadius: BorderRadius.circular(10),
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Color.fromARGB(171, 0, 0, 0),
            offset: Offset(5, 9),
            blurRadius: 6.0,
          ),
        ],
      ),
      child: Column(
        children: <Widget>[
          Container(
            height: 95,
            width: double.infinity,
            padding: EdgeInsets.all(10),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    HeadingText(
                      size: 15,
                      value: formattedDate,
                      fontWeight: FontWeight.w500,
                    ),
                  ],
                ),
                Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                  Center(
                    child: Heading2(
                      value: "${widget.feeName}  Receipt",
                      fontWeight: FontWeight.w700,
                    ),
                  )
                ]),
              ],
            ),
            decoration: BoxDecoration(
              color: Colors.grey.shade300,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(10),
                topRight: Radius.circular(10),
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.all(14),
            padding: EdgeInsets.all(17),
            decoration: BoxDecoration(
                border: Border.all(color: Colors.black, width: 1),
                borderRadius: BorderRadius.circular(0)),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Heading5(
                          value: "Student Reg No ",
                          fontWeight: FontWeight.w600,
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Heading4(
                          value: " ${widget.regNo}",
                          fontWeight: FontWeight.w700,
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Heading5(
                          value: "Paid Date:  ",
                          fontWeight: FontWeight.w600,
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Heading4(
                          value: "${widget.date}",
                          fontWeight: FontWeight.w700,
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Heading5(
                      value: "Received with thanks from ",
                      fontWeight: FontWeight.w600,
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Heading4(
                      value: "  ${widget.name}  ",
                      fontWeight: FontWeight.w700,
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Heading5(
                      value: " a sum of ",
                      fontWeight: FontWeight.w600,
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Heading4(
                      value: "  ${widget.paidAmount}  ",
                      fontWeight: FontWeight.w700,
                    ),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Heading5(
                      value: "Class ",
                      fontWeight: FontWeight.w600,
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Heading4(
                      value: "  ${widget.stdClass}  ",
                      fontWeight: FontWeight.w700,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Heading5(
                      value: " Roll No ",
                      fontWeight: FontWeight.w600,
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Heading4(
                      value: "  ${widget.rollNo}  ",
                      fontWeight: FontWeight.w700,
                    ),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      padding: EdgeInsets.only(left: 14, right: 5),
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.black, width: 1),
                          borderRadius: BorderRadius.circular(0)),
                      child: DataTable(
                          horizontalMargin: 0,
                          columnSpacing:
                              Responsive.isDesktop(context) ? 20 : 10,
                          columns: [
                            DataColumn(
                                label: SizedBox(
                              width: Responsive.isDesktop(context) ? 140 : 100,
                              child: HeadingText(
                                size: 15,
                                value: "Pre. Balance",
                                fontWeight: FontWeight.w700,
                              ),
                            )),
                            DataColumn(
                                label: SizedBox(
                              width: Responsive.isDesktop(context) ? 140 : 100,
                              child: HeadingText(
                                size: 15,
                                value: "Amount Paid",
                                fontWeight: FontWeight.w700,
                              ),
                            )),
                            DataColumn(
                                label: SizedBox(
                              width: Responsive.isDesktop(context) ? 140 : 100,
                              child: HeadingText(
                                size: 15,
                                value: "Balance Due",
                                fontWeight: FontWeight.w700,
                              ),
                            )),
                          ],
                          rows: [
                            DataRow(cells: [
                              DataCell(HeadingText(
                                size: 15,
                                value: "100",
                              )),
                              DataCell(HeadingText(
                                size: 15,
                                value: "100",
                              )),
                              DataCell(HeadingText(
                                size: 15,
                                value: "0",
                              )),
                            ]),
                          ]),
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Heading4(
                          value: "________________",
                          fontWeight: FontWeight.w700,
                        ),
                        Heading5(
                          value: "  Cashier  ",
                          fontWeight: FontWeight.w700,
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
          Spacer(),
          Container(
            height: 30,
            width: double.infinity,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [],
            ),
            decoration: BoxDecoration(
              color: Colors.grey.shade300,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(10),
                bottomRight: Radius.circular(10),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
