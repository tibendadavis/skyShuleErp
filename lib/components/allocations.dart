import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:skyconnect_starter/components/heading3.dart';
import 'package:skyconnect_starter/components/heading5.dart';
import 'package:skyconnect_starter/components/heading6.dart';
import 'package:skyconnect_starter/components/heading_text.dart';
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
        Row(
          children: [
            Heading3(
              value: "ALLOCATIONS: ",
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
          value: "CLASS SEVEN (ZEBRA), YEAR: 2022",
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
                      value: "No.",
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                )),
                DataColumn(
                    label: Expanded(
                  child: Center(
                    child: HeadingText(
                      size: 11,
                      value: "Subject",
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                )),
                DataColumn(
                    label: Expanded(
                  child: Center(
                    child: HeadingText(
                      size: 11,
                      value: "Subject Code",
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                )),
                DataColumn(
                    label: Expanded(
                  child: Center(
                    child: HeadingText(
                      size: 11,
                      value: "Subject Type",
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                )),
                DataColumn(
                    label: Expanded(
                  child: Center(
                    child: HeadingText(
                      size: 11,
                      value: "Teacher Name",
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                )),
              ], rows: [
                DataRow(cells: [
                  DataCell(Center(
                    child: HeadingText(
                      size: 11,
                      value: "1",
                    ),
                  )),
                  DataCell(Center(
                    child: HeadingText(
                      size: 11,
                      value: "ENGLISH",
                    ),
                  )),
                  DataCell(Center(
                    child: HeadingText(
                      size: 11,
                      value: "11",
                    ),
                  )),
                  DataCell(Center(
                    child: HeadingText(
                      size: 11,
                      value: "CORE",
                    ),
                  )),
                  DataCell(Center(
                    child: HeadingText(
                      size: 11,
                      value: "Joh Doe John",
                    ),
                  )),
                ]),
                DataRow(cells: [
                  DataCell(Center(
                    child: HeadingText(
                      size: 11,
                      value: "1",
                    ),
                  )),
                  DataCell(Center(
                    child: HeadingText(
                      size: 11,
                      value: "ENGLISH",
                    ),
                  )),
                  DataCell(Center(
                    child: HeadingText(
                      size: 11,
                      value: "11",
                    ),
                  )),
                  DataCell(Center(
                    child: HeadingText(
                      size: 11,
                      value: "CORE",
                    ),
                  )),
                  DataCell(Center(
                    child: HeadingText(
                      size: 11,
                      value: "Joh Doe John",
                    ),
                  )),
                ]),
                DataRow(cells: [
                  DataCell(Center(
                    child: HeadingText(
                      size: 11,
                      value: "1",
                    ),
                  )),
                  DataCell(Center(
                    child: HeadingText(
                      size: 11,
                      value: "ENGLISH",
                    ),
                  )),
                  DataCell(Center(
                    child: HeadingText(
                      size: 11,
                      value: "11",
                    ),
                  )),
                  DataCell(Center(
                    child: HeadingText(
                      size: 11,
                      value: "CORE",
                    ),
                  )),
                  DataCell(Center(
                    child: HeadingText(
                      size: 11,
                      value: "Joh Doe John",
                    ),
                  )),
                ]),
                DataRow(cells: [
                  DataCell(Center(
                    child: HeadingText(
                      size: 11,
                      value: "1",
                    ),
                  )),
                  DataCell(Center(
                    child: HeadingText(
                      size: 11,
                      value: "ENGLISH",
                    ),
                  )),
                  DataCell(Center(
                    child: HeadingText(
                      size: 11,
                      value: "11",
                    ),
                  )),
                  DataCell(Center(
                    child: HeadingText(
                      size: 11,
                      value: "CORE",
                    ),
                  )),
                  DataCell(Center(
                    child: HeadingText(
                      size: 11,
                      value: "Joh Doe John",
                    ),
                  )),
                ]),
                DataRow(cells: [
                  DataCell(Center(
                    child: HeadingText(
                      size: 11,
                      value: "1",
                    ),
                  )),
                  DataCell(Center(
                    child: HeadingText(
                      size: 11,
                      value: "ENGLISH",
                    ),
                  )),
                  DataCell(Center(
                    child: HeadingText(
                      size: 11,
                      value: "11",
                    ),
                  )),
                  DataCell(Center(
                    child: HeadingText(
                      size: 11,
                      value: "CORE",
                    ),
                  )),
                  DataCell(Center(
                    child: HeadingText(
                      size: 11,
                      value: "Joh Doe John",
                    ),
                  )),
                ]),
                DataRow(cells: [
                  DataCell(Center(
                    child: HeadingText(
                      size: 11,
                      value: "1",
                    ),
                  )),
                  DataCell(Center(
                    child: HeadingText(
                      size: 11,
                      value: "ENGLISH",
                    ),
                  )),
                  DataCell(Center(
                    child: HeadingText(
                      size: 11,
                      value: "11",
                    ),
                  )),
                  DataCell(Center(
                    child: HeadingText(
                      size: 11,
                      value: "CORE",
                    ),
                  )),
                  DataCell(Center(
                    child: HeadingText(
                      size: 11,
                      value: "Joh Doe John",
                    ),
                  )),
                ]),
                DataRow(cells: [
                  DataCell(Center(
                    child: HeadingText(
                      size: 11,
                      value: "1",
                    ),
                  )),
                  DataCell(Center(
                    child: HeadingText(
                      size: 11,
                      value: "ENGLISH",
                    ),
                  )),
                  DataCell(Center(
                    child: HeadingText(
                      size: 11,
                      value: "11",
                    ),
                  )),
                  DataCell(Center(
                    child: HeadingText(
                      size: 11,
                      value: "CORE",
                    ),
                  )),
                  DataCell(Center(
                    child: HeadingText(
                      size: 11,
                      value: "Joh Doe John",
                    ),
                  )),
                ]),
                DataRow(cells: [
                  DataCell(Center(
                    child: HeadingText(
                      size: 11,
                      value: "1",
                    ),
                  )),
                  DataCell(Center(
                    child: HeadingText(
                      size: 11,
                      value: "ENGLISH",
                    ),
                  )),
                  DataCell(Center(
                    child: HeadingText(
                      size: 11,
                      value: "11",
                    ),
                  )),
                  DataCell(Center(
                    child: HeadingText(
                      size: 11,
                      value: "CORE",
                    ),
                  )),
                  DataCell(Center(
                    child: HeadingText(
                      size: 11,
                      value: "Joh Doe John",
                    ),
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
