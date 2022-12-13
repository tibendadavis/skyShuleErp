import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:skyconnect_starter/components/heading3.dart';
import 'package:skyconnect_starter/components/heading5.dart';
import 'package:skyconnect_starter/components/heading6.dart';
import 'package:skyconnect_starter/components/heading_text.dart';
import 'package:skyconnect_starter/controllers/responsive.dart';
import 'package:skyconnect_starter/theme/design.theme.dart';

class allocations extends StatefulWidget {
  const allocations({super.key});

  @override
  State<allocations> createState() => _allocationsState();
}

class _allocationsState extends State<allocations> {
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
              value: "ALLOCATIONS: ",
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
          value: "CLASS SEVEN (ZEBRA), YEAR: 2022",
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
                          width: Responsive.isDesktop(context) ? 200 : 20,
                          child: HeadingText(
                            size: Responsive.isDesktop(context) ? 14 : 13,
                            value: "No.",
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ),
                      DataColumn(
                        label: SizedBox(
                          width: Responsive.isDesktop(context) ? 200 : 100,
                          child: HeadingText(
                            size: Responsive.isDesktop(context) ? 14 : 13,
                            value: "Subject",
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ),
                      DataColumn(
                        label: SizedBox(
                          width: Responsive.isDesktop(context) ? 200 : 100,
                          child: HeadingText(
                            size: Responsive.isDesktop(context) ? 14 : 13,
                            value: "Subject Code",
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ),
                      DataColumn(
                        label: SizedBox(
                          width: Responsive.isDesktop(context) ? 200 : 100,
                          child: HeadingText(
                            size: Responsive.isDesktop(context) ? 14 : 13,
                            value: "Subject Type",
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ),
                      DataColumn(
                        label: SizedBox(
                          width: Responsive.isDesktop(context) ? 200 : 100,
                          child: HeadingText(
                            size: Responsive.isDesktop(context) ? 14 : 13,
                            value: "Teacher Name",
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ),
                    ],
                    rows: [
                      DataRow(cells: [
                        DataCell(
                          HeadingText(
                            size: Responsive.isDesktop(context) ? 14 : 13,
                            value: "1",
                          ),
                        ),
                        DataCell(
                          HeadingText(
                            size: Responsive.isDesktop(context) ? 14 : 13,
                            value: "ENGLISH",
                          ),
                        ),
                        DataCell(
                          HeadingText(
                            size: Responsive.isDesktop(context) ? 14 : 13,
                            value: "11",
                          ),
                        ),
                        DataCell(
                          HeadingText(
                            size: Responsive.isDesktop(context) ? 14 : 13,
                            value: "CORE",
                          ),
                        ),
                        DataCell(
                          HeadingText(
                            size: Responsive.isDesktop(context) ? 14 : 13,
                            value: "Joh Doe John",
                          ),
                        ),
                      ]),
                      DataRow(cells: [
                        DataCell(
                          HeadingText(
                            size: Responsive.isDesktop(context) ? 14 : 13,
                            value: "1",
                          ),
                        ),
                        DataCell(
                          HeadingText(
                            size: Responsive.isDesktop(context) ? 14 : 13,
                            value: "ENGLISH",
                          ),
                        ),
                        DataCell(
                          HeadingText(
                            size: Responsive.isDesktop(context) ? 14 : 13,
                            value: "11",
                          ),
                        ),
                        DataCell(
                          HeadingText(
                            size: Responsive.isDesktop(context) ? 14 : 13,
                            value: "CORE",
                          ),
                        ),
                        DataCell(
                          HeadingText(
                            size: Responsive.isDesktop(context) ? 14 : 13,
                            value: "Joh Doe John",
                          ),
                        ),
                      ]),
                      DataRow(cells: [
                        DataCell(
                          HeadingText(
                            size: Responsive.isDesktop(context) ? 14 : 13,
                            value: "1",
                          ),
                        ),
                        DataCell(
                          HeadingText(
                            size: Responsive.isDesktop(context) ? 14 : 13,
                            value: "ENGLISH",
                          ),
                        ),
                        DataCell(
                          HeadingText(
                            size: Responsive.isDesktop(context) ? 14 : 13,
                            value: "11",
                          ),
                        ),
                        DataCell(
                          HeadingText(
                            size: Responsive.isDesktop(context) ? 14 : 13,
                            value: "CORE",
                          ),
                        ),
                        DataCell(
                          HeadingText(
                            size: Responsive.isDesktop(context) ? 14 : 13,
                            value: "Joh Doe John",
                          ),
                        ),
                      ]),
                      DataRow(cells: [
                        DataCell(
                          HeadingText(
                            size: Responsive.isDesktop(context) ? 14 : 13,
                            value: "1",
                          ),
                        ),
                        DataCell(
                          HeadingText(
                            size: Responsive.isDesktop(context) ? 14 : 13,
                            value: "ENGLISH",
                          ),
                        ),
                        DataCell(
                          HeadingText(
                            size: Responsive.isDesktop(context) ? 14 : 13,
                            value: "11",
                          ),
                        ),
                        DataCell(
                          HeadingText(
                            size: Responsive.isDesktop(context) ? 14 : 13,
                            value: "CORE",
                          ),
                        ),
                        DataCell(
                          HeadingText(
                            size: Responsive.isDesktop(context) ? 14 : 13,
                            value: "Joh Doe John",
                          ),
                        ),
                      ]),
                      DataRow(cells: [
                        DataCell(
                          HeadingText(
                            size: Responsive.isDesktop(context) ? 14 : 13,
                            value: "1",
                          ),
                        ),
                        DataCell(
                          HeadingText(
                            size: Responsive.isDesktop(context) ? 14 : 13,
                            value: "ENGLISH",
                          ),
                        ),
                        DataCell(
                          HeadingText(
                            size: Responsive.isDesktop(context) ? 14 : 13,
                            value: "11",
                          ),
                        ),
                        DataCell(
                          HeadingText(
                            size: Responsive.isDesktop(context) ? 14 : 13,
                            value: "CORE",
                          ),
                        ),
                        DataCell(
                          HeadingText(
                            size: Responsive.isDesktop(context) ? 14 : 13,
                            value: "Joh Doe John",
                          ),
                        ),
                      ]),
                      DataRow(cells: [
                        DataCell(
                          HeadingText(
                            size: Responsive.isDesktop(context) ? 14 : 13,
                            value: "1",
                          ),
                        ),
                        DataCell(
                          HeadingText(
                            size: Responsive.isDesktop(context) ? 14 : 13,
                            value: "ENGLISH",
                          ),
                        ),
                        DataCell(
                          HeadingText(
                            size: Responsive.isDesktop(context) ? 14 : 13,
                            value: "11",
                          ),
                        ),
                        DataCell(
                          HeadingText(
                            size: Responsive.isDesktop(context) ? 14 : 13,
                            value: "CORE",
                          ),
                        ),
                        DataCell(
                          HeadingText(
                            size: Responsive.isDesktop(context) ? 14 : 13,
                            value: "Joh Doe John",
                          ),
                        ),
                      ]),
                      DataRow(cells: [
                        DataCell(
                          HeadingText(
                            size: Responsive.isDesktop(context) ? 14 : 13,
                            value: "1",
                          ),
                        ),
                        DataCell(
                          HeadingText(
                            size: Responsive.isDesktop(context) ? 14 : 13,
                            value: "ENGLISH",
                          ),
                        ),
                        DataCell(
                          HeadingText(
                            size: Responsive.isDesktop(context) ? 14 : 13,
                            value: "11",
                          ),
                        ),
                        DataCell(
                          HeadingText(
                            size: Responsive.isDesktop(context) ? 14 : 13,
                            value: "CORE",
                          ),
                        ),
                        DataCell(
                          HeadingText(
                            size: Responsive.isDesktop(context) ? 14 : 13,
                            value: "Joh Doe John",
                          ),
                        ),
                      ]),
                      DataRow(cells: [
                        DataCell(
                          HeadingText(
                            size: Responsive.isDesktop(context) ? 14 : 13,
                            value: "1",
                          ),
                        ),
                        DataCell(
                          HeadingText(
                            size: Responsive.isDesktop(context) ? 14 : 13,
                            value: "ENGLISH",
                          ),
                        ),
                        DataCell(
                          HeadingText(
                            size: Responsive.isDesktop(context) ? 14 : 13,
                            value: "11",
                          ),
                        ),
                        DataCell(
                          HeadingText(
                            size: Responsive.isDesktop(context) ? 14 : 13,
                            value: "CORE",
                          ),
                        ),
                        DataCell(
                          HeadingText(
                            size: Responsive.isDesktop(context) ? 14 : 13,
                            value: "Joh Doe John",
                          ),
                        ),
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
