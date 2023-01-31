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
import 'package:skyconnect_starter/screens/addClassRoutine.scrn.dart';
import 'package:skyconnect_starter/screens/student_admission.scrn.dart';
import 'package:skyconnect_starter/theme/design.theme.dart';

class classRoutine extends StatefulWidget {
  const classRoutine({super.key});

  @override
  State<classRoutine> createState() => _classRoutineState();
}

class _classRoutineState extends State<classRoutine> {
  bool _menu = false;
  double _drawersize = 250;
  var _classlevel;

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
          height: size.height + 150,
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
                    value: "CLASS ROUTINE",
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
                                : 13,
                            bottom: Responsive.isDesktop(context)
                                ? Insets().appPadding
                                : 10),
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
                                    showDialog(
                                      context: context,
                                      builder: (_) => addClassRoutine(),
                                    );
                                  },
                                  style: ElevatedButton.styleFrom(
                                      backgroundColor: Colors.white,
                                      shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.circular(
                                              Insets().appRadiusMin + 4)),
                                      padding:
                                          EdgeInsets.all(Insets().appPadding)),
                                  child: Heading5(
                                    value: "Add Class Routine",
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
                      top: Insets().appPadding / 2,
                      bottom: Insets().appPadding / 2),
                  padding: EdgeInsets.only(
                      left: Insets().appPadding,
                      right: Insets().appGap / 2,
                      top: Insets().appGap / 3,
                      bottom: Insets().appGap / 3),
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey, width: 2),
                      color: Palette().primaryColorLight,
                      borderRadius: BorderRadius.circular(Insets().appGap + 4)),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                            child: HeadingText(
                          size: Responsive.isDesktop(context) ? 18 : 16,
                          value: " Class Level: ",
                          fontWeight: FontWeight.w600,
                        )),
                        SizedBox(
                          width: Responsive.isDesktop(context) ? 10 : 5,
                        ),
                        Container(
                          width: Responsive.isDesktop(context) ? 300 : 150,
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
                              borderRadius:
                                  BorderRadius.circular(Insets().appGap + 4)),
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
                                      value: "Primary", color: Colors.white),
                                  value: "Primary"),
                              DropdownMenuItem(
                                  child: Heading6(
                                      value: "Secondary", color: Colors.white),
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
                          width: 10,
                        ),
                      ]),
                ),
                Container(
                  margin: EdgeInsets.only(
                    left: Responsive.isDesktop(context)
                        ? Insets().appPadding * 4
                        : 13,
                    right: Responsive.isDesktop(context)
                        ? Insets().appPadding * 4
                        : 13,
                  ),
                  padding: EdgeInsets.only(
                      left: Insets().appGap / 2,
                      right: Insets().appGap / 2,
                      top: Insets().appGap / 3,
                      bottom: Insets().appGap / 3),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
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
                              : Insets().appPadding,
                          right: Responsive.isDesktop(context)
                              ? Insets().appPadding * 2
                              : Insets().appPadding,
                          top: Insets().appPadding / 2),
                      padding: EdgeInsets.only(
                          left: Insets().appPadding,
                          right: Insets().appPadding,
                          top: Insets().appPadding,
                          bottom: Insets().appPadding),
                      decoration: BoxDecoration(
                          color: Palette().primaryColorLight,
                          borderRadius:
                              BorderRadius.circular(Insets().appGap + 4)),
                      child: SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: SizedBox(
                            width: Responsive.isDesktop(context)
                                ? size.width - 370
                                : size.width + 200,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                HeadingText(
                                  size: Responsive.isDesktop(context) ? 18 : 14,
                                  value: "MONDAY",
                                  fontWeight: FontWeight.w700,
                                ),
                              ],
                            ),
                          )),
                    ),
                    Container(
                      margin: EdgeInsets.only(
                        left: Responsive.isDesktop(context)
                            ? Insets().appPadding * 2
                            : Insets().appPadding,
                        right: Responsive.isDesktop(context)
                            ? Insets().appPadding * 2
                            : Insets().appPadding,
                      ),
                      padding: EdgeInsets.only(
                          left: Insets().appPadding,
                          right: Insets().appPadding,
                          top: Insets().appPadding,
                          bottom: Insets().appPadding),
                      decoration: BoxDecoration(
                          borderRadius:
                              BorderRadius.circular(Insets().appGap + 4)),
                      child: SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: SizedBox(
                            width: Responsive.isDesktop(context)
                                ? size.width - 370
                                : size.width + 200,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                HeadingText(
                                  size: Responsive.isDesktop(context) ? 18 : 14,
                                  value: "TUESDAY",
                                  fontWeight: FontWeight.w700,
                                ),
                              ],
                            ),
                          )),
                    ),
                    Container(
                      margin: EdgeInsets.only(
                        left: Responsive.isDesktop(context)
                            ? Insets().appPadding * 2
                            : Insets().appPadding,
                        right: Responsive.isDesktop(context)
                            ? Insets().appPadding * 2
                            : Insets().appPadding,
                      ),
                      padding: EdgeInsets.only(
                          left: Insets().appPadding,
                          right: Insets().appPadding,
                          top: Insets().appPadding,
                          bottom: Insets().appPadding),
                      decoration: BoxDecoration(
                          color: Palette().primaryColorLight,
                          borderRadius:
                              BorderRadius.circular(Insets().appGap + 4)),
                      child: SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: SizedBox(
                            width: Responsive.isDesktop(context)
                                ? size.width - 370
                                : size.width + 200,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                HeadingText(
                                  size: Responsive.isDesktop(context) ? 18 : 14,
                                  value: "WEDNESDAY",
                                  fontWeight: FontWeight.w700,
                                ),
                              ],
                            ),
                          )),
                    ),
                    Container(
                      margin: EdgeInsets.only(
                        left: Responsive.isDesktop(context)
                            ? Insets().appPadding * 2
                            : Insets().appPadding,
                        right: Responsive.isDesktop(context)
                            ? Insets().appPadding * 2
                            : Insets().appPadding,
                      ),
                      padding: EdgeInsets.only(
                          left: Insets().appPadding,
                          right: Insets().appPadding,
                          top: Insets().appPadding,
                          bottom: Insets().appPadding),
                      decoration: BoxDecoration(
                          borderRadius:
                              BorderRadius.circular(Insets().appGap + 4)),
                      child: SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: SizedBox(
                            width: Responsive.isDesktop(context)
                                ? size.width - 370
                                : size.width + 200,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                HeadingText(
                                  size: Responsive.isDesktop(context) ? 18 : 14,
                                  value: "THURSDAY",
                                  fontWeight: FontWeight.w700,
                                ),
                              ],
                            ),
                          )),
                    ),
                    Container(
                      margin: EdgeInsets.only(
                        left: Responsive.isDesktop(context)
                            ? Insets().appPadding * 2
                            : Insets().appPadding,
                        right: Responsive.isDesktop(context)
                            ? Insets().appPadding * 2
                            : Insets().appPadding,
                      ),
                      padding: EdgeInsets.only(
                          left: Insets().appPadding,
                          right: Insets().appPadding,
                          top: Insets().appPadding,
                          bottom: Insets().appPadding),
                      decoration: BoxDecoration(
                          color: Palette().primaryColorLight,
                          borderRadius:
                              BorderRadius.circular(Insets().appGap + 4)),
                      child: SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: SizedBox(
                            width: Responsive.isDesktop(context)
                                ? size.width - 370
                                : size.width + 200,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                HeadingText(
                                  size: Responsive.isDesktop(context) ? 18 : 14,
                                  value: "FRIDAY",
                                  fontWeight: FontWeight.w700,
                                ),
                              ],
                            ),
                          )),
                    ),
                    Container(
                      margin: EdgeInsets.only(
                        left: Responsive.isDesktop(context)
                            ? Insets().appPadding * 2
                            : Insets().appPadding,
                        right: Responsive.isDesktop(context)
                            ? Insets().appPadding * 2
                            : Insets().appPadding,
                      ),
                      padding: EdgeInsets.only(
                          left: Insets().appPadding,
                          right: Insets().appPadding,
                          top: Insets().appPadding,
                          bottom: Insets().appPadding),
                      decoration: BoxDecoration(
                          borderRadius:
                              BorderRadius.circular(Insets().appGap + 4)),
                      child: SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: SizedBox(
                            width: Responsive.isDesktop(context)
                                ? size.width - 370
                                : size.width + 200,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                HeadingText(
                                  size: Responsive.isDesktop(context) ? 18 : 14,
                                  value: "SATURDAY",
                                  fontWeight: FontWeight.w700,
                                ),
                              ],
                            ),
                          )),
                    ),
                    Container(
                      margin: EdgeInsets.only(
                        left: Responsive.isDesktop(context)
                            ? Insets().appPadding * 2
                            : Insets().appPadding,
                        right: Responsive.isDesktop(context)
                            ? Insets().appPadding * 2
                            : Insets().appPadding,
                      ),
                      padding: EdgeInsets.only(
                          left: Insets().appPadding,
                          right: Insets().appPadding,
                          top: Insets().appPadding,
                          bottom: Insets().appPadding),
                      decoration: BoxDecoration(
                          color: Palette().primaryColorLight,
                          borderRadius:
                              BorderRadius.circular(Insets().appGap + 4)),
                      child: SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: SizedBox(
                            width: Responsive.isDesktop(context)
                                ? size.width - 370
                                : size.width + 200,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                HeadingText(
                                  size: Responsive.isDesktop(context) ? 18 : 14,
                                  value: "SUNDAY",
                                  fontWeight: FontWeight.w700,
                                ),
                              ],
                            ),
                          )),
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
