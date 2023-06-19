import 'package:flutter/material.dart';
import 'package:skyconnect_starter/components/downloadBar.comp.dart';
import 'package:skyconnect_starter/components/heading_text.dart';
import 'package:skyconnect_starter/components/searchBar.comp.dart';
import 'package:skyconnect_starter/components/searchInputOptions.comp.dart';
import 'package:skyconnect_starter/components/studentPerfomanceReport.comp.dart';
import 'package:skyconnect_starter/controllers/responsive.dart';
import 'package:skyconnect_starter/theme/design.theme.dart';

class combinedReports extends StatefulWidget {
  const combinedReports({super.key});

  @override
  State<combinedReports> createState() => _combinedReportsState();
}

class _combinedReportsState extends State<combinedReports> {
  bool classResult = true;
  bool subjectResult = false;
  bool meritList = false;
  var picked;

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
      child: Expanded(
          child: Column(
        children: [
          Container(
            alignment: Alignment.bottomLeft,
            padding: EdgeInsets.only(
                left: Insets().appPadding, right: Insets().appGap),
            child: HeadingText(
              size: Responsive.isDesktop(context) ? 35 : 30,
              value: "Combined Reports",
              fontWeight: FontWeight.w700,
              color: Colors.grey.shade800,
            ),
          ),
          Container(
            alignment: Alignment.centerLeft,
            padding: EdgeInsets.only(
                bottom: Insets().appPadding / 2,
                left: Insets().appPadding,
                right: Insets().appPadding),
            margin: EdgeInsets.only(
                bottom: Insets().appPadding / 2,
                top: Insets().appPadding / 2,
                right: Insets().appPadding,
                left: Insets().appPadding),
            decoration: BoxDecoration(
                color: Palette().primaryColorLight,
                borderRadius: BorderRadius.circular(Insets().appRadius)),
            child: Flex(
              direction: Responsive.isDesktop(context)
                  ? Axis.horizontal
                  : Axis.horizontal,
              mainAxisAlignment: Responsive.isDesktop(context)
                  ? MainAxisAlignment.start
                  : MainAxisAlignment.start,
              crossAxisAlignment: Responsive.isDesktop(context)
                  ? CrossAxisAlignment.start
                  : CrossAxisAlignment.start,
              children: [
                SizedBox(
                  width: Responsive.isDesktop(context) ? 220 : 150,
                  height: Responsive.isDesktop(context) ? 50 : 40,
                  child: ElevatedButton(
                      onPressed: () {
                        setState(() {
                          classResult = true;
                          subjectResult = false;
                          meritList = false;
                        });
                      },
                      style: ElevatedButton.styleFrom(
                          elevation: 0,
                          backgroundColor: !classResult
                              ? Colors.white
                              : Palette().primaryColor,
                          side: BorderSide(
                            width: 1,
                            color: !classResult
                                ? Colors.black
                                : Colors.transparent,
                          ),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(
                                  Insets().appRadiusMin + 4)),
                          padding: EdgeInsets.only(
                              left: Insets().appPadding / 1.5,
                              right: Insets().appPadding / 1.5,
                              top: Insets().appPadding,
                              bottom: Insets().appPadding)),
                      child: HeadingText(
                        size: Responsive.isDesktop(context) ? 14 : 12,
                        value: "Class Result Report",
                        color: !classResult ? Colors.black : Colors.white,
                      )),
                ),
                SizedBox(
                  width: Responsive.isDesktop(context) ? 10 : 10,
                  height: Responsive.isDesktop(context) ? 0 : 10,
                ),
                SizedBox(
                  width: Responsive.isDesktop(context) ? 220 : 120,
                  height: Responsive.isDesktop(context) ? 50 : 40,
                  child: ElevatedButton(
                      onPressed: () {
                        setState(() {
                          classResult = false;
                          subjectResult = true;
                          meritList = false;
                        });
                      },
                      style: ElevatedButton.styleFrom(
                          elevation: 0,
                          backgroundColor: !subjectResult
                              ? Colors.white
                              : Palette().primaryColor,
                          side: BorderSide(
                            width: 1,
                            color: !subjectResult
                                ? Colors.black
                                : Colors.transparent,
                          ),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(
                                  Insets().appRadiusMin + 4)),
                          padding: EdgeInsets.only(
                              left: Insets().appPadding / 1.5,
                              right: Insets().appPadding / 1.5,
                              top: Insets().appPadding,
                              bottom: Insets().appPadding)),
                      child: HeadingText(
                        size: Responsive.isDesktop(context) ? 14 : 12,
                        value: "Subject Result Report",
                        color: !subjectResult ? Colors.black : Colors.white,
                      )),
                ),
                SizedBox(
                  width: Responsive.isDesktop(context) ? 10 : 10,
                  height: Responsive.isDesktop(context) ? 0 : 10,
                ),
                SizedBox(
                  width: Responsive.isDesktop(context) ? 220 : 120,
                  height: Responsive.isDesktop(context) ? 50 : 40,
                  child: ElevatedButton(
                      onPressed: () {
                        setState(() {
                          classResult = false;
                          subjectResult = false;
                          meritList = true;
                        });
                      },
                      style: ElevatedButton.styleFrom(
                          elevation: 0,
                          backgroundColor: !meritList
                              ? Colors.white
                              : Palette().primaryColor,
                          side: BorderSide(
                            width: 1,
                            color:
                                !meritList ? Colors.black : Colors.transparent,
                          ),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(
                                  Insets().appRadiusMin + 4)),
                          padding: EdgeInsets.only(
                              left: Insets().appPadding / 1.5,
                              right: Insets().appPadding / 1.5,
                              top: Insets().appPadding,
                              bottom: Insets().appPadding)),
                      child: HeadingText(
                        size: Responsive.isDesktop(context) ? 14 : 12,
                        value: "Merit List",
                        color: !meritList ? Colors.black : Colors.white,
                      )),
                ),
              ],
            ),
          ),
          Expanded(
            child: Container(
              width: MediaQuery.of(context).size.width,
              alignment: Alignment.topLeft,
              padding: EdgeInsets.only(
                bottom: Insets().appPadding,
              ),
              margin: EdgeInsets.only(top: 0, bottom: Insets().appPadding),
              decoration: BoxDecoration(
                  color: Palette().primaryColorLight,
                  borderRadius: BorderRadius.circular(Insets().appRadius)),
              child: Column(
                children: [
                  Visibility(
                    visible: classResult,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        searchBar(
                          title: "Search for Class",
                          opt1: searchInputOptions(
                            title: "Class Level",
                            opt1: "",
                          ),
                          opt2: searchInputOptions(
                            title: "Class",
                            opt1: "",
                          ),
                        ),
                        downloadBar(results: "7"),
                        Container(
                          width: MediaQuery.of(context).size.width,
                          alignment: Alignment.topLeft,
                          margin: EdgeInsets.only(
                            left: Responsive.isDesktop(context)
                                ? Insets().appPadding
                                : 13,
                            right: Responsive.isDesktop(context)
                                ? Insets().appPadding
                                : 13,
                          ),
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius:
                                  BorderRadius.circular(Insets().appGap + 4)),
                          padding: EdgeInsets.only(
                              left: 15, right: 15, bottom: Insets().appPadding),
                          child: Expanded(
                            child: SingleChildScrollView(
                              scrollDirection: Axis.vertical,
                              child: SingleChildScrollView(
                                scrollDirection: Axis.horizontal,
                                child: DataTable(
                                    dataRowHeight: 55,
                                    headingTextStyle: TextStyle(
                                        color: Palette().primaryColor),
                                    horizontalMargin: 0,
                                    columnSpacing:
                                        Responsive.isDesktop(context) &&
                                                size.width < 1600
                                            ? size.width / 42
                                            : Responsive.isDesktop(context) &&
                                                    size.width > 1600
                                                ? size.width / 30
                                                : 25,
                                    showCheckboxColumn: true,
                                    checkboxHorizontalMargin: 10,
                                    showBottomBorder: true,
                                    columns: [
                                      DataColumn(
                                          label: SizedBox(
                                        width: Responsive.isDesktop(context)
                                            ? 30
                                            : null,
                                        child: HeadingText(
                                          size: 14,
                                          value: "No.",
                                          fontWeight: FontWeight.w700,
                                        ),
                                      )),
                                      DataColumn(
                                          label: HeadingText(
                                        size: 14,
                                        value: "Class",
                                        fontWeight: FontWeight.w700,
                                      )),
                                      DataColumn(
                                          label: HeadingText(
                                        size: 14,
                                        value: "Subject",
                                        fontWeight: FontWeight.w700,
                                      )),
                                      DataColumn(
                                          label: HeadingText(
                                        size: 14,
                                        value: "Exam\nTitle",
                                        fontWeight: FontWeight.w700,
                                      )),
                                      DataColumn(
                                          label: HeadingText(
                                        size: 14,
                                        value: "No. of\nStudents",
                                        fontWeight: FontWeight.w700,
                                      )),
                                      DataColumn(
                                          label: HeadingText(
                                        size: 14,
                                        value: "No. of\nPasses",
                                        fontWeight: FontWeight.w700,
                                      )),
                                      DataColumn(
                                          label: HeadingText(
                                        size: 14,
                                        value: "Pass\nPercentage",
                                        fontWeight: FontWeight.w700,
                                      )),
                                      DataColumn(
                                          label: HeadingText(
                                        size: 14,
                                        value: "No. of\nFailed Students",
                                        fontWeight: FontWeight.w700,
                                      )),
                                      DataColumn(
                                          label: HeadingText(
                                        size: 14,
                                        value: "Fail\nPercentage",
                                        fontWeight: FontWeight.w700,
                                      )),
                                      DataColumn(
                                          label: HeadingText(
                                        size: 14,
                                        value: "Topper's\nName",
                                        fontWeight: FontWeight.w700,
                                      )),
                                      DataColumn(
                                          label: HeadingText(
                                        size: 14,
                                        value: "Topper's\nAverage",
                                        fontWeight: FontWeight.w700,
                                      )),
                                      DataColumn(
                                          label: HeadingText(
                                        size: 14,
                                        value: "Action",
                                        fontWeight: FontWeight.w700,
                                      )),
                                    ],
                                    rows: []),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Visibility(
                    visible: subjectResult,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        searchBar(
                          title: "Search for Subject",
                          opt1: searchInputOptions(
                            title: "Class Level",
                            opt1: "",
                          ),
                          opt2: searchInputOptions(
                            title: "Subject",
                            opt1: "",
                          ),
                        ),
                        downloadBar(results: "7"),
                        Container(
                          width: MediaQuery.of(context).size.width,
                          alignment: Alignment.topLeft,
                          margin: EdgeInsets.only(
                            left: Responsive.isDesktop(context)
                                ? Insets().appPadding
                                : 13,
                            right: Responsive.isDesktop(context)
                                ? Insets().appPadding
                                : 13,
                          ),
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius:
                                  BorderRadius.circular(Insets().appGap + 4)),
                          padding: EdgeInsets.only(
                              left: 15, right: 15, bottom: Insets().appPadding),
                          child: Expanded(
                            child: SingleChildScrollView(
                              scrollDirection: Axis.vertical,
                              child: SingleChildScrollView(
                                scrollDirection: Axis.horizontal,
                                child: DataTable(
                                    dataRowHeight: 55,
                                    headingTextStyle: TextStyle(
                                        color: Palette().primaryColor),
                                    horizontalMargin: 0,
                                    columnSpacing:
                                        Responsive.isDesktop(context) &&
                                                size.width < 1600
                                            ? size.width / 45
                                            : Responsive.isDesktop(context) &&
                                                    size.width > 1600
                                                ? size.width / 30
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
                                        value: "Subject",
                                        fontWeight: FontWeight.w700,
                                      )),
                                      DataColumn(
                                          label: HeadingText(
                                        size: 14,
                                        value: "Class",
                                        fontWeight: FontWeight.w700,
                                      )),
                                      DataColumn(
                                          label: HeadingText(
                                        size: 14,
                                        value: "Exam\nTitle",
                                        fontWeight: FontWeight.w700,
                                      )),
                                      DataColumn(
                                          label: HeadingText(
                                        size: 14,
                                        value: "No. of\nStudents",
                                        fontWeight: FontWeight.w700,
                                      )),
                                      DataColumn(
                                          label: HeadingText(
                                        size: 14,
                                        value: "No. of\nPasses",
                                        fontWeight: FontWeight.w700,
                                      )),
                                      DataColumn(
                                          label: HeadingText(
                                        size: 14,
                                        value: "Pass\nPercentage",
                                        fontWeight: FontWeight.w700,
                                      )),
                                      DataColumn(
                                          label: HeadingText(
                                        size: 14,
                                        value: "No. of\nFailed Students",
                                        fontWeight: FontWeight.w700,
                                      )),
                                      DataColumn(
                                          label: HeadingText(
                                        size: 14,
                                        value: "Fail\nPercentage",
                                        fontWeight: FontWeight.w700,
                                      )),
                                      DataColumn(
                                          label: HeadingText(
                                        size: 14,
                                        value: "Topper's\nName",
                                        fontWeight: FontWeight.w700,
                                      )),
                                      DataColumn(
                                          label: HeadingText(
                                        size: 14,
                                        value: "Topper's\nAverage",
                                        fontWeight: FontWeight.w700,
                                      )),
                                      DataColumn(
                                          label: HeadingText(
                                        size: 14,
                                        value: "Action",
                                        fontWeight: FontWeight.w700,
                                      )),
                                    ],
                                    rows: []),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Visibility(
                    visible: meritList,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Column(
                          children: [
                            searchBar(
                              title: "Search for Student",
                              opt1: searchInputOptions(
                                title: "Academic Year",
                                opt1: "",
                              ),
                              opt2: searchInputOptions(
                                title: "Class Level",
                                opt1: "",
                              ),
                              opt3: searchInputOptions(
                                title: "Class",
                                opt1: "",
                              ),
                            ),
                            downloadBar(results: "7"),
                          ],
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width,
                          alignment: Alignment.topLeft,
                          margin: EdgeInsets.only(
                            left: Responsive.isDesktop(context)
                                ? Insets().appPadding
                                : 13,
                            right: Responsive.isDesktop(context)
                                ? Insets().appPadding
                                : 13,
                          ),
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius:
                                  BorderRadius.circular(Insets().appGap + 4)),
                          padding: EdgeInsets.only(
                              left: 15, right: 15, bottom: Insets().appPadding),
                          child: Expanded(
                            child: SingleChildScrollView(
                              scrollDirection: Axis.vertical,
                              child: SingleChildScrollView(
                                scrollDirection: Axis.horizontal,
                                child: DataTable(
                                    dataRowHeight: 55,
                                    headingTextStyle: TextStyle(
                                        color: Palette().primaryColor),
                                    horizontalMargin: 0,
                                    columnSpacing:
                                        Responsive.isDesktop(context) &&
                                                size.width < 1600
                                            ? size.width / 18
                                            : Responsive.isDesktop(context) &&
                                                    size.width > 1600
                                                ? size.width / 16
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
                                        value: "Rank",
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
                                        value: "Reg No.",
                                        fontWeight: FontWeight.w700,
                                      )),
                                      DataColumn(
                                          label: HeadingText(
                                        size: 14,
                                        value: "Class",
                                        fontWeight: FontWeight.w700,
                                      )),
                                      DataColumn(
                                          label: HeadingText(
                                        size: 14,
                                        value: "Total Marks",
                                        fontWeight: FontWeight.w700,
                                      )),
                                      DataColumn(
                                          label: HeadingText(
                                        size: 14,
                                        value: "Average",
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
                                        DataCell(
                                          HeadingText(
                                            size: 14,
                                            value: "1",
                                            fontWeight: FontWeight.w600,
                                          ),
                                        ),
                                        DataCell(
                                          HeadingText(
                                            size: 14,
                                            value: "1",
                                            fontWeight: FontWeight.w600,
                                          ),
                                        ),
                                        DataCell(
                                          HeadingText(
                                            size: 14,
                                            value: "Jane John Doe",
                                            fontWeight: FontWeight.w600,
                                          ),
                                        ),
                                        DataCell(
                                          HeadingText(
                                            size: 14,
                                            value: "Reg  No",
                                            fontWeight: FontWeight.w600,
                                          ),
                                        ),
                                        DataCell(
                                          HeadingText(
                                            size: 14,
                                            value: "Class 6",
                                            fontWeight: FontWeight.w600,
                                          ),
                                        ),
                                        DataCell(
                                          HeadingText(
                                            size: 14,
                                            value: "496",
                                            fontWeight: FontWeight.w600,
                                          ),
                                        ),
                                        DataCell(
                                          HeadingText(
                                            size: 14,
                                            value: "97",
                                            fontWeight: FontWeight.w600,
                                          ),
                                        ),
                                        DataCell(
                                          TextButton(
                                              onPressed: () {
                                                showDialog(
                                                    context: (context),
                                                    builder: (_) =>
                                                        studentPerfomanceReport());
                                              },
                                              child: HeadingText(
                                                size: 13,
                                                value: "View Report",
                                                fontWeight: FontWeight.w500,
                                              )),
                                        )
                                      ])
                                    ]),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      )),
    );
  }
}
