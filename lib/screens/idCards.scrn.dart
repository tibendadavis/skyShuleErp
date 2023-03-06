import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:html_editor_enhanced/utils/shims/dart_ui.dart';
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
import 'package:skyconnect_starter/components/idCard.comp.dart';
import 'package:skyconnect_starter/controllers/responsive.dart';
import 'package:skyconnect_starter/screens/addSubject.scrn.dart';
import 'package:skyconnect_starter/screens/addTerm.scrn.dart';
import 'package:skyconnect_starter/screens/student_admission.scrn.dart';
import 'package:skyconnect_starter/theme/design.theme.dart';

class idCards extends StatefulWidget {
  const idCards({super.key});

  @override
  State<idCards> createState() => _idCardsState();
}

class _idCardsState extends State<idCards> {
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
            value: "ID CARDS",
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
                              value: "Card Type Format"),
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
                                        value: "Default",
                                      ),
                                      value: "Default"),
                                  DropdownMenuItem(
                                      child: Heading5(
                                        value: "Custom",
                                      ),
                                      value: "Custom"),
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
                                  value: "Card Type Format",
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
                              value: "ID Card For"),
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
                                        value: "Teacher",
                                      ),
                                      value: "Teacher"),
                                  DropdownMenuItem(
                                      child: Heading5(
                                        value: "Student",
                                      ),
                                      value: "Student"),
                                  DropdownMenuItem(
                                      child: Heading5(
                                        value: "Non Teaching",
                                      ),
                                      value: "Non Teaching"),
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
                                  value: "ID Card For",
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
                              value: "Department"),
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
                                  value: "Department",
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
                              value: "ID Card Type"),
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
                                        value: "",
                                      ),
                                      value: ""),
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
                                  value: "ID Card Type",
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
                                value: "Generate ID Card",
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
                    direction: Responsive.isDesktop(context)
                        ? Axis.horizontal
                        : Axis.vertical,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Container(
                        // margin: const EdgeInsets.only(
                        //     left: 20.0, right: 12.0),
                        child: IDCardFront(
                            name: "name",
                            idNumber: "idNumber",
                            imageUrl: "imageUrl",
                            employeeCode: "employeeCode",
                            designation: "designation",
                            department: "department",
                            mobile: "mobile",
                            address: "address"),
                      ),
                      SizedBox(
                        height: Responsive.isDesktop(context) ? 0 : 15,
                      ),
                      Container(
                        // margin: const EdgeInsets.only(
                        //     left: 12.0, right: 20.0),
                        child: IDCardBack(),
                      )
                    ],
                  ),
                ],
              ),
            ))
      ])),
    );
  }
}
