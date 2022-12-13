import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:skyconnect_starter/components/heading4.dart';
import 'package:skyconnect_starter/components/heading5.dart';
import 'package:skyconnect_starter/components/heading6.dart';
import 'package:skyconnect_starter/components/heading_text.dart';
import 'package:skyconnect_starter/controllers/responsive.dart';
import 'package:skyconnect_starter/theme/design.theme.dart';

class officialDetails extends StatefulWidget {
  const officialDetails({super.key});

  @override
  State<officialDetails> createState() => _officialDetailsState();
}

class _officialDetailsState extends State<officialDetails> {
  var _academicYear;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: !Responsive.isDesktop(context)
          ? MediaQuery.of(context).size.width
          : MediaQuery.of(context).size.width / 1.8,
      padding: EdgeInsets.only(
        top: Responsive.isDesktop(context) ? Insets().appPadding * 2 : 14,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Flex(
            direction:
                Responsive.isDesktop(context) ? Axis.horizontal : Axis.vertical,
            mainAxisAlignment: Responsive.isDesktop(context)
                ? MainAxisAlignment.spaceBetween
                : MainAxisAlignment.start,
            crossAxisAlignment: Responsive.isDesktop(context)
                ? CrossAxisAlignment.center
                : CrossAxisAlignment.start,
            children: [
              HeadingText(
                  size: Responsive.isDesktop(context) ? 18 : 14,
                  value: "Is New Student"),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Checkbox(
                    value: false,
                    onChanged: (value) {},
                  ),
                  HeadingText(
                      size: Responsive.isDesktop(context) ? 18 : 13,
                      value: "Is a new student"),
                  SizedBox(
                    width: Responsive.isDesktop(context) ? 10 : 5,
                  ),
                  Checkbox(
                    value: false,
                    onChanged: (value) {},
                  ),
                  HeadingText(
                      size: Responsive.isDesktop(context) ? 18 : 13,
                      value: "Not a new student"),
                ],
              )
            ],
          ),
          SizedBox(
            height: Responsive.isDesktop(context) ? 10 : 15,
          ),
          Flex(
            direction:
                Responsive.isDesktop(context) ? Axis.horizontal : Axis.vertical,
            mainAxisAlignment: Responsive.isDesktop(context)
                ? MainAxisAlignment.spaceBetween
                : MainAxisAlignment.start,
            crossAxisAlignment: Responsive.isDesktop(context)
                ? CrossAxisAlignment.center
                : CrossAxisAlignment.start,
            children: [
              HeadingText(
                  size: Responsive.isDesktop(context) ? 18 : 14,
                  value: "Application No."),
              SizedBox(
                width: 350,
                height: Responsive.isDesktop(context) ? 50 : 40,
                child: Container(
                  alignment: Alignment.centerLeft,
                  padding: EdgeInsets.only(
                    left: Insets().appPadding / 2,
                    right: Insets().appPadding / 2,
                  ),
                  decoration: BoxDecoration(
                      border: Border.all(width: 1.5, color: Colors.grey),
                      color: Colors.white,
                      borderRadius:
                          BorderRadius.circular(Insets().appPadding / 1.5)),
                  child: TextFormField(
                      textAlignVertical: TextAlignVertical.center,
                      decoration: const InputDecoration(
                        border: InputBorder.none,
                        hintText: "Application Number",
                      )),
                ),
              ),
            ],
          ),
          SizedBox(
            height: Responsive.isDesktop(context) ? 10 : 15,
          ),
          Flex(
            direction:
                Responsive.isDesktop(context) ? Axis.horizontal : Axis.vertical,
            mainAxisAlignment: Responsive.isDesktop(context)
                ? MainAxisAlignment.spaceBetween
                : MainAxisAlignment.start,
            crossAxisAlignment: Responsive.isDesktop(context)
                ? CrossAxisAlignment.center
                : CrossAxisAlignment.start,
            children: [
              HeadingText(
                  size: Responsive.isDesktop(context) ? 18 : 14,
                  value: "Academic Year."),
              SizedBox(
                width: 350,
                height: Responsive.isDesktop(context) ? 50 : 40,
                child: Container(
                  padding: EdgeInsets.only(
                    left: Insets().appPadding / 2,
                    right: Insets().appPadding / 2,
                  ),
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey, width: 1.5),
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(Insets().appGap + 4)),
                  child: DropdownButton(
                    items: const [
                      DropdownMenuItem(
                          child: Heading5(
                            value: "2019",
                          ),
                          value: 2019),
                      DropdownMenuItem(
                          child: Heading5(
                            value: "2020",
                          ),
                          value: 2020),
                      DropdownMenuItem(
                          child: Heading5(
                            value: "2021",
                          ),
                          value: 2021),
                      DropdownMenuItem(
                          child: Heading5(
                            value: "2022",
                          ),
                          value: 2022),
                      DropdownMenuItem(
                          child: Heading5(
                            value: "2023",
                          ),
                          value: 2023)
                    ],
                    value: _academicYear,
                    isExpanded: true,
                    iconSize: 35,
                    icon: Icon(Icons.keyboard_arrow_down_outlined),
                    underline: SizedBox(),
                    dropdownColor: Colors.white,
                    borderRadius:
                        BorderRadius.circular(Insets().appRadiusMin + 4),
                    hint: Heading5(
                      value: "Select Academic Year",
                    ),
                    onChanged: ((value) {
                      if (value is int) {
                        setState(() {
                          _academicYear = value;
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
            direction:
                Responsive.isDesktop(context) ? Axis.horizontal : Axis.vertical,
            mainAxisAlignment: Responsive.isDesktop(context)
                ? MainAxisAlignment.spaceBetween
                : MainAxisAlignment.start,
            crossAxisAlignment: Responsive.isDesktop(context)
                ? CrossAxisAlignment.center
                : CrossAxisAlignment.start,
            children: [
              HeadingText(
                  size: Responsive.isDesktop(context) ? 18 : 14,
                  value: "Date of Admission."),
              SizedBox(
                width: 250,
                height: Responsive.isDesktop(context) ? 50 : 40,
                child: Container(
                  padding: EdgeInsets.only(
                    left: Insets().appPadding / 2,
                    right: Insets().appPadding / 2,
                  ),
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey, width: 1.5),
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(Insets().appGap + 4)),
                  child: DropdownButton(
                    items: const [
                      DropdownMenuItem(
                          child: Heading5(
                            value: "2019",
                          ),
                          value: 2019),
                      DropdownMenuItem(
                          child: Heading5(
                            value: "2020",
                          ),
                          value: 2020),
                      DropdownMenuItem(
                          child: Heading5(
                            value: "2021",
                          ),
                          value: 2021),
                      DropdownMenuItem(
                          child: Heading5(
                            value: "2022",
                          ),
                          value: 2022),
                      DropdownMenuItem(
                          child: Heading5(
                            value: "2023",
                          ),
                          value: 2023)
                    ],
                    value: _academicYear,
                    isExpanded: true,
                    iconSize: 35,
                    icon: Icon(Icons.keyboard_arrow_down_outlined),
                    underline: SizedBox(),
                    dropdownColor: Colors.white,
                    borderRadius:
                        BorderRadius.circular(Insets().appRadiusMin + 4),
                    hint: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Icon(Icons.calendar_month_outlined),
                        SizedBox(
                          width: 10,
                        ),
                        Heading5(
                          value: "Date of Admission",
                        ),
                      ],
                    ),
                    onChanged: ((value) {
                      if (value is int) {
                        setState(() {
                          _academicYear = value;
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
            direction:
                Responsive.isDesktop(context) ? Axis.horizontal : Axis.vertical,
            mainAxisAlignment: Responsive.isDesktop(context)
                ? MainAxisAlignment.spaceBetween
                : MainAxisAlignment.start,
            crossAxisAlignment: Responsive.isDesktop(context)
                ? CrossAxisAlignment.center
                : CrossAxisAlignment.start,
            children: [
              HeadingText(
                  size: Responsive.isDesktop(context) ? 18 : 14,
                  value: "Stream"),
              SizedBox(
                width: 350,
                height: Responsive.isDesktop(context) ? 50 : 40,
                child: Container(
                  padding: EdgeInsets.only(
                    left: Insets().appPadding / 2,
                    right: Insets().appPadding / 2,
                  ),
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey, width: 1.5),
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(Insets().appGap + 4)),
                  child: DropdownButton(
                    items: const [
                      DropdownMenuItem(
                          child: Heading5(
                            value: "2019",
                          ),
                          value: 2019),
                      DropdownMenuItem(
                          child: Heading5(
                            value: "2020",
                          ),
                          value: 2020),
                      DropdownMenuItem(
                          child: Heading5(
                            value: "2021",
                          ),
                          value: 2021),
                      DropdownMenuItem(
                          child: Heading5(
                            value: "2022",
                          ),
                          value: 2022),
                      DropdownMenuItem(
                          child: Heading5(
                            value: "2023",
                          ),
                          value: 2023)
                    ],
                    value: _academicYear,
                    isExpanded: true,
                    iconSize: 35,
                    icon: Icon(Icons.keyboard_arrow_down_outlined),
                    underline: SizedBox(),
                    dropdownColor: Colors.white,
                    borderRadius:
                        BorderRadius.circular(Insets().appRadiusMin + 4),
                    hint: Heading5(
                      value: "Select Stream",
                    ),
                    onChanged: ((value) {
                      if (value is int) {
                        setState(() {
                          _academicYear = value;
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
            direction:
                Responsive.isDesktop(context) ? Axis.horizontal : Axis.vertical,
            mainAxisAlignment: Responsive.isDesktop(context)
                ? MainAxisAlignment.spaceBetween
                : MainAxisAlignment.start,
            crossAxisAlignment: Responsive.isDesktop(context)
                ? CrossAxisAlignment.center
                : CrossAxisAlignment.start,
            children: [
              HeadingText(
                  size: Responsive.isDesktop(context) ? 18 : 14,
                  value: "Shift name"),
              SizedBox(
                width: 350,
                height: Responsive.isDesktop(context) ? 50 : 40,
                child: Container(
                  padding: EdgeInsets.only(
                    left: Insets().appPadding / 2,
                    right: Insets().appPadding / 2,
                  ),
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey, width: 1.5),
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(Insets().appGap + 4)),
                  child: DropdownButton(
                    items: const [
                      DropdownMenuItem(
                          child: Heading5(
                            value: "2019",
                          ),
                          value: 2019),
                      DropdownMenuItem(
                          child: Heading5(
                            value: "2020",
                          ),
                          value: 2020),
                      DropdownMenuItem(
                          child: Heading5(
                            value: "2021",
                          ),
                          value: 2021),
                      DropdownMenuItem(
                          child: Heading5(
                            value: "2022",
                          ),
                          value: 2022),
                      DropdownMenuItem(
                          child: Heading5(
                            value: "2023",
                          ),
                          value: 2023)
                    ],
                    value: _academicYear,
                    isExpanded: true,
                    iconSize: 35,
                    icon: Icon(Icons.keyboard_arrow_down_outlined),
                    underline: SizedBox(),
                    dropdownColor: Colors.white,
                    borderRadius:
                        BorderRadius.circular(Insets().appRadiusMin + 4),
                    hint: Heading5(
                      value: "Select Shift",
                    ),
                    onChanged: ((value) {
                      if (value is int) {
                        setState(() {
                          _academicYear = value;
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
            direction:
                Responsive.isDesktop(context) ? Axis.horizontal : Axis.vertical,
            mainAxisAlignment: Responsive.isDesktop(context)
                ? MainAxisAlignment.spaceBetween
                : MainAxisAlignment.start,
            crossAxisAlignment: Responsive.isDesktop(context)
                ? CrossAxisAlignment.center
                : CrossAxisAlignment.start,
            children: [
              HeadingText(
                  size: Responsive.isDesktop(context) ? 18 : 14,
                  value: "Class"),
              SizedBox(
                width: 350,
                height: Responsive.isDesktop(context) ? 50 : 40,
                child: Container(
                  padding: EdgeInsets.only(
                    left: Insets().appPadding / 2,
                    right: Insets().appPadding / 2,
                  ),
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey, width: 1.5),
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(Insets().appGap + 4)),
                  child: DropdownButton(
                    items: const [
                      DropdownMenuItem(
                          child: Heading5(
                            value: "2019",
                          ),
                          value: 2019),
                      DropdownMenuItem(
                          child: Heading5(
                            value: "2020",
                          ),
                          value: 2020),
                      DropdownMenuItem(
                          child: Heading5(
                            value: "2021",
                          ),
                          value: 2021),
                      DropdownMenuItem(
                          child: Heading5(
                            value: "2022",
                          ),
                          value: 2022),
                      DropdownMenuItem(
                          child: Heading5(
                            value: "2023",
                          ),
                          value: 2023)
                    ],
                    value: _academicYear,
                    isExpanded: true,
                    iconSize: 35,
                    icon: Icon(Icons.keyboard_arrow_down_outlined),
                    underline: SizedBox(),
                    dropdownColor: Colors.white,
                    borderRadius:
                        BorderRadius.circular(Insets().appRadiusMin + 4),
                    hint: Heading5(
                      value: "Select Class",
                    ),
                    onChanged: ((value) {
                      if (value is int) {
                        setState(() {
                          _academicYear = value;
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
            direction:
                Responsive.isDesktop(context) ? Axis.horizontal : Axis.vertical,
            mainAxisAlignment: Responsive.isDesktop(context)
                ? MainAxisAlignment.spaceBetween
                : MainAxisAlignment.start,
            crossAxisAlignment: Responsive.isDesktop(context)
                ? CrossAxisAlignment.center
                : CrossAxisAlignment.start,
            children: [
              HeadingText(
                  size: Responsive.isDesktop(context) ? 18 : 14,
                  value: "Stream Name"),
              SizedBox(
                width: 350,
                height: Responsive.isDesktop(context) ? 50 : 40,
                child: Container(
                  padding: EdgeInsets.only(
                    left: Insets().appPadding / 2,
                    right: Insets().appPadding / 2,
                  ),
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey, width: 1.5),
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(Insets().appGap + 4)),
                  child: DropdownButton(
                    items: const [
                      DropdownMenuItem(
                          child: Heading5(
                            value: "2019",
                          ),
                          value: 2019),
                      DropdownMenuItem(
                          child: Heading5(
                            value: "2020",
                          ),
                          value: 2020),
                      DropdownMenuItem(
                          child: Heading5(
                            value: "2021",
                          ),
                          value: 2021),
                      DropdownMenuItem(
                          child: Heading5(
                            value: "2022",
                          ),
                          value: 2022),
                      DropdownMenuItem(
                          child: Heading5(
                            value: "2023",
                          ),
                          value: 2023)
                    ],
                    value: _academicYear,
                    isExpanded: true,
                    iconSize: 35,
                    icon: Icon(Icons.keyboard_arrow_down_outlined),
                    underline: SizedBox(),
                    dropdownColor: Colors.white,
                    borderRadius:
                        BorderRadius.circular(Insets().appRadiusMin + 4),
                    hint: Heading5(
                      value: "Select Stream",
                    ),
                    onChanged: ((value) {
                      if (value is int) {
                        setState(() {
                          _academicYear = value;
                        });
                      }
                    }),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
