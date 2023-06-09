import 'package:flutter/material.dart';
import 'package:skyconnect_starter/components/downloadBar.comp.dart';
import 'package:skyconnect_starter/components/heading_text.dart';
import 'package:skyconnect_starter/components/searchBar.comp.dart';
import 'package:skyconnect_starter/components/searchInputOptions.comp.dart';
import 'package:skyconnect_starter/components/tile2.comp.dart';
import 'package:skyconnect_starter/components/tile3.comp.dart';
import 'package:skyconnect_starter/controllers/responsive.dart';
import 'package:skyconnect_starter/screens/Terms/addTerm.scrn.dart';
import 'package:skyconnect_starter/theme/design.theme.dart';

class terms extends StatefulWidget {
  const terms({super.key});

  @override
  State<terms> createState() => _termsState();
}

class _termsState extends State<terms> {
  bool _menu = false;
  double _drawersize = 250;
  var _classlevel;
  var _academicYear;
  var _stream;

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
            value: "Terms",
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
                  icon: Icons.signal_cellular_alt_outlined,
                  link: addTerms(),
                  linkTitle: "New Term",
                )),
            SizedBox(
              width: Responsive.isDesktop(context)
                  ? 360
                  : MediaQuery.of(context).size.width,
              child: tile2(tileHeading: "Total Terms", tileData: "7"),
            ),
          ],
        ),
        searchBar(
          title: "Search for Terms",
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
                            ? size.width / 14
                            : Responsive.isDesktop(context) && size.width > 1600
                                ? size.width / 10
                                : 25,
                    showCheckboxColumn: true,
                    checkboxHorizontalMargin: 10,
                    showBottomBorder: true,
                    columns: [
                      DataColumn(
                          label: Expanded(
                        child: HeadingText(
                          size: 14,
                          value: "No.",
                          fontWeight: FontWeight.w700,
                        ),
                      )),
                      DataColumn(
                          label: HeadingText(
                        size: 14,
                        value: "Term",
                        fontWeight: FontWeight.w700,
                      )),
                      DataColumn(
                          label: HeadingText(
                        size: 14,
                        value: "Start Date",
                        fontWeight: FontWeight.w700,
                      )),
                      DataColumn(
                          label: HeadingText(
                        size: 14,
                        value: "End Date",
                        fontWeight: FontWeight.w700,
                      )),
                      DataColumn(
                          label: HeadingText(
                        size: 14,
                        value: "Study Days",
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
                          value: "FIRST TERM",
                        )),
                        DataCell(HeadingText(
                          size: 14,
                          value: "2022 - 01 - 17",
                        )),
                        DataCell(HeadingText(
                          size: 14,
                          value: "2022 - 06 - 24",
                        )),
                        DataCell(HeadingText(
                          size: 14,
                          value: "  ",
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
                          value: "SECOND TERM",
                        )),
                        DataCell(HeadingText(
                          size: 14,
                          value: "2022 - 01 - 17",
                        )),
                        DataCell(HeadingText(
                          size: 14,
                          value: "2022 - 06 - 24",
                        )),
                        DataCell(HeadingText(
                          size: 14,
                          value: "  ",
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
