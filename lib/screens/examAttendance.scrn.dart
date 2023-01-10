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
import 'package:skyconnect_starter/screens/addClass.scrn.dart';
import 'package:skyconnect_starter/screens/attendanceReport.scrn.dart';
import 'package:skyconnect_starter/screens/student_admission.scrn.dart';
import 'package:skyconnect_starter/theme/design.theme.dart';

class examAttendance extends StatefulWidget {
  const examAttendance({super.key});

  @override
  State<examAttendance> createState() => _classesState();
}

class _classesState extends State<examAttendance> {
  bool _menu = false;
  double _drawersize = 250;
  var _exam;
  var _class;
  var _subject;

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
          height:
              Responsive.isDesktop(context) ? size.height : size.height + 300,
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
                        left: Insets().appPadding / 2,
                        right: Insets().appPadding / 2,
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
                    size: Responsive.isDesktop(context) ? 35 : 25,
                    value: "EXAM ATTENDANCE",
                    fontWeight: FontWeight.w700,
                    color: Colors.black,
                  ),
                ),
                Flex(
                  direction: Responsive.isDesktop(context)
                      ? Axis.horizontal
                      : Axis.vertical,
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
                          height: 70,
                          child: Row(
                            children: [
                              Icon(
                                Icons.star,
                                size: 50,
                                color: Colors.white,
                              ),
                              Spacer(),
                              ElevatedButton(
                                  onPressed: () {
                                    Navigator.of(context).push(
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                addClasses()));
                                  },
                                  style: ElevatedButton.styleFrom(
                                      backgroundColor: Colors.white,
                                      shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.circular(
                                              Insets().appRadiusMin + 4)),
                                      padding:
                                          EdgeInsets.all(Insets().appPadding)),
                                  child: Heading5(
                                    value: "Add Exam Attendance",
                                    color: Colors.black,
                                  ))
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
                          height: 70,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Heading1(
                                    value: "17",
                                    color: Colors.white,
                                  ),
                                  Expanded(
                                    child: Heading6(
                                        value: "Total Exams",
                                        color: Colors.white),
                                  )
                                ],
                              ),
                              ElevatedButton(
                                  onPressed: () {
                                    Navigator.of(context).push(
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                attendanceReport()));
                                  },
                                  style: ElevatedButton.styleFrom(
                                      backgroundColor: Colors.white,
                                      shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.circular(
                                              Insets().appRadiusMin + 4)),
                                      padding:
                                          EdgeInsets.all(Insets().appPadding)),
                                  child: Heading5(
                                    value: "View Reports",
                                    color: Colors.black,
                                  ))
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
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
                          ? Insets().appPadding
                          : 12,
                      bottom: Responsive.isDesktop(context)
                          ? Insets().appPadding
                          : 12),
                  padding: EdgeInsets.only(
                      left: Responsive.isDesktop(context)
                          ? Insets().appPadding
                          : 10,
                      right: Responsive.isDesktop(context)
                          ? Insets().appGap / 2
                          : 10,
                      top: Responsive.isDesktop(context)
                          ? Insets().appGap / 3
                          : 5,
                      bottom: Responsive.isDesktop(context)
                          ? Insets().appGap / 3
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
                              flex: 3,
                              child: TextFormField(
                                  decoration: const InputDecoration(

                                      // enabledBorder: OutlineInputBorder(
                                      //     borderSide: BorderSide(
                                      //         color: Palette().borderColor, width: 3.0)),
                                      border: InputBorder.none,
                                      hintText: " Search for Student",
                                      hintStyle: TextStyle(fontSize: 20)))),
                          SizedBox(
                            width: 10,
                          ),
                          Expanded(
                              flex: 1,
                              child: Container(
                                margin: EdgeInsets.only(
                                  left: Insets().appGap,
                                  right: Insets().appGap,
                                ),
                                padding: EdgeInsets.only(
                                  left: Insets().appGap,
                                ),
                                decoration: BoxDecoration(
                                    border: Border.all(
                                        color: Palette().borderColor, width: 1),
                                    color: Palette().primaryColor,
                                    borderRadius: BorderRadius.circular(
                                        Insets().appGap + 4)),
                                child: DropdownButton(
                                  items: const [
                                    DropdownMenuItem(
                                        child: Heading5(
                                          color: Colors.white,
                                          value: "Top Mark 2 June",
                                        ),
                                        value: "Top Mark 2 June"),
                                    DropdownMenuItem(
                                        child: Heading5(
                                          color: Colors.white,
                                          value: "End of Term One",
                                        ),
                                        value: "End of Term One"),
                                    DropdownMenuItem(
                                        child: Heading5(
                                          color: Colors.white,
                                          value: "END OF QUARTER THREE EXAMS",
                                        ),
                                        value: "END OF QUARTER THREE EXAMS"),
                                    DropdownMenuItem(
                                        child: Heading5(
                                          color: Colors.white,
                                          value: "END OF OCTOBER EXAMS",
                                        ),
                                        value: "END OF OCTOBER EXAMS"),
                                    DropdownMenuItem(
                                        child: Heading5(
                                          color: Colors.white,
                                          value: "END OF YEAR EXAM",
                                        ),
                                        value: "END OF YEAR EXAM"),
                                    DropdownMenuItem(
                                        child: Heading5(
                                          color: Colors.white,
                                          value: "JANUARY END OF MONTH",
                                        ),
                                        value: "JANUARY END OF MONTH"),
                                    DropdownMenuItem(
                                        child: Heading5(
                                          color: Colors.white,
                                          value:
                                              "FEBRUARY END OF MONTH EXAMINATION",
                                        ),
                                        value:
                                            "FEBRUARY END OF MONTH EXAMINATION"),
                                    DropdownMenuItem(
                                        child: Heading5(
                                          color: Colors.white,
                                          value: "TOP MARK VI MARCH 2022",
                                        ),
                                        value: "TOP MARK VI MARCH 2022"),
                                    DropdownMenuItem(
                                        child: Heading5(
                                          color: Colors.white,
                                          value:
                                              "Class END OF QUARTER THREE EXAMS",
                                        ),
                                        value:
                                            "Class END OF QUARTER THREE EXAMS"),
                                  ],
                                  hint: Heading6(
                                    value: "Select Exam",
                                    color: Colors.white,
                                  ),
                                  value: _exam,
                                  iconEnabledColor: Colors.white,
                                  iconDisabledColor: Colors.white,
                                  isExpanded: true,
                                  underline: SizedBox(),
                                  dropdownColor: Palette().primaryColor,
                                  borderRadius: BorderRadius.circular(
                                      Insets().appRadiusMin + 4),
                                  onChanged: ((value) {
                                    if (value is String) {
                                      setState(() {
                                        _exam = value;
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
                                  left: Insets().appGap,
                                  right: Insets().appGap,
                                ),
                                padding: EdgeInsets.only(
                                  left: Insets().appGap,
                                ),
                                decoration: BoxDecoration(
                                    border: Border.all(
                                        color: Palette().borderColor, width: 1),
                                    color: Palette().primaryColor,
                                    borderRadius: BorderRadius.circular(
                                        Insets().appGap + 4)),
                                child: DropdownButton(
                                  items: const [
                                    DropdownMenuItem(
                                        child: Heading6(
                                          value: "Class One",
                                          color: Colors.white,
                                        ),
                                        value: "Class One"),
                                    DropdownMenuItem(
                                        child: Heading6(
                                            value: "Class Two",
                                            color: Colors.white),
                                        value: "Class Two"),
                                    DropdownMenuItem(
                                        child: Heading6(
                                            value: "Class Three",
                                            color: Colors.white),
                                        value: "Class Three")
                                  ],
                                  hint: Heading6(
                                    value: "Select Class",
                                    color: Colors.white,
                                  ),
                                  value: _class,
                                  iconEnabledColor: Colors.white,
                                  iconDisabledColor: Colors.white,
                                  isExpanded: true,
                                  underline: SizedBox(),
                                  dropdownColor: Palette().primaryColor,
                                  borderRadius: BorderRadius.circular(
                                      Insets().appRadiusMin + 4),
                                  onChanged: ((value) {
                                    if (value is String) {
                                      setState(() {
                                        _class = value;
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
                                  left: Insets().appGap,
                                  right: Insets().appGap,
                                ),
                                padding: EdgeInsets.only(
                                  left: Insets().appGap,
                                ),
                                decoration: BoxDecoration(
                                    border: Border.all(
                                        color: Palette().borderColor, width: 1),
                                    color: Palette().primaryColor,
                                    borderRadius: BorderRadius.circular(
                                        Insets().appGap + 4)),
                                child: DropdownButton(
                                  items: const [
                                    DropdownMenuItem(
                                        child: Heading6(
                                          value: "Physics",
                                          color: Colors.white,
                                        ),
                                        value: "Physics"),
                                    DropdownMenuItem(
                                        child: Heading6(
                                            value: "Mathematics",
                                            color: Colors.white),
                                        value: "Mathematics"),
                                    DropdownMenuItem(
                                        child: Heading6(
                                            value: "Geography",
                                            color: Colors.white),
                                        value: "Geography")
                                  ],
                                  hint: Heading6(
                                    value: "Select Subject",
                                    color: Colors.white,
                                  ),
                                  value: _subject,
                                  iconEnabledColor: Colors.white,
                                  iconDisabledColor: Colors.white,
                                  isExpanded: true,
                                  underline: SizedBox(),
                                  dropdownColor: Palette().primaryColor,
                                  borderRadius: BorderRadius.circular(
                                      Insets().appRadiusMin + 4),
                                  onChanged: ((value) {
                                    if (value is String) {
                                      setState(() {
                                        _subject = value;
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
                                        value: "Apply",
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
                          Container(
                              child: TextFormField(
                                  decoration: const InputDecoration(
                                      // enabledBorder: OutlineInputBorder(
                                      //     borderSide: BorderSide(
                                      //         color: Palette().borderColor, width: 3.0)),
                                      border: InputBorder.none,
                                      hintText: " Search for Student",
                                      hintStyle: TextStyle(fontSize: 20)))),
                          SizedBox(
                            width: Responsive.isDesktop(context) ? 10 : 0,
                            height: Responsive.isDesktop(context) ? 0 : 5,
                          ),
                          SingleChildScrollView(
                            scrollDirection: Axis.horizontal,
                            child: SizedBox(
                                width: MediaQuery.of(context).size.width + 100,
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Container(
                                      width: 160,
                                      margin: EdgeInsets.only(
                                        right: Insets().appGap,
                                      ),
                                      padding: EdgeInsets.only(
                                        left: Insets().appGap,
                                      ),
                                      decoration: BoxDecoration(
                                          border: Border.all(
                                              color: Palette().borderColor,
                                              width: 1),
                                          color: Palette().primaryColor,
                                          borderRadius: BorderRadius.circular(
                                              Insets().appGap + 4)),
                                      child: DropdownButton(
                                        items: const [
                                          DropdownMenuItem(
                                              child: Heading5(
                                                color: Colors.white,
                                                value: "Top Mark 2 June",
                                              ),
                                              value: "Top Mark 2 June"),
                                          DropdownMenuItem(
                                              child: Heading5(
                                                color: Colors.white,
                                                value: "End of July Exams",
                                              ),
                                              value: "End of July Exams"),
                                          DropdownMenuItem(
                                              child: Heading5(
                                                color: Colors.white,
                                                value: "End of Term One",
                                              ),
                                              value: "End of Term One"),
                                          DropdownMenuItem(
                                              child: Heading5(
                                                color: Colors.white,
                                                value:
                                                    "END OF QUARTER THREE EXAMS",
                                              ),
                                              value:
                                                  "END OF QUARTER THREE EXAMS"),
                                          DropdownMenuItem(
                                              child: Heading5(
                                                color: Colors.white,
                                                value: "END OF OCTOBER EXAMS",
                                              ),
                                              value: "END OF OCTOBER EXAMS"),
                                          DropdownMenuItem(
                                              child: Heading5(
                                                color: Colors.white,
                                                value: "END OF YEAR EXAM",
                                              ),
                                              value: "END OF YEAR EXAM"),
                                          DropdownMenuItem(
                                              child: Heading5(
                                                color: Colors.white,
                                                value: "JANUARY END OF MONTH",
                                              ),
                                              value: "JANUARY END OF MONTH"),
                                          DropdownMenuItem(
                                              child: Heading5(
                                                color: Colors.white,
                                                value:
                                                    "FEBRUARY END OF MONTH EXAMINATION",
                                              ),
                                              value:
                                                  "FEBRUARY END OF MONTH EXAMINATION"),
                                          DropdownMenuItem(
                                              child: Heading5(
                                                color: Colors.white,
                                                value: "TOP MARK VI MARCH 2022",
                                              ),
                                              value: "TOP MARK VI MARCH 2022"),
                                          DropdownMenuItem(
                                              child: Heading5(
                                                color: Colors.white,
                                                value:
                                                    "Class END OF QUARTER THREE EXAMS",
                                              ),
                                              value:
                                                  "Class END OF QUARTER THREE EXAMS"),
                                        ],
                                        hint: Heading6(
                                          value: "Select Exam",
                                          color: Colors.white,
                                        ),
                                        value: _exam,
                                        iconEnabledColor: Colors.white,
                                        iconDisabledColor: Colors.white,
                                        isExpanded: true,
                                        underline: SizedBox(),
                                        dropdownColor: Palette().primaryColor,
                                        borderRadius: BorderRadius.circular(
                                            Insets().appRadiusMin + 4),
                                        onChanged: ((value) {
                                          if (value is String) {
                                            setState(() {
                                              _exam = value;
                                            });
                                          }
                                        }),
                                      ),
                                    ),
                                    Container(
                                      width: 100,
                                      margin: EdgeInsets.only(
                                        right: Insets().appGap,
                                      ),
                                      padding: EdgeInsets.only(
                                        left: Insets().appGap,
                                      ),
                                      decoration: BoxDecoration(
                                          border: Border.all(
                                              color: Palette().borderColor,
                                              width: 1),
                                          color: Palette().primaryColor,
                                          borderRadius: BorderRadius.circular(
                                              Insets().appGap + 4)),
                                      child: DropdownButton(
                                        items: const [
                                          DropdownMenuItem(
                                              child: Heading6(
                                                value: "Class One",
                                                color: Colors.white,
                                              ),
                                              value: "Class One"),
                                          DropdownMenuItem(
                                              child: Heading6(
                                                  value: "Class Two",
                                                  color: Colors.white),
                                              value: "Class Two"),
                                          DropdownMenuItem(
                                              child: Heading6(
                                                  value: "Class Three",
                                                  color: Colors.white),
                                              value: "Class Three")
                                        ],
                                        hint: Heading6(
                                          value: "Select Class",
                                          color: Colors.white,
                                        ),
                                        value: _class,
                                        iconEnabledColor: Colors.white,
                                        iconDisabledColor: Colors.white,
                                        isExpanded: true,
                                        underline: SizedBox(),
                                        dropdownColor: Palette().primaryColor,
                                        borderRadius: BorderRadius.circular(
                                            Insets().appRadiusMin + 4),
                                        onChanged: ((value) {
                                          if (value is String) {
                                            setState(() {
                                              _class = value;
                                            });
                                          }
                                        }),
                                      ),
                                    ),
                                    Container(
                                      width: 100,
                                      margin: EdgeInsets.only(
                                        right: Insets().appGap,
                                      ),
                                      padding: EdgeInsets.only(
                                        left: Insets().appGap,
                                      ),
                                      decoration: BoxDecoration(
                                          border: Border.all(
                                              color: Palette().borderColor,
                                              width: 1),
                                          color: Palette().primaryColor,
                                          borderRadius: BorderRadius.circular(
                                              Insets().appGap + 4)),
                                      child: DropdownButton(
                                        items: const [
                                          DropdownMenuItem(
                                              child: Heading6(
                                                value: "Physics",
                                                color: Colors.white,
                                              ),
                                              value: "Physics"),
                                          DropdownMenuItem(
                                              child: Heading6(
                                                  value: "Mathematics",
                                                  color: Colors.white),
                                              value: "Mathematics"),
                                          DropdownMenuItem(
                                              child: Heading6(
                                                  value: "Geography",
                                                  color: Colors.white),
                                              value: "Geography")
                                        ],
                                        hint: Heading6(
                                          value: "Select Subject",
                                          color: Colors.white,
                                        ),
                                        value: _subject,
                                        iconEnabledColor: Colors.white,
                                        iconDisabledColor: Colors.white,
                                        isExpanded: true,
                                        underline: SizedBox(),
                                        dropdownColor: Palette().primaryColor,
                                        borderRadius: BorderRadius.circular(
                                            Insets().appRadiusMin + 4),
                                        onChanged: ((value) {
                                          if (value is String) {
                                            setState(() {
                                              _subject = value;
                                            });
                                          }
                                        }),
                                      ),
                                    ),
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
                                            size: 30,
                                          ),
                                          SizedBox(
                                            width: 5,
                                          ),
                                          Heading6(
                                            value: "Apply",
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
                          ),
                        ]
                      ]),
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
                                _exam = value;
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
                                  Responsive.isDesktop(context) ? 20 : 10,
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
                                  width:
                                      Responsive.isDesktop(context) ? 30 : null,
                                  child: HeadingText(
                                    size: 14,
                                    value: "No.",
                                    fontWeight: FontWeight.w700,
                                  ),
                                )),
                                DataColumn(
                                    label: SizedBox(
                                  width:
                                      Responsive.isDesktop(context) ? 50 : null,
                                  child: HeadingText(
                                    size: 14,
                                    value: "Photo",
                                    fontWeight: FontWeight.w700,
                                  ),
                                )),
                                DataColumn(
                                    label: SizedBox(
                                  width: Responsive.isDesktop(context)
                                      ? 200
                                      : null,
                                  child: HeadingText(
                                    size: 14,
                                    value: "Name",
                                    fontWeight: FontWeight.w700,
                                  ),
                                )),
                                DataColumn(
                                    label: SizedBox(
                                  width: Responsive.isDesktop(context)
                                      ? 150
                                      : null,
                                  child: HeadingText(
                                    size: 14,
                                    value: "Roll/Reg No.",
                                    fontWeight: FontWeight.w700,
                                  ),
                                )),
                                DataColumn(
                                    label: SizedBox(
                                  width: Responsive.isDesktop(context)
                                      ? 200
                                      : null,
                                  child: HeadingText(
                                    size: 14,
                                    value: "Email Address",
                                    fontWeight: FontWeight.w700,
                                  ),
                                )),
                                DataColumn(
                                    label: SizedBox(
                                  width: Responsive.isDesktop(context)
                                      ? 200
                                      : null,
                                  child: HeadingText(
                                    size: 14,
                                    value: "Phone",
                                    fontWeight: FontWeight.w700,
                                  ),
                                )),
                                DataColumn(
                                    label: SizedBox(
                                  width: Responsive.isDesktop(context)
                                      ? 150
                                      : null,
                                  child: HeadingText(
                                    size: 14,
                                    value: "Action",
                                    fontWeight: FontWeight.w700,
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
                                  DataCell(Icon(
                                    Icons.person,
                                    size: 30,
                                  )),
                                  DataCell(HeadingText(
                                    size: 14,
                                    value: "Doe Lucas John",
                                  )),
                                  DataCell(HeadingText(
                                    size: 14,
                                    value: "SH 129-39-01 ",
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
                                          value: "View",
                                        ),
                                      ),
                                    ],
                                  ))
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
                                  DataCell(Icon(
                                    Icons.person,
                                    size: 30,
                                  )),
                                  DataCell(HeadingText(
                                    size: 14,
                                    value: "Doe Lucas John",
                                  )),
                                  DataCell(HeadingText(
                                    size: 14,
                                    value: "SH 129-39-01 ",
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
                                          value: "View",
                                        ),
                                      ),
                                    ],
                                  ))
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
                                  DataCell(Icon(
                                    Icons.person,
                                    size: 30,
                                  )),
                                  DataCell(HeadingText(
                                    size: 14,
                                    value: "Doe Lucas John",
                                  )),
                                  DataCell(HeadingText(
                                    size: 14,
                                    value: "SH 129-39-01 ",
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
                                          value: "View",
                                        ),
                                      ),
                                    ],
                                  ))
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
                                  DataCell(Icon(
                                    Icons.person,
                                    size: 30,
                                  )),
                                  DataCell(HeadingText(
                                    size: 14,
                                    value: "Doe Lucas John",
                                  )),
                                  DataCell(HeadingText(
                                    size: 14,
                                    value: "SH 129-39-01 ",
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
                                          value: "View",
                                        ),
                                      ),
                                    ],
                                  ))
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
                                  DataCell(Icon(
                                    Icons.person,
                                    size: 30,
                                  )),
                                  DataCell(HeadingText(
                                    size: 14,
                                    value: "Doe Lucas John",
                                  )),
                                  DataCell(HeadingText(
                                    size: 14,
                                    value: "SH 129-39-01 ",
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
                                          value: "View",
                                        ),
                                      ),
                                    ],
                                  ))
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
                                  DataCell(Icon(
                                    Icons.person,
                                    size: 30,
                                  )),
                                  DataCell(HeadingText(
                                    size: 14,
                                    value: "Doe Lucas John",
                                  )),
                                  DataCell(HeadingText(
                                    size: 14,
                                    value: "SH 129-39-01 ",
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
                                          value: "View",
                                        ),
                                      ),
                                    ],
                                  ))
                                ]),
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
