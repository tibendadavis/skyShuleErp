import 'package:flutter/material.dart';
import 'package:skyconnect_starter/components/downloadBar.comp.dart';
import 'package:skyconnect_starter/components/heading_text.dart';
import 'package:skyconnect_starter/components/searchBar.comp.dart';
import 'package:skyconnect_starter/components/searchInputDate.comp.dart';
import 'package:skyconnect_starter/components/searchInputOptions.comp.dart';
import 'package:skyconnect_starter/components/tile2.comp.dart';
import 'package:skyconnect_starter/components/tile3.comp.dart';
import 'package:skyconnect_starter/controllers/responsive.dart';
import 'package:skyconnect_starter/screens/Exams/addExamSchedule.scrn.dart';
import 'package:skyconnect_starter/theme/design.theme.dart';

class examSchedule extends StatefulWidget {
  const examSchedule({super.key});

  @override
  State<examSchedule> createState() => _examScheduleState();
}

class _examScheduleState extends State<examSchedule> {
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
            value: "Exam Schedule",
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
                  icon: Icons.schedule,
                  link: addExamSchedule(),
                  linkTitle: "New Schedule",
                )),
            SizedBox(
              width: Responsive.isDesktop(context)
                  ? 360
                  : MediaQuery.of(context).size.width,
              child: tile2(tileHeading: "Exam Schedules", tileData: "7"),
            ),
          ],
        ),
        searchBar(
          title: "Search for Exam",
          opt1: searchInputOptions(title: "Class Level", opt1: ""),
          opt2: searchInputOptions(title: "Class", opt1: ""),
          opt3: searchInputOptions(title: "Subject", opt1: ""),
          opt4: searchInputOptions(title: "Exam Title", opt1: ""),
          opt8: searchInputDate(title: "From"),
          opt9: searchInputDate(title: "To"),
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
                            ? size.width / 22
                            : Responsive.isDesktop(context) && size.width > 1600
                                ? size.width / 17
                                : 25,
                    showCheckboxColumn: true,
                    checkboxHorizontalMargin: 10,
                    showBottomBorder: true,
                    columns: [
                      DataColumn(
                          label: HeadingText(
                        size: 14,
                        value: "Date",
                        fontWeight: FontWeight.w700,
                      )),
                      DataColumn(
                          label: HeadingText(
                        size: 14,
                        value: "Exam Title",
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
                        value: "Subject",
                        fontWeight: FontWeight.w700,
                      )),
                      DataColumn(
                          label: HeadingText(
                        size: 14,
                        value: "Time",
                        fontWeight: FontWeight.w700,
                      )),
                      DataColumn(
                          label: HeadingText(
                        size: 14,
                        value: "Room",
                        fontWeight: FontWeight.w700,
                      )),
                      DataColumn(
                          label: HeadingText(
                        size: 14,
                        value: "Duration",
                        fontWeight: FontWeight.w700,
                      )),
                      DataColumn(
                          label: HeadingText(
                        size: 14,
                        value: "Invigilator",
                        fontWeight: FontWeight.w700,
                      )),
                      DataColumn(
                          label: HeadingText(
                        size: 14,
                        value: "Remarks",
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
          ]),
        )
      ])),
    );
  }
}
