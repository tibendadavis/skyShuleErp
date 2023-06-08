import 'package:flutter/material.dart';
import 'package:skyconnect_starter/components/downloadBar.comp.dart';
import 'package:skyconnect_starter/components/heading_text.dart';
import 'package:skyconnect_starter/components/searchBar.comp.dart';
import 'package:skyconnect_starter/components/searchInputDate.comp.dart';
import 'package:skyconnect_starter/components/tile2.comp.dart';
import 'package:skyconnect_starter/controllers/responsive.dart';
import 'package:skyconnect_starter/theme/design.theme.dart';

class invoiceReport extends StatefulWidget {
  const invoiceReport({super.key});

  @override
  State<invoiceReport> createState() => _invoiceReportState();
}

class _invoiceReportState extends State<invoiceReport> {
  bool _menu = false;
  double _drawersize = 250;
  TextEditingController _From = TextEditingController();
  TextEditingController _To = TextEditingController();
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
              top: Insets().appPadding,
              left: Responsive.isDesktop(context)
                  ? Insets().appPadding * 2
                  : Insets().appPadding,
              right: Insets().appGap),
          child: HeadingText(
            size: Responsive.isDesktop(context) ? 35 : 30,
            value: "Invoice Report",
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
              child: tile2(tileHeading: "Invoice Reports", tileData: "7"),
            ),
          ],
        ),
        searchBar(
            title: "Search for Invoice Reports",
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
                          ? size.width / 55
                          : Responsive.isDesktop(context) && size.width > 1600
                              ? size.width / 30
                              : 25,
                  columns: [
                    DataColumn(
                        label: Checkbox(
                      value: false,
                      onChanged: (value) {
                        setState(() {});
                      },
                    )),
                    DataColumn(
                      label: SizedBox(
                        width: Responsive.isDesktop(context) ? null : null,
                        child: HeadingText(
                            size: 14,
                            fontWeight: FontWeight.w700,
                            value: 'Invoice No.'),
                      ),
                    ),
                    DataColumn(
                      label: HeadingText(
                          size: 14, fontWeight: FontWeight.w700, value: 'Date'),
                    ),
                    DataColumn(
                      label: HeadingText(
                          size: 14,
                          fontWeight: FontWeight.w700,
                          value: 'Customer Name'),
                    ),
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
                          value: 'Quantity'),
                    ),
                    DataColumn(
                      label: HeadingText(
                          fontWeight: FontWeight.w700,
                          size: 14,
                          value: 'Price'),
                    ),
                    DataColumn(
                      label: HeadingText(
                          fontWeight: FontWeight.w700,
                          size: 14,
                          value: 'Total Amount'),
                    ),
                    DataColumn(
                      label: HeadingText(
                          size: 14, fontWeight: FontWeight.w700, value: 'Tax'),
                    ),
                    DataColumn(
                      label: HeadingText(
                          fontWeight: FontWeight.w700,
                          size: 14,
                          value: 'Grand  Total'),
                    ),
                    DataColumn(
                      label: HeadingText(
                          fontWeight: FontWeight.w700,
                          size: 14,
                          value: 'Payment \nStatus'),
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
