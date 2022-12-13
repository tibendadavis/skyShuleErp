import 'package:file_picker/file_picker.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:path/path.dart';
import 'package:skyconnect_starter/components/app_drawer/skyShuleDrawer.dart';
import 'package:skyconnect_starter/components/bankDetails.dart';
import 'package:skyconnect_starter/components/contactsDetails.dart';
import 'package:skyconnect_starter/components/header.dart';
import 'package:skyconnect_starter/components/heading2.dart';
import 'package:skyconnect_starter/components/heading3.dart';
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

class addTeachers extends StatefulWidget {
  const addTeachers({super.key});

  @override
  State<addTeachers> createState() => _addTeachersState();
}

class _addTeachersState extends State<addTeachers> {
  bool regTeachr = true;
  bool regbyExcl = false;
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
        size: 245,
        onTap: () {},
        menu: false,
      ),
      body: SingleChildScrollView(
          child: SizedBox(
        height: Responsive.isDesktop(context)
            ? size.height + 180
            : size.height + 910,
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
                      left: Insets().appPadding,
                      right: Insets().appPadding,
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
                    left: Insets().appPadding * 2,
                    right: Insets().appGap),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Heading2(
                      value: "TEACHER",
                      fontWeight: FontWeight.w700,
                      color: Colors.black,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    const Heading3(
                      value: "Teacher Information",
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
                    borderRadius: BorderRadius.circular(Insets().appRadius)),
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
                              regTeachr = true;
                              regbyExcl = false;
                            });
                          },
                          style: ElevatedButton.styleFrom(
                              elevation: 0,
                              backgroundColor: !regTeachr
                                  ? Colors.white
                                  : Palette().primaryColor,
                              side: BorderSide(
                                width: 1,
                                color: !regTeachr
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
                            value: "Register Teacher",
                            color: !regTeachr ? Colors.black : Colors.white,
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
                              regTeachr = false;
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
                    borderRadius: BorderRadius.circular(Insets().appRadius)),
                child: Visibility(
                  visible: regTeachr,
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
                                        value: "Name "),
                                    SizedBox(
                                      width: Responsive.isDesktop(context)
                                          ? 300
                                          : 400,
                                      height: Responsive.isDesktop(context)
                                          ? 50
                                          : 40,
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
                                            textAlignVertical:
                                                TextAlignVertical.center,
                                            decoration: const InputDecoration(
                                              border: InputBorder.none,
                                              hintText: "Both Names",
                                            )),
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
                                        value: "Date of Birth"),
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
                                                color: Colors.grey, width: 1.5),
                                            color: Colors.white,
                                            borderRadius: BorderRadius.circular(
                                                Insets().appGap + 4)),
                                        child: DropdownButton(
                                          items: const [
                                            DropdownMenuItem(
                                                child: Heading5(
                                                  value: "Nursery",
                                                ),
                                                value: "Nursery"),
                                            DropdownMenuItem(
                                                child: Heading5(
                                                  value: "Primary",
                                                ),
                                                value: "Primary"),
                                            DropdownMenuItem(
                                                child: Heading5(
                                                  value: "Secondary",
                                                ),
                                                value: "Secondary"),
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
                                          hint: Heading5(
                                            value: "Select Date of Birth",
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
                                        value: "Gender"),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Radio(
                                          value: false,
                                          onChanged: (value) {},
                                          groupValue: null,
                                        ),
                                        Heading5(value: "Male"),
                                        SizedBox(
                                          width: 10,
                                        ),
                                        Radio(
                                          value: false,
                                          onChanged: (value) {},
                                          groupValue: null,
                                        ),
                                        Heading5(value: "Female"),
                                      ],
                                    ),

                                    // SizedBox(
                                    //   width: Responsive.isDesktop(context)
                                    //       ? 300
                                    //       : 400,
                                    //   height: Responsive.isDesktop(context)
                                    //       ? 50
                                    //       : 40,
                                    //   child: Container(
                                    //     padding: EdgeInsets.only(
                                    //       left: Insets().appPadding / 2,
                                    //       right: Insets().appPadding / 2,
                                    //     ),
                                    //     decoration: BoxDecoration(
                                    //         border: Border.all(
                                    //             color: Colors.grey, width: 1.5),
                                    //         color: Colors.white,
                                    //         borderRadius: BorderRadius.circular(
                                    //             Insets().appGap + 4)),
                                    //     child: DropdownButton(
                                    //       items: const [
                                    //         DropdownMenuItem(
                                    //             child: Heading5(
                                    //               value: "Male",
                                    //             ),
                                    //             value: "Male"),
                                    //         DropdownMenuItem(
                                    //             child: Heading5(
                                    //               value: "Female",
                                    //             ),
                                    //             value: "Female"),
                                    //       ],
                                    //       value: _classlevel,
                                    //       isExpanded: true,
                                    //       iconSize: 35,
                                    //       icon: Icon(Icons
                                    //           .keyboard_arrow_down_outlined),
                                    //       underline: SizedBox(),
                                    //       dropdownColor: Colors.white,
                                    //       borderRadius: BorderRadius.circular(
                                    //           Insets().appRadiusMin + 4),
                                    //       hint: Heading5(
                                    //         value: "Gender",
                                    //       ),
                                    //       onChanged: ((value) {
                                    //         if (value is int) {
                                    //           setState(() {
                                    //             _classlevel = value;
                                    //           });
                                    //         }
                                    //       }),
                                    //     ),
                                    //   ),
                                    // ),
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
                                        value: "Nationality"),
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
                                                color: Colors.grey, width: 1.5),
                                            color: Colors.white,
                                            borderRadius: BorderRadius.circular(
                                                Insets().appGap + 4)),
                                        child: DropdownButton(
                                          items: const [
                                            DropdownMenuItem(
                                                child: Heading5(
                                                  value:
                                                      "Tanzania (United Republic of)",
                                                ),
                                                value: "TZ"),
                                            DropdownMenuItem(
                                                child: Heading5(
                                                  value: "Kenya ",
                                                ),
                                                value: "KE"),
                                            DropdownMenuItem(
                                                child: Heading5(
                                                  value: "Uganda",
                                                ),
                                                value: "UG"),
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
                                          hint: Heading5(
                                            value: "Select Nationality",
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
                                        value: "National ID No "),
                                    SizedBox(
                                      width: Responsive.isDesktop(context)
                                          ? 300
                                          : 400,
                                      height: Responsive.isDesktop(context)
                                          ? 50
                                          : 40,
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
                                            textAlignVertical:
                                                TextAlignVertical.center,
                                            decoration: const InputDecoration(
                                              border: InputBorder.none,
                                              hintText: "NIDA",
                                            )),
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
                                        value: "ID number/PF-number"),
                                    SizedBox(
                                      width: 200,
                                      height: Responsive.isDesktop(context)
                                          ? 50
                                          : 40,
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
                                            textAlignVertical:
                                                TextAlignVertical.center,
                                            decoration: const InputDecoration(
                                              border: InputBorder.none,
                                              hintText: "",
                                            )),
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
                                        value: "Designation"),
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
                                                color: Colors.grey, width: 1.5),
                                            color: Colors.white,
                                            borderRadius: BorderRadius.circular(
                                                Insets().appGap + 4)),
                                        child: DropdownButton(
                                          items: const [
                                            DropdownMenuItem(
                                                child: Heading5(
                                                  value: "Admin",
                                                ),
                                                value: "Admin"),
                                            DropdownMenuItem(
                                                child: Heading5(
                                                  value: "Parent",
                                                ),
                                                value: "Parent"),
                                            DropdownMenuItem(
                                                child: Heading5(
                                                  value: "Accountant",
                                                ),
                                                value: "Accountant"),
                                            DropdownMenuItem(
                                                child: Heading5(
                                                  value: "Teacher",
                                                ),
                                                value: "Teacher"),
                                            DropdownMenuItem(
                                                child: Heading5(
                                                  value:
                                                      "Assistant Head teacher",
                                                ),
                                                value:
                                                    "Assistant Head teacher"),
                                            DropdownMenuItem(
                                                child: Heading5(
                                                  value: "Head Teacher",
                                                ),
                                                value: "Head Teacher"),
                                            DropdownMenuItem(
                                                child: Heading5(
                                                  value:
                                                      "Assistant of academic master",
                                                ),
                                                value:
                                                    "Assistant of academic master"),
                                            DropdownMenuItem(
                                                child: Heading5(
                                                  value: "Burser",
                                                ),
                                                value: "Burser"),
                                            DropdownMenuItem(
                                                child: Heading5(
                                                  value: "Cleaner",
                                                ),
                                                value: "Cleaner"),
                                            DropdownMenuItem(
                                                child: Heading5(
                                                  value: "Cook",
                                                ),
                                                value: "Cook"),
                                            DropdownMenuItem(
                                                child: Heading5(
                                                  value: "Driver",
                                                ),
                                                value: "Driver"),
                                            DropdownMenuItem(
                                                child: Heading5(
                                                  value: "Transport Officer",
                                                ),
                                                value: "Transport Officer"),
                                            DropdownMenuItem(
                                                child: Heading5(
                                                  value: "Matron",
                                                ),
                                                value: "Matron"),
                                            DropdownMenuItem(
                                                child: Heading5(
                                                  value: "Nurse",
                                                ),
                                                value: "Nurse"),
                                            DropdownMenuItem(
                                                child: Heading5(
                                                  value:
                                                      "Quality Assurance Officer",
                                                ),
                                                value:
                                                    "Quality Assurance Officer"),
                                            DropdownMenuItem(
                                                child: Heading5(
                                                  value: "Secretary",
                                                ),
                                                value: "Secretary"),
                                            DropdownMenuItem(
                                                child: Heading5(
                                                  value: "Store-Keeper",
                                                ),
                                                value: "Store-Keeper"),
                                            DropdownMenuItem(
                                                child: Heading5(
                                                  value: "Tailor",
                                                ),
                                                value: "Tailor"),
                                            DropdownMenuItem(
                                                child: Heading5(
                                                  value: "Patron",
                                                ),
                                                value: "Patron"),
                                            DropdownMenuItem(
                                                child: Heading5(
                                                  value: "HR & Admin Manager",
                                                ),
                                                value: "HR & Admin Manager"),
                                            DropdownMenuItem(
                                                child: Heading5(
                                                  value: "Academic Master",
                                                ),
                                                value: "Academic Master"),
                                            DropdownMenuItem(
                                                child: Heading5(
                                                  value: "Discipline Master",
                                                ),
                                                value: "Discipline Master"),
                                            DropdownMenuItem(
                                                child: Heading5(
                                                  value: "Normal",
                                                ),
                                                value: "Normal"),
                                            DropdownMenuItem(
                                                child: Heading5(
                                                  value: "Class Teacher",
                                                ),
                                                value: "Class Teacher"),
                                          ],
                                          value: _designation,
                                          isExpanded: true,
                                          iconSize: 35,
                                          icon: Icon(Icons
                                              .keyboard_arrow_down_outlined),
                                          underline: SizedBox(),
                                          dropdownColor: Colors.white,
                                          borderRadius: BorderRadius.circular(
                                              Insets().appRadiusMin + 4),
                                          hint: Heading5(
                                            value: "Select Designation",
                                          ),
                                          onChanged: ((value) {
                                            if (value is String) {
                                              setState(() {
                                                _designation = value;
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
                                        value: "Education"),
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
                                                color: Colors.grey, width: 1.5),
                                            color: Colors.white,
                                            borderRadius: BorderRadius.circular(
                                                Insets().appGap + 4)),
                                        child: DropdownButton(
                                          items: const [
                                            DropdownMenuItem(
                                                child: Heading5(
                                                  value: "Education",
                                                ),
                                                value: "Education"),
                                            DropdownMenuItem(
                                                child: Heading5(
                                                  value: "Education2",
                                                ),
                                                value: "Education2"),
                                            DropdownMenuItem(
                                                child: Heading5(
                                                  value: "Education3",
                                                ),
                                                value: "Education3"),
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
                                          hint: Heading5(
                                            value: "Select Education",
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
                                        value: "Physical condition"),
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
                                                color: Colors.grey, width: 1.5),
                                            color: Colors.white,
                                            borderRadius: BorderRadius.circular(
                                                Insets().appGap + 4)),
                                        child: DropdownButton(
                                          items: const [
                                            DropdownMenuItem(
                                                child: Heading5(
                                                  value: "Designation",
                                                ),
                                                value: "Designation"),
                                            DropdownMenuItem(
                                                child: Heading5(
                                                  value: "Designation2",
                                                ),
                                                value: "Designation2"),
                                            DropdownMenuItem(
                                                child: Heading5(
                                                  value: "Designation3",
                                                ),
                                                value: "Designation3"),
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
                                        value: "Health Status"),
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
                                                color: Colors.grey, width: 1.5),
                                            color: Colors.white,
                                            borderRadius: BorderRadius.circular(
                                                Insets().appGap + 4)),
                                        child: DropdownButton(
                                          items: const [
                                            DropdownMenuItem(
                                                child: Heading5(
                                                  value: "Health Status",
                                                ),
                                                value: "Health Status"),
                                          ],
                                          value: _classlevel,
                                          isExpanded: true,
                                          hint: Heading5(
                                            value: "Status",
                                          ),
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
                                        value: "Health Insuarance"),
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
                                                color: Colors.grey, width: 1.5),
                                            color: Colors.white,
                                            borderRadius: BorderRadius.circular(
                                                Insets().appGap + 4)),
                                        child: DropdownButton(
                                          items: const [
                                            DropdownMenuItem(
                                                child: Heading5(
                                                  value: "Health Insuarance",
                                                ),
                                                value: "Health Insuarance"),
                                          ],
                                          value: _classlevel,
                                          isExpanded: true,
                                          hint: Heading5(
                                            value: "Health Insuarance",
                                          ),
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
                                        value: "Religion"),
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
                                                color: Colors.grey, width: 1.5),
                                            color: Colors.white,
                                            borderRadius: BorderRadius.circular(
                                                Insets().appGap + 4)),
                                        child: DropdownButton(
                                          items: const [
                                            DropdownMenuItem(
                                                child: Heading5(
                                                  value: "Christianity",
                                                ),
                                                value: "Christian"),
                                            DropdownMenuItem(
                                                child: Heading5(
                                                  value: "Islam",
                                                ),
                                                value: "Religion"),
                                            DropdownMenuItem(
                                              child: Heading5(
                                                value: "Religion",
                                              ),
                                            )
                                          ],
                                          value: _classlevel,
                                          isExpanded: true,
                                          hint: Heading5(
                                            value: "Religion",
                                          ),
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
                                        value: "Email"),
                                    SizedBox(
                                      width: Responsive.isDesktop(context)
                                          ? 300
                                          : 400,
                                      height: Responsive.isDesktop(context)
                                          ? 50
                                          : 40,
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
                                            textAlignVertical:
                                                TextAlignVertical.center,
                                            decoration: const InputDecoration(
                                              border: InputBorder.none,
                                              hintText:
                                                  "Valid email eg. samson@gmail.com",
                                            )),
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
                                        value: "Phone "),
                                    SizedBox(
                                      width: 200,
                                      height: Responsive.isDesktop(context)
                                          ? 50
                                          : 40,
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
                                            textAlignVertical:
                                                TextAlignVertical.center,
                                            decoration: const InputDecoration(
                                              border: InputBorder.none,
                                              hintText: "eg 693123456",
                                            )),
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
                                        value: "Address"),
                                    SizedBox(
                                      width: Responsive.isDesktop(context)
                                          ? 300
                                          : 400,
                                      height: Responsive.isDesktop(context)
                                          ? 50
                                          : 40,
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
                                            textAlignVertical:
                                                TextAlignVertical.center,
                                            decoration: const InputDecoration(
                                              border: InputBorder.none,
                                              hintText: "Town",
                                            )),
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
                                        value: "Joining Date"),
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
                                                color: Colors.grey, width: 1.5),
                                            color: Colors.white,
                                            borderRadius: BorderRadius.circular(
                                                Insets().appGap + 4)),
                                        child: DropdownButton(
                                          items: const [
                                            DropdownMenuItem(
                                                child: Heading5(
                                                  value: "Joining Date",
                                                ),
                                                value: "Joining Date"),
                                          ],
                                          value: _classlevel,
                                          isExpanded: true,
                                          hint: Heading5(
                                            value: "Joining Date",
                                          ),
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
                                        value: "Photo"),
                                    SizedBox(
                                      width: Responsive.isDesktop(context)
                                          ? 300
                                          : 400,
                                      height: Responsive.isDesktop(context)
                                          ? 50
                                          : 40,
                                      child: Container(
                                        alignment: Alignment.centerLeft,
                                        padding: EdgeInsets.only(
                                          left: Insets().appPadding / 2,
                                          right: Responsive.isDesktop(context)
                                              ? 5
                                              : 4,
                                        ),
                                        decoration: BoxDecoration(
                                            color: Colors.white,
                                            border: Border.all(
                                                width: 1.5, color: Colors.grey),
                                            borderRadius: BorderRadius.circular(
                                                Insets().appPadding / 1.5)),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            HeadingText(
                                                size: Responsive.isDesktop(
                                                        context)
                                                    ? 15
                                                    : 13,
                                                value: picked != null
                                                    ? picked.files.first.name
                                                        .toString()
                                                    : "No File Choosen"),
                                            ElevatedButton(
                                              onPressed: () async {
                                                setState(() async {
                                                  picked = await FilePicker
                                                      .platform
                                                      .pickFiles(
                                                          allowMultiple: false);
                                                });
                                                if (picked != null) {
                                                  print(
                                                      picked.files.first.name);
                                                }
                                              },
                                              style: ElevatedButton.styleFrom(
                                                  backgroundColor:
                                                      Palette().primaryColor,
                                                  padding: EdgeInsets.only(
                                                    bottom:
                                                        Responsive.isDesktop(
                                                                context)
                                                            ? 17
                                                            : 14,
                                                    left:
                                                        Insets().appPadding / 2,
                                                    right:
                                                        Insets().appPadding / 2,
                                                    top: Responsive.isDesktop(
                                                            context)
                                                        ? 17
                                                        : 14,
                                                  ),
                                                  shape: RoundedRectangleBorder(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              10))),
                                              child: HeadingText(
                                                  size: Responsive.isDesktop(
                                                          context)
                                                      ? 15
                                                      : 13,
                                                  value: "Upload File"),
                                            )
                                          ],
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height:
                                      Responsive.isDesktop(context) ? 110 : 20,
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
                                          ? 575
                                          : 403,
                                      height: Responsive.isDesktop(context)
                                          ? 50
                                          : 40,
                                      child: ElevatedButton(
                                        style: ElevatedButton.styleFrom(
                                            padding: EdgeInsets.only(
                                              left: Insets().appPadding / 2,
                                              right: Insets().appPadding / 2,
                                            ),
                                            backgroundColor: Palette()
                                                .primaryColor,
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
                                          value: "Save",
                                        )),
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height:
                                      Responsive.isDesktop(context) ? 10 : 15,
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
          ))
        ]),
      )),
    );
  }
}
