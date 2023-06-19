import 'package:flutter/material.dart';
import 'package:skyconnect_starter/components/downloadBar.comp.dart';
import 'package:skyconnect_starter/components/heading_text.dart';
import 'package:skyconnect_starter/components/searchBar.comp.dart';
import 'package:skyconnect_starter/components/searchInputOptions.comp.dart';
import 'package:skyconnect_starter/components/tile3.comp.dart';
import 'package:skyconnect_starter/controllers/responsive.dart';
import 'package:skyconnect_starter/theme/design.theme.dart';

class membersHostel extends StatefulWidget {
  const membersHostel({super.key});

  @override
  State<membersHostel> createState() => _membersHostelState();
}

class _membersHostelState extends State<membersHostel> {
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
            value: "Members",
            fontWeight: FontWeight.w700,
            color: Colors.grey.shade800,
          ),
        ),
        Flex(
          direction:
              Responsive.isDesktop(context) ? Axis.horizontal : Axis.vertical,
          children: [
            Container(
              width: Responsive.isDesktop(context) ? 380 : size.width,
              child: tile3(
                icon: Icons.how_to_reg,
                link: null,
                linkTitle: "Upload Members From Excel",
              ),
            ),
          ],
        ),
        searchBar(
            title: "Search ",
            opt1: searchInputOptions(
              title: "Class Level",
              opt1: "",
            ),
            opt2: searchInputOptions(
              title: "Academic Year",
              opt1: "",
            ),
            opt3: searchInputOptions(
              title: "Installments",
              opt1: "",
            ),
            opt4: searchInputOptions(
              title: "Type",
              opt1: "",
            ),
            opt5: searchInputOptions(
              title: "Class",
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
                            ? size.width / 14
                            : Responsive.isDesktop(context) && size.width > 1600
                                ? size.width / 10
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
                        value: "Name",
                        fontWeight: FontWeight.w700,
                      )),
                      DataColumn(
                          label: HeadingText(
                        size: 14,
                        value: "Gender",
                        fontWeight: FontWeight.w700,
                      )),
                      DataColumn(
                          label: HeadingText(
                        size: 14,
                        value: "Email Address",
                        fontWeight: FontWeight.w700,
                      )),
                      DataColumn(
                          label: HeadingText(
                        size: 14,
                        value: "Phone",
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
                          value: "Doe Lucas John",
                        )),
                        DataCell(HeadingText(
                          size: 14,
                          value: "Male",
                        )),
                        DataCell(HeadingText(
                          size: 14,
                          value: "supporting@gmail.com",
                        )),
                        DataCell(Row(
                          children: [
                            HeadingText(
                              size: 15,
                              value: "+255734848894",
                            ),
                            SizedBox(
                              width: 3,
                            ),
                            Icon(
                              Icons.add_call,
                              size: 16,
                              color: Palette().primaryColor,
                            )
                          ],
                        )),
                        DataCell(Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            TextButton(
                              onPressed: () {},
                              child: HeadingText(
                                size: 14,
                                value: "Add",
                              ),
                            ),
                          ],
                        ))
                      ]),
                      DataRow(cells: [
                        DataCell(HeadingText(
                          size: 14,
                          value: "1",
                        )),
                        DataCell(HeadingText(
                          size: 14,
                          value: "Doe Lucas John",
                        )),
                        DataCell(HeadingText(
                          size: 14,
                          value: "Male",
                        )),
                        DataCell(HeadingText(
                          size: 14,
                          value: "supporting@gmail.com",
                        )),
                        DataCell(Row(
                          children: [
                            HeadingText(
                              size: 15,
                              value: "+255734848894",
                            ),
                            SizedBox(
                              width: 3,
                            ),
                            Icon(
                              Icons.add_call,
                              size: 16,
                              color: Palette().primaryColor,
                            )
                          ],
                        )),
                        DataCell(Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            TextButton(
                              onPressed: () {},
                              child: HeadingText(
                                size: 14,
                                value: "Add",
                              ),
                            ),
                          ],
                        ))
                      ]),
                      DataRow(cells: [
                        DataCell(HeadingText(
                          size: 14,
                          value: "1",
                        )),
                        DataCell(HeadingText(
                          size: 14,
                          value: "Doe Lucas John",
                        )),
                        DataCell(HeadingText(
                          size: 14,
                          value: "Male",
                        )),
                        DataCell(HeadingText(
                          size: 14,
                          value: "supporting@gmail.com",
                        )),
                        DataCell(Row(
                          children: [
                            HeadingText(
                              size: 15,
                              value: "+255734848894",
                            ),
                            SizedBox(
                              width: 3,
                            ),
                            Icon(
                              Icons.add_call,
                              size: 16,
                              color: Palette().primaryColor,
                            )
                          ],
                        )),
                        DataCell(Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            TextButton(
                              onPressed: () {},
                              child: HeadingText(
                                size: 14,
                                value: "Add",
                              ),
                            ),
                          ],
                        ))
                      ]),
                      DataRow(cells: [
                        DataCell(HeadingText(
                          size: 14,
                          value: "1",
                        )),
                        DataCell(HeadingText(
                          size: 14,
                          value: "Doe Lucas John",
                        )),
                        DataCell(HeadingText(
                          size: 14,
                          value: "Male",
                        )),
                        DataCell(HeadingText(
                          size: 14,
                          value: "supporting@gmail.com",
                        )),
                        DataCell(Row(
                          children: [
                            HeadingText(
                              size: 15,
                              value: "+255734848894",
                            ),
                            SizedBox(
                              width: 3,
                            ),
                            Icon(
                              Icons.add_call,
                              size: 16,
                              color: Palette().primaryColor,
                            )
                          ],
                        )),
                        DataCell(Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            TextButton(
                              onPressed: () {},
                              child: HeadingText(
                                size: 14,
                                value: "Add",
                              ),
                            ),
                          ],
                        ))
                      ]),
                      DataRow(cells: [
                        DataCell(HeadingText(
                          size: 14,
                          value: "1",
                        )),
                        DataCell(HeadingText(
                          size: 14,
                          value: "Doe Lucas John",
                        )),
                        DataCell(HeadingText(
                          size: 14,
                          value: "Male",
                        )),
                        DataCell(HeadingText(
                          size: 14,
                          value: "supporting@gmail.com",
                        )),
                        DataCell(Row(
                          children: [
                            HeadingText(
                              size: 15,
                              value: "+255734848894",
                            ),
                            SizedBox(
                              width: 3,
                            ),
                            Icon(
                              Icons.add_call,
                              size: 16,
                              color: Palette().primaryColor,
                            )
                          ],
                        )),
                        DataCell(Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            TextButton(
                              onPressed: () {},
                              child: HeadingText(
                                size: 14,
                                value: "Add",
                              ),
                            ),
                          ],
                        ))
                      ]),
                      DataRow(cells: [
                        DataCell(HeadingText(
                          size: 14,
                          value: "1",
                        )),
                        DataCell(HeadingText(
                          size: 14,
                          value: "Doe Lucas John",
                        )),
                        DataCell(HeadingText(
                          size: 14,
                          value: "Male",
                        )),
                        DataCell(HeadingText(
                          size: 14,
                          value: "supporting@gmail.com",
                        )),
                        DataCell(Row(
                          children: [
                            HeadingText(
                              size: 15,
                              value: "+255734848894",
                            ),
                            SizedBox(
                              width: 3,
                            ),
                            Icon(
                              Icons.add_call,
                              size: 16,
                              color: Palette().primaryColor,
                            )
                          ],
                        )),
                        DataCell(Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            TextButton(
                              onPressed: () {},
                              child: HeadingText(
                                size: 14,
                                value: "Add",
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
