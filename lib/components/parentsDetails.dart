import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:skyconnect_starter/components/heading4.dart';
import 'package:skyconnect_starter/components/heading5.dart';
import 'package:skyconnect_starter/components/heading_text.dart';
import 'package:skyconnect_starter/controllers/responsive.dart';
import 'package:skyconnect_starter/theme/design.theme.dart';

class parentsDetails extends StatefulWidget {
  const parentsDetails({super.key});

  @override
  State<parentsDetails> createState() => _parentsDetailsState();
}

class _parentsDetailsState extends State<parentsDetails> {
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
                  value: "Parents Full Name"),
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
                        hintText: "Parents Full Name",
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
                  value: "Parents Email"),
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
                        hintText: "Parents Email",
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
                  value: "Parents Phone No"),
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
                        hintText: "Parents Phone No.",
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
                  value: "Parents Mobile No"),
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
                        hintText: "TZ +255",
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
                  value: "Parent's Image Upload"),
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
                        hintText: "No file Chosen",
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
                  value: "Parents Present Address"),
              SizedBox(
                width: 350,
                height: Responsive.isDesktop(context) ? 90 : 70,
                child: Container(
                  alignment: Alignment.topLeft,
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
                      maxLines: double.maxFinite.floor(),
                      keyboardType: TextInputType.multiline,
                      textAlignVertical: TextAlignVertical.top,
                      decoration: const InputDecoration(
                        border: InputBorder.none,
                        hintText: "Present Address",
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
                  value: "Country"),
              SizedBox(
                width: 350,
                height: 40,
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
                      value: "Select Country",
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
                  value: "State"),
              SizedBox(
                width: 350,
                height: 40,
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
                      value: "Select State",
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
                  size: Responsive.isDesktop(context) ? 18 : 14, value: "City"),
              SizedBox(
                width: 350,
                height: 40,
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
                      value: "Select City",
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
