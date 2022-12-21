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

class addExamGroup extends StatefulWidget {
  const addExamGroup({super.key});

  @override
  State<addExamGroup> createState() => _addStreamState();
}

class _addStreamState extends State<addExamGroup> {
  bool offDtls = true;
  bool prsnlDtls = false;
  bool conctDtls = false;
  bool prntsDtls = false;
  bool acdmcDtls = false;
  bool bnkDtls = false;
  bool othrFacilities = false;
  bool upldDocs = false;
  bool _menu = false;
  var _specialGrade;
  var _mainTopic;
  var _subject;
  var _examGroup;
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
        height: Responsive.isDesktop(context) ? size.height : size.height + 230,
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
                      value: "EXAM GROUP",
                      fontWeight: FontWeight.w700,
                      color: Colors.black,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    const Heading3(
                      value: "Exam Group Information",
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
                                  value: "Exam Group Name "),
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
                                        hintText: "Name",
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
                                  value: "Weight "),
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
                                        hintText: "Weight",
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
                                  value: "Note "),
                              SizedBox(
                                width: 400,
                                height: Responsive.isDesktop(context) ? 80 : 70,
                                child: Container(
                                  alignment: Alignment.topLeft,
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
                                      maxLines: double.maxFinite.floor(),
                                      keyboardType: TextInputType.multiline,
                                      textAlignVertical: TextAlignVertical.top,
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
