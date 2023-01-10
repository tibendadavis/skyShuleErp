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
import 'package:skyconnect_starter/components/heading4.dart';
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

class addSubject extends StatefulWidget {
  const addSubject({super.key});

  @override
  State<addSubject> createState() => _addSubjectState();
}

class _addSubjectState extends State<addSubject> {
  bool regSubj = true;
  bool regbyExcl = false;
  bool regbyNecta = false;

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
                      left: Insets().appPadding / 2,
                      right: Insets().appPadding / 2,
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
                      value: "SUBJECT",
                      fontWeight: FontWeight.w700,
                      color: Colors.black,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    const Heading3(
                      value: "Subject Information",
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
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: SizedBox(
                    width:
                        Responsive.isDesktop(context) ? 712 : size.width + 300,
                    child: Flex(
                      direction: Axis.horizontal,
                      mainAxisAlignment: Responsive.isDesktop(context)
                          ? MainAxisAlignment.start
                          : MainAxisAlignment.start,
                      crossAxisAlignment: Responsive.isDesktop(context)
                          ? CrossAxisAlignment.start
                          : CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          width: Responsive.isDesktop(context) ? 230 : 150,
                          height: Responsive.isDesktop(context) ? 50 : 40,
                          child: ElevatedButton(
                              onPressed: () {
                                setState(() {
                                  regSubj = true;
                                  regbyExcl = false;
                                  regbyNecta = false;
                                });
                              },
                              style: ElevatedButton.styleFrom(
                                  elevation: 0,
                                  backgroundColor: !regSubj
                                      ? Colors.white
                                      : Palette().primaryColor,
                                  side: BorderSide(
                                    width: 1,
                                    color: !regSubj
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
                              child: Heading5(
                                value: "Register Subject",
                                color: !regSubj ? Colors.black : Colors.white,
                              )),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        SizedBox(
                          width: Responsive.isDesktop(context) ? 230 : 220,
                          height: Responsive.isDesktop(context) ? 50 : 40,
                          child: ElevatedButton(
                              onPressed: () {
                                setState(() {
                                  regSubj = false;
                                  regbyExcl = true;
                                  regbyNecta = false;
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
                              child: Heading5(
                                value: "Register Subject by Excel",
                                color: !regbyExcl ? Colors.black : Colors.white,
                              )),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        SizedBox(
                          width: Responsive.isDesktop(context) ? 230 : 230,
                          height: Responsive.isDesktop(context) ? 50 : 40,
                          child: ElevatedButton(
                              onPressed: () {
                                setState(() {
                                  regSubj = false;
                                  regbyExcl = false;
                                  regbyNecta = true;
                                });
                              },
                              style: ElevatedButton.styleFrom(
                                  elevation: 0,
                                  backgroundColor: !regbyNecta
                                      ? Colors.white
                                      : Palette().primaryColor,
                                  side: BorderSide(
                                    width: 1,
                                    color: !regbyNecta
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
                              child: Heading5(
                                value: "Register Subjects from NECTA",
                                color:
                                    !regbyNecta ? Colors.black : Colors.white,
                              )),
                        ),
                      ],
                    ),
                  ),
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
                    Visibility(
                      visible: regSubj,
                      child: Container(
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
                                    size:
                                        Responsive.isDesktop(context) ? 18 : 14,
                                    value: "Subject Name"),
                                SizedBox(
                                  width: 400,
                                  height:
                                      Responsive.isDesktop(context) ? 50 : 40,
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
                                          hintText: "Subject Name",
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
                                    size:
                                        Responsive.isDesktop(context) ? 18 : 14,
                                    value: "Subject Code"),
                                SizedBox(
                                  width: 400,
                                  height:
                                      Responsive.isDesktop(context) ? 50 : 40,
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
                                          hintText: "Subject Code",
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
                                    size:
                                        Responsive.isDesktop(context) ? 18 : 14,
                                    value: "Subject Type"),
                                SizedBox(
                                  width: 400,
                                  height:
                                      Responsive.isDesktop(context) ? 50 : 40,
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
                                          hintText: "Subject Type",
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
                                    size:
                                        Responsive.isDesktop(context) ? 18 : 14,
                                    value: "Arrangement"),
                                SizedBox(
                                  width: 400,
                                  height:
                                      Responsive.isDesktop(context) ? 50 : 40,
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
                                          hintText: "Arrangement",
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
                                  height:
                                      Responsive.isDesktop(context) ? 50 : 40,
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
                              height: Responsive.isDesktop(context) ? 10 : 15,
                            ),
                          ],
                        ),
                      ),
                    ),
                    Visibility(visible: regbyExcl, child: Offstage()),
                    Visibility(visible: regbyNecta, child: Offstage())
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
