import 'package:flutter/material.dart';
import 'package:skyconnect_starter/components/downloadBar.comp.dart';
import 'package:skyconnect_starter/components/heading_text.dart';
import 'package:skyconnect_starter/components/inputTextOnly.comp.dart';
import 'package:skyconnect_starter/components/searchBar.comp.dart';
import 'package:skyconnect_starter/components/searchInputOptions.comp.dart';
import 'package:skyconnect_starter/components/tile2.comp.dart';
import 'package:skyconnect_starter/controllers/responsive.dart';
import 'package:skyconnect_starter/theme/design.theme.dart';

class viewAddMark extends StatefulWidget {
  const viewAddMark({super.key});

  @override
  State<viewAddMark> createState() => _viewAddMarkState();
}

class _viewAddMarkState extends State<viewAddMark> {
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
            value: "Marking Status",
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
                  ? 320
                  : MediaQuery.of(context).size.width,
              child: tile2(tileHeading: "Class Name", tileData: "Class Seven"),
            ),
            SizedBox(
              width: Responsive.isDesktop(context)
                  ? 320
                  : MediaQuery.of(context).size.width,
              child: tile2(tileHeading: "Students", tileData: "777"),
            ),
            SizedBox(
              width: Responsive.isDesktop(context)
                  ? 320
                  : MediaQuery.of(context).size.width,
              child:
                  tile2(tileHeading: "Marking Status", tileData: "77 Remains"),
            ),
          ],
        ),
        searchBar(
          title: "Search for Student",
          opt1: searchInputOptions(title: "Subject", opt1: ""),
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
                            ? size.width / 60
                            : Responsive.isDesktop(context) && size.width > 1600
                                ? size.width / 50
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
                        value: "Student",
                        fontWeight: FontWeight.w700,
                      )),
                      DataColumn(
                          label: HeadingText(
                        size: 14,
                        value: "Sex",
                        fontWeight: FontWeight.w700,
                      )),
                      DataColumn(
                          label: HeadingText(
                        size: 14,
                        value: "Stream",
                        fontWeight: FontWeight.w700,
                      )),
                      DataColumn(
                          label: SizedBox(
                        width: Responsive.isDesktop(context) ? 130 : null,
                        child: Center(
                          child: HeadingText(
                            size: 14,
                            value: "SOCIAL STUDIES",
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      )),
                      DataColumn(
                          label: SizedBox(
                        width: Responsive.isDesktop(context) ? 130 : 100,
                        child: Center(
                          child: HeadingText(
                            size: 14,
                            value: "KISWAHILI",
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      )),
                      DataColumn(
                          label: SizedBox(
                        width: Responsive.isDesktop(context) ? 130 : 100,
                        child: Center(
                          child: HeadingText(
                            size: 14,
                            value: "GEOGRAPHY",
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      )),
                      DataColumn(
                          label: SizedBox(
                        width: Responsive.isDesktop(context) ? 130 : 100,
                        child: Center(
                          child: HeadingText(
                            size: 14,
                            value: "PHYSICS",
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      )),
                      DataColumn(
                          label: SizedBox(
                        width: Responsive.isDesktop(context) ? 130 : 100,
                        child: Center(
                          child: HeadingText(
                            size: 14,
                            value: "MATHEMATICS",
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      )),
                    ],
                    rows: [
                      DataRow(cells: [
                        DataCell(Checkbox(
                          value: false,
                          onChanged: (value) {
                            setState(() {});
                          },
                        )),
                        DataCell(HeadingText(
                          size: 14,
                          value: "1",
                        )),
                        DataCell(HeadingText(
                          size: 14,
                          value: "AARON DANIEL SHAID",
                        )),
                        DataCell(HeadingText(
                          size: 14,
                          value: "Male",
                        )),
                        DataCell(HeadingText(
                          size: 14,
                          value: "ANTELOPE",
                        )),
                        DataCell(inputTextOnly(
                          hintText: '',
                          size: 130,
                        )),
                        DataCell(inputTextOnly(
                          hintText: '',
                          size: 130,
                        )),
                        DataCell(inputTextOnly(
                          hintText: '',
                          size: 130,
                        )),
                        DataCell(inputTextOnly(
                          hintText: '',
                          size: 130,
                        )),
                        DataCell(inputTextOnly(
                          hintText: '',
                          size: 130,
                        )),
                      ]),
                      DataRow(cells: [
                        DataCell(Checkbox(
                          value: false,
                          onChanged: (value) {
                            setState(() {});
                          },
                        )),
                        DataCell(HeadingText(
                          size: 14,
                          value: "1",
                        )),
                        DataCell(HeadingText(
                          size: 14,
                          value: "AARON DANIEL SHAID",
                        )),
                        DataCell(HeadingText(
                          size: 14,
                          value: "Male",
                        )),
                        DataCell(HeadingText(
                          size: 14,
                          value: "ANTELOPE",
                        )),
                        DataCell(inputTextOnly(
                          hintText: '',
                          size: 130,
                        )),
                        DataCell(inputTextOnly(
                          hintText: '',
                          size: 130,
                        )),
                        DataCell(inputTextOnly(
                          hintText: '',
                          size: 130,
                        )),
                        DataCell(inputTextOnly(
                          hintText: '',
                          size: 130,
                        )),
                        DataCell(inputTextOnly(
                          hintText: '',
                          size: 130,
                        )),
                      ]),
                      DataRow(cells: [
                        DataCell(Checkbox(
                          value: false,
                          onChanged: (value) {
                            setState(() {});
                          },
                        )),
                        DataCell(HeadingText(
                          size: 14,
                          value: "1",
                        )),
                        DataCell(HeadingText(
                          size: 14,
                          value: "AARON DANIEL SHAID",
                        )),
                        DataCell(HeadingText(
                          size: 14,
                          value: "Male",
                        )),
                        DataCell(HeadingText(
                          size: 14,
                          value: "ANTELOPE",
                        )),
                        DataCell(inputTextOnly(
                          hintText: '',
                          size: 130,
                        )),
                        DataCell(inputTextOnly(
                          hintText: '',
                          size: 130,
                        )),
                        DataCell(inputTextOnly(
                          hintText: '',
                          size: 130,
                        )),
                        DataCell(inputTextOnly(
                          hintText: '',
                          size: 130,
                        )),
                        DataCell(inputTextOnly(
                          hintText: '',
                          size: 130,
                        )),
                      ]),
                      DataRow(cells: [
                        DataCell(Checkbox(
                          value: false,
                          onChanged: (value) {
                            setState(() {});
                          },
                        )),
                        DataCell(HeadingText(
                          size: 14,
                          value: "1",
                        )),
                        DataCell(HeadingText(
                          size: 14,
                          value: "AARON DANIEL SHAID",
                        )),
                        DataCell(HeadingText(
                          size: 14,
                          value: "Male",
                        )),
                        DataCell(HeadingText(
                          size: 14,
                          value: "ANTELOPE",
                        )),
                        DataCell(inputTextOnly(
                          hintText: '',
                          size: 130,
                        )),
                        DataCell(inputTextOnly(
                          hintText: '',
                          size: 130,
                        )),
                        DataCell(inputTextOnly(
                          hintText: '',
                          size: 130,
                        )),
                        DataCell(inputTextOnly(
                          hintText: '',
                          size: 130,
                        )),
                        DataCell(inputTextOnly(
                          hintText: '',
                          size: 130,
                        )),
                      ]),
                      DataRow(cells: [
                        DataCell(Checkbox(
                          value: false,
                          onChanged: (value) {
                            setState(() {});
                          },
                        )),
                        DataCell(HeadingText(
                          size: 14,
                          value: "1",
                        )),
                        DataCell(HeadingText(
                          size: 14,
                          value: "AARON DANIEL SHAID",
                        )),
                        DataCell(HeadingText(
                          size: 14,
                          value: "Male",
                        )),
                        DataCell(HeadingText(
                          size: 14,
                          value: "ANTELOPE",
                        )),
                        DataCell(inputTextOnly(
                          hintText: '',
                          size: 130,
                        )),
                        DataCell(inputTextOnly(
                          hintText: '',
                          size: 130,
                        )),
                        DataCell(inputTextOnly(
                          hintText: '',
                          size: 130,
                        )),
                        DataCell(inputTextOnly(
                          hintText: '',
                          size: 130,
                        )),
                        DataCell(inputTextOnly(
                          hintText: '',
                          size: 130,
                        )),
                      ]),
                      DataRow(cells: [
                        DataCell(Checkbox(
                          value: false,
                          onChanged: (value) {
                            setState(() {});
                          },
                        )),
                        DataCell(HeadingText(
                          size: 14,
                          value: "1",
                        )),
                        DataCell(HeadingText(
                          size: 14,
                          value: "AARON DANIEL SHAID",
                        )),
                        DataCell(HeadingText(
                          size: 14,
                          value: "Male",
                        )),
                        DataCell(HeadingText(
                          size: 14,
                          value: "ANTELOPE",
                        )),
                        DataCell(inputTextOnly(
                          hintText: '',
                          size: 130,
                        )),
                        DataCell(inputTextOnly(
                          hintText: '',
                          size: 130,
                        )),
                        DataCell(inputTextOnly(
                          hintText: '',
                          size: 130,
                        )),
                        DataCell(inputTextOnly(
                          hintText: '',
                          size: 130,
                        )),
                        DataCell(inputTextOnly(
                          hintText: '',
                          size: 130,
                        )),
                      ]),
                      DataRow(cells: [
                        DataCell(Checkbox(
                          value: false,
                          onChanged: (value) {
                            setState(() {});
                          },
                        )),
                        DataCell(HeadingText(
                          size: 14,
                          value: "1",
                        )),
                        DataCell(HeadingText(
                          size: 14,
                          value: "AARON DANIEL SHAID",
                        )),
                        DataCell(HeadingText(
                          size: 14,
                          value: "Male",
                        )),
                        DataCell(HeadingText(
                          size: 14,
                          value: "ANTELOPE",
                        )),
                        DataCell(inputTextOnly(
                          hintText: '',
                          size: 130,
                        )),
                        DataCell(inputTextOnly(
                          hintText: '',
                          size: 130,
                        )),
                        DataCell(inputTextOnly(
                          hintText: '',
                          size: 130,
                        )),
                        DataCell(inputTextOnly(
                          hintText: '',
                          size: 130,
                        )),
                        DataCell(inputTextOnly(
                          hintText: '',
                          size: 130,
                        )),
                      ]),
                      DataRow(cells: [
                        DataCell(Checkbox(
                          value: false,
                          onChanged: (value) {
                            setState(() {});
                          },
                        )),
                        DataCell(HeadingText(
                          size: 14,
                          value: "1",
                        )),
                        DataCell(HeadingText(
                          size: 14,
                          value: "AARON DANIEL SHAID",
                        )),
                        DataCell(HeadingText(
                          size: 14,
                          value: "Male",
                        )),
                        DataCell(HeadingText(
                          size: 14,
                          value: "ANTELOPE",
                        )),
                        DataCell(inputTextOnly(
                          hintText: '',
                          size: 130,
                        )),
                        DataCell(inputTextOnly(
                          hintText: '',
                          size: 130,
                        )),
                        DataCell(inputTextOnly(
                          hintText: '',
                          size: 130,
                        )),
                        DataCell(inputTextOnly(
                          hintText: '',
                          size: 130,
                        )),
                        DataCell(inputTextOnly(
                          hintText: '',
                          size: 130,
                        )),
                      ]),
                      DataRow(cells: [
                        DataCell(Checkbox(
                          value: false,
                          onChanged: (value) {
                            setState(() {});
                          },
                        )),
                        DataCell(HeadingText(
                          size: 14,
                          value: "1",
                        )),
                        DataCell(HeadingText(
                          size: 14,
                          value: "AARON DANIEL SHAID",
                        )),
                        DataCell(HeadingText(
                          size: 14,
                          value: "Male",
                        )),
                        DataCell(HeadingText(
                          size: 14,
                          value: "ANTELOPE",
                        )),
                        DataCell(inputTextOnly(
                          hintText: '',
                          size: 130,
                        )),
                        DataCell(inputTextOnly(
                          hintText: '',
                          size: 130,
                        )),
                        DataCell(inputTextOnly(
                          hintText: '',
                          size: 130,
                        )),
                        DataCell(inputTextOnly(
                          hintText: '',
                          size: 130,
                        )),
                        DataCell(inputTextOnly(
                          hintText: '',
                          size: 130,
                        )),
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
