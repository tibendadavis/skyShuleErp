import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:skyconnect_starter/components/heading4.dart';
import 'package:skyconnect_starter/components/heading5.dart';
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
        top: Insets().appPadding * 2,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Heading4(value: "Parents Full Name"),
              Spacer(),
              SizedBox(
                width: 350,
                height: 45,
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
                      decoration: const InputDecoration(
                    border: InputBorder.none,
                    hintText: "Parents Full Name",
                  )),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Heading4(value: "Parents Email"),
              Spacer(),
              SizedBox(
                width: 350,
                height: 45,
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
                      decoration: const InputDecoration(
                    border: InputBorder.none,
                    hintText: "Parents Email",
                  )),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Heading4(value: "Parents Phone No"),
              Spacer(),
              SizedBox(
                width: 350,
                height: 45,
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
                      decoration: const InputDecoration(
                    border: InputBorder.none,
                    hintText: "Parents Phone No.",
                  )),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Heading4(value: "Parents Mobile No"),
              Spacer(),
              SizedBox(
                width: 350,
                height: 45,
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
                      decoration: const InputDecoration(
                    border: InputBorder.none,
                    hintText: "TZ +255",
                  )),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Heading4(value: "Parent's Image Upload"),
              Spacer(),
              SizedBox(
                width: 350,
                height: 45,
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
                      decoration: const InputDecoration(
                    border: InputBorder.none,
                    hintText: "No file Chosen",
                  )),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Heading4(value: "Parents Present Address"),
              Spacer(),
              SizedBox(
                width: 350,
                height: 90,
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
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Heading4(value: "Country"),
              Spacer(),
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
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Heading4(value: "State"),
              Spacer(),
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
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Heading4(value: "City"),
              Spacer(),
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
