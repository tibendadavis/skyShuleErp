import 'package:flutter/material.dart';
import 'package:skyconnect_starter/components/downloadBar.comp.dart';
import 'package:skyconnect_starter/components/heading_text.dart';
import 'package:skyconnect_starter/components/searchBar.comp.dart';
import 'package:skyconnect_starter/components/searchInputOptions.comp.dart';
import 'package:skyconnect_starter/components/tile2.comp.dart';
import 'package:skyconnect_starter/components/tile3.comp.dart';
import 'package:skyconnect_starter/controllers/responsive.dart';
import 'package:skyconnect_starter/screens/eResources/addLiveSettings.scrn.dart';
import 'package:skyconnect_starter/theme/design.theme.dart';

class liveStudies extends StatefulWidget {
  const liveStudies({super.key});

  @override
  State<liveStudies> createState() => _liveStudiesState();
}

class _liveStudiesState extends State<liveStudies> {
  bool _menu = false;
  double _drawersize = 250;
  var _classlevel;
  var _academicYear;
  var _stream;
  var _subject;
  var _class;
  var _startTime;
  var _endTime;
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
            value: "Live Studies",
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
                  icon: Icons.videocam,
                  link: addLiveSetting(),
                  linkTitle: "New Live Settings",
                )),
            SizedBox(
              width: Responsive.isDesktop(context)
                  ? 360
                  : MediaQuery.of(context).size.width,
              child: tile2(tileHeading: "Live Studies", tileData: "7"),
            ),
          ],
        ),
        searchBar(
          title: "Search for Live Studies",
          opt1: searchInputOptions(title: "Class Level", opt1: ""),
          opt2: searchInputOptions(title: "Class", opt1: ""),
          opt3: searchInputOptions(title: "Subject", opt1: ""),
          opt4: searchInputOptions(title: "Start Time", opt1: ""),
          opt5: searchInputOptions(title: "End Time", opt1: ""),
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
                            ? size.width / 30
                            : Responsive.isDesktop(context) && size.width > 1600
                                ? size.width / 25
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
                        value: "Title",
                        fontWeight: FontWeight.w700,
                      )),
                      DataColumn(
                          label: HeadingText(
                        size: 14,
                        value: "Main Topic",
                        fontWeight: FontWeight.w700,
                      )),
                      DataColumn(
                          label: HeadingText(
                        size: 14,
                        value: "Description",
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
                        value: "Lesson Date",
                        fontWeight: FontWeight.w700,
                      )),
                      DataColumn(
                          label: HeadingText(
                        size: 14,
                        value: "Start Time",
                        fontWeight: FontWeight.w700,
                      )),
                      DataColumn(
                          label: HeadingText(
                        size: 14,
                        value: "End Time",
                        fontWeight: FontWeight.w700,
                      )),
                      DataColumn(
                          label: HeadingText(
                        size: 14,
                        value: "Teacher Name",
                        fontWeight: FontWeight.w700,
                      )),
                      DataColumn(
                          label: Expanded(
                        child: HeadingText(
                          size: 14,
                          value: "Status",
                          fontWeight: FontWeight.w700,
                        ),
                      )),
                      DataColumn(
                          label: Expanded(
                        child: Center(
                          child: HeadingText(
                            size: 14,
                            value: "Action",
                            fontWeight: FontWeight.w700,
                          ),
                        ),
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
