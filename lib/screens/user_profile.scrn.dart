import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:skyconnect_starter/components/allocations.dart';
import 'package:skyconnect_starter/components/app_drawer/skyShuleDrawer.dart';
import 'package:skyconnect_starter/components/examReport.dart';
import 'package:skyconnect_starter/components/header.dart';
import 'package:skyconnect_starter/components/heading1.dart';
import 'package:skyconnect_starter/components/heading2.dart';
import 'package:skyconnect_starter/components/heading3.dart';
import 'package:skyconnect_starter/components/heading4.dart';
import 'package:skyconnect_starter/components/heading5.dart';
import 'package:skyconnect_starter/components/heading6.dart';
import 'package:skyconnect_starter/components/heading_text.dart';
import 'package:skyconnect_starter/components/parentsInfo.dart';
import 'package:skyconnect_starter/components/paymentReport.dart';
import 'package:skyconnect_starter/components/studentsInfo.dart';
import 'package:skyconnect_starter/controllers/responsive.dart';
import 'package:skyconnect_starter/theme/design.theme.dart';

class userProfile extends StatefulWidget {
  const userProfile({super.key});

  @override
  State<userProfile> createState() => _userProfileState();
}

class _userProfileState extends State<userProfile> {
  double _drawersize = 250;
  bool stdntsInfo = true;
  bool prntsInfo = false;
  bool paymntReport = false;
  bool exmReport = false;
  bool alloctns = false;

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
        onTap: () {},
      ),
      body: SingleChildScrollView(
        child: SizedBox(
          height: size.height + 190,
          width: size.width,
          child: Row(children: [
            if (Responsive.isDesktop(context))
              SizedBox(
                  width: _drawersize,
                  child: skyShuleDrawer(
                    size: _drawersize,
                    onTap: (val) {
                      setState(() {
                        _drawersize = val;
                      });
                    },
                  )),
            Expanded(
              child: Column(
                children: [
                  Container(
                      padding: EdgeInsets.only(
                          left: Insets().appPadding,
                          right: Insets().appPadding,
                          top: Insets().appGap,
                          bottom: Insets().appGap),
                      decoration:
                          BoxDecoration(color: Palette().primaryColorLight),
                      child: header()),
                  Container(
                    alignment: Alignment.bottomLeft,
                    padding: EdgeInsets.only(
                        top: Insets().appPadding,
                        left: Insets().appPadding * 2,
                        right: Insets().appGap),
                    child: const Heading2(
                      value: "USER PROFILE",
                      fontWeight: FontWeight.w700,
                      color: Colors.black,
                    ),
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: Container(
                          margin: EdgeInsets.only(
                            bottom: Insets().appPadding,
                            left: Insets().appPadding * 2,
                            right: Insets().appPadding * 2,
                          ),
                          padding: EdgeInsets.only(
                              left: Insets().appPadding,
                              right: Insets().appPadding,
                              top: Insets().appGap / 4,
                              bottom: Insets().appGap / 4),
                          decoration: BoxDecoration(
                              color: Palette().primaryColorLight,
                              borderRadius: BorderRadius.circular(
                                  Insets().appRadiusMin + 4)),
                          child: Row(children: [
                            Expanded(
                              flex: 1,
                              child: Container(
                                padding: EdgeInsets.only(
                                    left: Insets().appPadding,
                                    top: Insets().appGap + 2,
                                    bottom: Insets().appPadding),
                                child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      CircleAvatar(
                                        radius: Insets().appRadius,
                                      ),
                                      SizedBox(
                                        height: 7,
                                      ),
                                      Heading5(
                                        value: "JANE JOHN DOE",
                                        fontWeight: FontWeight.w700,
                                      ),
                                      HeadingText(
                                        size: 12,
                                        value: "Roll/RegNo: SH-2022-178",
                                        fontWeight: FontWeight.w600,
                                      ),
                                      SizedBox(
                                        height: 12,
                                      ),
                                      Row(
                                        children: [
                                          Icon(
                                            Icons.message_outlined,
                                            size: 27,
                                          ),
                                          SizedBox(
                                            width: 18,
                                          ),
                                          Icon(
                                            Icons.phone,
                                            size: 27,
                                          ),
                                        ],
                                      ),
                                      SizedBox(
                                        height: 7,
                                      ),
                                      Row(
                                        children: [
                                          HeadingText(
                                              size: 12,
                                              value: "Joining Date: "),
                                          SizedBox(
                                            width: 2,
                                          ),
                                          HeadingText(
                                            size: 12,
                                            value: "12 Nov 2021",
                                            fontWeight: FontWeight.w700,
                                          )
                                        ],
                                      ),
                                      SizedBox(
                                          width: 190,
                                          child: Divider(
                                            color: Colors.grey,
                                            thickness: 1,
                                          )),
                                      Row(
                                        children: [
                                          HeadingText(
                                              size: 12,
                                              value: "Date of Birth: "),
                                          SizedBox(
                                            width: 2,
                                          ),
                                          HeadingText(
                                            size: 12,
                                            value: "03 Jul 2010",
                                            fontWeight: FontWeight.w700,
                                          )
                                        ],
                                      ),
                                      SizedBox(
                                          width: 190,
                                          child: Divider(
                                            color: Colors.grey,
                                            thickness: 1,
                                          )),
                                      Row(
                                        children: [
                                          HeadingText(
                                              size: 12, value: "Class: "),
                                          SizedBox(
                                            width: 2,
                                          ),
                                          HeadingText(
                                            size: 12,
                                            value: "Class Seven",
                                            fontWeight: FontWeight.w700,
                                          )
                                        ],
                                      ),
                                      SizedBox(
                                          width: 190,
                                          child: Divider(
                                            color: Colors.grey,
                                            thickness: 1,
                                          )),
                                      Row(
                                        children: [
                                          HeadingText(
                                              size: 12,
                                              value: "Section/Stream: "),
                                          SizedBox(
                                            width: 2,
                                          ),
                                          HeadingText(
                                            size: 12,
                                            value: "ZEBRA",
                                            fontWeight: FontWeight.w700,
                                          )
                                        ],
                                      ),
                                      SizedBox(
                                          width: 190,
                                          child: Divider(
                                            color: Colors.grey,
                                            thickness: 1,
                                          )),
                                      Row(
                                        children: [
                                          HeadingText(
                                              size: 12, value: "Gender: "),
                                          SizedBox(
                                            width: 2,
                                          ),
                                          HeadingText(
                                            size: 12,
                                            value: "Female",
                                            fontWeight: FontWeight.w700,
                                          )
                                        ],
                                      ),
                                      SizedBox(
                                          width: 190,
                                          child: Divider(
                                            color: Colors.grey,
                                            thickness: 1,
                                          )),
                                      Row(
                                        children: [
                                          HeadingText(
                                              size: 12, value: "Status: "),
                                          SizedBox(
                                            width: 2,
                                          ),
                                          HeadingText(
                                            size: 12,
                                            value: "Active",
                                            fontWeight: FontWeight.w700,
                                          )
                                        ],
                                      ),
                                    ]),
                              ),
                            ),
                            Expanded(
                              flex: 2,
                              child: SizedBox(
                                height: 316,
                                child: Container(
                                  padding: EdgeInsets.only(
                                      right: Insets().appPadding,
                                      top: Insets().appGap + 2,
                                      bottom: Insets().appPadding),
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(
                                          Insets().appRadiusMin + 4)),
                                  child: Center(
                                      child: HeadingText(
                                    size: 12,
                                    value:
                                        "Each Subject Average Perfomance for JANE JOHN DOE",
                                    fontWeight: FontWeight.w700,
                                  )),
                                ),
                              ),
                            ),
                            Expanded(
                              flex: 2,
                              child: Container(
                                margin: EdgeInsets.only(
                                  left: Insets().appPadding,
                                ),
                                child: Expanded(
                                  child: Column(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Row(children: [
                                        Expanded(
                                          child: SizedBox(
                                            height: 84,
                                            child: Container(
                                              padding: EdgeInsets.only(
                                                  left: Insets().appGap,
                                                  right: Insets().appGap,
                                                  top: Insets().appGap,
                                                  bottom: Insets().appGap),
                                              decoration: BoxDecoration(
                                                  color: Colors.white,
                                                  borderRadius: BorderRadius
                                                      .circular(Insets()
                                                              .appRadiusMin +
                                                          4)),
                                              child: Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.start,
                                                  children: [
                                                    Icon(
                                                      Icons.assignment_outlined,
                                                      color: Colors.amber,
                                                      size: 30,
                                                    ),
                                                    SizedBox(
                                                      width: 10,
                                                    ),
                                                    Expanded(
                                                      child: Column(
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .start,
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .center,
                                                        children: [
                                                          HeadingText(
                                                              size: 12,
                                                              value:
                                                                  "Assignments"),
                                                          SizedBox(
                                                            height: 5,
                                                          ),
                                                          Heading3(
                                                            value: "4",
                                                            fontWeight:
                                                                FontWeight.bold,
                                                          )
                                                        ],
                                                      ),
                                                    )
                                                  ]),
                                            ),
                                          ),
                                        ),
                                        SizedBox(
                                          width: 10,
                                        ),
                                        Expanded(
                                          child: SizedBox(
                                            height: 84,
                                            child: Container(
                                              padding: EdgeInsets.only(
                                                  left: Insets().appGap,
                                                  right: Insets().appGap,
                                                  top: Insets().appGap,
                                                  bottom: Insets().appGap),
                                              decoration: BoxDecoration(
                                                  color: Colors.white,
                                                  borderRadius: BorderRadius
                                                      .circular(Insets()
                                                              .appRadiusMin +
                                                          4)),
                                              child: Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.start,
                                                  children: [
                                                    Icon(
                                                      Icons.assignment_outlined,
                                                      color: Colors.redAccent,
                                                      size: 30,
                                                    ),
                                                    SizedBox(
                                                      width: 10,
                                                    ),
                                                    Expanded(
                                                      child: Column(
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .start,
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .center,
                                                        children: [
                                                          HeadingText(
                                                              size: 12,
                                                              value:
                                                                  "Assignments Overdue"),
                                                          SizedBox(
                                                            height: 5,
                                                          ),
                                                          Heading3(
                                                            value: "2",
                                                            fontWeight:
                                                                FontWeight.bold,
                                                          )
                                                        ],
                                                      ),
                                                    )
                                                  ]),
                                            ),
                                          ),
                                        ),
                                        SizedBox(
                                          width: 10,
                                        ),
                                        Expanded(
                                          child: SizedBox(
                                            height: 84,
                                            child: Container(
                                              padding: EdgeInsets.only(
                                                  left: Insets().appGap,
                                                  right: Insets().appGap,
                                                  top: Insets().appGap,
                                                  bottom: Insets().appGap),
                                              decoration: BoxDecoration(
                                                  color: Colors.white,
                                                  borderRadius: BorderRadius
                                                      .circular(Insets()
                                                              .appRadiusMin +
                                                          4)),
                                              child: Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.start,
                                                  children: [
                                                    Icon(
                                                      Icons.assignment_outlined,
                                                      color: Colors.green,
                                                      size: 30,
                                                    ),
                                                    SizedBox(
                                                      width: 10,
                                                    ),
                                                    Expanded(
                                                      child: Column(
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .start,
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .center,
                                                        children: [
                                                          HeadingText(
                                                              size: 12,
                                                              value:
                                                                  "Completed Tasks"),
                                                          SizedBox(
                                                            height: 5,
                                                          ),
                                                          Heading3(
                                                            value: "1",
                                                            fontWeight:
                                                                FontWeight.bold,
                                                          )
                                                        ],
                                                      ),
                                                    )
                                                  ]),
                                            ),
                                          ),
                                        ),
                                      ]),
                                      SizedBox(
                                        height: 10,
                                      ),
                                      SizedBox(
                                        height: 220,
                                        child: Container(
                                          padding: EdgeInsets.only(
                                              left: Insets().appGap + 10,
                                              right: Insets().appGap + 10,
                                              top: Insets().appGap + 10,
                                              bottom: Insets().appGap + 10),
                                          decoration: BoxDecoration(
                                              color: Colors.white,
                                              borderRadius:
                                                  BorderRadius.circular(
                                                      Insets().appRadiusMin +
                                                          4)),
                                          child: ListView(
                                            children: [
                                              Column(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    Heading5(
                                                      value: "Tasks",
                                                      fontWeight:
                                                          FontWeight.w500,
                                                    ),
                                                    SizedBox(
                                                      height: 20,
                                                    ),
                                                    Row(
                                                      children: [
                                                        Checkbox(
                                                          value: false,
                                                          onChanged: (value) {},
                                                        ),
                                                        SizedBox(
                                                          width: 10,
                                                        ),
                                                        Expanded(
                                                            child: Heading5(
                                                          value:
                                                              "Lorem ipsum is some dummy text generator used",
                                                          fontWeight:
                                                              FontWeight.w300,
                                                        ))
                                                      ],
                                                    ),
                                                    Row(
                                                      children: [
                                                        Checkbox(
                                                          value: false,
                                                          onChanged: (value) {},
                                                        ),
                                                        SizedBox(
                                                          width: 10,
                                                        ),
                                                        Expanded(
                                                            child: Heading5(
                                                          value:
                                                              "Lorem ipsum is some dummy text generator used",
                                                          fontWeight:
                                                              FontWeight.w300,
                                                        ))
                                                      ],
                                                    ),
                                                    Row(
                                                      children: [
                                                        Checkbox(
                                                          value: false,
                                                          onChanged: (value) {},
                                                        ),
                                                        SizedBox(
                                                          width: 10,
                                                        ),
                                                        Expanded(
                                                            child: Heading5(
                                                          value:
                                                              "Lorem ipsum is some dummy text generator used",
                                                          fontWeight:
                                                              FontWeight.w300,
                                                        ))
                                                      ],
                                                    ),
                                                    Row(
                                                      children: [
                                                        Checkbox(
                                                          value: false,
                                                          onChanged: (value) {},
                                                        ),
                                                        SizedBox(
                                                          width: 10,
                                                        ),
                                                        Expanded(
                                                            child: Heading5(
                                                          value:
                                                              "Lorem ipsum is some dummy text generator used",
                                                          fontWeight:
                                                              FontWeight.w300,
                                                        ))
                                                      ],
                                                    ),
                                                    Row(
                                                      children: [
                                                        Checkbox(
                                                          value: false,
                                                          onChanged: (value) {},
                                                        ),
                                                        SizedBox(
                                                          width: 10,
                                                        ),
                                                        Expanded(
                                                            child: Heading5(
                                                          value:
                                                              "Lorem ipsum is some dummy text generator used",
                                                          fontWeight:
                                                              FontWeight.w300,
                                                        ))
                                                      ],
                                                    ),
                                                    Row(
                                                      children: [
                                                        Checkbox(
                                                          value: false,
                                                          onChanged: (value) {},
                                                        ),
                                                        SizedBox(
                                                          width: 10,
                                                        ),
                                                        Expanded(
                                                            child: Heading5(
                                                          value:
                                                              "Lorem ipsum is some dummy text generator used",
                                                          fontWeight:
                                                              FontWeight.w300,
                                                        ))
                                                      ],
                                                    )
                                                  ]),
                                            ],
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            )
                          ]),
                        ),
                      )
                    ],
                  ),
                  Positioned(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        ElevatedButton(
                            onPressed: () {
                              setState(() {
                                stdntsInfo = true;
                                prntsInfo = false;
                                paymntReport = false;
                                exmReport = false;
                                alloctns = false;
                              });
                            },
                            style: ElevatedButton.styleFrom(
                                backgroundColor: Palette().primaryColor,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(
                                        Insets().appRadiusMin + 4)),
                                padding: EdgeInsets.all(Insets().appPadding)),
                            child: Heading6(
                              value: "Students Info",
                              color: Colors.white,
                            )),
                        ElevatedButton(
                            onPressed: () {
                              setState(() {
                                stdntsInfo = false;
                                prntsInfo = true;
                                paymntReport = false;
                                exmReport = false;
                                alloctns = false;
                              });
                            },
                            style: ElevatedButton.styleFrom(
                                backgroundColor: Palette().primaryColor,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(
                                        Insets().appRadiusMin + 4)),
                                padding: EdgeInsets.all(Insets().appPadding)),
                            child: Heading6(
                              value: "Parents Info",
                              color: Colors.white,
                            )),
                        ElevatedButton(
                            onPressed: () {
                              setState(() {
                                stdntsInfo = false;
                                prntsInfo = false;
                                paymntReport = true;
                                exmReport = false;
                                alloctns = false;
                              });
                            },
                            style: ElevatedButton.styleFrom(
                                backgroundColor: Palette().primaryColor,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(
                                        Insets().appRadiusMin + 4)),
                                padding: EdgeInsets.all(Insets().appPadding)),
                            child: Heading6(
                              value: "Payment Report",
                              color: Colors.white,
                            )),
                        ElevatedButton(
                            onPressed: () {
                              setState(() {
                                stdntsInfo = false;
                                prntsInfo = false;
                                paymntReport = false;
                                exmReport = true;
                                alloctns = false;
                              });
                            },
                            style: ElevatedButton.styleFrom(
                                backgroundColor: Palette().primaryColor,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(
                                        Insets().appRadiusMin + 4)),
                                padding: EdgeInsets.all(Insets().appPadding)),
                            child: Heading6(
                              value: "Exam Report",
                              color: Colors.white,
                            )),
                        ElevatedButton(
                            onPressed: () {
                              setState(() {
                                stdntsInfo = false;
                                prntsInfo = false;
                                paymntReport = false;
                                exmReport = false;
                                alloctns = true;
                              });
                            },
                            style: ElevatedButton.styleFrom(
                                backgroundColor: Palette().primaryColor,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(
                                        Insets().appRadiusMin + 4)),
                                padding: EdgeInsets.all(Insets().appPadding)),
                            child: Heading6(
                              value: "Allocations",
                              color: Colors.white,
                            )),
                      ],
                    ),
                  ),
                  Expanded(
                    child: Container(
                      margin: EdgeInsets.only(
                        bottom: Insets().appPadding,
                        left: Insets().appPadding * 2,
                        right: Insets().appPadding * 2,
                      ),
                      padding: EdgeInsets.only(
                          bottom: Insets().appPadding,
                          top: Insets().appPadding,
                          left: Insets().appPadding * 2,
                          right: Insets().appPadding * 2),
                      decoration: BoxDecoration(
                          color: Palette().primaryColorLight,
                          borderRadius:
                              BorderRadius.circular(Insets().appRadiusMin + 4)),
                      child: Column(
                        children: [
                          Visibility(
                              visible: stdntsInfo, child: (studentsInfo())),
                          Visibility(
                              visible: prntsInfo, child: (parentsInfo())),
                          Visibility(
                              visible: paymntReport, child: (paymentReport())),
                          Visibility(visible: exmReport, child: (examReport())),
                          Visibility(visible: alloctns, child: (allocations()))
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            )
          ]),
        ),
      ),
    );
  }
}
