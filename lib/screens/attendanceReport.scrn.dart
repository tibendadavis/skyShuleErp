import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:path/path.dart';
import 'package:skyconnect_starter/components/app_drawer/skyShuleDrawer.dart';
import 'package:skyconnect_starter/components/header.dart';
import 'package:skyconnect_starter/components/heading1.dart';
import 'package:skyconnect_starter/components/heading2.dart';
import 'package:skyconnect_starter/components/heading3.dart';
import 'package:skyconnect_starter/components/heading4.dart';
import 'package:skyconnect_starter/components/heading5.dart';
import 'package:skyconnect_starter/components/heading6.dart';
import 'package:skyconnect_starter/components/heading_text.dart';
import 'package:skyconnect_starter/controllers/responsive.dart';
import 'package:skyconnect_starter/screens/addSubject.scrn.dart';
import 'package:skyconnect_starter/screens/addTerm.scrn.dart';
import 'package:skyconnect_starter/screens/student_admission.scrn.dart';
import 'package:skyconnect_starter/theme/design.theme.dart';

class attendanceReport extends StatefulWidget {
  const attendanceReport({super.key});

  @override
  State<attendanceReport> createState() => _attendaceReportState();
}

class _attendaceReportState extends State<attendanceReport> {
  bool _menu = false;
  double _drawersize = 250;
  var _startDate;
  var _endDate;
  var _stream;

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: !Responsive.isDesktop(context)
          ? AppBar(
              centerTitle: true,
              elevation: 0,
              title: Title(
                  color: Palette().textColor,
                  child: const Heading2(
                    value: "SkyShule",
                  )),
              backgroundColor: Palette().primaryColor,
            )
          : null,
      drawer: skyShuleDrawer(
        size: 305,
        onTap: () {},
        menu: false,
      ),
      body: SingleChildScrollView(
        child: SizedBox(
          height: Responsive.isDesktop(context)
              ? size.height + 200
              : size.height + 200,
          width: size.width,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              if (Responsive.isDesktop(context))
                AnimatedContainer(
                    duration: const Duration(milliseconds: 400),
                    width: _drawersize,
                    child: skyShuleDrawer(
                      size: _drawersize,
                      onTap: (val) {
                        setState(() {
                          _drawersize = val;
                        });
                      },
                      menu: _menu,
                    )),
              Expanded(
                  child: Column(children: [
                Container(
                    padding: EdgeInsets.only(
                        left: Insets().appPadding,
                        right: Insets().appPadding,
                        top: Insets().appGap,
                        bottom: Insets().appGap),
                    decoration:
                        BoxDecoration(color: Palette().primaryColorLight),
                    child: header(
                      onTap: (val) {
                        setState(() {
                          _drawersize = val[0];
                          _menu = val[1];
                        });
                      },
                    )),
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
                    value: "ATTENDANCE REPORT",
                    fontWeight: FontWeight.w700,
                    color: Colors.black,
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(
                      left: Responsive.isDesktop(context)
                          ? Insets().appPadding * 2
                          : Insets().appPadding,
                      right: Responsive.isDesktop(context)
                          ? Insets().appPadding * 2
                          : Insets().appPadding,
                      top: Responsive.isDesktop(context)
                          ? Insets().appPadding / 2
                          : 12,
                      bottom: Responsive.isDesktop(context)
                          ? Insets().appPadding / 2
                          : 12),
                  padding: EdgeInsets.only(
                      left: Responsive.isDesktop(context)
                          ? Insets().appPadding
                          : 10,
                      right: Responsive.isDesktop(context)
                          ? Insets().appPadding
                          : 10,
                      top: Responsive.isDesktop(context)
                          ? Insets().appPadding / 2
                          : 5,
                      bottom: Responsive.isDesktop(context)
                          ? Insets().appPadding / 2
                          : 10),
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey, width: 2),
                      color: Palette().primaryColorLight,
                      borderRadius: BorderRadius.circular(Insets().appGap + 4)),
                  child: Flex(
                      direction: Responsive.isDesktop(context)
                          ? Axis.horizontal
                          : Axis.vertical,
                      crossAxisAlignment: Responsive.isDesktop(context)
                          ? CrossAxisAlignment.center
                          : CrossAxisAlignment.start,
                      children: [
                        if (Responsive.isDesktop(context)) ...[
                          Expanded(
                              flex: 1,
                              child: Container(
                                margin: EdgeInsets.only(
                                  right: Insets().appGap,
                                ),
                                padding: EdgeInsets.only(
                                  left: Insets().appGap,
                                ),
                                decoration: BoxDecoration(
                                    border: Border.all(
                                        color: Colors.grey, width: 1),
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(
                                        Insets().appGap + 4)),
                                child: DropdownButton(
                                  items: const [
                                    DropdownMenuItem(
                                        child: Heading5(
                                          value: "Nursery",
                                        ),
                                        value: "Nursery"),
                                    DropdownMenuItem(
                                        child: Heading5(
                                          value: "Primary",
                                        ),
                                        value: "Primary"),
                                    DropdownMenuItem(
                                        child: Heading5(
                                          value: "Secondary",
                                        ),
                                        value: "Secondary")
                                  ],
                                  hint: Heading5(
                                    value: "Start Date",
                                  ),
                                  value: _startDate,
                                  iconSize: 30,
                                  icon: Container(
                                      padding: EdgeInsets.only(right: 5),
                                      child: Icon(
                                        Icons.calendar_month_outlined,
                                        color: Palette().primaryColor,
                                      )),
                                  isExpanded: true,
                                  underline: SizedBox(),
                                  dropdownColor: Colors.white,
                                  borderRadius: BorderRadius.circular(
                                      Insets().appRadiusMin + 4),
                                  onChanged: ((value) {
                                    if (value is String) {
                                      setState(() {
                                        _startDate = value;
                                      });
                                    }
                                  }),
                                ),
                              )),
                          SizedBox(
                            width: 10,
                          ),
                          Expanded(
                              flex: 1,
                              child: Container(
                                margin: EdgeInsets.only(
                                  right: Insets().appGap,
                                ),
                                padding: EdgeInsets.only(
                                  left: Insets().appGap,
                                ),
                                decoration: BoxDecoration(
                                    border: Border.all(
                                        color: Colors.grey, width: 1),
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(
                                        Insets().appGap + 4)),
                                child: DropdownButton(
                                  items: const [
                                    DropdownMenuItem(
                                        child: Heading5(
                                          value: "Nursery",
                                        ),
                                        value: "Nursery"),
                                    DropdownMenuItem(
                                        child: Heading5(
                                          value: "Primary",
                                        ),
                                        value: "Primary"),
                                    DropdownMenuItem(
                                        child: Heading5(
                                          value: "Secondary",
                                        ),
                                        value: "Secondary")
                                  ],
                                  hint: Heading5(
                                    value: "End Date",
                                  ),
                                  value: _startDate,
                                  iconSize: 30,
                                  icon: Container(
                                      padding: EdgeInsets.only(right: 5),
                                      child: Icon(
                                        Icons.calendar_month_outlined,
                                        color: Palette().primaryColor,
                                      )),
                                  isExpanded: true,
                                  underline: SizedBox(),
                                  dropdownColor: Colors.white,
                                  borderRadius: BorderRadius.circular(
                                      Insets().appRadiusMin + 4),
                                  onChanged: ((value) {
                                    if (value is String) {
                                      setState(() {
                                        _startDate = value;
                                      });
                                    }
                                  }),
                                ),
                              )),
                          SizedBox(
                            width: 10,
                          ),
                          Expanded(
                              flex: 1,
                              child: ElevatedButton(
                                  onPressed: () {},
                                  style: ElevatedButton.styleFrom(
                                      backgroundColor: Palette().primaryColor,
                                      shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.circular(
                                              Insets().appRadiusMin + 4)),
                                      padding: EdgeInsets.all(
                                          Insets().appPadding / 1.5)),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Icon(
                                        Icons.check,
                                        color: Colors.white,
                                        size: 30,
                                      ),
                                      SizedBox(
                                        width: 5,
                                      ),
                                      Heading6(
                                        value: "View Attendance",
                                        color: Colors.white,
                                      ),
                                    ],
                                  ))),
                          SizedBox(
                            width: 10,
                          ),
                          Expanded(
                              flex: 1,
                              child: ElevatedButton(
                                  onPressed: () {},
                                  style: ElevatedButton.styleFrom(
                                      backgroundColor: Palette().primaryColor,
                                      shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.circular(
                                              Insets().appRadiusMin + 4)),
                                      padding: EdgeInsets.all(
                                          Insets().appPadding / 1.5)),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Icon(
                                        Icons.restart_alt_rounded,
                                        color: Colors.white,
                                        size: 30,
                                      ),
                                      SizedBox(
                                        width: 5,
                                      ),
                                      Heading6(
                                        value: "Clear",
                                        color: Colors.white,
                                      ),
                                    ],
                                  )))
                        ],
                        if (!Responsive.isDesktop(context)) ...[
                          SingleChildScrollView(
                            scrollDirection: Axis.horizontal,
                            child: SizedBox(
                                width: MediaQuery.of(context).size.width - 63,
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Container(
                                      width: size.width / 2.6,
                                      height: 37,
                                      margin: EdgeInsets.only(
                                        right: Insets().appGap,
                                      ),
                                      padding: EdgeInsets.only(
                                        left: Insets().appGap,
                                      ),
                                      decoration: BoxDecoration(
                                          border: Border.all(
                                              color: Colors.grey, width: 1),
                                          color: Colors.white,
                                          borderRadius: BorderRadius.circular(
                                              Insets().appGap + 4)),
                                      child: DropdownButton(
                                        items: const [
                                          DropdownMenuItem(
                                              child: Heading5(
                                                value: "Nursery",
                                              ),
                                              value: "Nursery"),
                                          DropdownMenuItem(
                                              child: Heading5(
                                                value: "Primary",
                                              ),
                                              value: "Primary"),
                                          DropdownMenuItem(
                                              child: Heading5(
                                                value: "Secondary",
                                              ),
                                              value: "Secondary")
                                        ],
                                        hint: Heading5(
                                          value: "Start Date",
                                        ),
                                        value: _startDate,
                                        iconSize: 30,
                                        icon: Container(
                                            padding: EdgeInsets.only(right: 5),
                                            child: Icon(
                                                Icons.calendar_month_outlined,
                                                color: Palette().primaryColor)),
                                        isExpanded: true,
                                        underline: SizedBox(),
                                        dropdownColor: Colors.white,
                                        borderRadius: BorderRadius.circular(
                                            Insets().appRadiusMin + 4),
                                        onChanged: ((value) {
                                          if (value is String) {
                                            setState(() {
                                              _startDate = value;
                                            });
                                          }
                                        }),
                                      ),
                                    ),
                                    Spacer(),
                                    Container(
                                      width: size.width / 2.6,
                                      height: 37,
                                      margin: EdgeInsets.only(
                                        right: Insets().appGap,
                                      ),
                                      padding: EdgeInsets.only(
                                        left: Insets().appGap,
                                      ),
                                      decoration: BoxDecoration(
                                          border: Border.all(
                                              color: Colors.grey, width: 1),
                                          color: Colors.white,
                                          borderRadius: BorderRadius.circular(
                                              Insets().appGap + 4)),
                                      child: DropdownButton(
                                        items: const [
                                          DropdownMenuItem(
                                              child: Heading5(
                                                value: "Nursery",
                                              ),
                                              value: "Nursery"),
                                          DropdownMenuItem(
                                              child: Heading5(
                                                value: "Primary",
                                              ),
                                              value: "Primary"),
                                          DropdownMenuItem(
                                              child: Heading5(
                                                value: "Secondary",
                                              ),
                                              value: "Secondary")
                                        ],
                                        hint: Heading5(
                                          value: "End Date",
                                        ),
                                        value: _startDate,
                                        iconSize: 30,
                                        icon: Container(
                                            padding: EdgeInsets.only(right: 5),
                                            child: Icon(
                                              Icons.calendar_month_outlined,
                                              color: Palette().primaryColor,
                                            )),
                                        isExpanded: true,
                                        underline: SizedBox(),
                                        dropdownColor: Colors.white,
                                        borderRadius: BorderRadius.circular(
                                            Insets().appRadiusMin + 4),
                                        onChanged: ((value) {
                                          if (value is String) {
                                            setState(() {
                                              _startDate = value;
                                            });
                                          }
                                        }),
                                      ),
                                    )
                                  ],
                                )),
                          ),
                          SizedBox(
                            width: Responsive.isDesktop(context) ? 10 : 0,
                            height: Responsive.isDesktop(context) ? 0 : 5,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                  width:
                                      MediaQuery.of(context).size.width / 2.5,
                                  child: ElevatedButton(
                                      onPressed: () {},
                                      style: ElevatedButton.styleFrom(
                                          backgroundColor:
                                              Palette().primaryColor,
                                          shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(Insets()
                                                          .appRadiusMin +
                                                      4)),
                                          padding: EdgeInsets.all(
                                              Insets().appPadding / 1.5)),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Icon(
                                            Icons.check,
                                            color: Colors.white,
                                            size: 25,
                                          ),
                                          SizedBox(
                                            width: 3,
                                          ),
                                          HeadingText(
                                            size: 10,
                                            value: "View Attendance",
                                            color: Colors.white,
                                          ),
                                        ],
                                      ))),
                              SizedBox(
                                width: Responsive.isDesktop(context) ? 10 : 0,
                              ),
                              Container(
                                  width:
                                      MediaQuery.of(context).size.width / 2.5,
                                  child: ElevatedButton(
                                      onPressed: () {},
                                      style: ElevatedButton.styleFrom(
                                          backgroundColor:
                                              Palette().primaryColor,
                                          shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(Insets()
                                                          .appRadiusMin +
                                                      4)),
                                          padding: EdgeInsets.all(
                                              Insets().appPadding / 1.5)),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Icon(
                                            Icons.restart_alt_rounded,
                                            color: Colors.white,
                                            size: 25,
                                          ),
                                          SizedBox(
                                            width: 3,
                                          ),
                                          HeadingText(
                                            size: 10,
                                            value: "Clear",
                                            color: Colors.white,
                                          ),
                                        ],
                                      )))
                            ],
                          ),
                        ]
                      ]),
                ),
                Flex(
                  direction: Responsive.isDesktop(context)
                      ? Axis.horizontal
                      : Axis.vertical,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      width: Responsive.isDesktop(context)
                          ? 410
                          : MediaQuery.of(context).size.width,
                      child: Container(
                        margin: EdgeInsets.only(
                            left: Responsive.isDesktop(context)
                                ? Insets().appPadding * 2
                                : Insets().appPadding,
                            right: Responsive.isDesktop(context)
                                ? 0
                                : Insets().appPadding,
                            top: Responsive.isDesktop(context)
                                ? Insets().appPadding
                                : 12,
                            bottom: Responsive.isDesktop(context)
                                ? Insets().appPadding
                                : 0),
                        padding: EdgeInsets.only(
                            left: Insets().appPadding,
                            right: Insets().appPadding,
                            top: Insets().appGap + 2,
                            bottom: Insets().appGap + 2),
                        decoration: BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                color: Palette().borderColor,
                                blurRadius: 15.0, // soften the shadow
                                spreadRadius: 2.0, //extend the shadow
                                offset: Offset(
                                  1.0, // Move to right 5  horizontally
                                  2.0, // Move to bottom 5 Vertically
                                ),
                              )
                            ],
                            color: Palette().primaryColor,
                            borderRadius: BorderRadius.circular(
                                Insets().appRadiusMin + 4)),
                        child: SizedBox(
                          height: Responsive.isDesktop(context) ? 75 : 93,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Heading5(
                                value: "GENIUS KINGS NURSERY & PRIMARY SCHOOL",
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                              Heading6(
                                value: "DSM - Segerea Kwa Bibi, DAR ES SALAAM",
                                color: Colors.white,
                              ),
                              Heading6(
                                value: "Phone Number : 0612345670",
                                color: Colors.white,
                              ),
                              Heading6(
                                value: "Email : info@geniuskings.ac.tz",
                                color: Colors.white,
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: Responsive.isDesktop(context)
                          ? 410
                          : MediaQuery.of(context).size.width,
                      child: Container(
                        margin: EdgeInsets.only(
                            left: Responsive.isDesktop(context)
                                ? Insets().appPadding * 2
                                : Insets().appPadding,
                            top: Insets().appPadding / 2,
                            right: Responsive.isDesktop(context)
                                ? Insets().appPadding * 2
                                : Insets().appPadding,
                            bottom: Insets().appPadding / 2),
                        padding: EdgeInsets.only(
                            left: Insets().appPadding,
                            right: Insets().appPadding,
                            top: Insets().appGap + 2,
                            bottom: Insets().appPadding),
                        decoration: BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                color: Palette().borderColor,
                                blurRadius: 15.0, // soften the shadow
                                spreadRadius: 2.0, //extend the shadow
                                offset: Offset(
                                  1.0, // Move to right 5  horizontally
                                  2.0, // Move to bottom 5 Vertically
                                ),
                              )
                            ],
                            color: Palette().primaryColor,
                            borderRadius: BorderRadius.circular(
                                Insets().appRadiusMin + 4)),
                        child: SizedBox(
                          height: Responsive.isDesktop(context) ? 75 : 60,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Heading5(
                                value: "ATTENDANCE REPORT",
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                              Heading6(
                                value: "From : 01 Jan 2023",
                                color: Colors.white,
                              ),
                              Heading6(
                                value: "To : 08 Oct 2023",
                                color: Colors.white,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Center(
                  child: Container(
                    padding: EdgeInsets.only(
                        bottom: Insets().appPadding / 5,
                        left: Responsive.isDesktop(context)
                            ? Insets().appPadding * 2
                            : Insets().appPadding,
                        right: Insets().appPadding),
                    child: HeadingText(
                      size: Responsive.isDesktop(context) ? 27 : 19.7,
                      value:
                          "GENIUS KINGS NURSERY & PRIMARY SCHOOL - ATTENDANCE REPORT",
                      fontWeight: FontWeight.w700,
                      color: Colors.black,
                    ),
                  ),
                ),
                SizedBox(
                  width: size.width,
                  child: Container(
                      padding: EdgeInsets.only(
                          left: Responsive.isDesktop(context)
                              ? Insets().appPadding * 2
                              : Insets().appPadding,
                          right: Responsive.isDesktop(context)
                              ? Insets().appPadding * 2
                              : Insets().appPadding),
                      child: Divider(color: Colors.grey, thickness: 2)),
                ),
                Container(
                  margin: EdgeInsets.only(
                    left: Responsive.isDesktop(context)
                        ? Insets().appPadding * 4
                        : 12,
                    right: Responsive.isDesktop(context)
                        ? Insets().appPadding * 4
                        : 12,
                  ),
                  padding: EdgeInsets.only(
                      left: Insets().appGap / 2,
                      right: Insets().appGap / 2,
                      top: Insets().appGap / 3,
                      bottom: Insets().appGap / 3),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      HeadingText(
                        size: Responsive.isDesktop(context) ? 14 : 13,
                        value: "RESULTS (23)",
                        color: Palette().primaryColor,
                        fontWeight: FontWeight.w700,
                      ),
                      Container(
                        width: Responsive.isDesktop(context) ? 140 : 130,
                        height: Responsive.isDesktop(context) ? 40 : 30,
                        margin: EdgeInsets.only(
                          left: Insets().appGap,
                          right: Insets().appGap,
                        ),
                        padding: EdgeInsets.only(
                          left: Insets().appGap,
                        ),
                        decoration: BoxDecoration(
                            border: Border.all(
                                color: Palette().primaryColor, width: 1.5),
                            color: Colors.white,
                            borderRadius:
                                BorderRadius.circular(Insets().appGap + 6)),
                        child: DropdownButton(
                          items: [
                            DropdownMenuItem(
                                child: ListTile(
                                  dense: true,
                                  minVerticalPadding: 0,
                                  minLeadingWidth: 10,
                                  contentPadding: EdgeInsets.only(left: 10),
                                  onTap: () {},
                                  leading: Icon(
                                    Icons.picture_as_pdf,
                                    color: Palette().primaryColor,
                                    size: 20,
                                  ),
                                  title: Heading6(
                                    value: "PDF",
                                    color: Palette().primaryColor,
                                  ),
                                ),
                                value: "PDF"),
                            DropdownMenuItem(
                                child: ListTile(
                                  dense: true,
                                  minVerticalPadding: 0,
                                  minLeadingWidth: 10,
                                  contentPadding: EdgeInsets.only(left: 10),
                                  onTap: () {},
                                  leading: Icon(
                                    Icons.copy,
                                    color: Palette().primaryColor,
                                    size: 20,
                                  ),
                                  title: Heading6(
                                      value: "Copy",
                                      color: Palette().primaryColor),
                                ),
                                value: "Copy"),
                            DropdownMenuItem(
                                child: ListTile(
                                  dense: true,
                                  minVerticalPadding: 0,
                                  minLeadingWidth: 10,
                                  contentPadding: EdgeInsets.only(left: 10),
                                  onTap: () {},
                                  leading: Icon(
                                    Icons.format_align_justify,
                                    color: Palette().primaryColor,
                                    size: 20,
                                  ),
                                  title: Heading6(
                                      value: "Excel",
                                      color: Palette().primaryColor),
                                ),
                                value: "Excel"),
                            DropdownMenuItem(
                                child: ListTile(
                                    dense: true,
                                    minVerticalPadding: 0,
                                    minLeadingWidth: 10,
                                    contentPadding: EdgeInsets.only(left: 10),
                                    onTap: () {},
                                    leading: Icon(
                                      Icons.description,
                                      color: Palette().primaryColor,
                                      size: 20,
                                    ),
                                    title: Heading6(
                                        value: "CSV",
                                        color: Palette().primaryColor)),
                                value: "CSV")
                          ],
                          hint: Row(
                            children: [
                              Icon(
                                Icons.cloud_download_outlined,
                                color: Palette().primaryColor,
                                size: Responsive.isDesktop(context) ? 25 : 20,
                              ),
                              SizedBox(
                                width: Responsive.isDesktop(context) ? 7 : 5,
                              ),
                              Heading6(
                                value: "Download",
                                color: Palette().primaryColor,
                              ),
                            ],
                          ),
                          value: null,
                          iconEnabledColor: Palette().primaryColor,
                          iconDisabledColor: Palette().primaryColor,
                          isExpanded: true,
                          elevation: 1,
                          underline: SizedBox(),
                          dropdownColor: Colors.white,
                          borderRadius:
                              BorderRadius.circular(Insets().appRadiusMin + 4),
                          onChanged: ((value) {
                            if (true) {
                              setState(() {
                                _startDate = value;
                              });
                            }
                          }),
                        ),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: ListView(children: [
                    Container(
                      margin: EdgeInsets.only(
                        left: Responsive.isDesktop(context)
                            ? Insets().appPadding * 2
                            : 13,
                        right: Responsive.isDesktop(context)
                            ? Insets().appPadding * 2
                            : 13,
                      ),
                      padding: EdgeInsets.only(bottom: Insets().appPadding),
                      child: Center(
                        child: SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: DataTable(
                              headingTextStyle:
                                  TextStyle(color: Palette().primaryColor),
                              horizontalMargin: 0,
                              columnSpacing:
                                  Responsive.isDesktop(context) ? 20 : 15,
                              columns: [
                                DataColumn(
                                    label: SizedBox(
                                  child: Container(
                                    alignment: Alignment.bottomLeft,
                                    child: HeadingText(
                                      size: 14,
                                      value: "No.",
                                      fontWeight: FontWeight.w700,
                                    ),
                                  ),
                                )),
                                DataColumn(
                                    label: SizedBox(
                                  width:
                                      Responsive.isDesktop(context) ? 200 : 100,
                                  child: Container(
                                    alignment: Alignment.bottomLeft,
                                    child: HeadingText(
                                      size: 14,
                                      value: "CLASSES",
                                      fontWeight: FontWeight.w700,
                                    ),
                                  ),
                                )),
                                DataColumn(
                                    label: SizedBox(
                                  width:
                                      Responsive.isDesktop(context) ? 200 : 150,
                                  child: Center(
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceAround,
                                      children: [
                                        HeadingText(
                                          size: 14,
                                          value: "REGISTERED",
                                          fontWeight: FontWeight.w700,
                                        ),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceAround,
                                          children: [
                                            HeadingText(
                                              size: 14,
                                              value: "BOYS",
                                              fontWeight: FontWeight.w700,
                                            ),
                                            HeadingText(
                                              size: 14,
                                              value: "GIRLS",
                                              fontWeight: FontWeight.w700,
                                            ),
                                          ],
                                        )
                                      ],
                                    ),
                                  ),
                                )),
                                DataColumn(
                                    label: SizedBox(
                                  width:
                                      Responsive.isDesktop(context) ? 200 : 150,
                                  child: Center(
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceAround,
                                      children: [
                                        HeadingText(
                                          size: 14,
                                          value: "PRESENTEES",
                                          fontWeight: FontWeight.w700,
                                        ),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceAround,
                                          children: [
                                            HeadingText(
                                              size: 14,
                                              value: "BOYS",
                                              fontWeight: FontWeight.w700,
                                            ),
                                            HeadingText(
                                              size: 14,
                                              value: "GIRLS",
                                              fontWeight: FontWeight.w700,
                                            ),
                                          ],
                                        )
                                      ],
                                    ),
                                  ),
                                )),
                                DataColumn(
                                    label: SizedBox(
                                  width:
                                      Responsive.isDesktop(context) ? 200 : 150,
                                  child: Center(
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceAround,
                                      children: [
                                        HeadingText(
                                          size: 14,
                                          value: "ABSENTEES",
                                          fontWeight: FontWeight.w700,
                                        ),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceAround,
                                          children: [
                                            HeadingText(
                                              size: 14,
                                              value: "BOYS",
                                              fontWeight: FontWeight.w700,
                                            ),
                                            HeadingText(
                                              size: 14,
                                              value: "GIRLS",
                                              fontWeight: FontWeight.w700,
                                            ),
                                          ],
                                        )
                                      ],
                                    ),
                                  ),
                                )),
                                DataColumn(
                                    label: SizedBox(
                                  width:
                                      Responsive.isDesktop(context) ? 200 : 150,
                                  child: Center(
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceAround,
                                      children: [
                                        HeadingText(
                                          size: 14,
                                          value: "PERMISSION",
                                          fontWeight: FontWeight.w700,
                                        ),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceAround,
                                          children: [
                                            HeadingText(
                                              size: 14,
                                              value: "BOYS",
                                              fontWeight: FontWeight.w700,
                                            ),
                                            HeadingText(
                                              size: 14,
                                              value: "GIRLS",
                                              fontWeight: FontWeight.w700,
                                            ),
                                          ],
                                        )
                                      ],
                                    ),
                                  ),
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
                                    value: "DAY CARE",
                                  )),
                                  DataCell(Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceAround,
                                    children: [
                                      HeadingText(
                                        size: 14,
                                        value: "9",
                                      ),
                                      HeadingText(
                                        size: 14,
                                        value: "9",
                                      ),
                                    ],
                                  )),
                                  DataCell(Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceAround,
                                    children: [
                                      HeadingText(
                                        size: 14,
                                        value: "0(0.0%)",
                                      ),
                                      HeadingText(
                                        size: 14,
                                        value: "0(0.0%)",
                                      ),
                                    ],
                                  )),
                                  DataCell(Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceAround,
                                    children: [
                                      HeadingText(
                                        size: 14,
                                        value: "0(0.0%)",
                                      ),
                                      HeadingText(
                                        size: 14,
                                        value: "0(0.0%)",
                                      ),
                                    ],
                                  )),
                                  DataCell(Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceAround,
                                    children: [
                                      HeadingText(
                                        size: 14,
                                        value: "0(0.0%)",
                                      ),
                                      HeadingText(
                                        size: 14,
                                        value: "0(0.0%)",
                                      ),
                                    ],
                                  )),
                                ]),
                                DataRow(cells: [
                                  DataCell(HeadingText(
                                    size: 14,
                                    value: "2",
                                  )),
                                  DataCell(HeadingText(
                                    size: 14,
                                    value: "BEGINNERS",
                                  )),
                                  DataCell(Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceAround,
                                    children: [
                                      HeadingText(
                                        size: 14,
                                        value: "9",
                                      ),
                                      HeadingText(
                                        size: 14,
                                        value: "9",
                                      ),
                                    ],
                                  )),
                                  DataCell(Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceAround,
                                    children: [
                                      HeadingText(
                                        size: 14,
                                        value: "0(0.0%)",
                                      ),
                                      HeadingText(
                                        size: 14,
                                        value: "0(0.0%)",
                                      ),
                                    ],
                                  )),
                                  DataCell(Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceAround,
                                    children: [
                                      HeadingText(
                                        size: 14,
                                        value: "0(0.0%)",
                                      ),
                                      HeadingText(
                                        size: 14,
                                        value: "0(0.0%)",
                                      ),
                                    ],
                                  )),
                                  DataCell(Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceAround,
                                    children: [
                                      HeadingText(
                                        size: 14,
                                        value: "0(0.0%)",
                                      ),
                                      HeadingText(
                                        size: 14,
                                        value: "0(0.0%)",
                                      ),
                                    ],
                                  )),
                                ]),
                                DataRow(cells: [
                                  DataCell(HeadingText(
                                    size: 14,
                                    value: "3",
                                  )),
                                  DataCell(HeadingText(
                                    size: 14,
                                    value: "INTERMEDIATE",
                                  )),
                                  DataCell(Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceAround,
                                    children: [
                                      HeadingText(
                                        size: 14,
                                        value: "9",
                                      ),
                                      HeadingText(
                                        size: 14,
                                        value: "9",
                                      ),
                                    ],
                                  )),
                                  DataCell(Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceAround,
                                    children: [
                                      HeadingText(
                                        size: 14,
                                        value: "0(0.0%)",
                                      ),
                                      HeadingText(
                                        size: 14,
                                        value: "0(0.0%)",
                                      ),
                                    ],
                                  )),
                                  DataCell(Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceAround,
                                    children: [
                                      HeadingText(
                                        size: 14,
                                        value: "0(0.0%)",
                                      ),
                                      HeadingText(
                                        size: 14,
                                        value: "0(0.0%)",
                                      ),
                                    ],
                                  )),
                                  DataCell(Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceAround,
                                    children: [
                                      HeadingText(
                                        size: 14,
                                        value: "0(0.0%)",
                                      ),
                                      HeadingText(
                                        size: 14,
                                        value: "0(0.0%)",
                                      ),
                                    ],
                                  )),
                                ]),
                                DataRow(cells: [
                                  DataCell(HeadingText(
                                    size: 14,
                                    value: "4",
                                  )),
                                  DataCell(HeadingText(
                                    size: 14,
                                    value: "PRE-UNIT",
                                  )),
                                  DataCell(Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceAround,
                                    children: [
                                      HeadingText(
                                        size: 14,
                                        value: "9",
                                      ),
                                      HeadingText(
                                        size: 14,
                                        value: "9",
                                      ),
                                    ],
                                  )),
                                  DataCell(Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceAround,
                                    children: [
                                      HeadingText(
                                        size: 14,
                                        value: "0(0.0%)",
                                      ),
                                      HeadingText(
                                        size: 14,
                                        value: "0(0.0%)",
                                      ),
                                    ],
                                  )),
                                  DataCell(Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceAround,
                                    children: [
                                      HeadingText(
                                        size: 14,
                                        value: "0(0.0%)",
                                      ),
                                      HeadingText(
                                        size: 14,
                                        value: "0(0.0%)",
                                      ),
                                    ],
                                  )),
                                  DataCell(Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceAround,
                                    children: [
                                      HeadingText(
                                        size: 14,
                                        value: "0(0.0%)",
                                      ),
                                      HeadingText(
                                        size: 14,
                                        value: "0(0.0%)",
                                      ),
                                    ],
                                  )),
                                ]),
                                DataRow(cells: [
                                  DataCell(HeadingText(
                                    size: 14,
                                    value: "5",
                                  )),
                                  DataCell(HeadingText(
                                    size: 14,
                                    value: "CLASS ONE",
                                  )),
                                  DataCell(Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceAround,
                                    children: [
                                      HeadingText(
                                        size: 14,
                                        value: "9",
                                      ),
                                      HeadingText(
                                        size: 14,
                                        value: "9",
                                      ),
                                    ],
                                  )),
                                  DataCell(Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceAround,
                                    children: [
                                      HeadingText(
                                        size: 14,
                                        value: "0(0.0%)",
                                      ),
                                      HeadingText(
                                        size: 14,
                                        value: "0(0.0%)",
                                      ),
                                    ],
                                  )),
                                  DataCell(Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceAround,
                                    children: [
                                      HeadingText(
                                        size: 14,
                                        value: "0(0.0%)",
                                      ),
                                      HeadingText(
                                        size: 14,
                                        value: "0(0.0%)",
                                      ),
                                    ],
                                  )),
                                  DataCell(Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceAround,
                                    children: [
                                      HeadingText(
                                        size: 14,
                                        value: "0(0.0%)",
                                      ),
                                      HeadingText(
                                        size: 14,
                                        value: "0(0.0%)",
                                      ),
                                    ],
                                  )),
                                ]),
                                DataRow(cells: [
                                  DataCell(HeadingText(
                                    size: 14,
                                    value: "6",
                                  )),
                                  DataCell(HeadingText(
                                    size: 14,
                                    value: "CLASS TWO",
                                  )),
                                  DataCell(Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceAround,
                                    children: [
                                      HeadingText(
                                        size: 14,
                                        value: "9",
                                      ),
                                      HeadingText(
                                        size: 14,
                                        value: "9",
                                      ),
                                    ],
                                  )),
                                  DataCell(Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceAround,
                                    children: [
                                      HeadingText(
                                        size: 14,
                                        value: "0(0.0%)",
                                      ),
                                      HeadingText(
                                        size: 14,
                                        value: "0(0.0%)",
                                      ),
                                    ],
                                  )),
                                  DataCell(Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceAround,
                                    children: [
                                      HeadingText(
                                        size: 14,
                                        value: "0(0.0%)",
                                      ),
                                      HeadingText(
                                        size: 14,
                                        value: "0(0.0%)",
                                      ),
                                    ],
                                  )),
                                  DataCell(Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceAround,
                                    children: [
                                      HeadingText(
                                        size: 14,
                                        value: "0(0.0%)",
                                      ),
                                      HeadingText(
                                        size: 14,
                                        value: "0(0.0%)",
                                      ),
                                    ],
                                  )),
                                ]),
                                DataRow(cells: [
                                  DataCell(HeadingText(
                                    size: 14,
                                    value: "7",
                                  )),
                                  DataCell(HeadingText(
                                    size: 14,
                                    value: "CLASS THREE",
                                  )),
                                  DataCell(Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceAround,
                                    children: [
                                      HeadingText(
                                        size: 14,
                                        value: "9",
                                      ),
                                      HeadingText(
                                        size: 14,
                                        value: "9",
                                      ),
                                    ],
                                  )),
                                  DataCell(Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceAround,
                                    children: [
                                      HeadingText(
                                        size: 14,
                                        value: "0(0.0%)",
                                      ),
                                      HeadingText(
                                        size: 14,
                                        value: "0(0.0%)",
                                      ),
                                    ],
                                  )),
                                  DataCell(Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceAround,
                                    children: [
                                      HeadingText(
                                        size: 14,
                                        value: "0(0.0%)",
                                      ),
                                      HeadingText(
                                        size: 14,
                                        value: "0(0.0%)",
                                      ),
                                    ],
                                  )),
                                  DataCell(Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceAround,
                                    children: [
                                      HeadingText(
                                        size: 14,
                                        value: "0(0.0%)",
                                      ),
                                      HeadingText(
                                        size: 14,
                                        value: "0(0.0%)",
                                      ),
                                    ],
                                  )),
                                ]),
                                DataRow(cells: [
                                  DataCell(HeadingText(
                                    size: 14,
                                    value: "8",
                                  )),
                                  DataCell(HeadingText(
                                    size: 14,
                                    value: "CLASS FOUR",
                                  )),
                                  DataCell(Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceAround,
                                    children: [
                                      HeadingText(
                                        size: 14,
                                        value: "9",
                                      ),
                                      HeadingText(
                                        size: 14,
                                        value: "9",
                                      ),
                                    ],
                                  )),
                                  DataCell(Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceAround,
                                    children: [
                                      HeadingText(
                                        size: 14,
                                        value: "0(0.0%)",
                                      ),
                                      HeadingText(
                                        size: 14,
                                        value: "0(0.0%)",
                                      ),
                                    ],
                                  )),
                                  DataCell(Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceAround,
                                    children: [
                                      HeadingText(
                                        size: 14,
                                        value: "0(0.0%)",
                                      ),
                                      HeadingText(
                                        size: 14,
                                        value: "0(0.0%)",
                                      ),
                                    ],
                                  )),
                                  DataCell(Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceAround,
                                    children: [
                                      HeadingText(
                                        size: 14,
                                        value: "0(0.0%)",
                                      ),
                                      HeadingText(
                                        size: 14,
                                        value: "0(0.0%)",
                                      ),
                                    ],
                                  )),
                                ]),
                                DataRow(cells: [
                                  DataCell(HeadingText(
                                    size: 14,
                                    value: "9",
                                  )),
                                  DataCell(HeadingText(
                                    size: 14,
                                    value: "CLASS FIVE",
                                  )),
                                  DataCell(Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceAround,
                                    children: [
                                      HeadingText(
                                        size: 14,
                                        value: "9",
                                      ),
                                      HeadingText(
                                        size: 14,
                                        value: "9",
                                      ),
                                    ],
                                  )),
                                  DataCell(Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceAround,
                                    children: [
                                      HeadingText(
                                        size: 14,
                                        value: "0(0.0%)",
                                      ),
                                      HeadingText(
                                        size: 14,
                                        value: "0(0.0%)",
                                      ),
                                    ],
                                  )),
                                  DataCell(Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceAround,
                                    children: [
                                      HeadingText(
                                        size: 14,
                                        value: "0(0.0%)",
                                      ),
                                      HeadingText(
                                        size: 14,
                                        value: "0(0.0%)",
                                      ),
                                    ],
                                  )),
                                  DataCell(Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceAround,
                                    children: [
                                      HeadingText(
                                        size: 14,
                                        value: "0(0.0%)",
                                      ),
                                      HeadingText(
                                        size: 14,
                                        value: "0(0.0%)",
                                      ),
                                    ],
                                  )),
                                ]),
                                DataRow(cells: [
                                  DataCell(HeadingText(
                                    size: 14,
                                    value: "10",
                                  )),
                                  DataCell(HeadingText(
                                    size: 14,
                                    value: "CLASS SIX",
                                  )),
                                  DataCell(Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceAround,
                                    children: [
                                      HeadingText(
                                        size: 14,
                                        value: "9",
                                      ),
                                      HeadingText(
                                        size: 14,
                                        value: "9",
                                      ),
                                    ],
                                  )),
                                  DataCell(Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceAround,
                                    children: [
                                      HeadingText(
                                        size: 14,
                                        value: "0(0.0%)",
                                      ),
                                      HeadingText(
                                        size: 14,
                                        value: "0(0.0%)",
                                      ),
                                    ],
                                  )),
                                  DataCell(Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceAround,
                                    children: [
                                      HeadingText(
                                        size: 14,
                                        value: "0(0.0%)",
                                      ),
                                      HeadingText(
                                        size: 14,
                                        value: "0(0.0%)",
                                      ),
                                    ],
                                  )),
                                  DataCell(Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceAround,
                                    children: [
                                      HeadingText(
                                        size: 14,
                                        value: "0(0.0%)",
                                      ),
                                      HeadingText(
                                        size: 14,
                                        value: "0(0.0%)",
                                      ),
                                    ],
                                  )),
                                ]),
                                DataRow(cells: [
                                  DataCell(HeadingText(
                                    size: 14,
                                    value: "11",
                                  )),
                                  DataCell(HeadingText(
                                    size: 14,
                                    value: "CLASS SEVEN",
                                  )),
                                  DataCell(Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceAround,
                                    children: [
                                      HeadingText(
                                        size: 14,
                                        value: "9",
                                      ),
                                      HeadingText(
                                        size: 14,
                                        value: "9",
                                      ),
                                    ],
                                  )),
                                  DataCell(Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceAround,
                                    children: [
                                      HeadingText(
                                        size: 14,
                                        value: "0(0.0%)",
                                      ),
                                      HeadingText(
                                        size: 14,
                                        value: "0(0.0%)",
                                      ),
                                    ],
                                  )),
                                  DataCell(Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceAround,
                                    children: [
                                      HeadingText(
                                        size: 14,
                                        value: "0(0.0%)",
                                      ),
                                      HeadingText(
                                        size: 14,
                                        value: "0(0.0%)",
                                      ),
                                    ],
                                  )),
                                  DataCell(Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceAround,
                                    children: [
                                      HeadingText(
                                        size: 14,
                                        value: "0(0.0%)",
                                      ),
                                      HeadingText(
                                        size: 14,
                                        value: "0(0.0%)",
                                      ),
                                    ],
                                  )),
                                ])
                              ]),
                        ),
                      ),
                    ),
                  ]),
                )
              ]))
            ],
          ),
        ),
      ),
    );
  }
}
