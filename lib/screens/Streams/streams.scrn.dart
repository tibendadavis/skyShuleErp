import 'package:flutter/material.dart';
import 'package:skyconnect_starter/components/downloadBar.comp.dart';
import 'package:skyconnect_starter/components/heading_text.dart';
import 'package:skyconnect_starter/components/searchBar.comp.dart';
import 'package:skyconnect_starter/components/searchInputOptions.comp.dart';
import 'package:skyconnect_starter/components/tile2.comp.dart';
import 'package:skyconnect_starter/components/tile3.comp.dart';
import 'package:skyconnect_starter/controllers/responsive.dart';
import 'package:skyconnect_starter/screens/Streams/addStream.scrn.dart';
import 'package:skyconnect_starter/theme/design.theme.dart';

class streams extends StatefulWidget {
  const streams({super.key});

  @override
  State<streams> createState() => _streamsState();
}

class _streamsState extends State<streams> {
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
            value: "Streams",
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
                  icon: Icons.stream_outlined,
                  link: addStream(),
                  linkTitle: "New Stream",
                )),
            SizedBox(
              width: Responsive.isDesktop(context)
                  ? 360
                  : MediaQuery.of(context).size.width,
              child: tile2(tileHeading: "Total Streams", tileData: "7"),
            ),
          ],
        ),
        searchBar(
          title: "Search for Streams",
          opt1: searchInputOptions(title: "Class Level", opt1: ""),
          opt2: searchInputOptions(title: "Class ", opt1: ""),
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
                            ? size.width / 20
                            : Responsive.isDesktop(context) && size.width > 1600
                                ? size.width / 15
                                : 25,
                    showCheckboxColumn: true,
                    checkboxHorizontalMargin: 10,
                    showBottomBorder: true,
                    columns: [
                      DataColumn(
                          label: SizedBox(
                        child: HeadingText(
                          size: 14,
                          value: "No.",
                          fontWeight: FontWeight.w700,
                        ),
                      )),
                      DataColumn(
                          label: HeadingText(
                        size: 14,
                        value: "Stream",
                        fontWeight: FontWeight.w700,
                      )),
                      DataColumn(
                          label: HeadingText(
                        size: 14,
                        value: "Category",
                        fontWeight: FontWeight.w700,
                      )),
                      DataColumn(
                          label: HeadingText(
                        size: 14,
                        value: "Teacher Name",
                        fontWeight: FontWeight.w700,
                      )),
                      DataColumn(
                          label: HeadingText(
                        size: 14,
                        value: "Student",
                        fontWeight: FontWeight.w700,
                      )),
                      DataColumn(
                          label: HeadingText(
                        size: 14,
                        value: "Note",
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
                          value: "ZEBRA",
                        )),
                        DataCell(HeadingText(
                          size: 14,
                          value: "ZEBRA",
                        )),
                        DataCell(HeadingText(
                          size: 14,
                          value: "Venosa P Kigosi",
                        )),
                        DataCell(Center(
                          child: HeadingText(
                            size: 14,
                            value: "44",
                          ),
                        )),
                        DataCell(HeadingText(
                          size: 14,
                          value: "  ",
                        )),
                        DataCell(Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            TextButton(
                              onPressed: () {},
                              child: HeadingText(
                                size: 14,
                                value: "View Students",
                              ),
                            ),
                            SizedBox(
                              width: 5,
                            ),
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
                          value: "ZEBRA",
                        )),
                        DataCell(HeadingText(
                          size: 14,
                          value: "ZEBRA",
                        )),
                        DataCell(HeadingText(
                          size: 14,
                          value: "Venosa P Kigosi",
                        )),
                        DataCell(Center(
                          child: HeadingText(
                            size: 14,
                            value: "44",
                          ),
                        )),
                        DataCell(HeadingText(
                          size: 14,
                          value: "  ",
                        )),
                        DataCell(Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            TextButton(
                              onPressed: () {},
                              child: HeadingText(
                                size: 14,
                                value: "View Students",
                              ),
                            ),
                            SizedBox(
                              width: 5,
                            ),
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
                          value: "ZEBRA",
                        )),
                        DataCell(HeadingText(
                          size: 14,
                          value: "ZEBRA",
                        )),
                        DataCell(HeadingText(
                          size: 14,
                          value: "Venosa P Kigosi",
                        )),
                        DataCell(Center(
                          child: HeadingText(
                            size: 14,
                            value: "44",
                          ),
                        )),
                        DataCell(HeadingText(
                          size: 14,
                          value: "  ",
                        )),
                        DataCell(Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            TextButton(
                              onPressed: () {},
                              child: HeadingText(
                                size: 14,
                                value: "View Students",
                              ),
                            ),
                            SizedBox(
                              width: 5,
                            ),
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
                          value: "ZEBRA",
                        )),
                        DataCell(HeadingText(
                          size: 14,
                          value: "ZEBRA",
                        )),
                        DataCell(HeadingText(
                          size: 14,
                          value: "Venosa P Kigosi",
                        )),
                        DataCell(Center(
                          child: HeadingText(
                            size: 14,
                            value: "44",
                          ),
                        )),
                        DataCell(HeadingText(
                          size: 14,
                          value: "  ",
                        )),
                        DataCell(Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            TextButton(
                              onPressed: () {},
                              child: HeadingText(
                                size: 14,
                                value: "View Students",
                              ),
                            ),
                            SizedBox(
                              width: 5,
                            ),
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
                          value: "ZEBRA",
                        )),
                        DataCell(HeadingText(
                          size: 14,
                          value: "ZEBRA",
                        )),
                        DataCell(HeadingText(
                          size: 14,
                          value: "Venosa P Kigosi",
                        )),
                        DataCell(Center(
                          child: HeadingText(
                            size: 14,
                            value: "44",
                          ),
                        )),
                        DataCell(HeadingText(
                          size: 14,
                          value: "  ",
                        )),
                        DataCell(Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            TextButton(
                              onPressed: () {},
                              child: HeadingText(
                                size: 14,
                                value: "View Students",
                              ),
                            ),
                            SizedBox(
                              width: 5,
                            ),
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
                          value: "6",
                        )),
                        DataCell(HeadingText(
                          size: 14,
                          value: "ZEBRA",
                        )),
                        DataCell(HeadingText(
                          size: 14,
                          value: "ZEBRA",
                        )),
                        DataCell(HeadingText(
                          size: 14,
                          value: "Venosa P Kigosi",
                        )),
                        DataCell(Center(
                          child: HeadingText(
                            size: 14,
                            value: "44",
                          ),
                        )),
                        DataCell(HeadingText(
                          size: 14,
                          value: "  ",
                        )),
                        DataCell(Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            TextButton(
                              onPressed: () {},
                              child: HeadingText(
                                size: 14,
                                value: "View Students",
                              ),
                            ),
                            SizedBox(
                              width: 5,
                            ),
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
