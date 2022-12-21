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

class addEvent extends StatefulWidget {
  const addEvent({super.key});

  @override
  State<addEvent> createState() => _addEventState();
}

class _addEventState extends State<addEvent> {
  var picked;
  bool _menu = false;
  var _specialGrade;
  var _date;
  var _madefor;
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
        height: size.height + 285,
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
                    left: Responsive.isDesktop(context)
                        ? Insets().appPadding * 2
                        : Insets().appPadding,
                    right: Insets().appPadding),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    HeadingText(
                      size: Responsive.isDesktop(context) ? 35 : 20,
                      value: "NEWS & ANNOUNCEMENTS",
                      fontWeight: FontWeight.w700,
                      color: Colors.black,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    const Heading3(
                      value: "News Board",
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
                                  value: "Title"),
                              SizedBox(
                                width: 600,
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
                                        hintText: "Title of the News",
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
                                  value: "Date"),
                              SizedBox(
                                width: 600,
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
                                    ],
                                    value: _date,
                                    isExpanded: true,
                                    iconSize: 35,
                                    icon: Icon(
                                        Icons.keyboard_arrow_down_outlined),
                                    underline: SizedBox(),
                                    dropdownColor: Colors.white,
                                    borderRadius: BorderRadius.circular(
                                        Insets().appRadiusMin + 4),
                                    hint: Heading5(
                                      value: "Select Date",
                                    ),
                                    onChanged: ((value) {
                                      if (value is int) {
                                        setState(() {
                                          _date = value;
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
                                  value: "News For"),
                              SizedBox(
                                width: 600,
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
                                            value: "All",
                                          ),
                                          value: "All"),
                                      DropdownMenuItem(
                                          child: Heading5(
                                            value: "Students",
                                          ),
                                          value: "Students"),
                                      DropdownMenuItem(
                                          child: Heading5(
                                            value: "Teachers",
                                          ),
                                          value: "Teachers"),
                                      DropdownMenuItem(
                                          child: Heading5(
                                            value: "Supporting Staff",
                                          ),
                                          value: "Supporting Staff"),
                                    ],
                                    value: _madefor,
                                    isExpanded: true,
                                    iconSize: 35,
                                    icon: Icon(
                                        Icons.keyboard_arrow_down_outlined),
                                    underline: SizedBox(),
                                    dropdownColor: Colors.white,
                                    borderRadius: BorderRadius.circular(
                                        Insets().appRadiusMin + 4),
                                    hint: Heading5(
                                      value: "Made For",
                                    ),
                                    onChanged: ((value) {
                                      if (value is String) {
                                        setState(() {
                                          _madefor = value;
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
                                  value: "Attachment"),
                              SizedBox(
                                width: 600,
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
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      HeadingText(
                                          size: Responsive.isDesktop(context)
                                              ? 15
                                              : 13,
                                          value: picked != null
                                              ? picked.files.first.name
                                                  .toString()
                                              : "No File Choosen"),
                                      ElevatedButton(
                                        onPressed: () async {
                                          setState(() async {
                                            picked = await FilePicker.platform
                                                .pickFiles(
                                                    allowMultiple: false);
                                          });
                                          if (picked != null) {
                                            print(picked.files.first.name);
                                          }
                                        },
                                        style: ElevatedButton.styleFrom(
                                            backgroundColor:
                                                Palette().primaryColor,
                                            padding: EdgeInsets.only(
                                              bottom:
                                                  Responsive.isDesktop(context)
                                                      ? 17
                                                      : 14,
                                              left: Insets().appPadding / 2,
                                              right: Insets().appPadding / 2,
                                              top: Responsive.isDesktop(context)
                                                  ? 17
                                                  : 14,
                                            ),
                                            shape: RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(10))),
                                        child: HeadingText(
                                            size: Responsive.isDesktop(context)
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
                            height: Responsive.isDesktop(context) ? 15 : 15,
                          ),
                          Flex(
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
                              HeadingText(
                                  size: Responsive.isDesktop(context) ? 18 : 14,
                                  value: "News Description"),
                              SizedBox(
                                width: 600,
                                height:
                                    Responsive.isDesktop(context) ? 300 : 200,
                                child: Container(
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
                                  child: Expanded(
                                    child: TextFormField(
                                        textAlignVertical:
                                            TextAlignVertical.top,
                                        maxLines: double.maxFinite.floor(),
                                        keyboardType: TextInputType.multiline,
                                        decoration: const InputDecoration(
                                          border: InputBorder.none,
                                          hintText: "News Description",
                                        )),
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
                                width: 600,
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
