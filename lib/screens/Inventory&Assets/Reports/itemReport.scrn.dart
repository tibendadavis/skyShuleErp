import 'package:flutter/material.dart';
import 'package:skyconnect_starter/components/downloadBar.comp.dart';
import 'package:skyconnect_starter/components/heading_text.dart';
import 'package:skyconnect_starter/components/searchBar.comp.dart';
import 'package:skyconnect_starter/components/searchInputDate.comp.dart';
import 'package:skyconnect_starter/components/searchInputOptions.comp.dart';
import 'package:skyconnect_starter/components/tile2.comp.dart';
import 'package:skyconnect_starter/controllers/responsive.dart';
import 'package:skyconnect_starter/theme/design.theme.dart';

class itemReport extends StatefulWidget {
  const itemReport({super.key});

  @override
  State<itemReport> createState() => _itemReportState();
}

class _itemReportState extends State<itemReport> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
      child: Expanded(
          child: Column(children: [
        Container(
          alignment: Alignment.bottomLeft,
          padding: EdgeInsets.only(
              top: Insets().appPadding,
              left: Responsive.isDesktop(context)
                  ? Insets().appPadding * 2
                  : Insets().appPadding,
              right: Insets().appGap),
          child: HeadingText(
            size: Responsive.isDesktop(context) ? 35 : 30,
            value: "Item Report",
            fontWeight: FontWeight.w700,
            color: Colors.grey.shade800,
          ),
        ),
        Flex(
          direction:
              Responsive.isDesktop(context) ? Axis.horizontal : Axis.vertical,
          children: [
            Container(
                width: Responsive.isDesktop(context) ? 400 : size.width,
                child: tile2(tileHeading: "Item Reports", tileData: "7")),
          ],
        ),
        searchBar(
            title: "Search for Item Reports",
            opt1: searchInputOptions(
              title: "Category",
              opt1: "",
            ),
            opt2: searchInputOptions(
              title: "Location",
              opt1: "",
            ),
            opt8: searchInputDate(
              title: "From",
            ),
            opt9: searchInputDate(
              title: "To",
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
                          ? size.width / 65
                          : Responsive.isDesktop(context) && size.width > 1600
                              ? size.width / 40
                              : 25,
                  showCheckboxColumn: true,
                  checkboxHorizontalMargin: 10,
                  showBottomBorder: true,
                  columns: [
                    DataColumn(
                        label: Checkbox(
                      value: false,
                      onChanged: (value) {
                        setState(() {});
                      },
                    )),
                    DataColumn(
                        label: HeadingText(
                      size: 14,
                      value: "No.",
                      fontWeight: FontWeight.w700,
                    )),
                    DataColumn(
                      label: HeadingText(
                          size: 14,
                          fontWeight: FontWeight.w700,
                          value: 'Item Name'),
                    ),
                    DataColumn(
                      label: HeadingText(
                          size: 14,
                          fontWeight: FontWeight.w700,
                          value: 'Item ID'),
                    ),
                    DataColumn(
                      label: HeadingText(
                          size: 14,
                          fontWeight: FontWeight.w700,
                          value: 'Category'),
                    ),
                    DataColumn(
                      label: HeadingText(
                          size: 14,
                          fontWeight: FontWeight.w700,
                          value: 'Location'),
                    ),
                    DataColumn(
                      label: HeadingText(
                          size: 14,
                          fontWeight: FontWeight.w700,
                          value: 'Quantity'),
                    ),
                    DataColumn(
                      label: HeadingText(
                          fontWeight: FontWeight.w700,
                          size: 14,
                          value: 'Reorder Level'),
                    ),
                    DataColumn(
                      label: HeadingText(
                          fontWeight: FontWeight.w700,
                          size: 14,
                          value: 'Reorder Quantity'),
                    ),
                    DataColumn(
                      label: HeadingText(
                          size: 14, fontWeight: FontWeight.w700, value: 'Cost'),
                    ),
                    DataColumn(
                      label: HeadingText(
                          fontWeight: FontWeight.w700,
                          size: 14,
                          value: 'Last  Purchase\nPrice'),
                    ),
                    DataColumn(
                      label: HeadingText(
                          fontWeight: FontWeight.w700,
                          size: 14,
                          value: 'Last  Purchase\nDate'),
                    ),
                    DataColumn(
                      label: HeadingText(
                          size: 14,
                          fontWeight: FontWeight.w700,
                          value: 'Action'),
                    ),
                  ],
                  rows: [],
                ),
              ),
            ),
          ]),
        )
      ])),
    );
  }
}
