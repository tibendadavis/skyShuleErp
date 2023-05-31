import 'package:flutter/material.dart';
import 'package:skyconnect_starter/components/heading5.dart';
import 'package:skyconnect_starter/components/heading_text.dart';
import 'package:skyconnect_starter/components/inputOptions.comp.dart';
import 'package:skyconnect_starter/components/inputTextField.comp.dart';
import 'package:skyconnect_starter/screens/ID%20Cards/components/idCard.comp.dart';
import 'package:skyconnect_starter/controllers/responsive.dart';
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
              left: Responsive.isDesktop(context)
                  ? Insets().appPadding * 2
                  : Insets().appPadding,
              right: Insets().appGap),
          child: HeadingText(
            size: Responsive.isDesktop(context) ? 35 : 30,
            value: "ID Cards",
            fontWeight: FontWeight.w700,
            color: Colors.grey.shade800,
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
              color: Colors.white,
              borderRadius: BorderRadius.circular(Insets().appGap + 4)),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: !Responsive.isDesktop(context)
                    ? MediaQuery.of(context).size.width
                    : MediaQuery.of(context).size.width / 2.3,
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      inputOptions(
                        title: "ID Card For",
                        opt1: "Student",
                        opt2: "Teaching Staff",
                        opt3: "Non Teaching Staff",
                      ),
                      SizedBox(
                        height: Responsive.isDesktop(context) ? 10 : 15,
                      ),
                      inputOptions(
                        title: "Department",
                        opt1: "",
                      ),
                      SizedBox(
                        height: Responsive.isDesktop(context) ? 10 : 15,
                      ),
                      inputTextField(title: "Search", hintText: "Search"),
                      SizedBox(
                        height: Responsive.isDesktop(context) ? 10 : 15,
                      ),
                      inputOptions(
                        title: "ID Card Type",
                        opt1: "",
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
                                size: Responsive.isDesktop(context) ? 16 : 14,
                                value: "Generate ID Card",
                              )),
                            ),
                          ),
                        ],
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
