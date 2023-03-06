import 'package:file_picker/file_picker.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:intl/intl.dart';
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
import 'package:skyconnect_starter/components/inputBigText.comp.dart';
import 'package:skyconnect_starter/components/inputDate.comp.dart';
import 'package:skyconnect_starter/components/inputOptions.comp.dart';
import 'package:skyconnect_starter/components/inputTextField.comp.dart';
import 'package:skyconnect_starter/components/inputTime.comp.dart';
import 'package:skyconnect_starter/components/officialDetails.dart';
import 'package:skyconnect_starter/components/otherFacilities.dart';
import 'package:skyconnect_starter/components/parentsDetails.dart';
import 'package:skyconnect_starter/components/personalDetails.dart';
import 'package:skyconnect_starter/components/uploadDocuments.dart';
import 'package:skyconnect_starter/controllers/funcs_main.dart';
import 'package:skyconnect_starter/controllers/responsive.dart';
import 'package:skyconnect_starter/components/academicDetails.dart';
import 'package:skyconnect_starter/theme/design.theme.dart';

class addLiveSetting extends StatefulWidget {
  const addLiveSetting({super.key});

  @override
  State<addLiveSetting> createState() => _addLiveSettingState();
}

class _addLiveSettingState extends State<addLiveSetting>
    with SingleTickerProviderStateMixin {
  bool _menu = false;
  var _specialGrade;
  var _classlevel;
  var _subject;
  var _status;
  var _class;
  var picked;
  late AnimationController controller;
  late Animation<double> scaleAnimation;
  TextEditingController _date = TextEditingController();

  double _drawersize = 250;
  @override
  void initState() {
    super.initState();
    _date.text = "";

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
                          value: "LIVE STUDY SETTINGS",
                          fontWeight: FontWeight.w700,
                          color: Colors.black,
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        const Heading3(
                          value: "Live Study Information",
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
                        borderRadius:
                            BorderRadius.circular(Insets().appRadius)),
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
                              inputOptions(
                                title: "Class Level",
                                opt1: "",
                              ),
                              SizedBox(
                                height: Responsive.isDesktop(context) ? 10 : 15,
                              ),
                              inputOptions(
                                title: "Class",
                                opt1: "",
                              ),
                              SizedBox(
                                height: Responsive.isDesktop(context) ? 10 : 15,
                              ),
                              inputOptions(
                                title: "Subject",
                                opt1: "",
                              ),
                              SizedBox(
                                height: Responsive.isDesktop(context) ? 10 : 15,
                              ),
                              inputTextField(
                                  title: "Main Topic", hintText: "Main Topic"),
                              SizedBox(
                                height: Responsive.isDesktop(context) ? 10 : 15,
                              ),
                              inputTextField(
                                  title: "Video Title (Sub Topic)",
                                  hintText: "Video Title"),
                              SizedBox(
                                height: Responsive.isDesktop(context) ? 10 : 15,
                              ),
                              inputBigText(
                                  title: "Sub Topic Description",
                                  hintText: "Sub Topic Description"),
                              SizedBox(
                                height: Responsive.isDesktop(context) ? 10 : 15,
                              ),
                              inputDate(
                                  heading: "Lesson Date",
                                  subheading: "Lesson Date"),
                              SizedBox(
                                height: Responsive.isDesktop(context) ? 10 : 15,
                              ),
                              inputTime1(
                                  heading: "Time",
                                  subheading1: "Start Time",
                                  subheading2: "End Time"),
                              SizedBox(
                                height: Responsive.isDesktop(context) ? 10 : 15,
                              ),
                              inputTextField(
                                  title: "YouTube URL",
                                  hintText: "Live Stream URL"),
                              SizedBox(
                                height: Responsive.isDesktop(context) ? 10 : 15,
                              ),
                              inputOptions(
                                title: "Teacher",
                                opt1: "",
                              ),
                              SizedBox(
                                height: Responsive.isDesktop(context) ? 10 : 15,
                              ),
                              inputOptions(
                                  title: "Video Status",
                                  opt1: "Live",
                                  opt2: "Recorded"),
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
                                crossAxisAlignment:
                                    Responsive.isDesktop(context)
                                        ? CrossAxisAlignment.center
                                        : CrossAxisAlignment.start,
                                children: [
                                  SizedBox(
                                    width: Responsive.isDesktop(context)
                                        ? 400
                                        : size.width,
                                    height:
                                        Responsive.isDesktop(context) ? 50 : 40,
                                    child: ElevatedButton(
                                      style: ElevatedButton.styleFrom(
                                          padding: EdgeInsets.only(
                                            left: Insets().appPadding / 2,
                                            right: Insets().appPadding / 2,
                                          ),
                                          backgroundColor:
                                              Palette().primaryColor,
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
                                        value: "Save & Continue",
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
              )),
            )),
          ),
        ),
      ),
    );
  }
}
