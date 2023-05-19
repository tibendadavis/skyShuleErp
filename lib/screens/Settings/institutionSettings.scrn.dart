import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:skyconnect_starter/components/heading2.dart';
import 'package:skyconnect_starter/components/heading3.dart';
import 'package:skyconnect_starter/components/heading_text.dart';
import 'package:skyconnect_starter/components/inputBigText.comp.dart';
import 'package:skyconnect_starter/components/inputDate.comp.dart';
import 'package:skyconnect_starter/components/inputFile.comp.dart';
import 'package:skyconnect_starter/components/inputOptions.comp.dart';
import 'package:skyconnect_starter/components/inputTextField.comp.dart';
import 'package:skyconnect_starter/controllers/funcs_main.dart';
import 'package:skyconnect_starter/controllers/responsive.dart';
import 'package:skyconnect_starter/main.dart';
import 'package:skyconnect_starter/screens/Settings/institutionDetails.scrn.dart';
import 'package:skyconnect_starter/theme/design.theme.dart';

class institutionSettings extends StatefulWidget {
  const institutionSettings({super.key});

  @override
  State<institutionSettings> createState() => _institutionSettingsState();
}

class _institutionSettingsState extends State<institutionSettings> {
  TextEditingController _startYear = TextEditingController();
  TextEditingController _endYear = TextEditingController();
  bool _menu = false;
  var picked;
  var _specialGrade;
  var _classlevel;
  double _drawersize = 250;
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return ListView(
      children: [
        Container(
          child: Expanded(
              child: Column(
            children: [
              Container(
                alignment: Alignment.bottomLeft,
                padding: EdgeInsets.only(
                    left: Insets().appPadding * 2,
                    right: Insets().appPadding * 2),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    HeadingText(
                      size: Responsive.isDesktop(context) ? 25 : 20,
                      value: "Institution Setting",
                      fontWeight: FontWeight.w700,
                      color: Colors.grey.shade800,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Heading3(
                          value: "Settings",
                          fontWeight: FontWeight.w600,
                          color: Colors.grey.shade800,
                        ),
                        ElevatedButton(
                          onPressed: () async {
                            Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => MyHomePage(
                                page: institutionDetails(),
                              ),
                            ));
                          },
                          style: ElevatedButton.styleFrom(
                              backgroundColor: Palette().primaryColor,
                              padding: EdgeInsets.only(
                                bottom: Responsive.isDesktop(context) ? 17 : 14,
                                left: 5,
                                right: 5,
                                top: Responsive.isDesktop(context) ? 17 : 14,
                              ),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10))),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.remove_red_eye_rounded,
                                color: Colors.white,
                                size: Responsive.isDesktop(context) ? null : 20,
                              ),
                              SizedBox(
                                width: Responsive.isDesktop(context) ? 5 : 0,
                              ),
                              HeadingText(
                                  size: Responsive.isDesktop(context) ? 15 : 0,
                                  value: Responsive.isDesktop(context)
                                      ? "View Details"
                                      : ""),
                            ],
                          ),
                        )
                      ],
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
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(Insets().appRadius)),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      width: !Responsive.isDesktop(context)
                          ? MediaQuery.of(context).size.width
                          : MediaQuery.of(context).size.width / 2.3,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          inputTextField(
                              title: "Institution Name",
                              hintText: "Institution Name"),
                          SizedBox(
                            height: Responsive.isDesktop(context) ? 10 : 15,
                          ),
                          inputBigText(
                              title: "Institution Address",
                              hintText: "Institution Address"),
                          SizedBox(
                            height: Responsive.isDesktop(context) ? 10 : 15,
                          ),
                          inputTextField(
                              title: "Institution Phone",
                              type: "number",
                              hintText: "Institution Phone"),
                          SizedBox(
                            height: Responsive.isDesktop(context) ? 10 : 15,
                          ),
                          inputTextField(
                              title: "Institution Email",
                              type: "email",
                              hintText: "Institution Email"),
                          SizedBox(
                            height: Responsive.isDesktop(context) ? 10 : 15,
                          ),
                          inputTextField(
                              title: "Institution Website",
                              hintText: "Institution Website"),
                          SizedBox(
                            height: Responsive.isDesktop(context) ? 10 : 15,
                          ),
                          inputBigText(
                              title: "Institution Motto",
                              hintText: "Institution Motto"),
                          SizedBox(
                            height: Responsive.isDesktop(context) ? 10 : 15,
                          ),
                          inputBigText(
                              title: "Institution Vision",
                              hintText: "Institution Vision"),
                          SizedBox(
                            height: Responsive.isDesktop(context) ? 10 : 15,
                          ),
                          inputBigText(
                              title: "Institution Mission",
                              hintText: "Institution Mission"),
                          SizedBox(
                            height: Responsive.isDesktop(context) ? 10 : 15,
                          ),
                          inputDate(
                              heading: "Academic Year Start",
                              subheading: "Start"),
                          SizedBox(
                            height: Responsive.isDesktop(context) ? 10 : 15,
                          ),
                          inputDate(
                              heading: "Academic Year End", subheading: "End"),
                          SizedBox(
                            height: Responsive.isDesktop(context) ? 10 : 15,
                          ),
                          inputFile(heading: "Institution Logo"),
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
          )),
        ),
      ],
    );
  }
}
