import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:skyconnect_starter/components/heading4.dart';
import 'package:skyconnect_starter/components/heading5.dart';
import 'package:skyconnect_starter/components/heading_text.dart';
import 'package:skyconnect_starter/controllers/responsive.dart';
import 'package:skyconnect_starter/theme/design.theme.dart';

class contactsDetails extends StatefulWidget {
  const contactsDetails({super.key});

  @override
  State<contactsDetails> createState() => _contactsDetailsState();
}

class _contactsDetailsState extends State<contactsDetails> {
  var _academicYear;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(
        top: Responsive.isDesktop(context) ? Insets().appPadding * 2 : 14,
      ),
      child: Flex(
        direction:
            Responsive.isDesktop(context) ? Axis.horizontal : Axis.vertical,
        mainAxisAlignment: Responsive.isDesktop(context)
            ? MainAxisAlignment.spaceBetween
            : MainAxisAlignment.start,
        crossAxisAlignment: Responsive.isDesktop(context)
            ? CrossAxisAlignment.start
            : CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: Responsive.isDesktop(context) ? null : 620,
            width: Responsive.isDesktop(context)
                ? MediaQuery.of(context).size.width / 2.7
                : null,
            child: Expanded(
              flex: 8,
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      padding: EdgeInsets.only(
                        top: Responsive.isDesktop(context)
                            ? Insets().appPadding / 1.2
                            : 10,
                        bottom: Responsive.isDesktop(context)
                            ? Insets().appPadding / 1.2
                            : 12,
                      ),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius:
                              BorderRadius.circular(Insets().appRadius / 2)),
                      child: Center(
                          child: HeadingText(
                        size: 16,
                        value: "Present Address",
                        fontWeight: FontWeight.bold,
                      )),
                    ),
                    SizedBox(
                      height: 20,
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
                            value: "Present Address"),
                        SizedBox(
                          width: 350,
                          height: Responsive.isDesktop(context) ? 80 : 60,
                          child: Container(
                            alignment: Alignment.topLeft,
                            padding: EdgeInsets.only(
                              left: Insets().appPadding / 2,
                              right: Insets().appPadding / 2,
                            ),
                            decoration: BoxDecoration(
                                border:
                                    Border.all(width: 1.5, color: Colors.grey),
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(
                                    Insets().appPadding / 1.5)),
                            child: TextFormField(
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
                      height: 10,
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
                            value: "Country"),
                        SizedBox(
                          width: 350,
                          height: Responsive.isDesktop(context) ? 50 : 40,
                          child: Container(
                            padding: EdgeInsets.only(
                              left: Insets().appPadding / 2,
                              right: Insets().appPadding / 2,
                            ),
                            decoration: BoxDecoration(
                                border:
                                    Border.all(color: Colors.grey, width: 1.5),
                                color: Colors.white,
                                borderRadius:
                                    BorderRadius.circular(Insets().appGap + 4)),
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
                              borderRadius: BorderRadius.circular(
                                  Insets().appRadiusMin + 4),
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
                      height: 10,
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
                            value: "State"),
                        SizedBox(
                          width: 350,
                          height: Responsive.isDesktop(context) ? 50 : 40,
                          child: Container(
                            padding: EdgeInsets.only(
                              left: Insets().appPadding / 2,
                              right: Insets().appPadding / 2,
                            ),
                            decoration: BoxDecoration(
                                border:
                                    Border.all(color: Colors.grey, width: 1.5),
                                color: Colors.white,
                                borderRadius:
                                    BorderRadius.circular(Insets().appGap + 4)),
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
                              borderRadius: BorderRadius.circular(
                                  Insets().appRadiusMin + 4),
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
                      height: 10,
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
                            value: "City"),
                        SizedBox(
                          width: 350,
                          height: Responsive.isDesktop(context) ? 50 : 40,
                          child: Container(
                            padding: EdgeInsets.only(
                              left: Insets().appPadding / 2,
                              right: Insets().appPadding / 2,
                            ),
                            decoration: BoxDecoration(
                                border:
                                    Border.all(color: Colors.grey, width: 1.5),
                                color: Colors.white,
                                borderRadius:
                                    BorderRadius.circular(Insets().appGap + 4)),
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
                              borderRadius: BorderRadius.circular(
                                  Insets().appRadiusMin + 4),
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
                    SizedBox(
                      height: 10,
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
                            value: "Pincode/Zip"),
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
                                border:
                                    Border.all(width: 1.5, color: Colors.grey),
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(
                                    Insets().appPadding / 1.5)),
                            child: TextFormField(
                                textAlignVertical: TextAlignVertical.center,
                                decoration: const InputDecoration(
                                  border: InputBorder.none,
                                  hintText: "Pincode/Zip",
                                )),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10,
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
                            value: "Phone No."),
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
                                border:
                                    Border.all(width: 1.5, color: Colors.grey),
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(
                                    Insets().appPadding / 1.5)),
                            child: TextFormField(
                                textAlignVertical: TextAlignVertical.center,
                                decoration: const InputDecoration(
                                  border: InputBorder.none,
                                  hintText: "Phone No.",
                                )),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10,
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
                            value: "Registered Mobile No."),
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
                                border:
                                    Border.all(width: 1.5, color: Colors.grey),
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(
                                    Insets().appPadding / 1.5)),
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
                  ]),
            ),
          ),
          SizedBox(
            height: Responsive.isDesktop(context) ? 450 : 0,
            child: Expanded(
              flex: 1,
              child: Center(
                  child: SizedBox(
                height: Responsive.isDesktop(context) ? 450 : 0,
                child: VerticalDivider(
                  thickness: 2,
                  color: Colors.grey,
                ),
              )),
            ),
          ),
          SizedBox(
            width: Responsive.isDesktop(context)
                ? MediaQuery.of(context).size.width / 2.7
                : null,
            height: Responsive.isDesktop(context) ? null : 620,
            child: Expanded(
              flex: 8,
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      padding: EdgeInsets.only(
                        top: Responsive.isDesktop(context)
                            ? Insets().appPadding / 1.2
                            : 12,
                        bottom: Responsive.isDesktop(context)
                            ? Insets().appPadding / 1.2
                            : 12,
                      ),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius:
                              BorderRadius.circular(Insets().appRadius / 2)),
                      child: Center(
                          child: HeadingText(
                        size: 16,
                        value: "Permanent Address",
                        fontWeight: FontWeight.bold,
                      )),
                    ),
                    SizedBox(
                      height: 20,
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
                            value: "Permanent Address"),
                        SizedBox(
                          width: 350,
                          height: Responsive.isDesktop(context) ? 80 : 60,
                          child: Container(
                            alignment: Alignment.topLeft,
                            padding: EdgeInsets.only(
                              left: Insets().appPadding / 2,
                              right: Insets().appPadding / 2,
                            ),
                            decoration: BoxDecoration(
                                border:
                                    Border.all(width: 1.5, color: Colors.grey),
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(
                                    Insets().appPadding / 1.5)),
                            child: TextFormField(
                                textAlignVertical: TextAlignVertical.top,
                                decoration: const InputDecoration(
                                  border: InputBorder.none,
                                  hintText: "Permanent Address",
                                )),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10,
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
                            value: "Country"),
                        SizedBox(
                          width: 350,
                          height: Responsive.isDesktop(context) ? 50 : 40,
                          child: Container(
                            padding: EdgeInsets.only(
                              left: Insets().appPadding / 2,
                              right: Insets().appPadding / 2,
                            ),
                            decoration: BoxDecoration(
                                border:
                                    Border.all(color: Colors.grey, width: 1.5),
                                color: Colors.white,
                                borderRadius:
                                    BorderRadius.circular(Insets().appGap + 4)),
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
                              borderRadius: BorderRadius.circular(
                                  Insets().appRadiusMin + 4),
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
                      height: 10,
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
                            value: "State"),
                        SizedBox(
                          width: 350,
                          height: Responsive.isDesktop(context) ? 50 : 40,
                          child: Container(
                            padding: EdgeInsets.only(
                              left: Insets().appPadding / 2,
                              right: Insets().appPadding / 2,
                            ),
                            decoration: BoxDecoration(
                                border:
                                    Border.all(color: Colors.grey, width: 1.5),
                                color: Colors.white,
                                borderRadius:
                                    BorderRadius.circular(Insets().appGap + 4)),
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
                              borderRadius: BorderRadius.circular(
                                  Insets().appRadiusMin + 4),
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
                      height: 10,
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
                            value: "City"),
                        SizedBox(
                          width: 350,
                          height: Responsive.isDesktop(context) ? 50 : 40,
                          child: Container(
                            padding: EdgeInsets.only(
                              left: Insets().appPadding / 2,
                              right: Insets().appPadding / 2,
                            ),
                            decoration: BoxDecoration(
                                border:
                                    Border.all(color: Colors.grey, width: 1.5),
                                color: Colors.white,
                                borderRadius:
                                    BorderRadius.circular(Insets().appGap + 4)),
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
                              borderRadius: BorderRadius.circular(
                                  Insets().appRadiusMin + 4),
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
                    SizedBox(
                      height: 10,
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
                            value: "Pincode/Zip"),
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
                                border:
                                    Border.all(width: 1.5, color: Colors.grey),
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(
                                    Insets().appPadding / 1.5)),
                            child: TextFormField(
                                textAlignVertical: TextAlignVertical.center,
                                decoration: const InputDecoration(
                                  border: InputBorder.none,
                                  hintText: "Pincode/Zip",
                                )),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10,
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
                            value: "Phone No."),
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
                                border:
                                    Border.all(width: 1.5, color: Colors.grey),
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(
                                    Insets().appPadding / 1.5)),
                            child: TextFormField(
                                textAlignVertical: TextAlignVertical.center,
                                decoration: const InputDecoration(
                                  border: InputBorder.none,
                                  hintText: "Phone No.",
                                )),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10,
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
                            value: "Registered Mobile No."),
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
                                border:
                                    Border.all(width: 1.5, color: Colors.grey),
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(
                                    Insets().appPadding / 1.5)),
                            child: TextFormField(
                                textAlignVertical: TextAlignVertical.center,
                                decoration: const InputDecoration(
                                  border: InputBorder.none,
                                  hintText: "TZ +255 ",
                                )),
                          ),
                        ),
                      ],
                    ),
                  ]),
            ),
          ),
        ],
      ),
    );
  }
}
