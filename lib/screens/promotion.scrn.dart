import 'package:file_picker/file_picker.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';
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
import 'package:skyconnect_starter/components/uploadDocuments.dart';
import 'package:skyconnect_starter/controllers/responsive.dart';
import 'package:skyconnect_starter/components/academicDetails.dart';
import 'package:skyconnect_starter/theme/design.theme.dart';

class promotion extends StatefulWidget {
  const promotion({super.key});

  @override
  State<promotion> createState() => _promotionState();
}

class _promotionState extends State<promotion> {
  bool perClass = true;
  bool schoolstmp = false;
  var picked;
  bool _menu = false;
  var _specialGrade;
  var _classlevel;
  var _designation;
  double _drawersize = 250;
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
        height: Responsive.isDesktop(context) ? size.height : size.height,
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
                  decoration: BoxDecoration(color: Palette().primaryColorLight),
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
                    left: Insets().appPadding,
                    right: Insets().appGap),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Heading2(
                      value: "PROMOTION",
                      fontWeight: FontWeight.w700,
                      color: Colors.black,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    const Heading4(
                      value: "Promote Student to Next Class",
                      fontWeight: FontWeight.w600,
                      color: Colors.black,
                    ),
                  ],
                ),
              ),
              // Container(
              //   alignment: Alignment.centerLeft,
              //   padding: EdgeInsets.only(
              //       top: Insets().appPadding,
              //       bottom: Insets().appPadding,
              //       left: Insets().appPadding,
              //       right: Insets().appPadding),
              //   margin: EdgeInsets.only(
              //       bottom: Insets().appPadding / 2,
              //       top: Insets().appPadding / 2,
              //       right: Insets().appPadding,
              //       left: Insets().appPadding),
              //   decoration: BoxDecoration(
              //       color: Palette().primaryColorLight,
              //       borderRadius: BorderRadius.circular(Insets().appRadius)),
              //   child: Flex(
              //     direction: Responsive.isDesktop(context)
              //         ? Axis.horizontal
              //         : Axis.horizontal,
              //     mainAxisAlignment: Responsive.isDesktop(context)
              //         ? MainAxisAlignment.start
              //         : MainAxisAlignment.start,
              //     crossAxisAlignment: Responsive.isDesktop(context)
              //         ? CrossAxisAlignment.start
              //         : CrossAxisAlignment.start,
              //     children: [
              //       SizedBox(
              //         width: Responsive.isDesktop(context) ? 220 : 150,
              //         height: Responsive.isDesktop(context) ? 50 : 40,
              //         child: ElevatedButton(
              //             onPressed: () {
              //               setState(() {
              //                 perClass = true;
              //                 schoolstmp = false;
              //               });
              //             },
              //             style: ElevatedButton.styleFrom(
              //                 elevation: 0,
              //                 backgroundColor: !perClass
              //                     ? Colors.white
              //                     : Palette().primaryColor,
              //                 side: BorderSide(
              //                   width: 1,
              //                   color: !perClass
              //                       ? Colors.black
              //                       : Colors.transparent,
              //                 ),
              //                 shape: RoundedRectangleBorder(
              //                     borderRadius: BorderRadius.circular(
              //                         Insets().appRadiusMin + 4)),
              //                 padding: EdgeInsets.only(
              //                     left: Insets().appPadding / 1.5,
              //                     right: Insets().appPadding / 1.5,
              //                     top: Insets().appPadding,
              //                     bottom: Insets().appPadding)),
              //             child: HeadingText(
              //               size: Responsive.isDesktop(context) ? 14 : 12,
              //               value: "Promote Per Class",
              //               color: !perClass ? Colors.black : Colors.white,
              //             )),
              //       ),
              //       //   SizedBox(
              //       //     width: Responsive.isDesktop(context) ? 10 : 10,
              //       //     height: Responsive.isDesktop(context) ? 0 : 10,
              //       //   ),
              //       //   SizedBox(
              //       //     width: Responsive.isDesktop(context) ? 220 : 120,
              //       //     height: Responsive.isDesktop(context) ? 50 : 40,
              //       //     child: ElevatedButton(
              //       //         onPressed: () {
              //       //           setState(() {
              //       //             perClass = false;
              //       //             schoolstmp = true;
              //       //           });
              //       //         },
              //       //         style: ElevatedButton.styleFrom(
              //       //             elevation: 0,
              //       //             backgroundColor: !schoolstmp
              //       //                 ? Colors.white
              //       //                 : Palette().primaryColor,
              //       //             side: BorderSide(
              //       //               width: 1,
              //       //               color: !schoolstmp
              //       //                   ? Colors.black
              //       //                   : Colors.transparent,
              //       //             ),
              //       //             shape: RoundedRectangleBorder(
              //       //                 borderRadius: BorderRadius.circular(
              //       //                     Insets().appRadiusMin + 4)),
              //       //             padding: EdgeInsets.only(
              //       //                 left: Insets().appPadding / 1.5,
              //       //                 right: Insets().appPadding / 1.5,
              //       //                 top: Insets().appPadding,
              //       //                 bottom: Insets().appPadding)),
              //       //         child: HeadingText(
              //       //           size: Responsive.isDesktop(context) ? 14 : 12,
              //       //           value: "Pr",
              //       //           color: !schoolstmp ? Colors.black : Colors.white,
              //       //         )),
              //       //   ),
              //     ],
              //   ),
              // ),

              Container(
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
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        RichText(
                          text: TextSpan(children: [
                            TextSpan(
                              text: "NOTE: ",
                              style: GoogleFonts.openSans(
                                  color: Colors.black,
                                  fontSize: 15,
                                  fontWeight: FontWeight.w700),
                            ),
                            TextSpan(
                                text:
                                    "Usually, students are promoted at the end of the year. To promote students you must start from final class in Descending order ",
                                style: GoogleFonts.openSans(
                                    color: Colors.black, fontSize: 15)),
                            TextSpan(
                              text:
                                  "eg. Class seven to Class Six then Class Five to Class Six",
                              style: GoogleFonts.openSans(
                                  color: Colors.black,
                                  fontSize: 15,
                                  fontWeight: FontWeight.w700),
                            )
                          ]),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        SizedBox(
                          width: size.width,
                          child: Divider(
                            color: Colors.grey[700],
                            thickness: 1,
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Container(
                            width: MediaQuery.of(context).size.width,
                            alignment: Alignment.center,
                            padding: EdgeInsets.only(
                                top: Insets().appPadding,
                                bottom: Insets().appPadding,
                                left: Insets().appPadding,
                                right: Insets().appPadding),
                            decoration: BoxDecoration(
                                color: Palette().primaryColorLight,
                                borderRadius:
                                    BorderRadius.circular(Insets().appRadius)),
                            child: SizedBox(
                              width: 450,
                              child: Column(
                                children: [
                                  Flex(
                                    direction: Responsive.isDesktop(context)
                                        ? Axis.horizontal
                                        : Axis.vertical,
                                    mainAxisAlignment:
                                        Responsive.isDesktop(context)
                                            ? MainAxisAlignment.spaceBetween
                                            : MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        Responsive.isDesktop(context)
                                            ? CrossAxisAlignment.center
                                            : CrossAxisAlignment.start,
                                    children: [
                                      HeadingText(
                                          size: Responsive.isDesktop(context)
                                              ? 18
                                              : 14,
                                          value: "From Class"),
                                      SizedBox(
                                        width: Responsive.isDesktop(context)
                                            ? 300
                                            : 400,
                                        height: Responsive.isDesktop(context)
                                            ? 50
                                            : 40,
                                        child: Container(
                                          padding: EdgeInsets.only(
                                            left: Insets().appPadding / 2,
                                            right: Insets().appPadding / 2,
                                          ),
                                          decoration: BoxDecoration(
                                              border: Border.all(
                                                  color: Colors.grey,
                                                  width: 1.5),
                                              color: Colors.white,
                                              borderRadius:
                                                  BorderRadius.circular(
                                                      Insets().appGap + 4)),
                                          child: DropdownButton(
                                            items: const [
                                              DropdownMenuItem(
                                                  child: Heading5(
                                                    value: "Class One",
                                                  ),
                                                  value: "Class One"),
                                              DropdownMenuItem(
                                                  child: Heading5(
                                                    value: "Class Two",
                                                  ),
                                                  value: "Class Two"),
                                              DropdownMenuItem(
                                                  child: Heading5(
                                                    value: "Class Three",
                                                  ),
                                                  value: "Class Three"),
                                            ],
                                            value: _classlevel,
                                            isExpanded: true,
                                            iconSize: 35,
                                            icon: Icon(Icons
                                                .keyboard_arrow_down_outlined),
                                            underline: SizedBox(),
                                            dropdownColor: Colors.white,
                                            borderRadius: BorderRadius.circular(
                                                Insets().appRadiusMin + 4),
                                            onChanged: ((value) {
                                              if (value is int) {
                                                setState(() {
                                                  _classlevel = value;
                                                });
                                              }
                                            }),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    height:
                                        Responsive.isDesktop(context) ? 10 : 15,
                                  ),
                                  Flex(
                                    direction: Responsive.isDesktop(context)
                                        ? Axis.horizontal
                                        : Axis.vertical,
                                    mainAxisAlignment:
                                        Responsive.isDesktop(context)
                                            ? MainAxisAlignment.spaceBetween
                                            : MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        Responsive.isDesktop(context)
                                            ? CrossAxisAlignment.center
                                            : CrossAxisAlignment.start,
                                    children: [
                                      HeadingText(
                                          size: Responsive.isDesktop(context)
                                              ? 18
                                              : 14,
                                          value: "To Class"),
                                      SizedBox(
                                        width: Responsive.isDesktop(context)
                                            ? 300
                                            : 400,
                                        height: Responsive.isDesktop(context)
                                            ? 50
                                            : 40,
                                        child: Container(
                                          padding: EdgeInsets.only(
                                            left: Insets().appPadding / 2,
                                            right: Insets().appPadding / 2,
                                          ),
                                          decoration: BoxDecoration(
                                              border: Border.all(
                                                  color: Colors.grey,
                                                  width: 1.5),
                                              color: Colors.white,
                                              borderRadius:
                                                  BorderRadius.circular(
                                                      Insets().appGap + 4)),
                                          child: DropdownButton(
                                            items: const [
                                              DropdownMenuItem(
                                                  child: Heading5(
                                                    value: "Class One",
                                                  ),
                                                  value: "Class One"),
                                              DropdownMenuItem(
                                                  child: Heading5(
                                                    value: "Class Two",
                                                  ),
                                                  value: "Class Two"),
                                              DropdownMenuItem(
                                                  child: Heading5(
                                                    value: "Class Three",
                                                  ),
                                                  value: "Class Three"),
                                            ],
                                            value: _classlevel,
                                            isExpanded: true,
                                            iconSize: 35,
                                            icon: Icon(Icons
                                                .keyboard_arrow_down_outlined),
                                            underline: SizedBox(),
                                            dropdownColor: Colors.white,
                                            borderRadius: BorderRadius.circular(
                                                Insets().appRadiusMin + 4),
                                            onChanged: ((value) {
                                              if (value is int) {
                                                setState(() {
                                                  _classlevel = value;
                                                });
                                              }
                                            }),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    height:
                                        Responsive.isDesktop(context) ? 30 : 35,
                                  ),
                                  Flex(
                                    direction: Responsive.isDesktop(context)
                                        ? Axis.horizontal
                                        : Axis.vertical,
                                    mainAxisAlignment:
                                        Responsive.isDesktop(context)
                                            ? MainAxisAlignment.center
                                            : MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        Responsive.isDesktop(context)
                                            ? CrossAxisAlignment.center
                                            : CrossAxisAlignment.start,
                                    children: [
                                      SizedBox(
                                        width: Responsive.isDesktop(context)
                                            ? 450
                                            : 450,
                                        height: Responsive.isDesktop(context)
                                            ? 50
                                            : 40,
                                        child: ElevatedButton(
                                          style: ElevatedButton.styleFrom(
                                              padding: EdgeInsets.only(
                                                left: Insets().appPadding / 2,
                                                right: Insets().appPadding / 2,
                                              ),
                                              backgroundColor:
                                                  Palette().primaryColor,
                                              elevation: 0,
                                              shape: RoundedRectangleBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          Insets().appPadding /
                                                              1.5))),
                                          onPressed: () {},
                                          child: Center(
                                              child: HeadingText(
                                            size: Responsive.isDesktop(context)
                                                ? 18
                                                : 14,
                                            value: "Promote",
                                          )),
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ))
                      ],
                    ),
                  ],
                ),
              )
            ],
          ))
        ]),
      )),
    );
  }
}
