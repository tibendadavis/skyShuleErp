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
import 'package:skyconnect_starter/screens/addStaff.scrn.dart';
import 'package:skyconnect_starter/screens/student_admission.scrn.dart';
import 'package:skyconnect_starter/theme/design.theme.dart';

class classAllocations extends StatefulWidget {
  const classAllocations({super.key});

  @override
  State<classAllocations> createState() => _supportingStaffState();
}

class _supportingStaffState extends State<classAllocations> {
  bool _menu = false;
  double _drawersize = 250;
  var _classlevel;
  var _academicYear;
  var _stream;
  var _class;

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
                    size: Responsive.isDesktop(context) ? 35 : 30,
                    value: "CLASS ALLOCATIONS",
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
                                  onPressed: () {},
                                  style: ElevatedButton.styleFrom(
                                      backgroundColor: Colors.white,
                                      shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.circular(
                                              Insets().appRadiusMin + 4)),
                                      padding:
                                          EdgeInsets.all(Insets().appPadding)),
                                  child: Heading5(
                                    value: "Define Exam",
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
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Heading1(
                                value: "7",
                                color: Colors.white,
                              ),
                              Expanded(
                                child: Heading6(
                                    value: "Total Class Allocations",
                                    color: Colors.white),
                              )
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
                                      hintText: " Search for Exams",
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
                                        child: Heading6(
                                          value: "Nursery",
                                          color: Colors.white,
                                        ),
                                        value: "Nursery"),
                                    DropdownMenuItem(
                                        child: Heading6(
                                            value: "Primary",
                                            color: Colors.white),
                                        value: "Primary"),
                                    DropdownMenuItem(
                                        child: Heading6(
                                            value: "Secondary",
                                            color: Colors.white),
                                        value: "Secondary")
                                  ],
                                  hint: Heading6(
                                    value: "Class Level",
                                    color: Colors.white,
                                  ),
                                  value: _classlevel,
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
                                        _classlevel = value;
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
                                      hintText: " Search for Exams",
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
                                                value: "Nursery",
                                                color: Colors.white,
                                              ),
                                              value: "Nursery"),
                                          DropdownMenuItem(
                                              child: Heading6(
                                                  value: "Primary",
                                                  color: Colors.white),
                                              value: "Primary"),
                                          DropdownMenuItem(
                                              child: Heading6(
                                                  value: "Secondary",
                                                  color: Colors.white),
                                              value: "Secondary")
                                        ],
                                        hint: Heading6(
                                          value: "Class Level",
                                          color: Colors.white,
                                        ),
                                        value: _classlevel,
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
                                              _classlevel = value;
                                            });
                                          }
                                        }),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 5,
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
                                // height: Responsive.isDesktop(context) ? 0 : 5,
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
                                    label: SizedBox(
                                  width:
                                      Responsive.isDesktop(context) ? 20 : null,
                                  child: HeadingText(
                                    size: 14,
                                    value: "No.",
                                    fontWeight: FontWeight.w700,
                                  ),
                                )),
                                DataColumn(
                                    label: SizedBox(
                                  width: Responsive.isDesktop(context)
                                      ? 100
                                      : null,
                                  child: HeadingText(
                                    size: 14,
                                    value: "Exam Name",
                                    fontWeight: FontWeight.w700,
                                  ),
                                )),
                                DataColumn(
                                    label: SizedBox(
                                  width: Responsive.isDesktop(context)
                                      ? 100
                                      : null,
                                  child: HeadingText(
                                    size: 14,
                                    value: "Semester",
                                    fontWeight: FontWeight.w700,
                                  ),
                                )),
                                DataColumn(
                                    label: SizedBox(
                                  width: Responsive.isDesktop(context)
                                      ? 100
                                      : null,
                                  child: HeadingText(
                                    size: 14,
                                    value: "Date",
                                    fontWeight: FontWeight.w700,
                                  ),
                                )),
                                DataColumn(
                                    label: SizedBox(
                                  width: Responsive.isDesktop(context)
                                      ? 100
                                      : null,
                                  child: HeadingText(
                                    size: 14,
                                    value: "Abbreviation",
                                    fontWeight: FontWeight.w700,
                                  ),
                                )),
                                DataColumn(
                                    label: SizedBox(
                                  width: Responsive.isDesktop(context)
                                      ? 100
                                      : null,
                                  child: HeadingText(
                                    size: 14,
                                    value: "Note",
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
                                    value: "WEEKLY EXAMINATION",
                                  )),
                                  DataCell(HeadingText(
                                    size: 14,
                                    value: "FIRST TERM",
                                  )),
                                  DataCell(HeadingText(
                                    size: 14,
                                    value: "14 Jan 2022",
                                  )),
                                  DataCell(HeadingText(
                                    size: 14,
                                    value: "WE",
                                  )),
                                  DataCell(SizedBox(
                                      width: Responsive.isDesktop(context)
                                          ? 400
                                          : 300,
                                      child: HeadingText(
                                        size: 14,
                                        value: " ",
                                      ))),
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
                                        width: 10,
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
                                  DataCell(Checkbox(
                                    value: false,
                                    onChanged: (value) {
                                      setState(() {});
                                    },
                                  )),
                                  DataCell(HeadingText(
                                    size: 14,
                                    value: "2",
                                  )),
                                  DataCell(HeadingText(
                                    size: 14,
                                    value: "FEBRUARY MID QUARTER",
                                  )),
                                  DataCell(HeadingText(
                                    size: 14,
                                    value: "FIRST TERM",
                                  )),
                                  DataCell(HeadingText(
                                    size: 14,
                                    value: "18 Feb 2022",
                                  )),
                                  DataCell(HeadingText(
                                    size: 14,
                                    value: "FMQ",
                                  )),
                                  DataCell(SizedBox(
                                      width: Responsive.isDesktop(context)
                                          ? 400
                                          : 300,
                                      child: HeadingText(
                                        size: 14,
                                        value: " ",
                                      ))),
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
                                        width: 10,
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
                                  DataCell(Checkbox(
                                    value: false,
                                    onChanged: (value) {
                                      setState(() {});
                                    },
                                  )),
                                  DataCell(HeadingText(
                                    size: 14,
                                    value: "3",
                                  )),
                                  DataCell(HeadingText(
                                    size: 14,
                                    value: "TOP MARK VI MARCH 2022",
                                  )),
                                  DataCell(HeadingText(
                                    size: 14,
                                    value: "SECOND TERM",
                                  )),
                                  DataCell(HeadingText(
                                    size: 14,
                                    value: "09 Mar 2022",
                                  )),
                                  DataCell(HeadingText(
                                    size: 14,
                                    value: "TM6",
                                  )),
                                  DataCell(SizedBox(
                                      width: Responsive.isDesktop(context)
                                          ? 400
                                          : 300,
                                      child: HeadingText(
                                        size: 14,
                                        value: " ",
                                      ))),
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
                                        width: 10,
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
                                  DataCell(Checkbox(
                                    value: false,
                                    onChanged: (value) {
                                      setState(() {});
                                    },
                                  )),
                                  DataCell(HeadingText(
                                    size: 14,
                                    value: "4",
                                  )),
                                  DataCell(HeadingText(
                                    size: 14,
                                    value: "MID TERM 1",
                                  )),
                                  DataCell(HeadingText(
                                    size: 14,
                                    value: "FIRST TERM",
                                  )),
                                  DataCell(HeadingText(
                                    size: 14,
                                    value: "04 Apr 2022",
                                  )),
                                  DataCell(HeadingText(
                                    size: 14,
                                    value: "MT1",
                                  )),
                                  DataCell(SizedBox(
                                      width: Responsive.isDesktop(context)
                                          ? 400
                                          : 300,
                                      child: HeadingText(
                                        size: 14,
                                        value: " ",
                                      ))),
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
                                        width: 10,
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
                                  DataCell(Checkbox(
                                    value: false,
                                    onChanged: (value) {
                                      setState(() {});
                                    },
                                  )),
                                  DataCell(HeadingText(
                                    size: 14,
                                    value: "5",
                                  )),
                                  DataCell(HeadingText(
                                    size: 14,
                                    value: "TOP MARK 9",
                                  )),
                                  DataCell(HeadingText(
                                    size: 14,
                                    value: "FIRST TERM",
                                  )),
                                  DataCell(HeadingText(
                                    size: 14,
                                    value: "27 May 2022",
                                  )),
                                  DataCell(HeadingText(
                                    size: 14,
                                    value: "TM9",
                                  )),
                                  DataCell(SizedBox(
                                      width: Responsive.isDesktop(context)
                                          ? 400
                                          : 300,
                                      child: HeadingText(
                                        size: 14,
                                        value: "'ALWAYS AIM AT THE TOP'",
                                      ))),
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
                                        width: 10,
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
                                  DataCell(Checkbox(
                                    value: false,
                                    onChanged: (value) {
                                      setState(() {});
                                    },
                                  )),
                                  DataCell(HeadingText(
                                    size: 14,
                                    value: "6",
                                  )),
                                  DataCell(HeadingText(
                                    size: 14,
                                    value: "TOP MARK 10",
                                  )),
                                  DataCell(HeadingText(
                                    size: 14,
                                    value: "FIRST TERM",
                                  )),
                                  DataCell(HeadingText(
                                    size: 14,
                                    value: "03 Jun 2022",
                                  )),
                                  DataCell(HeadingText(
                                    size: 14,
                                    value: "TM10",
                                  )),
                                  DataCell(SizedBox(
                                      width: Responsive.isDesktop(context)
                                          ? 400
                                          : 300,
                                      child: HeadingText(
                                        size: 14,
                                        value: " ",
                                      ))),
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
                                        width: 10,
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
                                  DataCell(Checkbox(
                                    value: false,
                                    onChanged: (value) {
                                      setState(() {});
                                    },
                                  )),
                                  DataCell(HeadingText(
                                    size: 14,
                                    value: "7",
                                  )),
                                  DataCell(HeadingText(
                                    size: 14,
                                    value: "TOP MARK 11",
                                  )),
                                  DataCell(HeadingText(
                                    size: 14,
                                    value: "FIRST TERM",
                                  )),
                                  DataCell(HeadingText(
                                    size: 14,
                                    value: "10 Jun 2022",
                                  )),
                                  DataCell(HeadingText(
                                    size: 14,
                                    value: "TM11",
                                  )),
                                  DataCell(SizedBox(
                                      width: Responsive.isDesktop(context)
                                          ? 400
                                          : 300,
                                      child: HeadingText(
                                        size: 14,
                                        value: " ",
                                      ))),
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
                                        width: 10,
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
                                  DataCell(Checkbox(
                                    value: false,
                                    onChanged: (value) {
                                      setState(() {});
                                    },
                                  )),
                                  DataCell(HeadingText(
                                    size: 14,
                                    value: "8",
                                  )),
                                  DataCell(HeadingText(
                                    size: 14,
                                    value: "TOP MARK 12",
                                  )),
                                  DataCell(HeadingText(
                                    size: 14,
                                    value: "FIRST TERM",
                                  )),
                                  DataCell(HeadingText(
                                    size: 14,
                                    value: "16 Jun 2022",
                                  )),
                                  DataCell(HeadingText(
                                    size: 14,
                                    value: "TM12",
                                  )),
                                  DataCell(SizedBox(
                                      width: Responsive.isDesktop(context)
                                          ? 400
                                          : 300,
                                      child: HeadingText(
                                        size: 14,
                                        value: " ",
                                      ))),
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
                                        width: 10,
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
                                  DataCell(Checkbox(
                                    value: false,
                                    onChanged: (value) {
                                      setState(() {});
                                    },
                                  )),
                                  DataCell(HeadingText(
                                    size: 14,
                                    value: "9",
                                  )),
                                  DataCell(HeadingText(
                                    size: 14,
                                    value: "END OF JUNE EXAMINATION",
                                  )),
                                  DataCell(HeadingText(
                                    size: 14,
                                    value: "FIRST TERM",
                                  )),
                                  DataCell(HeadingText(
                                    size: 14,
                                    value: "20 Jun 2022",
                                  )),
                                  DataCell(HeadingText(
                                    size: 14,
                                    value: "EJE",
                                  )),
                                  DataCell(SizedBox(
                                      width: Responsive.isDesktop(context)
                                          ? 400
                                          : 300,
                                      child: HeadingText(
                                        size: 14,
                                        value: " ",
                                      ))),
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
                                        width: 10,
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
