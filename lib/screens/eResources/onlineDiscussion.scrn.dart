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
import 'package:skyconnect_starter/components/searchBar.comp.dart';
import 'package:skyconnect_starter/components/tile3.comp.dart';
import 'package:skyconnect_starter/controllers/responsive.dart';
import 'package:skyconnect_starter/screens/Subjects/addSubject.scrn.dart';
import 'package:skyconnect_starter/screens/Terms/addTerm.scrn.dart';
import 'package:skyconnect_starter/screens/Users/student_admission.scrn.dart';
import 'package:skyconnect_starter/theme/design.theme.dart';

class onlineDiscussion extends StatefulWidget {
  const onlineDiscussion({super.key});

  @override
  State<onlineDiscussion> createState() => _onlineDiscussionState();
}

class _onlineDiscussionState extends State<onlineDiscussion> {
  bool _menu = false;
  double _drawersize = 250;
  var _classlevel;
  var _academicYear;
  var _stream;

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
      child: Expanded(
          child: Column(children: [
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
            value: "Online Discussion",
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
                  icon: Icons.question_answer,
                  link: null,
                  linkTitle: "Ask a Question",
                )),
            SizedBox(
                width: Responsive.isDesktop(context)
                    ? 360
                    : MediaQuery.of(context).size.width,
                child: tile3(
                  icon: Icons.class_rounded,
                  link: null,
                  linkTitle: "Class Discussion",
                )),
          ],
        ),
        searchBar(
          title: "Search",
        ),
        Container(
          margin: EdgeInsets.only(
            left: Responsive.isDesktop(context) ? Insets().appPadding * 2 : 12,
            right: Responsive.isDesktop(context) ? Insets().appPadding * 2 : 12,
          ),
          padding: EdgeInsets.only(
              left: Insets().appGap / 2,
              right: Insets().appGap / 2,
              top: Insets().appPadding / 2,
              bottom: Insets().appPadding / 2),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                flex: 5,
                child: Container(
                  margin: EdgeInsets.only(
                      right: Responsive.isDesktop(context)
                          ? Insets().appPadding
                          : 0),
                  padding: EdgeInsets.only(
                      left: Responsive.isDesktop(context)
                          ? Insets().appPadding
                          : 10,
                      right: Responsive.isDesktop(context)
                          ? Insets().appPadding
                          : 10,
                      top: Responsive.isDesktop(context)
                          ? Insets().appPadding
                          : 15,
                      bottom: Responsive.isDesktop(context)
                          ? Insets().appPadding
                          : 15),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(Insets().appGap + 4)),
                  child: SizedBox(
                    height: 500,
                    child: Expanded(
                      child: ListView(
                        children: [
                          Column(
                            children: [
                              Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Expanded(
                                      flex: 1,
                                      child: CircleAvatar(
                                          radius: Insets().appRadius),
                                    ),
                                    SizedBox(
                                      width: 5,
                                    ),
                                    Expanded(
                                        flex: 7,
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Heading4(
                                              value: "DOE JOHN",
                                              fontWeight: FontWeight.w600,
                                            ),
                                            SizedBox(
                                              height: 5,
                                            ),
                                            Row(
                                              children: [
                                                Container(
                                                  decoration: BoxDecoration(
                                                      color: Palette()
                                                          .primaryColor,
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              Insets()
                                                                  .appRadius)),
                                                  padding: EdgeInsets.only(
                                                      bottom: 1,
                                                      left: 10,
                                                      right: 10,
                                                      top: 1),
                                                  child: HeadingText(
                                                    size: 12,
                                                    value: "Parent",
                                                    color: Colors.white,
                                                  ),
                                                ),
                                                SizedBox(
                                                  width: 7,
                                                ),
                                                Heading6(
                                                  value: "Asked 10 minutes ago",
                                                  color: Palette().borderColor,
                                                )
                                              ],
                                            ),
                                            SizedBox(
                                              height: 5,
                                            ),
                                            Heading5(
                                                value:
                                                    "The Question goes here ?"),
                                            SizedBox(
                                              height: 5,
                                            ),
                                            Row(
                                              children: [
                                                Container(
                                                  decoration: BoxDecoration(
                                                      color: Colors.white,
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              7)),
                                                  padding: EdgeInsets.only(
                                                      bottom: 5,
                                                      left: 10,
                                                      right: 10,
                                                      top: 5),
                                                  child: HeadingText(
                                                    size: 12,
                                                    value: "0 Answers",
                                                    color: Colors.grey[800],
                                                  ),
                                                ),
                                                SizedBox(
                                                  width: 5,
                                                ),
                                                Container(
                                                  decoration: BoxDecoration(
                                                      color: Colors.white,
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              7)),
                                                  padding: EdgeInsets.only(
                                                      bottom: 5,
                                                      left: 10,
                                                      right: 10,
                                                      top: 5),
                                                  child: HeadingText(
                                                    size: 12,
                                                    value: "1 Views",
                                                    color: Colors.grey[800],
                                                  ),
                                                ),
                                                Spacer(),
                                                Container(
                                                  decoration: BoxDecoration(
                                                      color: Colors.white,
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              7)),
                                                  child: TextButton(
                                                    onPressed: () {},
                                                    child: Row(
                                                      children: [
                                                        Icon(
                                                          Icons
                                                              .remove_red_eye_outlined,
                                                          color:
                                                              Colors.grey[800],
                                                          size: 17,
                                                        ),
                                                        SizedBox(
                                                          width: 5,
                                                        ),
                                                        HeadingText(
                                                          size: Responsive
                                                                  .isDesktop(
                                                                      context)
                                                              ? 12
                                                              : 10,
                                                          value: "View Answers",
                                                          color:
                                                              Colors.grey[800],
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            )
                                          ],
                                        ))
                                  ]),
                              SizedBox(
                                height: 5,
                              ),
                              SizedBox(
                                width: size.width - 70,
                                child: Divider(
                                  color: Palette().borderColor,
                                  thickness: 1,
                                ),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Expanded(
                                      flex: 1,
                                      child: CircleAvatar(
                                          radius: Insets().appRadius),
                                    ),
                                    SizedBox(
                                      width: 5,
                                    ),
                                    Expanded(
                                        flex: 7,
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Heading4(
                                              value: "DOE JOHN",
                                              fontWeight: FontWeight.w600,
                                            ),
                                            SizedBox(
                                              height: 5,
                                            ),
                                            Row(
                                              children: [
                                                Container(
                                                  decoration: BoxDecoration(
                                                      color: Palette()
                                                          .primaryColor,
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              Insets()
                                                                  .appRadius)),
                                                  padding: EdgeInsets.only(
                                                      bottom: 1,
                                                      left: 10,
                                                      right: 10,
                                                      top: 1),
                                                  child: HeadingText(
                                                    size: 12,
                                                    value: "Parent",
                                                    color: Colors.white,
                                                  ),
                                                ),
                                                SizedBox(
                                                  width: 7,
                                                ),
                                                Heading6(
                                                  value: "Asked 10 minutes ago",
                                                  color: Palette().borderColor,
                                                )
                                              ],
                                            ),
                                            SizedBox(
                                              height: 5,
                                            ),
                                            Heading5(
                                                value:
                                                    "The Question goes here ?"),
                                            SizedBox(
                                              height: 5,
                                            ),
                                            Row(
                                              children: [
                                                Container(
                                                  decoration: BoxDecoration(
                                                      color: Colors.white,
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              7)),
                                                  padding: EdgeInsets.only(
                                                      bottom: 5,
                                                      left: 10,
                                                      right: 10,
                                                      top: 5),
                                                  child: HeadingText(
                                                    size: 12,
                                                    value: "0 Answers",
                                                    color: Colors.grey[800],
                                                  ),
                                                ),
                                                SizedBox(
                                                  width: 5,
                                                ),
                                                Container(
                                                  decoration: BoxDecoration(
                                                      color: Colors.white,
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              7)),
                                                  padding: EdgeInsets.only(
                                                      bottom: 5,
                                                      left: 10,
                                                      right: 10,
                                                      top: 5),
                                                  child: HeadingText(
                                                    size: 12,
                                                    value: "1 Views",
                                                    color: Colors.grey[800],
                                                  ),
                                                ),
                                                Spacer(),
                                                Container(
                                                  decoration: BoxDecoration(
                                                      color: Colors.white,
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              7)),
                                                  child: TextButton(
                                                    onPressed: () {},
                                                    child: Row(
                                                      children: [
                                                        Icon(
                                                          Icons
                                                              .remove_red_eye_outlined,
                                                          color:
                                                              Colors.grey[800],
                                                          size: 17,
                                                        ),
                                                        SizedBox(
                                                          width: 5,
                                                        ),
                                                        HeadingText(
                                                          size: Responsive
                                                                  .isDesktop(
                                                                      context)
                                                              ? 12
                                                              : 10,
                                                          value: "View Answers",
                                                          color:
                                                              Colors.grey[800],
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            )
                                          ],
                                        ))
                                  ]),
                              SizedBox(
                                height: 5,
                              ),
                              SizedBox(
                                width: size.width - 70,
                                child: Divider(
                                  color: Palette().borderColor,
                                  thickness: 1,
                                ),
                              ),
                              Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Expanded(
                                      flex: 1,
                                      child: CircleAvatar(
                                          radius: Insets().appRadius),
                                    ),
                                    SizedBox(
                                      width: 5,
                                    ),
                                    Expanded(
                                        flex: 7,
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Heading4(
                                              value: "DOE JOHN",
                                              fontWeight: FontWeight.w600,
                                            ),
                                            SizedBox(
                                              height: 5,
                                            ),
                                            Row(
                                              children: [
                                                Container(
                                                  decoration: BoxDecoration(
                                                      color: Palette()
                                                          .primaryColor,
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              Insets()
                                                                  .appRadius)),
                                                  padding: EdgeInsets.only(
                                                      bottom: 1,
                                                      left: 10,
                                                      right: 10,
                                                      top: 1),
                                                  child: HeadingText(
                                                    size: 12,
                                                    value: "Parent",
                                                    color: Colors.white,
                                                  ),
                                                ),
                                                SizedBox(
                                                  width: 7,
                                                ),
                                                Heading6(
                                                  value: "Asked 10 minutes ago",
                                                  color: Palette().borderColor,
                                                )
                                              ],
                                            ),
                                            SizedBox(
                                              height: 5,
                                            ),
                                            Heading5(
                                                value:
                                                    "The Question goes here ?"),
                                            SizedBox(
                                              height: 5,
                                            ),
                                            Row(
                                              children: [
                                                Container(
                                                  decoration: BoxDecoration(
                                                      color: Colors.white,
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              7)),
                                                  padding: EdgeInsets.only(
                                                      bottom: 5,
                                                      left: 10,
                                                      right: 10,
                                                      top: 5),
                                                  child: HeadingText(
                                                    size: 12,
                                                    value: "0 Answers",
                                                    color: Colors.grey[800],
                                                  ),
                                                ),
                                                SizedBox(
                                                  width: 5,
                                                ),
                                                Container(
                                                  decoration: BoxDecoration(
                                                      color: Colors.white,
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              7)),
                                                  padding: EdgeInsets.only(
                                                      bottom: 5,
                                                      left: 10,
                                                      right: 10,
                                                      top: 5),
                                                  child: HeadingText(
                                                    size: 12,
                                                    value: "1 Views",
                                                    color: Colors.grey[800],
                                                  ),
                                                ),
                                                Spacer(),
                                                Container(
                                                  decoration: BoxDecoration(
                                                      color: Colors.white,
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              7)),
                                                  child: TextButton(
                                                    onPressed: () {},
                                                    child: Row(
                                                      children: [
                                                        Icon(
                                                          Icons
                                                              .remove_red_eye_outlined,
                                                          color:
                                                              Colors.grey[800],
                                                          size: 17,
                                                        ),
                                                        SizedBox(
                                                          width: 5,
                                                        ),
                                                        HeadingText(
                                                          size: Responsive
                                                                  .isDesktop(
                                                                      context)
                                                              ? 12
                                                              : 10,
                                                          value: "View Answers",
                                                          color:
                                                              Colors.grey[800],
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            )
                                          ],
                                        ))
                                  ]),
                              SizedBox(
                                height: 5,
                              ),
                              SizedBox(
                                width: size.width - 70,
                                child: Divider(
                                  color: Palette().borderColor,
                                  thickness: 1,
                                ),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Expanded(
                                      flex: 1,
                                      child: CircleAvatar(
                                          radius: Insets().appRadius),
                                    ),
                                    SizedBox(
                                      width: 5,
                                    ),
                                    Expanded(
                                        flex: 7,
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Heading4(
                                              value: "DOE JOHN",
                                              fontWeight: FontWeight.w600,
                                            ),
                                            SizedBox(
                                              height: 5,
                                            ),
                                            Row(
                                              children: [
                                                Container(
                                                  decoration: BoxDecoration(
                                                      color: Palette()
                                                          .primaryColor,
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              Insets()
                                                                  .appRadius)),
                                                  padding: EdgeInsets.only(
                                                      bottom: 1,
                                                      left: 10,
                                                      right: 10,
                                                      top: 1),
                                                  child: HeadingText(
                                                    size: 12,
                                                    value: "Parent",
                                                    color: Colors.white,
                                                  ),
                                                ),
                                                SizedBox(
                                                  width: 7,
                                                ),
                                                Heading6(
                                                  value: "Asked 10 minutes ago",
                                                  color: Palette().borderColor,
                                                )
                                              ],
                                            ),
                                            SizedBox(
                                              height: 5,
                                            ),
                                            Heading5(
                                                value:
                                                    "The Question goes here ?"),
                                            SizedBox(
                                              height: 5,
                                            ),
                                            Row(
                                              children: [
                                                Container(
                                                  decoration: BoxDecoration(
                                                      color: Colors.white,
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              7)),
                                                  padding: EdgeInsets.only(
                                                      bottom: 5,
                                                      left: 10,
                                                      right: 10,
                                                      top: 5),
                                                  child: HeadingText(
                                                    size: 12,
                                                    value: "0 Answers",
                                                    color: Colors.grey[800],
                                                  ),
                                                ),
                                                SizedBox(
                                                  width: 5,
                                                ),
                                                Container(
                                                  decoration: BoxDecoration(
                                                      color: Colors.white,
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              7)),
                                                  padding: EdgeInsets.only(
                                                      bottom: 5,
                                                      left: 10,
                                                      right: 10,
                                                      top: 5),
                                                  child: HeadingText(
                                                    size: 12,
                                                    value: "1 Views",
                                                    color: Colors.grey[800],
                                                  ),
                                                ),
                                                Spacer(),
                                                Container(
                                                  decoration: BoxDecoration(
                                                      color: Colors.white,
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              7)),
                                                  child: TextButton(
                                                    onPressed: () {},
                                                    child: Row(
                                                      children: [
                                                        Icon(
                                                          Icons
                                                              .remove_red_eye_outlined,
                                                          color:
                                                              Colors.grey[800],
                                                          size: 17,
                                                        ),
                                                        SizedBox(
                                                          width: 5,
                                                        ),
                                                        HeadingText(
                                                          size: Responsive
                                                                  .isDesktop(
                                                                      context)
                                                              ? 12
                                                              : 10,
                                                          value: "View Answers",
                                                          color:
                                                              Colors.grey[800],
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            )
                                          ],
                                        ))
                                  ]),
                              SizedBox(
                                height: 5,
                              ),
                              SizedBox(
                                width: size.width - 70,
                                child: Divider(
                                  color: Palette().borderColor,
                                  thickness: 1,
                                ),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Expanded(
                                      flex: 1,
                                      child: CircleAvatar(
                                          radius: Insets().appRadius),
                                    ),
                                    SizedBox(
                                      width: 5,
                                    ),
                                    Expanded(
                                        flex: 7,
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Heading4(
                                              value: "DOE JOHN",
                                              fontWeight: FontWeight.w600,
                                            ),
                                            SizedBox(
                                              height: 5,
                                            ),
                                            Row(
                                              children: [
                                                Container(
                                                  decoration: BoxDecoration(
                                                      color: Palette()
                                                          .primaryColor,
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              Insets()
                                                                  .appRadius)),
                                                  padding: EdgeInsets.only(
                                                      bottom: 1,
                                                      left: 10,
                                                      right: 10,
                                                      top: 1),
                                                  child: HeadingText(
                                                    size: 12,
                                                    value: "Parent",
                                                    color: Colors.white,
                                                  ),
                                                ),
                                                SizedBox(
                                                  width: 7,
                                                ),
                                                Heading6(
                                                  value: "Asked 10 minutes ago",
                                                  color: Palette().borderColor,
                                                )
                                              ],
                                            ),
                                            SizedBox(
                                              height: 5,
                                            ),
                                            Heading5(
                                                value:
                                                    "The Question goes here ?"),
                                            SizedBox(
                                              height: 5,
                                            ),
                                            Row(
                                              children: [
                                                Container(
                                                  decoration: BoxDecoration(
                                                      color: Colors.white,
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              7)),
                                                  padding: EdgeInsets.only(
                                                      bottom: 5,
                                                      left: 10,
                                                      right: 10,
                                                      top: 5),
                                                  child: HeadingText(
                                                    size: 12,
                                                    value: "0 Answers",
                                                    color: Colors.grey[800],
                                                  ),
                                                ),
                                                SizedBox(
                                                  width: 5,
                                                ),
                                                Container(
                                                  decoration: BoxDecoration(
                                                      color: Colors.white,
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              7)),
                                                  padding: EdgeInsets.only(
                                                      bottom: 5,
                                                      left: 10,
                                                      right: 10,
                                                      top: 5),
                                                  child: HeadingText(
                                                    size: 12,
                                                    value: "1 Views",
                                                    color: Colors.grey[800],
                                                  ),
                                                ),
                                                Spacer(),
                                                Container(
                                                  decoration: BoxDecoration(
                                                      color: Colors.white,
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              7)),
                                                  child: TextButton(
                                                    onPressed: () {},
                                                    child: Row(
                                                      children: [
                                                        Icon(
                                                          Icons
                                                              .remove_red_eye_outlined,
                                                          color:
                                                              Colors.grey[800],
                                                          size: 17,
                                                        ),
                                                        SizedBox(
                                                          width: 5,
                                                        ),
                                                        HeadingText(
                                                          size: Responsive
                                                                  .isDesktop(
                                                                      context)
                                                              ? 12
                                                              : 10,
                                                          value: "View Answers",
                                                          color:
                                                              Colors.grey[800],
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            )
                                          ],
                                        ))
                                  ]),
                              SizedBox(
                                height: 5,
                              ),
                              SizedBox(
                                width: size.width - 70,
                                child: Divider(
                                  color: Palette().borderColor,
                                  thickness: 1,
                                ),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Expanded(
                                      flex: 1,
                                      child: CircleAvatar(
                                          radius: Insets().appRadius),
                                    ),
                                    SizedBox(
                                      width: 5,
                                    ),
                                    Expanded(
                                        flex: 7,
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Heading4(
                                              value: "DOE JOHN",
                                              fontWeight: FontWeight.w600,
                                            ),
                                            SizedBox(
                                              height: 5,
                                            ),
                                            Row(
                                              children: [
                                                Container(
                                                  decoration: BoxDecoration(
                                                      color: Palette()
                                                          .primaryColor,
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              Insets()
                                                                  .appRadius)),
                                                  padding: EdgeInsets.only(
                                                      bottom: 1,
                                                      left: 10,
                                                      right: 10,
                                                      top: 1),
                                                  child: HeadingText(
                                                    size: 12,
                                                    value: "Parent",
                                                    color: Colors.white,
                                                  ),
                                                ),
                                                SizedBox(
                                                  width: 7,
                                                ),
                                                Heading6(
                                                  value: "Asked 10 minutes ago",
                                                  color: Palette().borderColor,
                                                )
                                              ],
                                            ),
                                            SizedBox(
                                              height: 5,
                                            ),
                                            Heading5(
                                                value:
                                                    "The Question goes here ?"),
                                            SizedBox(
                                              height: 5,
                                            ),
                                            Row(
                                              children: [
                                                Container(
                                                  decoration: BoxDecoration(
                                                      color: Colors.white,
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              7)),
                                                  padding: EdgeInsets.only(
                                                      bottom: 5,
                                                      left: 10,
                                                      right: 10,
                                                      top: 5),
                                                  child: HeadingText(
                                                    size: 12,
                                                    value: "0 Answers",
                                                    color: Colors.grey[800],
                                                  ),
                                                ),
                                                SizedBox(
                                                  width: 5,
                                                ),
                                                Container(
                                                  decoration: BoxDecoration(
                                                      color: Colors.white,
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              7)),
                                                  padding: EdgeInsets.only(
                                                      bottom: 5,
                                                      left: 10,
                                                      right: 10,
                                                      top: 5),
                                                  child: HeadingText(
                                                    size: 12,
                                                    value: "1 Views",
                                                    color: Colors.grey[800],
                                                  ),
                                                ),
                                                Spacer(),
                                                Container(
                                                  decoration: BoxDecoration(
                                                      color: Colors.white,
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              7)),
                                                  child: TextButton(
                                                    onPressed: () {},
                                                    child: Row(
                                                      children: [
                                                        Icon(
                                                          Icons
                                                              .remove_red_eye_outlined,
                                                          color:
                                                              Colors.grey[800],
                                                          size: 17,
                                                        ),
                                                        SizedBox(
                                                          width: 5,
                                                        ),
                                                        HeadingText(
                                                          size: Responsive
                                                                  .isDesktop(
                                                                      context)
                                                              ? 12
                                                              : 10,
                                                          value: "View Answers",
                                                          color:
                                                              Colors.grey[800],
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            )
                                          ],
                                        ))
                                  ]),
                              SizedBox(
                                height: 5,
                              ),
                              SizedBox(
                                width: size.width - 70,
                                child: Divider(
                                  color: Palette().borderColor,
                                  thickness: 1,
                                ),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Expanded(
                                      flex: 1,
                                      child: CircleAvatar(
                                          radius: Insets().appRadius),
                                    ),
                                    SizedBox(
                                      width: 5,
                                    ),
                                    Expanded(
                                        flex: 7,
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Heading4(
                                              value: "DOE JOHN",
                                              fontWeight: FontWeight.w600,
                                            ),
                                            SizedBox(
                                              height: 5,
                                            ),
                                            Row(
                                              children: [
                                                Container(
                                                  decoration: BoxDecoration(
                                                      color: Palette()
                                                          .primaryColor,
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              Insets()
                                                                  .appRadius)),
                                                  padding: EdgeInsets.only(
                                                      bottom: 1,
                                                      left: 10,
                                                      right: 10,
                                                      top: 1),
                                                  child: HeadingText(
                                                    size: 12,
                                                    value: "Parent",
                                                    color: Colors.white,
                                                  ),
                                                ),
                                                SizedBox(
                                                  width: 7,
                                                ),
                                                Heading6(
                                                  value: "Asked 10 minutes ago",
                                                  color: Palette().borderColor,
                                                )
                                              ],
                                            ),
                                            SizedBox(
                                              height: 5,
                                            ),
                                            Heading5(
                                                value:
                                                    "The Question goes here ?"),
                                            SizedBox(
                                              height: 5,
                                            ),
                                            Row(
                                              children: [
                                                Container(
                                                  decoration: BoxDecoration(
                                                      color: Colors.white,
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              7)),
                                                  padding: EdgeInsets.only(
                                                      bottom: 5,
                                                      left: 10,
                                                      right: 10,
                                                      top: 5),
                                                  child: HeadingText(
                                                    size: 12,
                                                    value: "0 Answers",
                                                    color: Colors.grey[800],
                                                  ),
                                                ),
                                                SizedBox(
                                                  width: 5,
                                                ),
                                                Container(
                                                  decoration: BoxDecoration(
                                                      color: Colors.white,
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              7)),
                                                  padding: EdgeInsets.only(
                                                      bottom: 5,
                                                      left: 10,
                                                      right: 10,
                                                      top: 5),
                                                  child: HeadingText(
                                                    size: 12,
                                                    value: "1 Views",
                                                    color: Colors.grey[800],
                                                  ),
                                                ),
                                                Spacer(),
                                                Container(
                                                  decoration: BoxDecoration(
                                                      color: Colors.white,
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              7)),
                                                  child: TextButton(
                                                    onPressed: () {},
                                                    child: Row(
                                                      children: [
                                                        Icon(
                                                          Icons
                                                              .remove_red_eye_outlined,
                                                          color:
                                                              Colors.grey[800],
                                                          size: 17,
                                                        ),
                                                        SizedBox(
                                                          width: 5,
                                                        ),
                                                        HeadingText(
                                                          size: Responsive
                                                                  .isDesktop(
                                                                      context)
                                                              ? 12
                                                              : 10,
                                                          value: "View Answers",
                                                          color:
                                                              Colors.grey[800],
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            )
                                          ],
                                        ))
                                  ]),
                              SizedBox(
                                height: 5,
                              ),
                              SizedBox(
                                width: size.width - 70,
                                child: Divider(
                                  color: Palette().borderColor,
                                  thickness: 1,
                                ),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Expanded(
                                      flex: 1,
                                      child: CircleAvatar(
                                          radius: Insets().appRadius),
                                    ),
                                    SizedBox(
                                      width: 5,
                                    ),
                                    Expanded(
                                        flex: 7,
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Heading4(
                                              value: "DOE JOHN",
                                              fontWeight: FontWeight.w600,
                                            ),
                                            SizedBox(
                                              height: 5,
                                            ),
                                            Row(
                                              children: [
                                                Container(
                                                  decoration: BoxDecoration(
                                                      color: Palette()
                                                          .primaryColor,
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              Insets()
                                                                  .appRadius)),
                                                  padding: EdgeInsets.only(
                                                      bottom: 1,
                                                      left: 10,
                                                      right: 10,
                                                      top: 1),
                                                  child: HeadingText(
                                                    size: 12,
                                                    value: "Parent",
                                                    color: Colors.white,
                                                  ),
                                                ),
                                                SizedBox(
                                                  width: 7,
                                                ),
                                                Heading6(
                                                  value: "Asked 10 minutes ago",
                                                  color: Palette().borderColor,
                                                )
                                              ],
                                            ),
                                            SizedBox(
                                              height: 5,
                                            ),
                                            Heading5(
                                                value:
                                                    "The Question goes here ?"),
                                            SizedBox(
                                              height: 5,
                                            ),
                                            Row(
                                              children: [
                                                Container(
                                                  decoration: BoxDecoration(
                                                      color: Colors.white,
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              7)),
                                                  padding: EdgeInsets.only(
                                                      bottom: 5,
                                                      left: 10,
                                                      right: 10,
                                                      top: 5),
                                                  child: HeadingText(
                                                    size: 12,
                                                    value: "0 Answers",
                                                    color: Colors.grey[800],
                                                  ),
                                                ),
                                                SizedBox(
                                                  width: 5,
                                                ),
                                                Container(
                                                  decoration: BoxDecoration(
                                                      color: Colors.white,
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              7)),
                                                  padding: EdgeInsets.only(
                                                      bottom: 5,
                                                      left: 10,
                                                      right: 10,
                                                      top: 5),
                                                  child: HeadingText(
                                                    size: 12,
                                                    value: "1 Views",
                                                    color: Colors.grey[800],
                                                  ),
                                                ),
                                                Spacer(),
                                                Container(
                                                  decoration: BoxDecoration(
                                                      color: Colors.white,
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              7)),
                                                  child: TextButton(
                                                    onPressed: () {},
                                                    child: Row(
                                                      children: [
                                                        Icon(
                                                          Icons
                                                              .remove_red_eye_outlined,
                                                          color:
                                                              Colors.grey[800],
                                                          size: 17,
                                                        ),
                                                        SizedBox(
                                                          width: 5,
                                                        ),
                                                        HeadingText(
                                                          size: Responsive
                                                                  .isDesktop(
                                                                      context)
                                                              ? 12
                                                              : 10,
                                                          value: "View Answers",
                                                          color:
                                                              Colors.grey[800],
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            )
                                          ],
                                        ))
                                  ]),
                              SizedBox(
                                height: 5,
                              ),
                              SizedBox(
                                width: size.width - 70,
                                child: Divider(
                                  color: Palette().borderColor,
                                  thickness: 1,
                                ),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              Expanded(
                flex: Responsive.isDesktop(context) ? 2 : -0,
                child: Responsive.isDesktop(context)
                    ? Container(
                        padding: EdgeInsets.only(
                            left: Responsive.isDesktop(context)
                                ? Insets().appPadding
                                : 10,
                            right: Responsive.isDesktop(context)
                                ? Insets().appPadding
                                : 10,
                            top: Responsive.isDesktop(context)
                                ? Insets().appPadding / 2
                                : 15,
                            bottom: Responsive.isDesktop(context)
                                ? Insets().appPadding / 2
                                : 15),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius:
                                BorderRadius.circular(Insets().appGap + 4)),
                        child: SizedBox(
                          height: 520,
                          child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Heading4(
                                  value: "Online",
                                  color: Palette().primaryColor,
                                  fontWeight: FontWeight.w700,
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Expanded(
                                  child: ListView(
                                    children: [
                                      Column(
                                        children: [
                                          Row(
                                            children: [
                                              Icon(
                                                Icons.circle,
                                                color: Colors.green,
                                                size: 15,
                                              ),
                                              SizedBox(
                                                width: 10,
                                              ),
                                              Heading5(
                                                value: "Jane John Doe",
                                                fontWeight: FontWeight.w600,
                                              ),
                                              Spacer(),
                                              Heading6(
                                                value: "Student",
                                                color: Colors.grey[800],
                                              )
                                            ],
                                          ),
                                          SizedBox(
                                            height: 5,
                                          ),
                                          SizedBox(
                                            width: size.width - 300,
                                            child: Divider(
                                              color: Palette().borderColor,
                                              thickness: 1,
                                            ),
                                          ),
                                          SizedBox(
                                            height: 5,
                                          ),
                                          Row(
                                            children: [
                                              Icon(
                                                Icons.circle,
                                                color: Colors.green,
                                                size: 15,
                                              ),
                                              SizedBox(
                                                width: 10,
                                              ),
                                              Heading5(
                                                value: "Jane John Doe",
                                                fontWeight: FontWeight.w600,
                                              ),
                                              Spacer(),
                                              Heading6(
                                                value: "Student",
                                                color: Colors.grey[800],
                                              )
                                            ],
                                          ),
                                          SizedBox(
                                            height: 5,
                                          ),
                                          SizedBox(
                                            width: size.width - 300,
                                            child: Divider(
                                              color: Palette().borderColor,
                                              thickness: 1,
                                            ),
                                          ),
                                          SizedBox(
                                            height: 5,
                                          ),
                                          Row(
                                            children: [
                                              Icon(
                                                Icons.circle,
                                                color: Colors.green,
                                                size: 15,
                                              ),
                                              SizedBox(
                                                width: 10,
                                              ),
                                              Heading5(
                                                value: "Jane John Doe",
                                                fontWeight: FontWeight.w600,
                                              ),
                                              Spacer(),
                                              Heading6(
                                                value: "Student",
                                                color: Colors.grey[800],
                                              )
                                            ],
                                          ),
                                          SizedBox(
                                            height: 5,
                                          ),
                                          SizedBox(
                                            width: size.width - 300,
                                            child: Divider(
                                              color: Palette().borderColor,
                                              thickness: 1,
                                            ),
                                          ),
                                          SizedBox(
                                            height: 5,
                                          ),
                                          Row(
                                            children: [
                                              Icon(
                                                Icons.circle,
                                                color: Colors.green,
                                                size: 15,
                                              ),
                                              SizedBox(
                                                width: 10,
                                              ),
                                              Heading5(
                                                value: "Jane John Doe",
                                                fontWeight: FontWeight.w600,
                                              ),
                                              Spacer(),
                                              Heading6(
                                                value: "Student",
                                                color: Colors.grey[800],
                                              )
                                            ],
                                          ),
                                          SizedBox(
                                            height: 5,
                                          ),
                                          SizedBox(
                                            width: size.width - 300,
                                            child: Divider(
                                              color: Palette().borderColor,
                                              thickness: 1,
                                            ),
                                          ),
                                          SizedBox(
                                            height: 5,
                                          ),
                                          Row(
                                            children: [
                                              Icon(
                                                Icons.circle,
                                                color: Colors.green,
                                                size: 15,
                                              ),
                                              SizedBox(
                                                width: 10,
                                              ),
                                              Heading5(
                                                value: "Jane John Doe",
                                                fontWeight: FontWeight.w600,
                                              ),
                                              Spacer(),
                                              Heading6(
                                                value: "Student",
                                                color: Colors.grey[800],
                                              )
                                            ],
                                          ),
                                          SizedBox(
                                            height: 5,
                                          ),
                                          SizedBox(
                                            width: size.width - 300,
                                            child: Divider(
                                              color: Palette().borderColor,
                                              thickness: 1,
                                            ),
                                          ),
                                          SizedBox(
                                            height: 5,
                                          ),
                                          Row(
                                            children: [
                                              Icon(
                                                Icons.circle,
                                                color: Colors.green,
                                                size: 15,
                                              ),
                                              SizedBox(
                                                width: 10,
                                              ),
                                              Heading5(
                                                value: "Jane John Doe",
                                                fontWeight: FontWeight.w600,
                                              ),
                                              Spacer(),
                                              Heading6(
                                                value: "Student",
                                                color: Colors.grey[800],
                                              )
                                            ],
                                          ),
                                          SizedBox(
                                            height: 5,
                                          ),
                                          SizedBox(
                                            width: size.width - 300,
                                            child: Divider(
                                              color: Palette().borderColor,
                                              thickness: 1,
                                            ),
                                          ),
                                          SizedBox(
                                            height: 5,
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                )
                              ]),
                        ),
                      )
                    : Offstage(),
              )
            ],
          ),
        ),
      ])),
    );
  }
}
