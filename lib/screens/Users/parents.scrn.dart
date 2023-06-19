import 'package:flutter/material.dart';
import 'package:skyconnect_starter/components/downloadBar.comp.dart';
import 'package:skyconnect_starter/components/heading_text.dart';
import 'package:skyconnect_starter/components/searchBar.comp.dart';
import 'package:skyconnect_starter/components/searchInputOptions.comp.dart';
import 'package:skyconnect_starter/components/tile2.comp.dart';
import 'package:skyconnect_starter/components/tile3.comp.dart';
import 'package:skyconnect_starter/controllers/responsive.dart';
import 'package:skyconnect_starter/screens/Users/addParents.scrn.dart';
import 'package:skyconnect_starter/theme/design.theme.dart';

class parents extends StatefulWidget {
  const parents({super.key});

  @override
  State<parents> createState() => _parentsState();
}

class _parentsState extends State<parents> {
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
            value: "Parents",
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
                  icon: Icons.supervisor_account_outlined,
                  link: addParent(),
                  linkTitle: "New Parent",
                )),
            SizedBox(
              width: Responsive.isDesktop(context)
                  ? 360
                  : MediaQuery.of(context).size.width,
              child: tile2(tileHeading: "Total Parents", tileData: "7"),
            ),
          ],
        ),
        searchBar(
          title: "Search for Parents",
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
                            ? size.width / 35
                            : Responsive.isDesktop(context) && size.width > 1600
                                ? size.width / 20
                                : 25,
                    showCheckboxColumn: true,
                    checkboxHorizontalMargin: 10,
                    showBottomBorder: true,
                    columns: [
                      DataColumn(
                          label: HeadingText(
                        size: 15,
                        value: "No.",
                        fontWeight: FontWeight.w700,
                      )),
                      DataColumn(
                          label: HeadingText(
                        size: 15,
                        value: "Photo",
                        fontWeight: FontWeight.w700,
                      )),
                      DataColumn(
                          label: HeadingText(
                        size: 15,
                        value: "Parent Name",
                        fontWeight: FontWeight.w700,
                      )),
                      DataColumn(
                          label: HeadingText(
                        size: 15,
                        value: "Relation",
                        fontWeight: FontWeight.w700,
                      )),
                      DataColumn(
                          label: HeadingText(
                        size: 15,
                        value: "Email Address",
                        fontWeight: FontWeight.w700,
                      )),
                      DataColumn(
                          label: HeadingText(
                        size: 15,
                        value: "Parents Phone",
                        fontWeight: FontWeight.w700,
                      )),
                      DataColumn(
                          label: HeadingText(
                        size: 15,
                        value: "Address",
                        fontWeight: FontWeight.w700,
                      )),
                      DataColumn(
                          label: HeadingText(
                        size: 15,
                        value: "Action",
                        fontWeight: FontWeight.w700,
                      )),
                    ],
                    rows: [
                      DataRow(cells: [
                        DataCell(HeadingText(
                          size: 15,
                          value: "1",
                        )),
                        DataCell(Icon(size: 20, Icons.face_rounded)),
                        DataCell(HeadingText(
                          size: 15,
                          value: "Juma Omary Kaponta",
                        )),
                        DataCell(HeadingText(
                          size: 15,
                          value: "Father",
                        )),
                        DataCell(HeadingText(
                          size: 15,
                          value: "parentsemail@gmail.com",
                        )),
                        DataCell(Row(
                          children: [
                            HeadingText(
                              size: 15,
                              value: "+255734848894",
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Icon(
                              Icons.add_call,
                              size: 16,
                              color: Palette().primaryColor,
                            )
                          ],
                        )),
                        DataCell(HeadingText(
                          size: 15,
                          value: "TABAT, BIMA",
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
                          size: 15,
                          value: "1",
                        )),
                        DataCell(Icon(size: 20, Icons.face_rounded)),
                        DataCell(HeadingText(
                          size: 15,
                          value: "Juma Omary Kaponta",
                        )),
                        DataCell(HeadingText(
                          size: 15,
                          value: "Father",
                        )),
                        DataCell(HeadingText(
                          size: 15,
                          value: "parentsemail@gmail.com",
                        )),
                        DataCell(Row(
                          children: [
                            HeadingText(
                              size: 15,
                              value: "+255734848894",
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Icon(
                              Icons.add_call,
                              size: 16,
                              color: Palette().primaryColor,
                            )
                          ],
                        )),
                        DataCell(HeadingText(
                          size: 15,
                          value: "TABAT, BIMA",
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
                          size: 15,
                          value: "1",
                        )),
                        DataCell(Icon(size: 20, Icons.face_rounded)),
                        DataCell(HeadingText(
                          size: 15,
                          value: "Juma Omary Kaponta",
                        )),
                        DataCell(HeadingText(
                          size: 15,
                          value: "Father",
                        )),
                        DataCell(HeadingText(
                          size: 15,
                          value: "parentsemail@gmail.com",
                        )),
                        DataCell(Row(
                          children: [
                            HeadingText(
                              size: 15,
                              value: "+255734848894",
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Icon(
                              Icons.add_call,
                              size: 16,
                              color: Palette().primaryColor,
                            )
                          ],
                        )),
                        DataCell(HeadingText(
                          size: 15,
                          value: "TABAT, BIMA",
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
                          size: 15,
                          value: "1",
                        )),
                        DataCell(Icon(size: 20, Icons.face_rounded)),
                        DataCell(HeadingText(
                          size: 15,
                          value: "Juma Omary Kaponta",
                        )),
                        DataCell(HeadingText(
                          size: 15,
                          value: "Father",
                        )),
                        DataCell(HeadingText(
                          size: 15,
                          value: "parentsemail@gmail.com",
                        )),
                        DataCell(Row(
                          children: [
                            HeadingText(
                              size: 15,
                              value: "+255734848894",
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Icon(
                              Icons.add_call,
                              size: 16,
                              color: Palette().primaryColor,
                            )
                          ],
                        )),
                        DataCell(HeadingText(
                          size: 15,
                          value: "TABAT, BIMA",
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
                          size: 15,
                          value: "1",
                        )),
                        DataCell(Icon(size: 20, Icons.face_rounded)),
                        DataCell(HeadingText(
                          size: 15,
                          value: "Juma Omary Kaponta",
                        )),
                        DataCell(HeadingText(
                          size: 15,
                          value: "Father",
                        )),
                        DataCell(HeadingText(
                          size: 15,
                          value: "parentsemail@gmail.com",
                        )),
                        DataCell(Row(
                          children: [
                            HeadingText(
                              size: 15,
                              value: "+255734848894",
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Icon(
                              Icons.add_call,
                              size: 16,
                              color: Palette().primaryColor,
                            )
                          ],
                        )),
                        DataCell(HeadingText(
                          size: 15,
                          value: "TABAT, BIMA",
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
                          size: 15,
                          value: "1",
                        )),
                        DataCell(Icon(size: 20, Icons.face_rounded)),
                        DataCell(HeadingText(
                          size: 15,
                          value: "Juma Omary Kaponta",
                        )),
                        DataCell(HeadingText(
                          size: 15,
                          value: "Father",
                        )),
                        DataCell(HeadingText(
                          size: 15,
                          value: "parentsemail@gmail.com",
                        )),
                        DataCell(Row(
                          children: [
                            HeadingText(
                              size: 15,
                              value: "+255734848894",
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Icon(
                              Icons.add_call,
                              size: 16,
                              color: Palette().primaryColor,
                            )
                          ],
                        )),
                        DataCell(HeadingText(
                          size: 15,
                          value: "TABAT, BIMA",
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
                          size: 15,
                          value: "1",
                        )),
                        DataCell(Icon(size: 20, Icons.face_rounded)),
                        DataCell(HeadingText(
                          size: 15,
                          value: "Juma Omary Kaponta",
                        )),
                        DataCell(HeadingText(
                          size: 15,
                          value: "Father",
                        )),
                        DataCell(HeadingText(
                          size: 15,
                          value: "parentsemail@gmail.com",
                        )),
                        DataCell(Row(
                          children: [
                            HeadingText(
                              size: 15,
                              value: "+255734848894",
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Icon(
                              Icons.add_call,
                              size: 16,
                              color: Palette().primaryColor,
                            )
                          ],
                        )),
                        DataCell(HeadingText(
                          size: 15,
                          value: "TABAT, BIMA",
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
                          size: 15,
                          value: "1",
                        )),
                        DataCell(Icon(size: 20, Icons.face_rounded)),
                        DataCell(HeadingText(
                          size: 15,
                          value: "Juma Omary Kaponta",
                        )),
                        DataCell(HeadingText(
                          size: 15,
                          value: "Father",
                        )),
                        DataCell(HeadingText(
                          size: 15,
                          value: "parentsemail@gmail.com",
                        )),
                        DataCell(Row(
                          children: [
                            HeadingText(
                              size: 15,
                              value: "+255734848894",
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Icon(
                              Icons.add_call,
                              size: 16,
                              color: Palette().primaryColor,
                            )
                          ],
                        )),
                        DataCell(HeadingText(
                          size: 15,
                          value: "TABAT, BIMA",
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
                          size: 15,
                          value: "1",
                        )),
                        DataCell(Icon(size: 20, Icons.face_rounded)),
                        DataCell(HeadingText(
                          size: 15,
                          value: "Juma Omary Kaponta",
                        )),
                        DataCell(HeadingText(
                          size: 15,
                          value: "Father",
                        )),
                        DataCell(HeadingText(
                          size: 15,
                          value: "parentsemail@gmail.com",
                        )),
                        DataCell(Row(
                          children: [
                            HeadingText(
                              size: 15,
                              value: "+255734848894",
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Icon(
                              Icons.add_call,
                              size: 16,
                              color: Palette().primaryColor,
                            )
                          ],
                        )),
                        DataCell(HeadingText(
                          size: 15,
                          value: "TABAT, BIMA",
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
                          size: 15,
                          value: "1",
                        )),
                        DataCell(Icon(size: 20, Icons.face_rounded)),
                        DataCell(HeadingText(
                          size: 15,
                          value: "Juma Omary Kaponta",
                        )),
                        DataCell(HeadingText(
                          size: 15,
                          value: "Father",
                        )),
                        DataCell(HeadingText(
                          size: 15,
                          value: "parentsemail@gmail.com",
                        )),
                        DataCell(Row(
                          children: [
                            HeadingText(
                              size: 15,
                              value: "+255734848894",
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Icon(
                              Icons.add_call,
                              size: 16,
                              color: Palette().primaryColor,
                            )
                          ],
                        )),
                        DataCell(HeadingText(
                          size: 15,
                          value: "TABAT, BIMA",
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
                          size: 15,
                          value: "1",
                        )),
                        DataCell(Icon(size: 20, Icons.face_rounded)),
                        DataCell(HeadingText(
                          size: 15,
                          value: "Juma Omary Kaponta",
                        )),
                        DataCell(HeadingText(
                          size: 15,
                          value: "Father",
                        )),
                        DataCell(HeadingText(
                          size: 15,
                          value: "parentsemail@gmail.com",
                        )),
                        DataCell(Row(
                          children: [
                            HeadingText(
                              size: 15,
                              value: "+255734848894",
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Icon(
                              Icons.add_call,
                              size: 16,
                              color: Palette().primaryColor,
                            )
                          ],
                        )),
                        DataCell(HeadingText(
                          size: 15,
                          value: "TABAT, BIMA",
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
                          size: 15,
                          value: "1",
                        )),
                        DataCell(Icon(size: 20, Icons.face_rounded)),
                        DataCell(HeadingText(
                          size: 15,
                          value: "Juma Omary Kaponta",
                        )),
                        DataCell(HeadingText(
                          size: 15,
                          value: "Father",
                        )),
                        DataCell(HeadingText(
                          size: 15,
                          value: "parentsemail@gmail.com",
                        )),
                        DataCell(Row(
                          children: [
                            HeadingText(
                              size: 15,
                              value: "+255734848894",
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Icon(
                              Icons.add_call,
                              size: 16,
                              color: Palette().primaryColor,
                            )
                          ],
                        )),
                        DataCell(HeadingText(
                          size: 15,
                          value: "TABAT, BIMA",
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
                          size: 15,
                          value: "1",
                        )),
                        DataCell(Icon(size: 20, Icons.face_rounded)),
                        DataCell(HeadingText(
                          size: 15,
                          value: "Juma Omary Kaponta",
                        )),
                        DataCell(HeadingText(
                          size: 15,
                          value: "Father",
                        )),
                        DataCell(HeadingText(
                          size: 15,
                          value: "parentsemail@gmail.com",
                        )),
                        DataCell(Row(
                          children: [
                            HeadingText(
                              size: 15,
                              value: "+255734848894",
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Icon(
                              Icons.add_call,
                              size: 16,
                              color: Palette().primaryColor,
                            )
                          ],
                        )),
                        DataCell(HeadingText(
                          size: 15,
                          value: "TABAT, BIMA",
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
                          size: 15,
                          value: "1",
                        )),
                        DataCell(Icon(size: 20, Icons.face_rounded)),
                        DataCell(HeadingText(
                          size: 15,
                          value: "Juma Omary Kaponta",
                        )),
                        DataCell(HeadingText(
                          size: 15,
                          value: "Father",
                        )),
                        DataCell(HeadingText(
                          size: 15,
                          value: "parentsemail@gmail.com",
                        )),
                        DataCell(Row(
                          children: [
                            HeadingText(
                              size: 15,
                              value: "+255734848894",
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Icon(
                              Icons.add_call,
                              size: 16,
                              color: Palette().primaryColor,
                            )
                          ],
                        )),
                        DataCell(HeadingText(
                          size: 15,
                          value: "TABAT, BIMA",
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
