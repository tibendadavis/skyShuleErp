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

class addBooks extends StatefulWidget {
  const addBooks({super.key});

  @override
  State<addBooks> createState() => _addBookState();
}

class _addBookState extends State<addBooks> {
  bool _menu = false;
  var _specialGrade;
  var _classlevel;
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
        size: 305,
        onTap: () {},
        menu: false,
      ),
      body: SingleChildScrollView(
          child: SizedBox(
        height: Responsive.isDesktop(context)
            ? size.height + 200
            : size.height + 420,
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
                      value: "BOOK",
                      fontWeight: FontWeight.w700,
                      color: Colors.black,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    const Heading3(
                      value: "Book Information",
                      fontWeight: FontWeight.w600,
                      color: Colors.black,
                    ),
                  ],
                ),
              ),
              Container(
                width: MediaQuery.of(context).size.width,
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
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      width: !Responsive.isDesktop(context)
                          ? MediaQuery.of(context).size.width
                          : MediaQuery.of(context).size.width / 1.8,
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
                                  value: "Book Classification"),
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
                                            value: "000-009 - Generalities",
                                          ),
                                          value: "000-009 - Generalities"),
                                      DropdownMenuItem(
                                          child: Heading5(
                                            value:
                                                "100-199 - Philosophy And Psychology",
                                          ),
                                          value:
                                              "100-199 - Philosophy And Psychology"),
                                      DropdownMenuItem(
                                          child: Heading5(
                                            value:
                                                "200-299 - Religion & Mythology",
                                          ),
                                          value:
                                              "200-299 - Religion & Mythology"),
                                    ],
                                    value: _classlevel,
                                    isExpanded: true,
                                    iconSize: 35,
                                    icon: Icon(
                                        Icons.keyboard_arrow_down_outlined),
                                    underline: SizedBox(),
                                    dropdownColor: Colors.white,
                                    borderRadius: BorderRadius.circular(
                                        Insets().appRadiusMin + 4),
                                    hint: Heading5(
                                      value: "Choose Book Classification",
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
                                  value: "Book Quantity"),
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
                                      textAlignVertical:
                                          TextAlignVertical.center,
                                      decoration: const InputDecoration(
                                        border: InputBorder.none,
                                        hintText: "Quantity Available",
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
                                  value: "Accession Number"),
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
                                      textAlignVertical:
                                          TextAlignVertical.center,
                                      decoration: const InputDecoration(
                                        border: InputBorder.none,
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
                                  value: "Serial No(ISBN)"),
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
                                      textAlignVertical:
                                          TextAlignVertical.center,
                                      decoration: const InputDecoration(
                                        border: InputBorder.none,
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
                                  value: "Name"),
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
                                      textAlignVertical:
                                          TextAlignVertical.center,
                                      decoration: const InputDecoration(
                                        border: InputBorder.none,
                                        hintText: "Book Name",
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
                                  value: "Author"),
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
                                      textAlignVertical:
                                          TextAlignVertical.center,
                                      decoration: const InputDecoration(
                                        border: InputBorder.none,
                                        hintText: "Author Name",
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
                                  value: "Edition"),
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
                                      textAlignVertical:
                                          TextAlignVertical.center,
                                      decoration: const InputDecoration(
                                        border: InputBorder.none,
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
                                  value: "Book Status"),
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
                                            value: "Normal Book",
                                          ),
                                          value: "Normal Book"),
                                      DropdownMenuItem(
                                          child: Heading5(
                                            value: " ",
                                          ),
                                          value: " "),
                                      DropdownMenuItem(
                                          child: Heading5(
                                            value: " ",
                                          ),
                                          value: " "),
                                    ],
                                    value: _classlevel,
                                    isExpanded: true,
                                    iconSize: 35,
                                    icon: Icon(
                                        Icons.keyboard_arrow_down_outlined),
                                    underline: SizedBox(),
                                    dropdownColor: Colors.white,
                                    borderRadius: BorderRadius.circular(
                                        Insets().appRadiusMin + 4),
                                    hint: Heading5(
                                      value: "Choose Book Status",
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
                                  value: "Subject"),
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
                                            value: "Physics",
                                          ),
                                          value: "Physics"),
                                      DropdownMenuItem(
                                          child: Heading5(
                                            value: "Mathematics",
                                          ),
                                          value: "Mathematics"),
                                      DropdownMenuItem(
                                          child: Heading5(
                                            value: "Geography",
                                          ),
                                          value: "Geography"),
                                    ],
                                    value: _classlevel,
                                    isExpanded: true,
                                    iconSize: 35,
                                    icon: Icon(
                                        Icons.keyboard_arrow_down_outlined),
                                    underline: SizedBox(),
                                    dropdownColor: Colors.white,
                                    borderRadius: BorderRadius.circular(
                                        Insets().appRadiusMin + 4),
                                    hint: Heading5(
                                      value: "Select Subject",
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
                                  value: "Class"),
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
                                            value: "Class One",
                                          ),
                                          value: "Class One"),
                                      DropdownMenuItem(
                                          child: Heading5(
                                            value: "Class Two",
                                          ),
                                          value: "Class Two"),
                                      DropdownMenuItem(
                                          child: Heading5(
                                            value: "Class Three",
                                          ),
                                          value: "Class Three"),
                                    ],
                                    value: _classlevel,
                                    isExpanded: true,
                                    iconSize: 35,
                                    icon: Icon(
                                        Icons.keyboard_arrow_down_outlined),
                                    underline: SizedBox(),
                                    dropdownColor: Colors.white,
                                    borderRadius: BorderRadius.circular(
                                        Insets().appRadiusMin + 4),
                                    hint: Heading5(
                                      value: "Select Class",
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
                                  value: "Rack No/ Class No"),
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
                                      textAlignVertical:
                                          TextAlignVertical.center,
                                      decoration: const InputDecoration(
                                        border: InputBorder.none,
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
                                  onPressed: () {},
                                  child: Center(
                                      child: HeadingText(
                                    size:
                                        Responsive.isDesktop(context) ? 18 : 14,
                                    value: "Save",
                                  )),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: Responsive.isDesktop(context) ? 10 : 15,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              )
            ],
          ))
        ]),
      )),
    );
  }
}
