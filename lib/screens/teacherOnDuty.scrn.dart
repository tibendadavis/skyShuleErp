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
import 'package:skyconnect_starter/screens/addTeacherOnDuty.scrn.dart';
import 'package:skyconnect_starter/screens/student_admission.scrn.dart';
import 'package:skyconnect_starter/theme/design.theme.dart';

class teacherOnDuty extends StatefulWidget {
  const teacherOnDuty({super.key});

  @override
  State<teacherOnDuty> createState() => _teacherOnDutyState();
}

class _teacherOnDutyState extends State<teacherOnDuty> {
  bool _menu = false;
  double _drawersize = 250;
  var _classlevel;
  var _academicYear;
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
          height:
              Responsive.isDesktop(context) ? size.height : size.height + 100,
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
                    size: Responsive.isDesktop(context) ? 35 : 25,
                    value: "TEACHER ON DUTY",
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
                                                addTeacherOnDuty()));
                                  },
                                  style: ElevatedButton.styleFrom(
                                      backgroundColor: Colors.white,
                                      shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.circular(
                                              Insets().appRadiusMin + 4)),
                                      padding:
                                          EdgeInsets.all(Insets().appPadding)),
                                  child: Heading5(
                                    value: "Add Teacher on Duty",
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
                          : Insets().appPadding,
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
                                      hintText: " Search for Teacher",
                                      hintStyle: TextStyle(fontSize: 20)))),
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
                                      hintText: " Search for Teacher",
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
                                  children: [],
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
                                _classlevel = value;
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
                                    label: Expanded(
                                  child: HeadingText(
                                    size: 14,
                                    value: "No.",
                                    fontWeight: FontWeight.w700,
                                  ),
                                )),
                                DataColumn(
                                    label: SizedBox(
                                  width:
                                      Responsive.isDesktop(context) ? 100 : 100,
                                  child: HeadingText(
                                    size: 14,
                                    value: "Week",
                                    fontWeight: FontWeight.w700,
                                  ),
                                )),
                                DataColumn(
                                    label: SizedBox(
                                  width:
                                      Responsive.isDesktop(context) ? 160 : 130,
                                  child: HeadingText(
                                    size: 14,
                                    value: "Start Date",
                                    fontWeight: FontWeight.w700,
                                  ),
                                )),
                                DataColumn(
                                    label: SizedBox(
                                  width:
                                      Responsive.isDesktop(context) ? 160 : 130,
                                  child: HeadingText(
                                    size: 14,
                                    value: "End Date",
                                    fontWeight: FontWeight.w700,
                                  ),
                                )),
                                DataColumn(
                                    label: SizedBox(
                                  width:
                                      Responsive.isDesktop(context) ? 170 : 150,
                                  child: HeadingText(
                                    size: 14,
                                    value: "Teacher(s) on Duty",
                                    fontWeight: FontWeight.w700,
                                  ),
                                )),
                                DataColumn(
                                    label: SizedBox(
                                  width:
                                      Responsive.isDesktop(context) ? 170 : 150,
                                  child: HeadingText(
                                    size: 14,
                                    value: "Student(s) on Duty",
                                    fontWeight: FontWeight.w700,
                                  ),
                                )),
                                DataColumn(
                                    label: SizedBox(
                                  width:
                                      Responsive.isDesktop(context) ? 150 : 150,
                                  child: HeadingText(
                                    size: 14,
                                    value: "Action",
                                    fontWeight: FontWeight.w700,
                                  ),
                                )),
                              ],
                              rows: []),
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
