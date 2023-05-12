
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
import 'package:skyconnect_starter/components/inputOptions.comp.dart';
import 'package:skyconnect_starter/components/inputTextField.comp.dart';
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

class _addSubjectState extends State<addSubject>
    with SingleTickerProviderStateMixin {
  bool regSubj = true;
  bool regbyExcl = false;
  bool regbyNecta = false;

  bool _menu = false;
  var _specialGrade;
  var _classlevel;
  double _drawersize = 250;
  late AnimationController controller;
  late Animation<double> scaleAnimation;
  @override
  void initState() {
    super.initState();

    controller =
        AnimationController(vsync: this, duration: Duration(milliseconds: 700));
    scaleAnimation = CurvedAnimation(
        parent: controller, curve: Curves.fastLinearToSlowEaseIn);

    controller.addListener(() {
      setState(() {});
    });

    controller.forward();
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Center(
      child: Material(
        color: Colors.transparent,
        child: ScaleTransition(
          scale: scaleAnimation,
          child: Container(
            margin: EdgeInsets.only(
                top: Responsive.isDesktop(context) ? 20 : 50,
                bottom: Responsive.isDesktop(context) ? 20 : 50),
            decoration: ShapeDecoration(
                color: Colors.white,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15.0))),
            child: SingleChildScrollView(
                child: SizedBox(
              width: Responsive.isDesktop(context)
                  ? size.width / 2
                  : size.width - 20,
              child: Expanded(
                  child: Column(
                children: [
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
                        borderRadius:
                            BorderRadius.circular(Insets().appRadius)),
                    child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: SizedBox(
                        width: Responsive.isDesktop(context)
                            ? 712
                            : size.width + 300,
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
                                    color:
                                        !regSubj ? Colors.black : Colors.white,
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
                                    color: !regbyExcl
                                        ? Colors.black
                                        : Colors.white,
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
                                    color: !regbyNecta
                                        ? Colors.black
                                        : Colors.white,
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
                        borderRadius:
                            BorderRadius.circular(Insets().appRadius)),
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
                                inputOptions(
                                  title: "Class Level",
                                  opt1: "",
                                ),
                                SizedBox(
                                  height:
                                      Responsive.isDesktop(context) ? 10 : 15,
                                ),
                                inputTextField(
                                    title: "Subject Name", hintText: "Subject"),
                                SizedBox(
                                  height:
                                      Responsive.isDesktop(context) ? 10 : 15,
                                ),
                                inputTextField(
                                    title: "Subject Code", hintText: "Code"),
                                SizedBox(
                                  height:
                                      Responsive.isDesktop(context) ? 10 : 15,
                                ),
                                inputTextField(
                                    title: "Subject Type", hintText: "Type"),
                                SizedBox(
                                  height:
                                      Responsive.isDesktop(context) ? 10 : 15,
                                ),
                                inputTextField(
                                    title: "Arrangement",
                                    hintText: "Arrangement"),
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
                                          ? MainAxisAlignment.end
                                          : MainAxisAlignment.start,
                                  crossAxisAlignment:
                                      Responsive.isDesktop(context)
                                          ? CrossAxisAlignment.center
                                          : CrossAxisAlignment.start,
                                  children: [
                                    SizedBox(
                                      width: 400,
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
                        ),
                        Visibility(visible: regbyExcl, child: Offstage()),
                        Visibility(visible: regbyNecta, child: Offstage())
                      ],
                    ),
                  )
                ],
              )),
            )),
          ),
        ),
      ),
    );
  }
}
