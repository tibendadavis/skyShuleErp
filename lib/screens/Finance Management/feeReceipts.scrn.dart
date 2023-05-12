import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import 'package:path/path.dart';
import 'package:skyconnect_starter/components/app_drawer/skyShuleDrawer.dart';
import 'package:skyconnect_starter/components/certificate.comp.dart';
import 'package:skyconnect_starter/components/header.dart';
import 'package:skyconnect_starter/components/heading1.dart';
import 'package:skyconnect_starter/components/heading2.dart';
import 'package:skyconnect_starter/components/heading3.dart';
import 'package:skyconnect_starter/components/heading4.dart';
import 'package:skyconnect_starter/components/heading5.dart';
import 'package:skyconnect_starter/components/heading6.dart';
import 'package:skyconnect_starter/components/heading_text.dart';
import 'package:skyconnect_starter/screens/ID%20Cards/components/idCard.comp.dart';
import 'package:skyconnect_starter/screens/Finance%20Management/components/receipt.comp.dart';
import 'package:skyconnect_starter/controllers/responsive.dart';
import 'package:skyconnect_starter/screens/Subjects/addSubject.scrn.dart';
import 'package:skyconnect_starter/screens/Terms/addTerm.scrn.dart';
import 'package:skyconnect_starter/screens/Users/student_admission.scrn.dart';
import 'package:skyconnect_starter/theme/design.theme.dart';

class feeReceipts extends StatefulWidget {
  const feeReceipts({super.key});

  @override
  State<feeReceipts> createState() => _feeReceiptsState();
}

