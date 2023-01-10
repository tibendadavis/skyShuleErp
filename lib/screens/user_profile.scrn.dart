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
  bool _menu = false;
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
        size: 305,
        onTap: () {},
        menu: false,
      ),
      body: SingleChildScrollView(
        child: SizedBox(
          height: Responsive.isDesktop(context)
              ? size.height + 300
              : size.height + 1195,
          width: size.width,
          child: Row(children: [
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
              child: Column(
                children: [
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
                      right: Insets().appGap,
                      bottom: Responsive.isDesktop(context)
                          ? Insets().appPadding
                          : 0,
                    ),
                    child: HeadingText(
                      size: Responsive.isDesktop(context) ? 30 : 20,
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
                            left: Responsive.isDesktop(context)
                                ? Insets().appPadding * 2
                                : Insets().appPadding,
                            right: Responsive.isDesktop(context)
                                ? Insets().appPadding * 2
                                : Insets().appPadding,
                          ),
                          padding: EdgeInsets.only(
                              left: Responsive.isDesktop(context)
                                  ? Insets().appPadding
                                  : 17,
                              right: Responsive.isDesktop(context)
                                  ? Insets().appPadding
                                  : 17,
                              top: Insets().appGap / 4,
                              bottom: Insets().appGap / 4),
                          decoration: BoxDecoration(
                              color: Palette().primaryColorLight,
                              borderRadius: BorderRadius.circular(
                                  Insets().appRadiusMin + 4)),
                          child: Column(
                            children: [
                              if (Responsive.isDesktop(context)) ...[
                                Row(children: [
                                  Expanded(
                                    flex: 1,
                                    child: Container(
                                      padding: EdgeInsets.only(
                                          left: Responsive.isDesktop(context)
                                              ? Insets().appPadding
                                              : 5,
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
                                                    size: 14,
                                                    value: "Joining Date: "),
                                                SizedBox(
                                                  width: 2,
                                                ),
                                                HeadingText(
                                                  size: 14,
                                                  value: "12 Nov 2021",
                                                  fontWeight: FontWeight.w700,
                                                )
                                              ],
                                            ),
                                            SizedBox(
                                                width: Responsive.isDesktop(
                                                        context)
                                                    ? 190
                                                    : size.width,
                                                child: Divider(
                                                  color: Colors.grey,
                                                  thickness: 1,
                                                )),
                                            Row(
                                              children: [
                                                HeadingText(
                                                    size: 14,
                                                    value: "Date of Birth: "),
                                                SizedBox(
                                                  width: 2,
                                                ),
                                                HeadingText(
                                                  size: 14,
                                                  value: "03 Jul 2010",
                                                  fontWeight: FontWeight.w700,
                                                )
                                              ],
                                            ),
                                            SizedBox(
                                                width: Responsive.isDesktop(
                                                        context)
                                                    ? 190
                                                    : size.width,
                                                child: Divider(
                                                  color: Colors.grey,
                                                  thickness: 1,
                                                )),
                                            Row(
                                              children: [
                                                HeadingText(
                                                    size: 14, value: "Class: "),
                                                SizedBox(
                                                  width: 2,
                                                ),
                                                HeadingText(
                                                  size: 14,
                                                  value: "Class Seven",
                                                  fontWeight: FontWeight.w700,
                                                )
                                              ],
                                            ),
                                            SizedBox(
                                                width: Responsive.isDesktop(
                                                        context)
                                                    ? 190
                                                    : size.width,
                                                child: Divider(
                                                  color: Colors.grey,
                                                  thickness: 1,
                                                )),
                                            Row(
                                              children: [
                                                HeadingText(
                                                    size: 14,
                                                    value: "Section/Stream: "),
                                                SizedBox(
                                                  width: 2,
                                                ),
                                                HeadingText(
                                                  size: 14,
                                                  value: "ZEBRA",
                                                  fontWeight: FontWeight.w700,
                                                )
                                              ],
                                            ),
                                            SizedBox(
                                                width: Responsive.isDesktop(
                                                        context)
                                                    ? 190
                                                    : size.width,
                                                child: Divider(
                                                  color: Colors.grey,
                                                  thickness: 1,
                                                )),
                                            Row(
                                              children: [
                                                HeadingText(
                                                    size: 14,
                                                    value: "Gender: "),
                                                SizedBox(
                                                  width: 2,
                                                ),
                                                HeadingText(
                                                  size: 14,
                                                  value: "Female",
                                                  fontWeight: FontWeight.w700,
                                                )
                                              ],
                                            ),
                                            SizedBox(
                                                width: Responsive.isDesktop(
                                                        context)
                                                    ? 190
                                                    : size.width,
                                                child: Divider(
                                                  color: Colors.grey,
                                                  thickness: 1,
                                                )),
                                            Row(
                                              children: [
                                                HeadingText(
                                                    size: 14,
                                                    value: "Status: "),
                                                SizedBox(
                                                  width: 2,
                                                ),
                                                HeadingText(
                                                  size: 14,
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
                                      height: 335,
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
                                                        bottom:
                                                            Insets().appGap),
                                                    decoration: BoxDecoration(
                                                        color: Colors.white,
                                                        borderRadius: BorderRadius
                                                            .circular(Insets()
                                                                    .appRadiusMin +
                                                                4)),
                                                    child: Row(
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .start,
                                                        children: [
                                                          Icon(
                                                            Icons
                                                                .assignment_outlined,
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
                                                                      FontWeight
                                                                          .bold,
                                                                )
                                                              ],
                                                            ),
                                                          )
                                                        ]),
                                                  ),
                                                ),
                                              ),
                                              SizedBox(
                                                width: 15,
                                              ),
                                              Expanded(
                                                child: SizedBox(
                                                  height: 84,
                                                  child: Container(
                                                    padding: EdgeInsets.only(
                                                        left: Insets().appGap,
                                                        right: Insets().appGap,
                                                        top: Insets().appGap,
                                                        bottom:
                                                            Insets().appGap),
                                                    decoration: BoxDecoration(
                                                        color: Colors.white,
                                                        borderRadius: BorderRadius
                                                            .circular(Insets()
                                                                    .appRadiusMin +
                                                                4)),
                                                    child: Row(
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .start,
                                                        children: [
                                                          Icon(
                                                            Icons
                                                                .assignment_outlined,
                                                            color: Colors
                                                                .redAccent,
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
                                                                      FontWeight
                                                                          .bold,
                                                                )
                                                              ],
                                                            ),
                                                          )
                                                        ]),
                                                  ),
                                                ),
                                              ),
                                              SizedBox(
                                                width: 15,
                                              ),
                                              Expanded(
                                                child: SizedBox(
                                                  height: 84,
                                                  child: Container(
                                                    padding: EdgeInsets.only(
                                                        left: Insets().appGap,
                                                        right: Insets().appGap,
                                                        top: Insets().appGap,
                                                        bottom:
                                                            Insets().appGap),
                                                    decoration: BoxDecoration(
                                                        color: Colors.white,
                                                        borderRadius: BorderRadius
                                                            .circular(Insets()
                                                                    .appRadiusMin +
                                                                4)),
                                                    child: Row(
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .start,
                                                        children: [
                                                          Icon(
                                                            Icons
                                                                .assignment_outlined,
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
                                                                      FontWeight
                                                                          .bold,
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
                                              height: 15,
                                            ),
                                            SizedBox(
                                              height: 234,
                                              child: Container(
                                                padding: EdgeInsets.only(
                                                    left: Insets().appGap + 10,
                                                    right: Insets().appGap + 10,
                                                    top: Insets().appGap + 10,
                                                    bottom:
                                                        Insets().appGap + 10),
                                                decoration: BoxDecoration(
                                                    color: Colors.white,
                                                    borderRadius: BorderRadius
                                                        .circular(Insets()
                                                                .appRadiusMin +
                                                            4)),
                                                child: ListView(
                                                  children: [
                                                    Column(
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .start,
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
                                                                onChanged:
                                                                    (value) {},
                                                              ),
                                                              SizedBox(
                                                                width: 10,
                                                              ),
                                                              Expanded(
                                                                  child:
                                                                      Heading5(
                                                                value:
                                                                    "Lorem ipsum is some dummy text generator used",
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w300,
                                                              ))
                                                            ],
                                                          ),
                                                          Row(
                                                            children: [
                                                              Checkbox(
                                                                value: false,
                                                                onChanged:
                                                                    (value) {},
                                                              ),
                                                              SizedBox(
                                                                width: 10,
                                                              ),
                                                              Expanded(
                                                                  child:
                                                                      Heading5(
                                                                value:
                                                                    "Lorem ipsum is some dummy text generator used",
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w300,
                                                              ))
                                                            ],
                                                          ),
                                                          Row(
                                                            children: [
                                                              Checkbox(
                                                                value: false,
                                                                onChanged:
                                                                    (value) {},
                                                              ),
                                                              SizedBox(
                                                                width: 10,
                                                              ),
                                                              Expanded(
                                                                  child:
                                                                      Heading5(
                                                                value:
                                                                    "Lorem ipsum is some dummy text generator used",
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w300,
                                                              ))
                                                            ],
                                                          ),
                                                          Row(
                                                            children: [
                                                              Checkbox(
                                                                value: false,
                                                                onChanged:
                                                                    (value) {},
                                                              ),
                                                              SizedBox(
                                                                width: 10,
                                                              ),
                                                              Expanded(
                                                                  child:
                                                                      Heading5(
                                                                value:
                                                                    "Lorem ipsum is some dummy text generator used",
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w300,
                                                              ))
                                                            ],
                                                          ),
                                                          Row(
                                                            children: [
                                                              Checkbox(
                                                                value: false,
                                                                onChanged:
                                                                    (value) {},
                                                              ),
                                                              SizedBox(
                                                                width: 10,
                                                              ),
                                                              Expanded(
                                                                  child:
                                                                      Heading5(
                                                                value:
                                                                    "Lorem ipsum is some dummy text generator used",
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w300,
                                                              ))
                                                            ],
                                                          ),
                                                          Row(
                                                            children: [
                                                              Checkbox(
                                                                value: false,
                                                                onChanged:
                                                                    (value) {},
                                                              ),
                                                              SizedBox(
                                                                width: 10,
                                                              ),
                                                              Expanded(
                                                                  child:
                                                                      Heading5(
                                                                value:
                                                                    "Lorem ipsum is some dummy text generator used",
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w300,
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
                              ],
                              if (!Responsive.isDesktop(context)) ...[
                                Column(children: [
                                  Container(
                                    padding: EdgeInsets.only(
                                        left: Responsive.isDesktop(context)
                                            ? Insets().appPadding
                                            : 5,
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
                                          Heading4(
                                            value: "JANE JOHN DOE",
                                            fontWeight: FontWeight.w700,
                                          ),
                                          HeadingText(
                                            size: 14,
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
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              HeadingText(
                                                  size: 14,
                                                  value: "Joining Date: "),
                                              SizedBox(
                                                width: 2,
                                              ),
                                              HeadingText(
                                                size: 14,
                                                value: "12 Nov 2021",
                                                fontWeight: FontWeight.w700,
                                              )
                                            ],
                                          ),
                                          SizedBox(
                                              width:
                                                  Responsive.isDesktop(context)
                                                      ? 190
                                                      : size.width,
                                              child: Divider(
                                                color: Colors.grey,
                                                thickness: 1,
                                              )),
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              HeadingText(
                                                  size: 14,
                                                  value: "Date of Birth: "),
                                              SizedBox(
                                                width: 2,
                                              ),
                                              HeadingText(
                                                size: 14,
                                                value: "03 Jul 2010",
                                                fontWeight: FontWeight.w700,
                                              )
                                            ],
                                          ),
                                          SizedBox(
                                              width:
                                                  Responsive.isDesktop(context)
                                                      ? 190
                                                      : size.width,
                                              child: Divider(
                                                color: Colors.grey,
                                                thickness: 1,
                                              )),
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              HeadingText(
                                                  size: 14, value: "Class: "),
                                              SizedBox(
                                                width: 2,
                                              ),
                                              HeadingText(
                                                size: 14,
                                                value: "Class Seven",
                                                fontWeight: FontWeight.w700,
                                              )
                                            ],
                                          ),
                                          SizedBox(
                                              width:
                                                  Responsive.isDesktop(context)
                                                      ? 190
                                                      : size.width,
                                              child: Divider(
                                                color: Colors.grey,
                                                thickness: 1,
                                              )),
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              HeadingText(
                                                  size: 14,
                                                  value: "Section/Stream: "),
                                              SizedBox(
                                                width: 2,
                                              ),
                                              HeadingText(
                                                size: 14,
                                                value: "ZEBRA",
                                                fontWeight: FontWeight.w700,
                                              )
                                            ],
                                          ),
                                          SizedBox(
                                              width:
                                                  Responsive.isDesktop(context)
                                                      ? 190
                                                      : size.width,
                                              child: Divider(
                                                color: Colors.grey,
                                                thickness: 1,
                                              )),
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              HeadingText(
                                                  size: 14, value: "Gender: "),
                                              SizedBox(
                                                width: 2,
                                              ),
                                              HeadingText(
                                                size: 14,
                                                value: "Female",
                                                fontWeight: FontWeight.w700,
                                              )
                                            ],
                                          ),
                                          SizedBox(
                                              width:
                                                  Responsive.isDesktop(context)
                                                      ? 190
                                                      : size.width,
                                              child: Divider(
                                                color: Colors.grey,
                                                thickness: 1,
                                              )),
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              HeadingText(
                                                  size: 14, value: "Status: "),
                                              SizedBox(
                                                width: 2,
                                              ),
                                              HeadingText(
                                                size: 14,
                                                value: "Active",
                                                fontWeight: FontWeight.w700,
                                              )
                                            ],
                                          ),
                                        ]),
                                  ),
                                  SizedBox(
                                    height: size.width - 100,
                                    child: Container(
                                      padding: EdgeInsets.only(
                                          left: 12,
                                          right: 12,
                                          top: 12,
                                          bottom: 12),
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
                                  Container(
                                    margin: EdgeInsets.only(
                                      top: Insets().appPadding,
                                      bottom: Insets().appPadding,
                                    ),
                                    child: Expanded(
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Row(children: [
                                            Expanded(
                                              child: SizedBox(
                                                height: 100,
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
                                                  child: Column(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .start,
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                      children: [
                                                        Row(
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .spaceBetween,
                                                          children: [
                                                            Icon(
                                                              Icons
                                                                  .assignment_outlined,
                                                              color:
                                                                  Colors.amber,
                                                              size: 30,
                                                            ),
                                                            // SizedBox(
                                                            //   width: 10,
                                                            // ),
                                                            Heading2(
                                                              value: "4",
                                                              fontWeight:
                                                                  FontWeight
                                                                      .bold,
                                                            )
                                                          ],
                                                        ),
                                                        SizedBox(
                                                          height: 10,
                                                        ),
                                                        Expanded(
                                                          child: HeadingText(
                                                              size: 12,
                                                              value:
                                                                  "Assignments"),
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
                                                height: 100,
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
                                                  child: Column(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .start,
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                      children: [
                                                        Row(
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .spaceBetween,
                                                          children: [
                                                            Icon(
                                                              Icons
                                                                  .assignment_outlined,
                                                              color: Colors
                                                                  .redAccent,
                                                              size: 30,
                                                            ),
                                                            // SizedBox(
                                                            //   width: 10,
                                                            // ),
                                                            Heading2(
                                                              value: "3",
                                                              fontWeight:
                                                                  FontWeight
                                                                      .bold,
                                                            )
                                                          ],
                                                        ),
                                                        SizedBox(
                                                          height: 10,
                                                        ),
                                                        Expanded(
                                                          child: HeadingText(
                                                              size: 12,
                                                              value:
                                                                  "Assignments Overdue"),
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
                                                height: 100,
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
                                                  child: Column(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .start,
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                      children: [
                                                        Row(
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .spaceBetween,
                                                          children: [
                                                            Icon(
                                                              Icons
                                                                  .assignment_outlined,
                                                              color:
                                                                  Colors.green,
                                                              size: 30,
                                                            ),
                                                            // SizedBox(
                                                            //   width: 10,
                                                            // ),
                                                            Heading2(
                                                              value: "1",
                                                              fontWeight:
                                                                  FontWeight
                                                                      .bold,
                                                            )
                                                          ],
                                                        ),
                                                        SizedBox(
                                                          height: 10,
                                                        ),
                                                        Expanded(
                                                          child: HeadingText(
                                                              size: 12,
                                                              value:
                                                                  "Completed Tasks"),
                                                        )
                                                      ]),
                                                ),
                                              ),
                                            ),
                                          ]),
                                          SizedBox(
                                            height: 15,
                                          ),
                                          SizedBox(
                                            height: size.width - 100,
                                            child: Container(
                                              padding: EdgeInsets.only(
                                                  left: 12,
                                                  right: 12,
                                                  top: 12,
                                                  bottom: 12),
                                              decoration: BoxDecoration(
                                                  color: Colors.white,
                                                  borderRadius: BorderRadius
                                                      .circular(Insets()
                                                              .appRadiusMin +
                                                          4)),
                                              child: ListView(
                                                children: [
                                                  Column(
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                      children: [
                                                        Heading5(
                                                          value: "Tasks",
                                                          fontWeight:
                                                              FontWeight.w600,
                                                        ),
                                                        SizedBox(
                                                          height: 20,
                                                        ),
                                                        Row(
                                                          children: [
                                                            Checkbox(
                                                              value: false,
                                                              onChanged:
                                                                  (value) {},
                                                            ),
                                                            SizedBox(
                                                              width: 10,
                                                            ),
                                                            Expanded(
                                                                child: Heading5(
                                                              value:
                                                                  "Lorem ipsum is some dummy text generator used",
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w400,
                                                            ))
                                                          ],
                                                        ),
                                                        Row(
                                                          children: [
                                                            Checkbox(
                                                              value: false,
                                                              onChanged:
                                                                  (value) {},
                                                            ),
                                                            SizedBox(
                                                              width: 10,
                                                            ),
                                                            Expanded(
                                                                child: Heading5(
                                                              value:
                                                                  "Lorem ipsum is some dummy text generator used",
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w400,
                                                            ))
                                                          ],
                                                        ),
                                                        Row(
                                                          children: [
                                                            Checkbox(
                                                              value: false,
                                                              onChanged:
                                                                  (value) {},
                                                            ),
                                                            SizedBox(
                                                              width: 10,
                                                            ),
                                                            Expanded(
                                                                child: Heading5(
                                                              value:
                                                                  "Lorem ipsum is some dummy text generator used",
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w400,
                                                            ))
                                                          ],
                                                        ),
                                                        Row(
                                                          children: [
                                                            Checkbox(
                                                              value: false,
                                                              onChanged:
                                                                  (value) {},
                                                            ),
                                                            SizedBox(
                                                              width: 10,
                                                            ),
                                                            Expanded(
                                                                child: Heading5(
                                                              value:
                                                                  "Lorem ipsum is some dummy text generator used",
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w400,
                                                            ))
                                                          ],
                                                        ),
                                                        Row(
                                                          children: [
                                                            Checkbox(
                                                              value: false,
                                                              onChanged:
                                                                  (value) {},
                                                            ),
                                                            SizedBox(
                                                              width: 10,
                                                            ),
                                                            Expanded(
                                                                child: Heading5(
                                                              value:
                                                                  "Lorem ipsum is some dummy text generator used",
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w400,
                                                            ))
                                                          ],
                                                        ),
                                                        Row(
                                                          children: [
                                                            Checkbox(
                                                              value: false,
                                                              onChanged:
                                                                  (value) {},
                                                            ),
                                                            SizedBox(
                                                              width: 10,
                                                            ),
                                                            Expanded(
                                                                child: Heading5(
                                                              value:
                                                                  "Lorem ipsum is some dummy text generator used",
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w400,
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
                                  )
                                ]),
                              ]
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                  Expanded(
                    child: Container(
                      margin: EdgeInsets.only(
                        bottom: Insets().appPadding,
                        left: Responsive.isDesktop(context)
                            ? Insets().appPadding * 2
                            : Insets().appPadding,
                        right: Responsive.isDesktop(context)
                            ? Insets().appPadding * 2
                            : Insets().appPadding,
                      ),
                      padding: EdgeInsets.only(
                          bottom: Insets().appPadding,
                          top: Insets().appPadding,
                          left: Responsive.isDesktop(context)
                              ? Insets().appPadding * 2
                              : Insets().appPadding,
                          right: Responsive.isDesktop(context)
                              ? Insets().appPadding * 2
                              : Insets().appPadding),
                      decoration: BoxDecoration(
                          color: Palette().primaryColorLight,
                          borderRadius:
                              BorderRadius.circular(Insets().appRadiusMin + 4)),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SingleChildScrollView(
                            scrollDirection: Axis.horizontal,
                            child: SizedBox(
                              width: Responsive.isDesktop(context)
                                  ? 700
                                  : size.width + 280,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
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
                                          elevation: 0,
                                          backgroundColor: !stdntsInfo
                                              ? Colors.white
                                              : Palette().primaryColor,
                                          shape: RoundedRectangleBorder(
                                              side: BorderSide(
                                                width: 1,
                                                color: !stdntsInfo
                                                    ? Colors.black
                                                    : Colors.transparent,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(
                                                      Insets().appRadiusMin +
                                                          4)),
                                          padding: EdgeInsets.all(
                                              Responsive.isDesktop(context)
                                                  ? Insets().appPadding
                                                  : 17)),
                                      child: Heading6(
                                        value: "Students Info",
                                        color: !stdntsInfo
                                            ? Colors.black
                                            : Colors.white,
                                      )),
                                  SizedBox(
                                    width: 15,
                                  ),
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
                                          elevation: 0,
                                          backgroundColor: !prntsInfo
                                              ? Colors.white
                                              : Palette().primaryColor,
                                          shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(
                                                      Insets().appRadiusMin +
                                                          4)),
                                          side: BorderSide(
                                            width: 1,
                                            color: !prntsInfo
                                                ? Colors.black
                                                : Colors.transparent,
                                          ),
                                          padding: EdgeInsets.all(
                                              Responsive.isDesktop(context)
                                                  ? Insets().appPadding
                                                  : 17)),
                                      child: Heading6(
                                        value: "Parents Info",
                                        color: !prntsInfo
                                            ? Colors.black
                                            : Colors.white,
                                      )),
                                  SizedBox(
                                    width: 15,
                                  ),
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
                                          elevation: 0,
                                          backgroundColor: !paymntReport
                                              ? Colors.white
                                              : Palette().primaryColor,
                                          side: BorderSide(
                                            width: 1,
                                            color: !paymntReport
                                                ? Colors.black
                                                : Colors.transparent,
                                          ),
                                          shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(
                                                      Insets().appRadiusMin +
                                                          4)),
                                          padding: EdgeInsets.all(
                                              Responsive.isDesktop(context)
                                                  ? Insets().appPadding
                                                  : 17)),
                                      child: Heading6(
                                        value: "Payment Report",
                                        color: !paymntReport
                                            ? Colors.black
                                            : Colors.white,
                                      )),
                                  SizedBox(
                                    width: 15,
                                  ),
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
                                          elevation: 0,
                                          backgroundColor: !exmReport
                                              ? Colors.white
                                              : Palette().primaryColor,
                                          side: BorderSide(
                                            width: 1,
                                            color: !exmReport
                                                ? Colors.black
                                                : Colors.transparent,
                                          ),
                                          shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(
                                                      Insets().appRadiusMin +
                                                          4)),
                                          padding: EdgeInsets.all(
                                              Responsive.isDesktop(context)
                                                  ? Insets().appPadding
                                                  : 17)),
                                      child: Heading6(
                                        value: "Exam Report",
                                        color: !exmReport
                                            ? Colors.black
                                            : Colors.white,
                                      )),
                                  SizedBox(
                                    width: 15,
                                  ),
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
                                          elevation: 0,
                                          backgroundColor: !alloctns
                                              ? Colors.white
                                              : Palette().primaryColor,
                                          side: BorderSide(
                                            width: 1,
                                            color: !alloctns
                                                ? Colors.black
                                                : Colors.transparent,
                                          ),
                                          shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(
                                                      Insets().appRadiusMin +
                                                          4)),
                                          padding: EdgeInsets.all(
                                              Responsive.isDesktop(context)
                                                  ? Insets().appPadding
                                                  : 17)),
                                      child: Heading6(
                                        value: "Allocations",
                                        color: !alloctns
                                            ? Colors.black
                                            : Colors.white,
                                      )),
                                ],
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 15,
                          ),
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
