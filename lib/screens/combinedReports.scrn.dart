import 'package:file_picker/file_picker.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:path/path.dart';
import 'package:skyconnect_starter/components/app_drawer/skyShuleDrawer.dart';
import 'package:skyconnect_starter/components/bankDetails.dart';
import 'package:skyconnect_starter/components/contactsDetails.dart';
import 'package:skyconnect_starter/components/header.dart';
import 'package:skyconnect_starter/components/heading2.dart';
import 'package:skyconnect_starter/components/heading3.dart';
import 'package:skyconnect_starter/components/heading4.dart';
import 'package:skyconnect_starter/components/heading_text.dart';
import 'package:skyconnect_starter/components/heading5.dart';
import 'package:skyconnect_starter/components/heading6.dart';
import 'package:skyconnect_starter/components/heading_text.dart';
import 'package:skyconnect_starter/components/officialDetails.dart';
import 'package:skyconnect_starter/components/otherFacilities.dart';
import 'package:skyconnect_starter/components/parentsDetails.dart';
import 'package:skyconnect_starter/components/personalDetails.dart';
import 'package:skyconnect_starter/components/studentPerfomanceReport.comp.dart';
import 'package:skyconnect_starter/components/uploadDocuments.dart';
import 'package:skyconnect_starter/controllers/responsive.dart';
import 'package:skyconnect_starter/components/academicDetails.dart';
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
  bool _menu = false;
  var _specialGrade;
  var _academicYear;
  var _stream;
  var _classlevel;
  var _designation;
  double _drawersize = 250;
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
                top: Insets().appPadding,
                left: Insets().appPadding,
                right: Insets().appGap),
            child: const Heading2(
              value: "COMBINED REPORTS",
              fontWeight: FontWeight.w700,
              color: Colors.black,
            ),
          ),
          Container(
            alignment: Alignment.centerLeft,
            padding: EdgeInsets.only(
                top: Insets().appPadding,
                bottom: Insets().appPadding,
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
                  top: Insets().appPadding,
                  bottom: Insets().appPadding,
                  left: Insets().appPadding,
                  right: Insets().appPadding),
              margin: EdgeInsets.only(
                  top: 0,
                  left: Insets().appPadding,
                  right: Insets().appPadding,
                  bottom: Insets().appPadding),
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
                        Container(
                            width: MediaQuery.of(context).size.width,
                            child: Column(children: [
                              Container(
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
                                    border: Border.all(
                                        color: Colors.grey, width: 2),
                                    color: Palette().primaryColorLight,
                                    borderRadius: BorderRadius.circular(
                                        Insets().appGap + 4)),
                                child: Flex(
                                    direction: Responsive.isDesktop(context)
                                        ? Axis.horizontal
                                        : Axis.vertical,
                                    crossAxisAlignment:
                                        Responsive.isDesktop(context)
                                            ? CrossAxisAlignment.center
                                            : CrossAxisAlignment.start,
                                    children: [
                                      if (Responsive.isDesktop(context)) ...[
                                        Expanded(
                                            flex: 3,
                                            child: TextFormField(
                                                textAlignVertical:
                                                    TextAlignVertical.center,
                                                decoration:
                                                    const InputDecoration(

                                                        // enabledBorder: OutlineInputBorder(
                                                        //     borderSide: BorderSide(
                                                        //         color: Palette().borderColor, width: 3.0)),
                                                        border:
                                                            InputBorder.none,
                                                        hintText:
                                                            " Search for Class",
                                                        hintStyle: TextStyle(
                                                            fontSize: 20)))),
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
                                                      color:
                                                          Palette().borderColor,
                                                      width: 1),
                                                  color: Palette().primaryColor,
                                                  borderRadius:
                                                      BorderRadius.circular(
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
                                                dropdownColor:
                                                    Palette().primaryColor,
                                                borderRadius:
                                                    BorderRadius.circular(
                                                        Insets().appRadiusMin +
                                                            4),
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
                                                right: Insets().appGap,
                                              ),
                                              padding: EdgeInsets.only(
                                                left: Insets().appGap,
                                              ),
                                              decoration: BoxDecoration(
                                                  border: Border.all(
                                                      color:
                                                          Palette().borderColor,
                                                      width: 1),
                                                  color: Palette().primaryColor,
                                                  borderRadius:
                                                      BorderRadius.circular(
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
                                                        color: Colors.white,
                                                      ),
                                                      value: "Primary"),
                                                  DropdownMenuItem(
                                                      child: Heading6(
                                                        value: "Secondary",
                                                        color: Colors.white,
                                                      ),
                                                      value: "Secondary")
                                                ],
                                                value: _classlevel,
                                                iconEnabledColor: Colors.white,
                                                iconDisabledColor: Colors.white,
                                                isExpanded: true,
                                                dropdownColor:
                                                    Palette().primaryColor,
                                                underline: SizedBox(),
                                                borderRadius:
                                                    BorderRadius.circular(
                                                        Insets().appRadiusMin +
                                                            4),
                                                hint: Heading6(
                                                  value: "Select Class",
                                                  color: Colors.white,
                                                ),
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
                                            child: ElevatedButton(
                                                onPressed: () {},
                                                style: ElevatedButton.styleFrom(
                                                    backgroundColor:
                                                        Palette().primaryColor,
                                                    shape: RoundedRectangleBorder(
                                                        borderRadius: BorderRadius
                                                            .circular(Insets()
                                                                    .appRadiusMin +
                                                                4)),
                                                    padding: EdgeInsets.all(
                                                        Insets().appPadding /
                                                            1.5)),
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
                                          width: 10,
                                        ),
                                        Expanded(
                                            flex: 1,
                                            child: ElevatedButton(
                                                onPressed: () {},
                                                style: ElevatedButton.styleFrom(
                                                    backgroundColor:
                                                        Palette().primaryColor,
                                                    shape: RoundedRectangleBorder(
                                                        borderRadius: BorderRadius
                                                            .circular(Insets()
                                                                    .appRadiusMin +
                                                                4)),
                                                    padding: EdgeInsets.all(
                                                        Insets().appPadding /
                                                            1.5)),
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
                                      if (!Responsive.isDesktop(context)) ...[
                                        Container(
                                            child: TextFormField(
                                                textAlignVertical:
                                                    TextAlignVertical.center,
                                                decoration:
                                                    const InputDecoration(
                                                        border:
                                                            InputBorder.none,
                                                        hintText:
                                                            " Search for Class",
                                                        hintStyle: TextStyle(
                                                            fontSize: 20)))),
                                        SizedBox(
                                          width: Responsive.isDesktop(context)
                                              ? 10
                                              : 0,
                                          height: Responsive.isDesktop(context)
                                              ? 0
                                              : 5,
                                        ),
                                        SingleChildScrollView(
                                          scrollDirection: Axis.horizontal,
                                          child: SizedBox(
                                              width: MediaQuery.of(context)
                                                      .size
                                                      .width +
                                                  300,
                                              child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
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
                                                            color: Palette()
                                                                .borderColor,
                                                            width: 1),
                                                        color: Palette()
                                                            .primaryColor,
                                                        borderRadius: BorderRadius
                                                            .circular(Insets()
                                                                    .appGap +
                                                                4)),
                                                    child: DropdownButton(
                                                      items: const [
                                                        DropdownMenuItem(
                                                            child: Heading6(
                                                              value: "Nursery",
                                                              color:
                                                                  Colors.white,
                                                            ),
                                                            value: "Nursery"),
                                                        DropdownMenuItem(
                                                            child: Heading6(
                                                                value:
                                                                    "Primary",
                                                                color: Colors
                                                                    .white),
                                                            value: "Primary"),
                                                        DropdownMenuItem(
                                                            child: Heading6(
                                                                value:
                                                                    "Secondary",
                                                                color: Colors
                                                                    .white),
                                                            value: "Secondary")
                                                      ],
                                                      hint: Heading6(
                                                        value: "Class Level",
                                                        color: Colors.white,
                                                      ),
                                                      value: _classlevel,
                                                      iconEnabledColor:
                                                          Colors.white,
                                                      iconDisabledColor:
                                                          Colors.white,
                                                      isExpanded: true,
                                                      underline: SizedBox(),
                                                      dropdownColor: Palette()
                                                          .primaryColor,
                                                      borderRadius: BorderRadius
                                                          .circular(Insets()
                                                                  .appRadiusMin +
                                                              4),
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
                                                    width: Responsive.isDesktop(
                                                            context)
                                                        ? 10
                                                        : 0,
                                                    // height:
                                                    //     Responsive.isDesktop(context) ? 0 : 5,
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
                                                            color: Palette()
                                                                .borderColor,
                                                            width: 1),
                                                        color: Palette()
                                                            .primaryColor,
                                                        borderRadius: BorderRadius
                                                            .circular(Insets()
                                                                    .appGap +
                                                                4)),
                                                    child: DropdownButton(
                                                      items: const [
                                                        DropdownMenuItem(
                                                            child: Heading6(
                                                              value: "Nursery",
                                                              color:
                                                                  Colors.white,
                                                            ),
                                                            value: "Nursery"),
                                                        DropdownMenuItem(
                                                            child: Heading6(
                                                              value: "Primary",
                                                              color:
                                                                  Colors.white,
                                                            ),
                                                            value: "Primary"),
                                                        DropdownMenuItem(
                                                            child: Heading6(
                                                              value:
                                                                  "Secondary",
                                                              color:
                                                                  Colors.white,
                                                            ),
                                                            value: "Secondary")
                                                      ],
                                                      value: _classlevel,
                                                      iconEnabledColor:
                                                          Colors.white,
                                                      iconDisabledColor:
                                                          Colors.white,
                                                      isExpanded: true,
                                                      dropdownColor: Palette()
                                                          .primaryColor,
                                                      underline: SizedBox(),
                                                      borderRadius: BorderRadius
                                                          .circular(Insets()
                                                                  .appRadiusMin +
                                                              4),
                                                      hint: Heading6(
                                                        value: "Select Class",
                                                        color: Colors.white,
                                                      ),
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
                                                    width: Responsive.isDesktop(
                                                            context)
                                                        ? 10
                                                        : 0,
                                                    // height:
                                                    //     Responsive.isDesktop(context) ? 0 : 5,
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
                                                            color: Palette()
                                                                .borderColor,
                                                            width: 1),
                                                        color: Palette()
                                                            .primaryColor,
                                                        borderRadius: BorderRadius
                                                            .circular(Insets()
                                                                    .appGap +
                                                                4)),
                                                    child: DropdownButton(
                                                      items: const [
                                                        DropdownMenuItem(
                                                            child: Heading6(
                                                              value: "MIKUMI",
                                                              color:
                                                                  Colors.white,
                                                            ),
                                                            value: "MIKUMI"),
                                                        DropdownMenuItem(
                                                            child: Heading6(
                                                              value: "RUAHA",
                                                              color:
                                                                  Colors.white,
                                                            ),
                                                            value: "RUAHA"),
                                                      ],
                                                      value: _stream,
                                                      iconEnabledColor:
                                                          Colors.white,
                                                      iconDisabledColor:
                                                          Colors.white,
                                                      dropdownColor: Palette()
                                                          .primaryColor,
                                                      underline: SizedBox(),
                                                      borderRadius: BorderRadius
                                                          .circular(Insets()
                                                                  .appRadiusMin +
                                                              4),
                                                      isExpanded: true,
                                                      hint: Heading6(
                                                        value: "Select Stream",
                                                        color: Colors.white,
                                                      ),
                                                      onChanged: ((value) {
                                                        if (value is String) {
                                                          setState(() {
                                                            _stream = value;
                                                          });
                                                        }
                                                      }),
                                                    ),
                                                  ),
                                                ],
                                              )),
                                        ),
                                        SizedBox(
                                          width: Responsive.isDesktop(context)
                                              ? 10
                                              : 0,
                                          height: Responsive.isDesktop(context)
                                              ? 0
                                              : 5,
                                        ),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Container(
                                                width: MediaQuery.of(context)
                                                        .size
                                                        .width /
                                                    2.5,
                                                child: ElevatedButton(
                                                    onPressed: () {},
                                                    style: ElevatedButton.styleFrom(
                                                        backgroundColor:
                                                            Palette()
                                                                .primaryColor,
                                                        shape: RoundedRectangleBorder(
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        Insets().appRadiusMin +
                                                                            4)),
                                                        padding: EdgeInsets.all(
                                                            Insets().appPadding /
                                                                1.5)),
                                                    child: Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .center,
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
                                              width:
                                                  Responsive.isDesktop(context)
                                                      ? 10
                                                      : 0,
                                            ),
                                            Container(
                                                width: MediaQuery.of(context)
                                                        .size
                                                        .width /
                                                    2.5,
                                                child: ElevatedButton(
                                                    onPressed: () {},
                                                    style: ElevatedButton.styleFrom(
                                                        backgroundColor:
                                                            Palette()
                                                                .primaryColor,
                                                        shape: RoundedRectangleBorder(
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        Insets().appRadiusMin +
                                                                            4)),
                                                        padding: EdgeInsets.all(
                                                            Insets().appPadding /
                                                                1.5)),
                                                    child: Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .center,
                                                      children: [
                                                        Icon(
                                                          Icons
                                                              .restart_alt_rounded,
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
                            ])),
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
                            top: Insets().appPadding,
                          ),
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
                                width:
                                    Responsive.isDesktop(context) ? 140 : 130,
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
                                        color: Palette().primaryColor,
                                        width: 1.5),
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(
                                        Insets().appGap + 6)),
                                child: DropdownButton(
                                  items: [
                                    DropdownMenuItem(
                                        child: ListTile(
                                          dense: true,
                                          minVerticalPadding: 0,
                                          minLeadingWidth: 10,
                                          contentPadding:
                                              EdgeInsets.only(left: 10),
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
                                          contentPadding:
                                              EdgeInsets.only(left: 10),
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
                                            contentPadding:
                                                EdgeInsets.only(left: 10),
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
                                        size: Responsive.isDesktop(context)
                                            ? 25
                                            : 20,
                                      ),
                                      SizedBox(
                                        width: Responsive.isDesktop(context)
                                            ? 7
                                            : 5,
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
                                  borderRadius: BorderRadius.circular(
                                      Insets().appRadiusMin + 4),
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
                        Container(
                          width: MediaQuery.of(context).size.width,
                          alignment: Alignment.topLeft,
                          padding: EdgeInsets.only(
                            bottom: Insets().appPadding,
                          ),
                          decoration: BoxDecoration(
                              borderRadius:
                                  BorderRadius.circular(Insets().appRadius)),
                          child: Expanded(
                            child: Center(
                              child: SingleChildScrollView(
                                scrollDirection: Axis.vertical,
                                child: SingleChildScrollView(
                                  scrollDirection: Axis.horizontal,
                                  child: DataTable(
                                      headingTextStyle: TextStyle(
                                          color: Palette().primaryColor),
                                      horizontalMargin: 0,
                                      columnSpacing:
                                          Responsive.isDesktop(context)
                                              ? 20
                                              : 10,
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
                                            label: SizedBox(
                                          width: Responsive.isDesktop(context)
                                              ? 120
                                              : 120,
                                          child: HeadingText(
                                            size: 14,
                                            value: "Class",
                                            fontWeight: FontWeight.w700,
                                          ),
                                        )),
                                        DataColumn(
                                            label: SizedBox(
                                          width: Responsive.isDesktop(context)
                                              ? 120
                                              : 120,
                                          child: HeadingText(
                                            size: 14,
                                            value: "Subject",
                                            fontWeight: FontWeight.w700,
                                          ),
                                        )),
                                        DataColumn(
                                            label: SizedBox(
                                          width: Responsive.isDesktop(context)
                                              ? 150
                                              : 150,
                                          child: HeadingText(
                                            size: 14,
                                            value: "Exam\nTitle",
                                            fontWeight: FontWeight.w700,
                                          ),
                                        )),
                                        DataColumn(
                                            label: SizedBox(
                                          width: Responsive.isDesktop(context)
                                              ? 120
                                              : 120,
                                          child: HeadingText(
                                            size: 14,
                                            value: "No. of\nStudents",
                                            fontWeight: FontWeight.w700,
                                          ),
                                        )),
                                        DataColumn(
                                            label: SizedBox(
                                          width: Responsive.isDesktop(context)
                                              ? null
                                              : null,
                                          child: HeadingText(
                                            size: 14,
                                            value: "No. of\nPasses",
                                            fontWeight: FontWeight.w700,
                                          ),
                                        )),
                                        DataColumn(
                                            label: SizedBox(
                                          width: Responsive.isDesktop(context)
                                              ? null
                                              : null,
                                          child: HeadingText(
                                            size: 14,
                                            value: "Pass\nPercentage",
                                            fontWeight: FontWeight.w700,
                                          ),
                                        )),
                                        DataColumn(
                                            label: SizedBox(
                                          width: Responsive.isDesktop(context)
                                              ? null
                                              : null,
                                          child: HeadingText(
                                            size: 14,
                                            value: "No. of\nFailed Students",
                                            fontWeight: FontWeight.w700,
                                          ),
                                        )),
                                        DataColumn(
                                            label: SizedBox(
                                          width: Responsive.isDesktop(context)
                                              ? null
                                              : null,
                                          child: HeadingText(
                                            size: 14,
                                            value: "Fail\nPercentage",
                                            fontWeight: FontWeight.w700,
                                          ),
                                        )),
                                        DataColumn(
                                            label: SizedBox(
                                          width: Responsive.isDesktop(context)
                                              ? null
                                              : null,
                                          child: HeadingText(
                                            size: 14,
                                            value: "Topper's\nName",
                                            fontWeight: FontWeight.w700,
                                          ),
                                        )),
                                        DataColumn(
                                            label: SizedBox(
                                          width: Responsive.isDesktop(context)
                                              ? null
                                              : null,
                                          child: HeadingText(
                                            size: 14,
                                            value: "Topper's\nAverage",
                                            fontWeight: FontWeight.w700,
                                          ),
                                        )),
                                        DataColumn(
                                            label: SizedBox(
                                          width: Responsive.isDesktop(context)
                                              ? 150
                                              : 100,
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
                        Container(
                            width: MediaQuery.of(context).size.width,
                            child: Column(children: [
                              Container(
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
                                    border: Border.all(
                                        color: Colors.grey, width: 2),
                                    color: Palette().primaryColorLight,
                                    borderRadius: BorderRadius.circular(
                                        Insets().appGap + 4)),
                                child: Flex(
                                    direction: Responsive.isDesktop(context)
                                        ? Axis.horizontal
                                        : Axis.vertical,
                                    crossAxisAlignment:
                                        Responsive.isDesktop(context)
                                            ? CrossAxisAlignment.center
                                            : CrossAxisAlignment.start,
                                    children: [
                                      if (Responsive.isDesktop(context)) ...[
                                        Expanded(
                                            flex: 3,
                                            child: TextFormField(
                                                textAlignVertical:
                                                    TextAlignVertical.center,
                                                decoration:
                                                    const InputDecoration(

                                                        // enabledBorder: OutlineInputBorder(
                                                        //     borderSide: BorderSide(
                                                        //         color: Palette().borderColor, width: 3.0)),
                                                        border:
                                                            InputBorder.none,
                                                        hintText:
                                                            " Search for Subject",
                                                        hintStyle: TextStyle(
                                                            fontSize: 20)))),
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
                                                      color:
                                                          Palette().borderColor,
                                                      width: 1),
                                                  color: Palette().primaryColor,
                                                  borderRadius:
                                                      BorderRadius.circular(
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
                                                dropdownColor:
                                                    Palette().primaryColor,
                                                borderRadius:
                                                    BorderRadius.circular(
                                                        Insets().appRadiusMin +
                                                            4),
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
                                                right: Insets().appGap,
                                              ),
                                              padding: EdgeInsets.only(
                                                left: Insets().appGap,
                                              ),
                                              decoration: BoxDecoration(
                                                  border: Border.all(
                                                      color:
                                                          Palette().borderColor,
                                                      width: 1),
                                                  color: Palette().primaryColor,
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          Insets().appGap + 4)),
                                              child: DropdownButton(
                                                items: const [
                                                  DropdownMenuItem(
                                                      child: Heading6(
                                                        value: "Mathematics",
                                                        color: Colors.white,
                                                      ),
                                                      value: "Mathematiics"),
                                                  DropdownMenuItem(
                                                      child: Heading6(
                                                        value: "English",
                                                        color: Colors.white,
                                                      ),
                                                      value: "English"),
                                                  DropdownMenuItem(
                                                      child: Heading6(
                                                        value: "Kiswahili",
                                                        color: Colors.white,
                                                      ),
                                                      value: "Kiswahili")
                                                ],
                                                value: _classlevel,
                                                iconEnabledColor: Colors.white,
                                                iconDisabledColor: Colors.white,
                                                isExpanded: true,
                                                dropdownColor:
                                                    Palette().primaryColor,
                                                underline: SizedBox(),
                                                borderRadius:
                                                    BorderRadius.circular(
                                                        Insets().appRadiusMin +
                                                            4),
                                                hint: Heading6(
                                                  value: "Select Subject",
                                                  color: Colors.white,
                                                ),
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
                                            child: ElevatedButton(
                                                onPressed: () {},
                                                style: ElevatedButton.styleFrom(
                                                    backgroundColor:
                                                        Palette().primaryColor,
                                                    shape: RoundedRectangleBorder(
                                                        borderRadius: BorderRadius
                                                            .circular(Insets()
                                                                    .appRadiusMin +
                                                                4)),
                                                    padding: EdgeInsets.all(
                                                        Insets().appPadding /
                                                            1.5)),
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
                                          width: 10,
                                        ),
                                        Expanded(
                                            flex: 1,
                                            child: ElevatedButton(
                                                onPressed: () {},
                                                style: ElevatedButton.styleFrom(
                                                    backgroundColor:
                                                        Palette().primaryColor,
                                                    shape: RoundedRectangleBorder(
                                                        borderRadius: BorderRadius
                                                            .circular(Insets()
                                                                    .appRadiusMin +
                                                                4)),
                                                    padding: EdgeInsets.all(
                                                        Insets().appPadding /
                                                            1.5)),
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
                                      if (!Responsive.isDesktop(context)) ...[
                                        Container(
                                            child: TextFormField(
                                                textAlignVertical:
                                                    TextAlignVertical.center,
                                                decoration: const InputDecoration(
                                                    border: InputBorder.none,
                                                    hintText:
                                                        " Search for Subject",
                                                    hintStyle: TextStyle(
                                                        fontSize: 20)))),
                                        SizedBox(
                                          width: Responsive.isDesktop(context)
                                              ? 10
                                              : 0,
                                          height: Responsive.isDesktop(context)
                                              ? 0
                                              : 5,
                                        ),
                                        SingleChildScrollView(
                                          scrollDirection: Axis.horizontal,
                                          child: SizedBox(
                                              width: MediaQuery.of(context)
                                                      .size
                                                      .width +
                                                  300,
                                              child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
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
                                                            color: Palette()
                                                                .borderColor,
                                                            width: 1),
                                                        color: Palette()
                                                            .primaryColor,
                                                        borderRadius: BorderRadius
                                                            .circular(Insets()
                                                                    .appGap +
                                                                4)),
                                                    child: DropdownButton(
                                                      items: const [
                                                        DropdownMenuItem(
                                                            child: Heading6(
                                                              value: "Nursery",
                                                              color:
                                                                  Colors.white,
                                                            ),
                                                            value: "Nursery"),
                                                        DropdownMenuItem(
                                                            child: Heading6(
                                                                value:
                                                                    "Primary",
                                                                color: Colors
                                                                    .white),
                                                            value: "Primary"),
                                                        DropdownMenuItem(
                                                            child: Heading6(
                                                                value:
                                                                    "Secondary",
                                                                color: Colors
                                                                    .white),
                                                            value: "Secondary")
                                                      ],
                                                      hint: Heading6(
                                                        value: "Class Level",
                                                        color: Colors.white,
                                                      ),
                                                      value: _classlevel,
                                                      iconEnabledColor:
                                                          Colors.white,
                                                      iconDisabledColor:
                                                          Colors.white,
                                                      isExpanded: true,
                                                      underline: SizedBox(),
                                                      dropdownColor: Palette()
                                                          .primaryColor,
                                                      borderRadius: BorderRadius
                                                          .circular(Insets()
                                                                  .appRadiusMin +
                                                              4),
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
                                                    width: Responsive.isDesktop(
                                                            context)
                                                        ? 10
                                                        : 0,
                                                    // height:
                                                    //     Responsive.isDesktop(context) ? 0 : 5,
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
                                                            color: Palette()
                                                                .borderColor,
                                                            width: 1),
                                                        color: Palette()
                                                            .primaryColor,
                                                        borderRadius: BorderRadius
                                                            .circular(Insets()
                                                                    .appGap +
                                                                4)),
                                                    child: DropdownButton(
                                                      items: const [
                                                        DropdownMenuItem(
                                                            child: Heading6(
                                                              value:
                                                                  "Mathematics",
                                                              color:
                                                                  Colors.white,
                                                            ),
                                                            value:
                                                                "Mathematics"),
                                                        DropdownMenuItem(
                                                            child: Heading6(
                                                              value: "English",
                                                              color:
                                                                  Colors.white,
                                                            ),
                                                            value: "English"),
                                                        DropdownMenuItem(
                                                            child: Heading6(
                                                              value:
                                                                  "Kiswahili",
                                                              color:
                                                                  Colors.white,
                                                            ),
                                                            value: "Kiswahili")
                                                      ],
                                                      value: _classlevel,
                                                      iconEnabledColor:
                                                          Colors.white,
                                                      iconDisabledColor:
                                                          Colors.white,
                                                      isExpanded: true,
                                                      dropdownColor: Palette()
                                                          .primaryColor,
                                                      underline: SizedBox(),
                                                      borderRadius: BorderRadius
                                                          .circular(Insets()
                                                                  .appRadiusMin +
                                                              4),
                                                      hint: Heading6(
                                                        value: "Select Subject",
                                                        color: Colors.white,
                                                      ),
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
                                                    width: Responsive.isDesktop(
                                                            context)
                                                        ? 10
                                                        : 0,
                                                    // height:
                                                    //     Responsive.isDesktop(context) ? 0 : 5,
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
                                                            color: Palette()
                                                                .borderColor,
                                                            width: 1),
                                                        color: Palette()
                                                            .primaryColor,
                                                        borderRadius: BorderRadius
                                                            .circular(Insets()
                                                                    .appGap +
                                                                4)),
                                                    child: DropdownButton(
                                                      items: const [
                                                        DropdownMenuItem(
                                                            child: Heading6(
                                                              value: "MIKUMI",
                                                              color:
                                                                  Colors.white,
                                                            ),
                                                            value: "MIKUMI"),
                                                        DropdownMenuItem(
                                                            child: Heading6(
                                                              value: "RUAHA",
                                                              color:
                                                                  Colors.white,
                                                            ),
                                                            value: "RUAHA"),
                                                      ],
                                                      value: _stream,
                                                      iconEnabledColor:
                                                          Colors.white,
                                                      iconDisabledColor:
                                                          Colors.white,
                                                      dropdownColor: Palette()
                                                          .primaryColor,
                                                      underline: SizedBox(),
                                                      borderRadius: BorderRadius
                                                          .circular(Insets()
                                                                  .appRadiusMin +
                                                              4),
                                                      isExpanded: true,
                                                      hint: Heading6(
                                                        value: "Select Stream",
                                                        color: Colors.white,
                                                      ),
                                                      onChanged: ((value) {
                                                        if (value is String) {
                                                          setState(() {
                                                            _stream = value;
                                                          });
                                                        }
                                                      }),
                                                    ),
                                                  ),
                                                ],
                                              )),
                                        ),
                                        SizedBox(
                                          width: Responsive.isDesktop(context)
                                              ? 10
                                              : 0,
                                          height: Responsive.isDesktop(context)
                                              ? 0
                                              : 5,
                                        ),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Container(
                                                width: MediaQuery.of(context)
                                                        .size
                                                        .width /
                                                    2.5,
                                                child: ElevatedButton(
                                                    onPressed: () {},
                                                    style: ElevatedButton.styleFrom(
                                                        backgroundColor:
                                                            Palette()
                                                                .primaryColor,
                                                        shape: RoundedRectangleBorder(
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        Insets().appRadiusMin +
                                                                            4)),
                                                        padding: EdgeInsets.all(
                                                            Insets().appPadding /
                                                                1.5)),
                                                    child: Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .center,
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
                                              width:
                                                  Responsive.isDesktop(context)
                                                      ? 10
                                                      : 0,
                                            ),
                                            Container(
                                                width: MediaQuery.of(context)
                                                        .size
                                                        .width /
                                                    2.5,
                                                child: ElevatedButton(
                                                    onPressed: () {},
                                                    style: ElevatedButton.styleFrom(
                                                        backgroundColor:
                                                            Palette()
                                                                .primaryColor,
                                                        shape: RoundedRectangleBorder(
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        Insets().appRadiusMin +
                                                                            4)),
                                                        padding: EdgeInsets.all(
                                                            Insets().appPadding /
                                                                1.5)),
                                                    child: Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .center,
                                                      children: [
                                                        Icon(
                                                          Icons
                                                              .restart_alt_rounded,
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
                            ])),
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
                            top: Insets().appPadding,
                          ),
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
                                width:
                                    Responsive.isDesktop(context) ? 140 : 130,
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
                                        color: Palette().primaryColor,
                                        width: 1.5),
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(
                                        Insets().appGap + 6)),
                                child: DropdownButton(
                                  items: [
                                    DropdownMenuItem(
                                        child: ListTile(
                                          dense: true,
                                          minVerticalPadding: 0,
                                          minLeadingWidth: 10,
                                          contentPadding:
                                              EdgeInsets.only(left: 10),
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
                                          contentPadding:
                                              EdgeInsets.only(left: 10),
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
                                            contentPadding:
                                                EdgeInsets.only(left: 10),
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
                                        size: Responsive.isDesktop(context)
                                            ? 25
                                            : 20,
                                      ),
                                      SizedBox(
                                        width: Responsive.isDesktop(context)
                                            ? 7
                                            : 5,
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
                                  borderRadius: BorderRadius.circular(
                                      Insets().appRadiusMin + 4),
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
                        Container(
                          width: MediaQuery.of(context).size.width,
                          alignment: Alignment.topLeft,
                          padding: EdgeInsets.only(
                            bottom: Insets().appPadding,
                          ),
                          decoration: BoxDecoration(
                              borderRadius:
                                  BorderRadius.circular(Insets().appRadius)),
                          child: Expanded(
                            child: Center(
                              child: SingleChildScrollView(
                                scrollDirection: Axis.vertical,
                                child: SingleChildScrollView(
                                  scrollDirection: Axis.horizontal,
                                  child: DataTable(
                                      headingTextStyle: TextStyle(
                                          color: Palette().primaryColor),
                                      horizontalMargin: 0,
                                      columnSpacing:
                                          Responsive.isDesktop(context)
                                              ? 20
                                              : 10,
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
                                            label: SizedBox(
                                          width: Responsive.isDesktop(context)
                                              ? 120
                                              : 120,
                                          child: HeadingText(
                                            size: 14,
                                            value: "Subject",
                                            fontWeight: FontWeight.w700,
                                          ),
                                        )),
                                        DataColumn(
                                            label: SizedBox(
                                          width: Responsive.isDesktop(context)
                                              ? 120
                                              : 120,
                                          child: HeadingText(
                                            size: 14,
                                            value: "Class",
                                            fontWeight: FontWeight.w700,
                                          ),
                                        )),
                                        DataColumn(
                                            label: SizedBox(
                                          width: Responsive.isDesktop(context)
                                              ? 150
                                              : 150,
                                          child: HeadingText(
                                            size: 14,
                                            value: "Exam\nTitle",
                                            fontWeight: FontWeight.w700,
                                          ),
                                        )),
                                        DataColumn(
                                            label: SizedBox(
                                          width: Responsive.isDesktop(context)
                                              ? 120
                                              : 120,
                                          child: HeadingText(
                                            size: 14,
                                            value: "No. of\nStudents",
                                            fontWeight: FontWeight.w700,
                                          ),
                                        )),
                                        DataColumn(
                                            label: SizedBox(
                                          width: Responsive.isDesktop(context)
                                              ? null
                                              : null,
                                          child: HeadingText(
                                            size: 14,
                                            value: "No. of\nPasses",
                                            fontWeight: FontWeight.w700,
                                          ),
                                        )),
                                        DataColumn(
                                            label: SizedBox(
                                          width: Responsive.isDesktop(context)
                                              ? null
                                              : null,
                                          child: HeadingText(
                                            size: 14,
                                            value: "Pass\nPercentage",
                                            fontWeight: FontWeight.w700,
                                          ),
                                        )),
                                        DataColumn(
                                            label: SizedBox(
                                          width: Responsive.isDesktop(context)
                                              ? null
                                              : null,
                                          child: HeadingText(
                                            size: 14,
                                            value: "No. of\nFailed Students",
                                            fontWeight: FontWeight.w700,
                                          ),
                                        )),
                                        DataColumn(
                                            label: SizedBox(
                                          width: Responsive.isDesktop(context)
                                              ? null
                                              : null,
                                          child: HeadingText(
                                            size: 14,
                                            value: "Fail\nPercentage",
                                            fontWeight: FontWeight.w700,
                                          ),
                                        )),
                                        DataColumn(
                                            label: SizedBox(
                                          width: Responsive.isDesktop(context)
                                              ? null
                                              : null,
                                          child: HeadingText(
                                            size: 14,
                                            value: "Topper's\nName",
                                            fontWeight: FontWeight.w700,
                                          ),
                                        )),
                                        DataColumn(
                                            label: SizedBox(
                                          width: Responsive.isDesktop(context)
                                              ? null
                                              : null,
                                          child: HeadingText(
                                            size: 14,
                                            value: "Topper's\nAverage",
                                            fontWeight: FontWeight.w700,
                                          ),
                                        )),
                                        DataColumn(
                                            label: SizedBox(
                                          width: Responsive.isDesktop(context)
                                              ? 150
                                              : 100,
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
                        Container(
                            width: MediaQuery.of(context).size.width,
                            child: Column(
                              children: [
                                Container(
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
                                      border: Border.all(
                                          color: Colors.grey, width: 2),
                                      color: Palette().primaryColorLight,
                                      borderRadius: BorderRadius.circular(
                                          Insets().appGap + 4)),
                                  child: Flex(
                                      direction: Responsive.isDesktop(context)
                                          ? Axis.horizontal
                                          : Axis.vertical,
                                      crossAxisAlignment:
                                          Responsive.isDesktop(context)
                                              ? CrossAxisAlignment.center
                                              : CrossAxisAlignment.start,
                                      children: [
                                        if (Responsive.isDesktop(context)) ...[
                                          Expanded(
                                              flex: 3,
                                              child: TextFormField(
                                                  textAlignVertical:
                                                      TextAlignVertical.center,
                                                  decoration:
                                                      const InputDecoration(

                                                          // enabledBorder: OutlineInputBorder(
                                                          //     borderSide: BorderSide(
                                                          //         color: Palette().borderColor, width: 3.0)),
                                                          border:
                                                              InputBorder.none,
                                                          hintText:
                                                              " Search for Student",
                                                          hintStyle: TextStyle(
                                                              fontSize: 20)))),
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
                                                        color: Palette()
                                                            .borderColor,
                                                        width: 1),
                                                    color:
                                                        Palette().primaryColor,
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            Insets().appGap +
                                                                4)),
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
                                                            color:
                                                                Colors.white),
                                                        value: "Primary"),
                                                    DropdownMenuItem(
                                                        child: Heading6(
                                                            value: "Secondary",
                                                            color:
                                                                Colors.white),
                                                        value: "Secondary")
                                                  ],
                                                  hint: Heading6(
                                                    value: "Class Level",
                                                    color: Colors.white,
                                                  ),
                                                  value: _classlevel,
                                                  iconEnabledColor:
                                                      Colors.white,
                                                  iconDisabledColor:
                                                      Colors.white,
                                                  isExpanded: true,
                                                  underline: SizedBox(),
                                                  dropdownColor:
                                                      Palette().primaryColor,
                                                  borderRadius: BorderRadius
                                                      .circular(Insets()
                                                              .appRadiusMin +
                                                          4),
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
                                                  right: Insets().appGap,
                                                ),
                                                padding: EdgeInsets.only(
                                                  left: Insets().appGap,
                                                ),
                                                decoration: BoxDecoration(
                                                    border: Border.all(
                                                        color: Palette()
                                                            .borderColor,
                                                        width: 1),
                                                    color:
                                                        Palette().primaryColor,
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            Insets().appGap +
                                                                4)),
                                                child: DropdownButton(
                                                  items: const [
                                                    DropdownMenuItem(
                                                        child: Heading6(
                                                          value: "2019",
                                                          color: Colors.white,
                                                        ),
                                                        value: 2019),
                                                    DropdownMenuItem(
                                                        child: Heading6(
                                                          value: "2020",
                                                          color: Colors.white,
                                                        ),
                                                        value: 2020),
                                                    DropdownMenuItem(
                                                        child: Heading6(
                                                          value: "2021",
                                                          color: Colors.white,
                                                        ),
                                                        value: 2021),
                                                    DropdownMenuItem(
                                                        child: Heading6(
                                                          value: "2022",
                                                          color: Colors.white,
                                                        ),
                                                        value: 2022),
                                                    DropdownMenuItem(
                                                        child: Heading6(
                                                          value: "2023",
                                                          color: Colors.white,
                                                        ),
                                                        value: 2023)
                                                  ],
                                                  value: _academicYear,
                                                  iconEnabledColor:
                                                      Colors.white,
                                                  iconDisabledColor:
                                                      Colors.white,
                                                  isExpanded: true,
                                                  underline: SizedBox(),
                                                  dropdownColor:
                                                      Palette().primaryColor,
                                                  borderRadius: BorderRadius
                                                      .circular(Insets()
                                                              .appRadiusMin +
                                                          4),
                                                  hint: Heading6(
                                                    value: "Academic Year",
                                                    color: Colors.white,
                                                  ),
                                                  onChanged: ((value) {
                                                    if (value is int) {
                                                      setState(() {
                                                        _academicYear = value;
                                                      });
                                                    }
                                                  }),
                                                ),
                                              )),
                                          SizedBox(
                                            width: 7,
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
                                                        color: Palette()
                                                            .borderColor,
                                                        width: 1),
                                                    color:
                                                        Palette().primaryColor,
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            Insets().appGap +
                                                                4)),
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
                                                          color: Colors.white,
                                                        ),
                                                        value: "Primary"),
                                                    DropdownMenuItem(
                                                        child: Heading6(
                                                          value: "Secondary",
                                                          color: Colors.white,
                                                        ),
                                                        value: "Secondary")
                                                  ],
                                                  value: _classlevel,
                                                  iconEnabledColor:
                                                      Colors.white,
                                                  iconDisabledColor:
                                                      Colors.white,
                                                  isExpanded: true,
                                                  dropdownColor:
                                                      Palette().primaryColor,
                                                  underline: SizedBox(),
                                                  borderRadius: BorderRadius
                                                      .circular(Insets()
                                                              .appRadiusMin +
                                                          4),
                                                  hint: Heading6(
                                                    value: "Select Class",
                                                    color: Colors.white,
                                                  ),
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
                                              child: ElevatedButton(
                                                  onPressed: () {},
                                                  style: ElevatedButton.styleFrom(
                                                      backgroundColor: Palette()
                                                          .primaryColor,
                                                      shape: RoundedRectangleBorder(
                                                          borderRadius: BorderRadius
                                                              .circular(Insets()
                                                                      .appRadiusMin +
                                                                  4)),
                                                      padding: EdgeInsets.all(
                                                          Insets().appPadding /
                                                              1.5)),
                                                  child: Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .center,
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
                                                      backgroundColor: Palette()
                                                          .primaryColor,
                                                      shape: RoundedRectangleBorder(
                                                          borderRadius: BorderRadius
                                                              .circular(Insets()
                                                                      .appRadiusMin +
                                                                  4)),
                                                      padding: EdgeInsets.all(
                                                          Insets().appPadding /
                                                              1.5)),
                                                  child: Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .center,
                                                    children: [
                                                      Icon(
                                                        Icons
                                                            .restart_alt_rounded,
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
                                                  textAlignVertical:
                                                      TextAlignVertical.center,
                                                  decoration: const InputDecoration(
                                                      border: InputBorder.none,
                                                      hintText:
                                                          " Search for Topper Student",
                                                      hintStyle: TextStyle(
                                                          fontSize: 20)))),
                                          SizedBox(
                                            width: Responsive.isDesktop(context)
                                                ? 10
                                                : 0,
                                            height:
                                                Responsive.isDesktop(context)
                                                    ? 0
                                                    : 5,
                                          ),
                                          SingleChildScrollView(
                                            scrollDirection: Axis.horizontal,
                                            child: SizedBox(
                                                width: MediaQuery.of(context)
                                                        .size
                                                        .width +
                                                    300,
                                                child: Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.start,
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
                                                              color: Palette()
                                                                  .borderColor,
                                                              width: 1),
                                                          color: Palette()
                                                              .primaryColor,
                                                          borderRadius: BorderRadius
                                                              .circular(Insets()
                                                                      .appGap +
                                                                  4)),
                                                      child: DropdownButton(
                                                        items: const [
                                                          DropdownMenuItem(
                                                              child: Heading6(
                                                                value:
                                                                    "Nursery",
                                                                color: Colors
                                                                    .white,
                                                              ),
                                                              value: "Nursery"),
                                                          DropdownMenuItem(
                                                              child: Heading6(
                                                                  value:
                                                                      "Primary",
                                                                  color: Colors
                                                                      .white),
                                                              value: "Primary"),
                                                          DropdownMenuItem(
                                                              child: Heading6(
                                                                  value:
                                                                      "Secondary",
                                                                  color: Colors
                                                                      .white),
                                                              value:
                                                                  "Secondary")
                                                        ],
                                                        hint: Heading6(
                                                          value: "Class Level",
                                                          color: Colors.white,
                                                        ),
                                                        value: _classlevel,
                                                        iconEnabledColor:
                                                            Colors.white,
                                                        iconDisabledColor:
                                                            Colors.white,
                                                        isExpanded: true,
                                                        underline: SizedBox(),
                                                        dropdownColor: Palette()
                                                            .primaryColor,
                                                        borderRadius: BorderRadius
                                                            .circular(Insets()
                                                                    .appRadiusMin +
                                                                4),
                                                        onChanged: ((value) {
                                                          if (value is String) {
                                                            setState(() {
                                                              _classlevel =
                                                                  value;
                                                            });
                                                          }
                                                        }),
                                                      ),
                                                    ),
                                                    SizedBox(
                                                      width:
                                                          Responsive.isDesktop(
                                                                  context)
                                                              ? 10
                                                              : 0,
                                                      // height:
                                                      //     Responsive.isDesktop(context) ? 0 : 5,
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
                                                              color: Palette()
                                                                  .borderColor,
                                                              width: 1),
                                                          color: Palette()
                                                              .primaryColor,
                                                          borderRadius: BorderRadius
                                                              .circular(Insets()
                                                                      .appGap +
                                                                  4)),
                                                      child: DropdownButton(
                                                        items: const [
                                                          DropdownMenuItem(
                                                              child: Heading6(
                                                                value: "2019",
                                                                color: Colors
                                                                    .white,
                                                              ),
                                                              value: 2019),
                                                          DropdownMenuItem(
                                                              child: Heading6(
                                                                value: "2020",
                                                                color: Colors
                                                                    .white,
                                                              ),
                                                              value: 2020),
                                                          DropdownMenuItem(
                                                              child: Heading6(
                                                                value: "2021",
                                                                color: Colors
                                                                    .white,
                                                              ),
                                                              value: 2021),
                                                          DropdownMenuItem(
                                                              child: Heading6(
                                                                value: "2022",
                                                                color: Colors
                                                                    .white,
                                                              ),
                                                              value: 2022),
                                                          DropdownMenuItem(
                                                              child: Heading6(
                                                                value: "2023",
                                                                color: Colors
                                                                    .white,
                                                              ),
                                                              value: 2023)
                                                        ],
                                                        value: _academicYear,
                                                        iconEnabledColor:
                                                            Colors.white,
                                                        iconDisabledColor:
                                                            Colors.white,
                                                        isExpanded: true,
                                                        underline: SizedBox(),
                                                        dropdownColor: Palette()
                                                            .primaryColor,
                                                        borderRadius: BorderRadius
                                                            .circular(Insets()
                                                                    .appRadiusMin +
                                                                4),
                                                        hint: Heading6(
                                                          value:
                                                              "Academic Year",
                                                          color: Colors.white,
                                                        ),
                                                        onChanged: ((value) {
                                                          if (value is int) {
                                                            setState(() {
                                                              _academicYear =
                                                                  value;
                                                            });
                                                          }
                                                        }),
                                                      ),
                                                    ),
                                                    SizedBox(
                                                      width:
                                                          Responsive.isDesktop(
                                                                  context)
                                                              ? 7
                                                              : 0,
                                                      // height:
                                                      //     Responsive.isDesktop(context) ? 0 : 5,
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
                                                              color: Palette()
                                                                  .borderColor,
                                                              width: 1),
                                                          color: Palette()
                                                              .primaryColor,
                                                          borderRadius: BorderRadius
                                                              .circular(Insets()
                                                                      .appGap +
                                                                  4)),
                                                      child: DropdownButton(
                                                        items: const [
                                                          DropdownMenuItem(
                                                              child: Heading6(
                                                                value:
                                                                    "Nursery",
                                                                color: Colors
                                                                    .white,
                                                              ),
                                                              value: "Nursery"),
                                                          DropdownMenuItem(
                                                              child: Heading6(
                                                                value:
                                                                    "Primary",
                                                                color: Colors
                                                                    .white,
                                                              ),
                                                              value: "Primary"),
                                                          DropdownMenuItem(
                                                              child: Heading6(
                                                                value:
                                                                    "Secondary",
                                                                color: Colors
                                                                    .white,
                                                              ),
                                                              value:
                                                                  "Secondary")
                                                        ],
                                                        value: _classlevel,
                                                        iconEnabledColor:
                                                            Colors.white,
                                                        iconDisabledColor:
                                                            Colors.white,
                                                        isExpanded: true,
                                                        dropdownColor: Palette()
                                                            .primaryColor,
                                                        underline: SizedBox(),
                                                        borderRadius: BorderRadius
                                                            .circular(Insets()
                                                                    .appRadiusMin +
                                                                4),
                                                        hint: Heading6(
                                                          value: "Select Class",
                                                          color: Colors.white,
                                                        ),
                                                        onChanged: ((value) {
                                                          if (value is String) {
                                                            setState(() {
                                                              _classlevel =
                                                                  value;
                                                            });
                                                          }
                                                        }),
                                                      ),
                                                    ),
                                                    SizedBox(
                                                      width:
                                                          Responsive.isDesktop(
                                                                  context)
                                                              ? 10
                                                              : 0,
                                                      // height:
                                                      //     Responsive.isDesktop(context) ? 0 : 5,
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
                                                              color: Palette()
                                                                  .borderColor,
                                                              width: 1),
                                                          color: Palette()
                                                              .primaryColor,
                                                          borderRadius: BorderRadius
                                                              .circular(Insets()
                                                                      .appGap +
                                                                  4)),
                                                      child: DropdownButton(
                                                        items: const [
                                                          DropdownMenuItem(
                                                              child: Heading6(
                                                                value: "MIKUMI",
                                                                color: Colors
                                                                    .white,
                                                              ),
                                                              value: "MIKUMI"),
                                                          DropdownMenuItem(
                                                              child: Heading6(
                                                                value: "RUAHA",
                                                                color: Colors
                                                                    .white,
                                                              ),
                                                              value: "RUAHA"),
                                                        ],
                                                        value: _stream,
                                                        iconEnabledColor:
                                                            Colors.white,
                                                        iconDisabledColor:
                                                            Colors.white,
                                                        dropdownColor: Palette()
                                                            .primaryColor,
                                                        underline: SizedBox(),
                                                        borderRadius: BorderRadius
                                                            .circular(Insets()
                                                                    .appRadiusMin +
                                                                4),
                                                        isExpanded: true,
                                                        hint: Heading6(
                                                          value:
                                                              "Select Stream",
                                                          color: Colors.white,
                                                        ),
                                                        onChanged: ((value) {
                                                          if (value is String) {
                                                            setState(() {
                                                              _stream = value;
                                                            });
                                                          }
                                                        }),
                                                      ),
                                                    ),
                                                  ],
                                                )),
                                          ),
                                          SizedBox(
                                            width: Responsive.isDesktop(context)
                                                ? 10
                                                : 0,
                                            height:
                                                Responsive.isDesktop(context)
                                                    ? 0
                                                    : 5,
                                          ),
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Container(
                                                  width: MediaQuery.of(context)
                                                          .size
                                                          .width /
                                                      2.5,
                                                  child: ElevatedButton(
                                                      onPressed: () {},
                                                      style: ElevatedButton.styleFrom(
                                                          backgroundColor:
                                                              Palette()
                                                                  .primaryColor,
                                                          shape: RoundedRectangleBorder(
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          Insets().appRadiusMin +
                                                                              4)),
                                                          padding: EdgeInsets.all(
                                                              Insets().appPadding /
                                                                  1.5)),
                                                      child: Row(
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .center,
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
                                                width: Responsive.isDesktop(
                                                        context)
                                                    ? 10
                                                    : 0,
                                              ),
                                              Container(
                                                  width: MediaQuery.of(context)
                                                          .size
                                                          .width /
                                                      2.5,
                                                  child: ElevatedButton(
                                                      onPressed: () {},
                                                      style: ElevatedButton.styleFrom(
                                                          backgroundColor:
                                                              Palette()
                                                                  .primaryColor,
                                                          shape: RoundedRectangleBorder(
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          Insets().appRadiusMin +
                                                                              4)),
                                                          padding: EdgeInsets.all(
                                                              Insets().appPadding /
                                                                  1.5)),
                                                      child: Row(
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .center,
                                                        children: [
                                                          Icon(
                                                            Icons
                                                                .restart_alt_rounded,
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
                              ],
                            )),
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
                            top: Insets().appPadding,
                          ),
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
                                width:
                                    Responsive.isDesktop(context) ? 140 : 130,
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
                                        color: Palette().primaryColor,
                                        width: 1.5),
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(
                                        Insets().appGap + 6)),
                                child: DropdownButton(
                                  items: [
                                    DropdownMenuItem(
                                        child: ListTile(
                                          dense: true,
                                          minVerticalPadding: 0,
                                          minLeadingWidth: 10,
                                          contentPadding:
                                              EdgeInsets.only(left: 10),
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
                                          contentPadding:
                                              EdgeInsets.only(left: 10),
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
                                            contentPadding:
                                                EdgeInsets.only(left: 10),
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
                                        size: Responsive.isDesktop(context)
                                            ? 25
                                            : 20,
                                      ),
                                      SizedBox(
                                        width: Responsive.isDesktop(context)
                                            ? 7
                                            : 5,
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
                                  borderRadius: BorderRadius.circular(
                                      Insets().appRadiusMin + 4),
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
                        Container(
                          width: MediaQuery.of(context).size.width,
                          alignment: Alignment.topLeft,
                          padding: EdgeInsets.only(
                              bottom: Insets().appPadding,
                              left: Insets().appPadding,
                              right: Insets().appPadding),
                          decoration: BoxDecoration(
                              borderRadius:
                                  BorderRadius.circular(Insets().appRadius)),
                          child: Expanded(
                            child: Center(
                              child: SingleChildScrollView(
                                scrollDirection: Axis.vertical,
                                child: SingleChildScrollView(
                                  scrollDirection: Axis.horizontal,
                                  child: DataTable(
                                      headingTextStyle: TextStyle(
                                          color: Palette().primaryColor),
                                      horizontalMargin: 0,
                                      columnSpacing:
                                          Responsive.isDesktop(context)
                                              ? 20
                                              : 10,
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
                                            label: SizedBox(
                                          width: Responsive.isDesktop(context)
                                              ? 120
                                              : 120,
                                          child: HeadingText(
                                            size: 14,
                                            value: "Rank",
                                            fontWeight: FontWeight.w700,
                                          ),
                                        )),
                                        DataColumn(
                                            label: SizedBox(
                                          width: Responsive.isDesktop(context)
                                              ? 180
                                              : 160,
                                          child: HeadingText(
                                            size: 14,
                                            value: "Student",
                                            fontWeight: FontWeight.w700,
                                          ),
                                        )),
                                        DataColumn(
                                            label: SizedBox(
                                          width: Responsive.isDesktop(context)
                                              ? 140
                                              : 140,
                                          child: HeadingText(
                                            size: 14,
                                            value: "Reg No.",
                                            fontWeight: FontWeight.w700,
                                          ),
                                        )),
                                        DataColumn(
                                            label: SizedBox(
                                          width: Responsive.isDesktop(context)
                                              ? 140
                                              : 140,
                                          child: HeadingText(
                                            size: 14,
                                            value: "Class",
                                            fontWeight: FontWeight.w700,
                                          ),
                                        )),
                                        DataColumn(
                                            label: SizedBox(
                                          width: Responsive.isDesktop(context)
                                              ? 130
                                              : 130,
                                          child: HeadingText(
                                            size: 14,
                                            value: "Total Marks",
                                            fontWeight: FontWeight.w700,
                                          ),
                                        )),
                                        DataColumn(
                                            label: SizedBox(
                                          width: Responsive.isDesktop(context)
                                              ? 130
                                              : 130,
                                          child: HeadingText(
                                            size: 14,
                                            value: "Average",
                                            fontWeight: FontWeight.w700,
                                          ),
                                        )),
                                        DataColumn(
                                            label: SizedBox(
                                          width: Responsive.isDesktop(context)
                                              ? 150
                                              : 100,
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