class _feeReceiptsState extends State<feeReceipts> {
  bool _menu = false;
  bool generate = false;
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
            value: "FEE RECEIPTS",
            fontWeight: FontWeight.w700,
            color: Colors.black,
          ),
        ),
        Container(
          width: MediaQuery.of(context).size.width,
          margin: EdgeInsets.only(
              left: Responsive.isDesktop(context)
                  ? Insets().appPadding * 2
                  : Insets().appPadding,
              right: Responsive.isDesktop(context)
                  ? Insets().appPadding * 2
                  : Insets().appPadding,
              top: Responsive.isDesktop(context) ? Insets().appPadding : 12,
              bottom: Responsive.isDesktop(context) ? Insets().appPadding : 12),
          padding: EdgeInsets.only(
              left: Responsive.isDesktop(context) ? Insets().appPadding : 10,
              right: Responsive.isDesktop(context) ? Insets().appGap / 2 : 10,
              top: Responsive.isDesktop(context) ? Insets().appPadding / 2 : 5,
              bottom:
                  Responsive.isDesktop(context) ? Insets().appPadding / 2 : 10),
          decoration: BoxDecoration(
              color: Palette().primaryColorLight,
              borderRadius: BorderRadius.circular(Insets().appGap + 4)),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: !Responsive.isDesktop(context)
                    ? MediaQuery.of(context).size.width
                    : MediaQuery.of(context).size.width / 2,
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // Flex(
                      //   direction: Responsive.isDesktop(context)
                      //       ? Axis.horizontal
                      //       : Axis.vertical,
                      //   mainAxisAlignment: Responsive.isDesktop(context)
                      //       ? MainAxisAlignment.spaceBetween
                      //       : MainAxisAlignment.start,
                      //   crossAxisAlignment:
                      //       Responsive.isDesktop(context)
                      //           ? CrossAxisAlignment.center
                      //           : CrossAxisAlignment.start,
                      //   children: [
                      //     HeadingText(
                      //         size: Responsive.isDesktop(context)
                      //             ? 18
                      //             : 14,
                      //         value: "Card Type Format"),
                      //     SizedBox(
                      //       width: 400,
                      //       height:
                      //           Responsive.isDesktop(context) ? 50 : 40,
                      //       child: Container(
                      //         padding: EdgeInsets.only(
                      //           left: Insets().appPadding / 2,
                      //           right: Insets().appPadding / 2,
                      //         ),
                      //         decoration: BoxDecoration(
                      //             border: Border.all(
                      //                 color: Colors.grey, width: 1.5),
                      //             color: Colors.white,
                      //             borderRadius: BorderRadius.circular(
                      //                 Insets().appGap + 4)),
                      //         child: DropdownButton(
                      //           items: const [
                      //             DropdownMenuItem(
                      //                 child: Heading5(
                      //                   value: "Default",
                      //                 ),
                      //                 value: "Default"),
                      //             DropdownMenuItem(
                      //                 child: Heading5(
                      //                   value: "Custom",
                      //                 ),
                      //                 value: "Custom"),
                      //           ],
                      //           value: _classlevel,
                      //           isExpanded: true,
                      //           iconSize: 35,
                      //           icon: Icon(
                      //               Icons.keyboard_arrow_down_outlined),
                      //           underline: SizedBox(),
                      //           dropdownColor: Colors.white,
                      //           borderRadius: BorderRadius.circular(
                      //               Insets().appRadiusMin + 4),
                      //           hint: Heading5(
                      //             value: "Card Type Format",
                      //           ),
                      //           onChanged: ((value) {
                      //             if (value is int) {
                      //               setState(() {
                      //                 _classlevel = value;
                      //               });
                      //             }
                      //           }),
                      //         ),
                      //       ),
                      //     ),
                      //   ],
                      // ),
                      // SizedBox(
                      //   height: Responsive.isDesktop(context) ? 10 : 15,
                      // ),
                      Flex(
                        direction: Responsive.isDesktop(context)
                            ? Axis.horizontal
                            : Axis.vertical,
                        mainAxisAlignment: Responsive.isDesktop(context)
                            ? MainAxisAlignment.spaceBetween
                            : MainAxisAlignment.start,
                        crossAxisAlignment: Responsive.isDesktop(context)
                            ? CrossAxisAlignment.center
                            : CrossAxisAlignment.start,
                        children: [
                          HeadingText(
                              size: Responsive.isDesktop(context) ? 18 : 14,
                              value: "Receipt For"),
                          SizedBox(
                            width: 400,
                            height: Responsive.isDesktop(context) ? 50 : 40,
                            child: Container(
                              padding: EdgeInsets.only(
                                left: Insets().appPadding / 2,
                                right: Insets().appPadding / 2,
                              ),
                              decoration: BoxDecoration(
                                  border: Border.all(
                                      color: Colors.grey, width: 1.5),
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(
                                      Insets().appGap + 4)),
                              child: DropdownButton(
                                items: const [
                                  DropdownMenuItem(
                                      child: Heading5(
                                        value: "Student",
                                      ),
                                      value: "Student"),
                                  DropdownMenuItem(
                                      child: Heading5(
                                        value: "Teacher Staff",
                                      ),
                                      value: "Teacher Staff"),
                                  DropdownMenuItem(
                                      child: Heading5(
                                        value: "Non Teaching Staff",
                                      ),
                                      value: "Non Teaching Staff"),
                                ],
                                value: _classlevel,
                                isExpanded: true,
                                iconSize: 35,
                                icon: Icon(Icons.keyboard_arrow_down_outlined),
                                underline: SizedBox(),
                                dropdownColor: Colors.white,
                                borderRadius: BorderRadius.circular(
                                    Insets().appRadiusMin + 4),
                                hint: Heading5(
                                  value: "Receipt For",
                                ),
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
                        height: Responsive.isDesktop(context) ? 10 : 15,
                      ),
                      Flex(
                        direction: Responsive.isDesktop(context)
                            ? Axis.horizontal
                            : Axis.vertical,
                        mainAxisAlignment: Responsive.isDesktop(context)
                            ? MainAxisAlignment.spaceBetween
                            : MainAxisAlignment.start,
                        crossAxisAlignment: Responsive.isDesktop(context)
                            ? CrossAxisAlignment.center
                            : CrossAxisAlignment.start,
                        children: [
                          HeadingText(
                              size: Responsive.isDesktop(context) ? 18 : 14,
                              value: "Search"),
                          SizedBox(
                            width: 400,
                            height: Responsive.isDesktop(context) ? 50 : 40,
                            child: Container(
                              alignment: Alignment.centerLeft,
                              padding: EdgeInsets.only(
                                left: Insets().appPadding / 2,
                                right: Insets().appPadding / 2,
                              ),
                              decoration: BoxDecoration(
                                  border: Border.all(
                                      width: 1.5, color: Colors.grey),
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(
                                      Insets().appPadding / 1.5)),
                              child: TextFormField(
                                  textAlignVertical: TextAlignVertical.center,
                                  decoration: const InputDecoration(
                                    border: InputBorder.none,
                                    hintText: "Search",
                                  )),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: Responsive.isDesktop(context) ? 10 : 15,
                      ),
                      Flex(
                        direction: Responsive.isDesktop(context)
                            ? Axis.horizontal
                            : Axis.vertical,
                        mainAxisAlignment: Responsive.isDesktop(context)
                            ? MainAxisAlignment.spaceBetween
                            : MainAxisAlignment.start,
                        crossAxisAlignment: Responsive.isDesktop(context)
                            ? CrossAxisAlignment.center
                            : CrossAxisAlignment.start,
                        children: [
                          HeadingText(
                              size: Responsive.isDesktop(context) ? 18 : 14,
                              value: "Account No."),
                          SizedBox(
                            width: 400,
                            height: Responsive.isDesktop(context) ? 50 : 40,
                            child: Container(
                              padding: EdgeInsets.only(
                                left: Insets().appPadding / 2,
                                right: Insets().appPadding / 2,
                              ),
                              decoration: BoxDecoration(
                                  border: Border.all(
                                      color: Colors.grey, width: 1.5),
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(
                                      Insets().appGap + 4)),
                              child: DropdownButton(
                                items: const [
                                  DropdownMenuItem(
                                      child: Heading5(
                                        value: " ",
                                      ),
                                      value: " "),
                                  DropdownMenuItem(
                                      child: Heading5(
                                        value: "",
                                      ),
                                      value: ""),
                                  DropdownMenuItem(
                                      child: Heading5(
                                        value: "",
                                      ),
                                      value: ""),
                                ],
                                value: _classlevel,
                                isExpanded: true,
                                iconSize: 35,
                                icon: Icon(Icons.keyboard_arrow_down_outlined),
                                underline: SizedBox(),
                                dropdownColor: Colors.white,
                                borderRadius: BorderRadius.circular(
                                    Insets().appRadiusMin + 4),
                                hint: Heading5(
                                  value: "Account No.",
                                ),
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
                        height: Responsive.isDesktop(context) ? 10 : 15,
                      ),

                      Flex(
                        direction: Responsive.isDesktop(context)
                            ? Axis.horizontal
                            : Axis.vertical,
                        mainAxisAlignment: Responsive.isDesktop(context)
                            ? MainAxisAlignment.spaceBetween
                            : MainAxisAlignment.start,
                        crossAxisAlignment: Responsive.isDesktop(context)
                            ? CrossAxisAlignment.center
                            : CrossAxisAlignment.start,
                        children: [
                          HeadingText(
                              size: Responsive.isDesktop(context) ? 18 : 14,
                              value: "Fee Payment"),
                          SizedBox(
                            width: 400,
                            height: Responsive.isDesktop(context) ? 50 : 40,
                            child: Container(
                              padding: EdgeInsets.only(
                                left: Insets().appPadding / 2,
                                right: Insets().appPadding / 2,
                              ),
                              decoration: BoxDecoration(
                                  border: Border.all(
                                      color: Colors.grey, width: 1.5),
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(
                                      Insets().appGap + 4)),
                              child: DropdownButton(
                                items: const [
                                  DropdownMenuItem(
                                      child: Heading5(
                                        value: " ",
                                      ),
                                      value: " "),
                                  DropdownMenuItem(
                                      child: Heading5(
                                        value: "",
                                      ),
                                      value: ""),
                                  DropdownMenuItem(
                                      child: Heading5(
                                        value: "",
                                      ),
                                      value: ""),
                                ],
                                value: _classlevel,
                                isExpanded: true,
                                iconSize: 35,
                                icon: Icon(Icons.keyboard_arrow_down_outlined),
                                underline: SizedBox(),
                                dropdownColor: Colors.white,
                                borderRadius: BorderRadius.circular(
                                    Insets().appRadiusMin + 4),
                                hint: Heading5(
                                  value: "Fee Payment",
                                ),
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
                        height: Responsive.isDesktop(context) ? 10 : 15,
                      ),

                      Flex(
                        direction: Responsive.isDesktop(context)
                            ? Axis.horizontal
                            : Axis.vertical,
                        mainAxisAlignment: Responsive.isDesktop(context)
                            ? MainAxisAlignment.end
                            : MainAxisAlignment.start,
                        crossAxisAlignment: Responsive.isDesktop(context)
                            ? CrossAxisAlignment.center
                            : CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            width: 400,
                            height: Responsive.isDesktop(context) ? 50 : 40,
                            child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                  padding: EdgeInsets.only(
                                    left: Insets().appPadding / 2,
                                    right: Insets().appPadding / 2,
                                  ),
                                  backgroundColor: Palette().primaryColor,
                                  elevation: 0,
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(
                                          Insets().appPadding / 1.5))),
                              onPressed: () {
                                setState(() {
                                  generate = true;
                                });
                              },
                              child: Center(
                                  child: HeadingText(
                                size: Responsive.isDesktop(context) ? 18 : 14,
                                value: "Generate Receipt",
                              )),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: Responsive.isDesktop(context) ? 10 : 15,
                      ),
                    ]),
              ),
            ],
          ),
        ),
        Visibility(
            visible: generate,
            child: Expanded(
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.red),
                          onPressed: () {
                            setState(() {
                              generate = !generate;
                            });
                          },
                          child: Heading5(
                            value: "Cancel",
                          )),
                      SizedBox(
                        width: 20,
                      ),
                      ElevatedButton(
                          onPressed: () {},
                          child: Heading5(
                            value: "Print",
                          )),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Flex(
                    direction: Axis.vertical,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        child: receipt(
                            name: "Aderick",
                            regNo: "RG 207 / SH",
                            date: "12/12/2022",
                            paidAmount: "100",
                            stdClass: "3",
                            rollNo: "7",
                            mobile: "06912345678",
                            feeAmount: "100",
                            feeName: "School Fees"),
                      ),
                    ],
                  ),
                ],
              ),
            ))
      ])),
    );
  }
}
