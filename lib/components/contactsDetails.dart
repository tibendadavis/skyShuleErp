import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:skyconnect_starter/components/heading4.dart';
import 'package:skyconnect_starter/components/heading5.dart';
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
      padding: EdgeInsets.only(top: Insets().appPadding),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            flex: 8,
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Container(
                padding: EdgeInsets.only(
                  top: Insets().appPadding / 1.2,
                  bottom: Insets().appPadding / 1.2,
                ),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius:
                        BorderRadius.circular(Insets().appRadius / 2)),
                child: Center(
                    child: Heading4(
                  value: "Present Address",
                  fontWeight: FontWeight.bold,
                )),
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Heading4(value: "Present Address"),
                  Spacer(),
                  SizedBox(
                    width: 350,
                    height: 80,
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
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Heading4(value: "Pincode/Zip"),
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
                        hintText: "Pincode/Zip",
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
                  Heading4(value: "Phone No."),
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
                        hintText: "Phone No.",
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
                  Heading4(value: "Registered Mobile No."),
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
            ]),
          ),
          Expanded(
            flex: 1,
            child: Center(
                child: SizedBox(
              height: 450,
              child: VerticalDivider(
                thickness: 2,
                color: Colors.grey,
              ),
            )),
          ),
          Expanded(
            flex: 8,
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Container(
                padding: EdgeInsets.only(
                  top: Insets().appPadding / 1.2,
                  bottom: Insets().appPadding / 1.2,
                ),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius:
                        BorderRadius.circular(Insets().appRadius / 2)),
                child: Center(
                    child: Heading4(
                  value: "Permanent Address",
                  fontWeight: FontWeight.bold,
                )),
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Heading4(value: "Permanent Address"),
                  Spacer(),
                  SizedBox(
                    width: 350,
                    height: 80,
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
                        hintText: "Permanent Address",
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
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Heading4(value: "Pincode/Zip"),
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
                        hintText: "Pincode/Zip",
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
                  Heading4(value: "Phone No."),
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
                        hintText: "Phone No.",
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
                  Heading4(value: "Registered Mobile No."),
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
                        hintText: "TZ +255 ",
                      )),
                    ),
                  ),
                ],
              ),
            ]),
          ),
        ],
      ),
    );
  }
}
