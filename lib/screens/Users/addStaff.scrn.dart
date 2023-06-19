import 'package:flutter/material.dart';
import 'package:skyconnect_starter/components/heading2.dart';
import 'package:skyconnect_starter/components/heading3.dart';
import 'package:skyconnect_starter/components/heading_text.dart';
import 'package:skyconnect_starter/components/inputBigText.comp.dart';
import 'package:skyconnect_starter/components/inputDate.comp.dart';
import 'package:skyconnect_starter/components/inputFile.comp.dart';
import 'package:skyconnect_starter/components/inputGender.comp.dart';
import 'package:skyconnect_starter/components/inputOptions.comp.dart';
import 'package:skyconnect_starter/components/inputTextField.comp.dart';
import 'package:skyconnect_starter/controllers/responsive.dart';
import 'package:skyconnect_starter/theme/design.theme.dart';

class addStaff extends StatefulWidget {
  const addStaff({super.key});

  @override
  State<addStaff> createState() => _addStaffState();
}

class _addStaffState extends State<addStaff>
    with SingleTickerProviderStateMixin {
  bool regStaff = true;
  bool regbyExcl = false;
  var picked;

  late AnimationController controller;
  late Animation<double> scaleAnimation;
  @override
  void initState() {
    super.initState();

    controller =
        AnimationController(vsync: this, duration: Duration(milliseconds: 700));
    scaleAnimation = CurvedAnimation(
        parent: controller, curve: Curves.fastLinearToSlowEaseIn);

    controller.addListener(() {
      setState(() {});
    });

    controller.forward();
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Center(
      child: Material(
        color: Colors.transparent,
        child: ScaleTransition(
          scale: scaleAnimation,
          child: Container(
            margin: EdgeInsets.only(
                top: Responsive.isDesktop(context) ? 20 : 50,
                bottom: Responsive.isDesktop(context) ? 20 : 50),
            decoration: ShapeDecoration(
                color: Colors.white,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15.0))),
            child: SingleChildScrollView(
                child: SizedBox(
              width: Responsive.isDesktop(context)
                  ? size.width / 1.2
                  : size.width - 20,
              child: Expanded(
                  child: Column(
                children: [
                  Container(
                    alignment: Alignment.bottomLeft,
                    padding: EdgeInsets.only(
                        top: Insets().appPadding,
                        left: Insets().appPadding * 2,
                        right: Insets().appGap),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Heading2(
                          value: "SUPPORTING STAFF",
                          fontWeight: FontWeight.w700,
                          color: Colors.black,
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        const Heading3(
                          value: "Supporting Staff Information",
                          fontWeight: FontWeight.w600,
                          color: Colors.black,
                        ),
                      ],
                    ),
                  ),
                  Container(
                    alignment: Alignment.centerLeft,
                    padding: EdgeInsets.only(
                        top: Insets().appPadding,
                        bottom: Insets().appPadding,
                        left: Insets().appPadding,
                        right: Insets().appPadding),
                    margin: EdgeInsets.all(Insets().appPadding),
                    decoration: BoxDecoration(
                        color: Palette().primaryColorLight,
                        borderRadius:
                            BorderRadius.circular(Insets().appRadius)),
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
                          width: Responsive.isDesktop(context) ? 220 : 130,
                          height: Responsive.isDesktop(context) ? 50 : 40,
                          child: ElevatedButton(
                              onPressed: () {
                                setState(() {
                                  regStaff = true;
                                  regbyExcl = false;
                                });
                              },
                              style: ElevatedButton.styleFrom(
                                  elevation: 0,
                                  backgroundColor: !regStaff
                                      ? Colors.white
                                      : Palette().primaryColor,
                                  side: BorderSide(
                                    width: 1,
                                    color: !regStaff
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
                                value: "Register Staff",
                                color: !regStaff ? Colors.black : Colors.white,
                              )),
                        ),
                        SizedBox(
                          width: Responsive.isDesktop(context) ? 10 : 10,
                          height: Responsive.isDesktop(context) ? 0 : 10,
                        ),
                        SizedBox(
                          width: Responsive.isDesktop(context) ? 220 : 130,
                          height: Responsive.isDesktop(context) ? 50 : 40,
                          child: ElevatedButton(
                              onPressed: () {
                                setState(() {
                                  regStaff = false;
                                  regbyExcl = true;
                                });
                              },
                              style: ElevatedButton.styleFrom(
                                  elevation: 0,
                                  backgroundColor: !regbyExcl
                                      ? Colors.white
                                      : Palette().primaryColor,
                                  side: BorderSide(
                                    width: 1,
                                    color: !regbyExcl
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
                                size: Responsive.isDesktop(context) ? 14 : 11,
                                value: "Upload From Excel",
                                color: !regbyExcl ? Colors.black : Colors.white,
                              )),
                        ),
                      ],
                    ),
                  ),
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
                        borderRadius:
                            BorderRadius.circular(Insets().appRadius)),
                    child: Visibility(
                      visible: regStaff,
                      child: Flex(
                        direction: Responsive.isDesktop(context)
                            ? Axis.horizontal
                            : Axis.vertical,
                        mainAxisAlignment: Responsive.isDesktop(context)
                            ? MainAxisAlignment.spaceBetween
                            : MainAxisAlignment.start,
                        crossAxisAlignment: Responsive.isDesktop(context)
                            ? CrossAxisAlignment.start
                            : CrossAxisAlignment.start,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                width: Responsive.isDesktop(context)
                                    ? MediaQuery.of(context).size.width / 2.67
                                    : MediaQuery.of(context).size.width,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    inputTextField(
                                        title: "Full Name",
                                        hintText: "Full Name"),
                                    SizedBox(
                                      height: Responsive.isDesktop(context)
                                          ? 10
                                          : 15,
                                    ),
                                    inputDate(
                                        heading: "Date of Birth",
                                        subheading: "Date of Birth"),
                                    SizedBox(
                                      height: Responsive.isDesktop(context)
                                          ? 10
                                          : 15,
                                    ),
                                    inputGender(),
                                    SizedBox(
                                      height: Responsive.isDesktop(context)
                                          ? 10
                                          : 15,
                                    ),
                                    inputOptions(
                                      title: "Nationality",
                                      opt1: "Tanzania (United Republic of)",
                                      opt2: "Kenya ",
                                      opt3: "Uganda",
                                    ),
                                    SizedBox(
                                      height: Responsive.isDesktop(context)
                                          ? 10
                                          : 15,
                                    ),
                                    inputTextField(
                                      title: "National ID No.",
                                      hintText: "NIDA",
                                    ),
                                    SizedBox(
                                      height: Responsive.isDesktop(context)
                                          ? 10
                                          : 15,
                                    ),
                                    inputTextField(
                                      title: "ID number/\nPF-number",
                                      hintText: "ID number/PF-number",
                                    ),
                                    SizedBox(
                                      height: Responsive.isDesktop(context)
                                          ? 10
                                          : 15,
                                    ),
                                    inputOptions(
                                      title: "Designation",
                                      opt1: "",
                                    ),
                                    SizedBox(
                                      height: Responsive.isDesktop(context)
                                          ? 10
                                          : 15,
                                    ),
                                    inputTextField(
                                        title: "Education Level",
                                        hintText: "Education"),
                                    SizedBox(
                                      height: Responsive.isDesktop(context)
                                          ? 10
                                          : 15,
                                    ),
                                    inputOptions(
                                      title: "Physical Condition",
                                      opt1: "",
                                    ),
                                    SizedBox(
                                      height: Responsive.isDesktop(context)
                                          ? 10
                                          : 15,
                                    ),
                                    inputOptions(
                                        title: "Health Status",
                                        opt1: "",
                                        opt2: ""),
                                    SizedBox(
                                      height: Responsive.isDesktop(context)
                                          ? 10
                                          : 15,
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: Responsive.isDesktop(context) ? 550 : 0,
                            child: Responsive.isDesktop(context)
                                ? VerticalDivider(
                                    thickness: 1.5,
                                    color: Colors.grey,
                                  )
                                : Offstage(),
                            width: Responsive.isDesktop(context) ? 0 : 10,
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                width: Responsive.isDesktop(context)
                                    ? MediaQuery.of(context).size.width / 2.67
                                    : MediaQuery.of(context).size.width,
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    inputOptions(
                                        title: "Health Insuarance",
                                        opt1: "",
                                        opt2: ""),
                                    SizedBox(
                                      height: Responsive.isDesktop(context)
                                          ? 10
                                          : 15,
                                    ),
                                    inputOptions(
                                      title: "Religion",
                                      opt1: "Christianity",
                                      opt2: "Islam",
                                      opt3: "Paganism",
                                    ),
                                    SizedBox(
                                      height: Responsive.isDesktop(context)
                                          ? 10
                                          : 15,
                                    ),
                                    inputTextField(
                                        title: "Email",
                                        hintText:
                                            "Valid email eg. samson@gmail.com"),
                                    SizedBox(
                                      height: Responsive.isDesktop(context)
                                          ? 10
                                          : 15,
                                    ),
                                    inputTextField(
                                        title: "Phone",
                                        hintText: "eg 0693123456"),
                                    SizedBox(
                                      height: Responsive.isDesktop(context)
                                          ? 10
                                          : 15,
                                    ),
                                    inputBigText(
                                        title: "Address", hintText: "Address"),
                                    SizedBox(
                                      height: Responsive.isDesktop(context)
                                          ? 10
                                          : 15,
                                    ),
                                    inputDate(
                                        heading: "Joining Date",
                                        subheading: "Joining Date"),
                                    SizedBox(
                                      height: Responsive.isDesktop(context)
                                          ? 10
                                          : 15,
                                    ),
                                    inputFile(heading: "Photo"),
                                    SizedBox(
                                      height: Responsive.isDesktop(context)
                                          ? 110
                                          : 20,
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
                                              ? 403
                                              : 403,
                                          height: Responsive.isDesktop(context)
                                              ? 50
                                              : 40,
                                          child: ElevatedButton(
                                            style: ElevatedButton.styleFrom(
                                                padding: EdgeInsets.only(
                                                  left: Insets().appPadding / 2,
                                                  right:
                                                      Insets().appPadding / 2,
                                                ),
                                                backgroundColor:
                                                    Palette().primaryColor,
                                                elevation: 0,
                                                shape: RoundedRectangleBorder(
                                                    borderRadius: BorderRadius
                                                        .circular(Insets()
                                                                .appPadding /
                                                            1.5))),
                                            onPressed: () {},
                                            child: Center(
                                                child: HeadingText(
                                              size:
                                                  Responsive.isDesktop(context)
                                                      ? 18
                                                      : 14,
                                              value: "Save",
                                            )),
                                          ),
                                        ),
                                      ],
                                    ),
                                    SizedBox(
                                      height: Responsive.isDesktop(context)
                                          ? 10
                                          : 15,
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              )),
            )),
          ),
        ),
      ),
    );
  }
}
