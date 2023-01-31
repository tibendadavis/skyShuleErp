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
import 'package:skyconnect_starter/components/officialDetails.dart';
import 'package:skyconnect_starter/components/otherFacilities.dart';
import 'package:skyconnect_starter/components/parentsDetails.dart';
import 'package:skyconnect_starter/components/personalDetails.dart';
import 'package:skyconnect_starter/components/uploadDocuments.dart';
import 'package:skyconnect_starter/controllers/funcs_main.dart';
import 'package:skyconnect_starter/controllers/responsive.dart';
import 'package:skyconnect_starter/components/academicDetails.dart';
import 'package:skyconnect_starter/theme/design.theme.dart';

class addClassRoutine extends StatefulWidget {
  const addClassRoutine({super.key});

  @override
  State<addClassRoutine> createState() => _addClassRoutineState();
}

class _addClassRoutineState extends State<addClassRoutine>
    with SingleTickerProviderStateMixin {
  late AnimationController controller;
  late Animation<double> scaleAnimation;
  TextEditingController _startingTime = TextEditingController();
  TextEditingController _finishingTime = TextEditingController();

  var _specialGrade;
  var _classlevel;
  var _stream;
  var _subject;
  var _time1;
  var _time2;
  var _day;
  double _drawersize = 250;
  @override
  void initState() {
    super.initState();

    controller =
        AnimationController(vsync: this, duration: Duration(milliseconds: 700));
    scaleAnimation =
        CurvedAnimation(parent: controller, curve: Curves.elasticInOut);

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
                          value: "CLASS ROUTINE",
                          fontWeight: FontWeight.w700,
                          color: Colors.black,
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        const Heading3(
                          value: "Add Class Routine",
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
                              Flex(
                                direction: Responsive.isDesktop(context)
                                    ? Axis.horizontal
                                    : Axis.vertical,
                                mainAxisAlignment: Responsive.isDesktop(context)
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
                                      value: "Class"),
                                  SizedBox(
                                    width: Responsive.isDesktop(context)
                                        ? 400
                                        : size.width,
                                    height:
                                        Responsive.isDesktop(context) ? 50 : 40,
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
                                          if (value is String) {
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
                                crossAxisAlignment:
                                    Responsive.isDesktop(context)
                                        ? CrossAxisAlignment.center
                                        : CrossAxisAlignment.start,
                                children: [
                                  HeadingText(
                                      size: Responsive.isDesktop(context)
                                          ? 18
                                          : 14,
                                      value: "Stream"),
                                  SizedBox(
                                    width: Responsive.isDesktop(context)
                                        ? 400
                                        : size.width,
                                    height:
                                        Responsive.isDesktop(context) ? 50 : 40,
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
                                                value: "ZEBRA",
                                              ),
                                              value: "ZEBRA"),
                                          DropdownMenuItem(
                                              child: Heading5(
                                                value: "GIRAFFE",
                                              ),
                                              value: "GIRAFFE"),
                                          DropdownMenuItem(
                                              child: Heading5(
                                                value: "GAZELLE",
                                              ),
                                              value: "GAZELLE"),
                                        ],
                                        value: _stream,
                                        isExpanded: true,
                                        iconSize: 35,
                                        icon: Icon(
                                            Icons.keyboard_arrow_down_outlined),
                                        underline: SizedBox(),
                                        dropdownColor: Colors.white,
                                        borderRadius: BorderRadius.circular(
                                            Insets().appRadiusMin + 4),
                                        hint: Heading5(
                                          value: "Stream",
                                        ),
                                        onChanged: ((value) {
                                          if (value is String) {
                                            setState(() {
                                              _stream = value;
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
                                crossAxisAlignment:
                                    Responsive.isDesktop(context)
                                        ? CrossAxisAlignment.center
                                        : CrossAxisAlignment.start,
                                children: [
                                  HeadingText(
                                      size: Responsive.isDesktop(context)
                                          ? 18
                                          : 14,
                                      value: "Subject"),
                                  SizedBox(
                                    width: Responsive.isDesktop(context)
                                        ? 400
                                        : size.width,
                                    height:
                                        Responsive.isDesktop(context) ? 50 : 40,
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
                                                value: "English",
                                              ),
                                              value: "English"),
                                        ],
                                        value: _subject,
                                        isExpanded: true,
                                        iconSize: 35,
                                        icon: Icon(
                                            Icons.keyboard_arrow_down_outlined),
                                        underline: SizedBox(),
                                        dropdownColor: Colors.white,
                                        borderRadius: BorderRadius.circular(
                                            Insets().appRadiusMin + 4),
                                        hint: Heading5(
                                          value: "Subject",
                                        ),
                                        onChanged: ((value) {
                                          if (value is String) {
                                            setState(() {
                                              _subject = value;
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
                                crossAxisAlignment:
                                    Responsive.isDesktop(context)
                                        ? CrossAxisAlignment.center
                                        : CrossAxisAlignment.start,
                                children: [
                                  HeadingText(
                                      size: Responsive.isDesktop(context)
                                          ? 18
                                          : 14,
                                      value: "Day"),
                                  SizedBox(
                                    width: Responsive.isDesktop(context)
                                        ? 400
                                        : size.width,
                                    height:
                                        Responsive.isDesktop(context) ? 50 : 40,
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
                                                value: "SUNDAY",
                                              ),
                                              value: "SUNDAY"),
                                          DropdownMenuItem(
                                              child: Heading5(
                                                value: "MONDAY",
                                              ),
                                              value: "MONDAY"),
                                          DropdownMenuItem(
                                              child: Heading5(
                                                value: "TUESDAY",
                                              ),
                                              value: "TUESDAY"),
                                        ],
                                        value: _day,
                                        isExpanded: true,
                                        iconSize: 35,
                                        icon: Icon(
                                            Icons.keyboard_arrow_down_outlined),
                                        underline: SizedBox(),
                                        dropdownColor: Colors.white,
                                        borderRadius: BorderRadius.circular(
                                            Insets().appRadiusMin + 4),
                                        hint: Heading5(
                                          value: "DAY",
                                        ),
                                        onChanged: ((value) {
                                          if (value is String) {
                                            setState(() {
                                              _day = value;
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
                                crossAxisAlignment:
                                    Responsive.isDesktop(context)
                                        ? CrossAxisAlignment.center
                                        : CrossAxisAlignment.start,
                                children: [
                                  HeadingText(
                                      size: Responsive.isDesktop(context)
                                          ? 18
                                          : 14,
                                      value: "Starting Time"),
                                  SizedBox(
                                    width: Responsive.isDesktop(context)
                                        ? 400
                                        : size.width,
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
                                          controller: _startingTime,
                                          readOnly: true,
                                          onTap: () async {
                                            final time = await Funcs()
                                                .selectTime(context: context);

                                            setState(() {
                                              _startingTime.text =
                                                  time!.format(context);
                                            });
                                          },
                                          textAlignVertical:
                                              TextAlignVertical.center,
                                          decoration: InputDecoration(
                                            suffixIcon: Icon(
                                              Icons.timer,
                                            ),
                                            border: InputBorder.none,
                                            hintText: "Starting Time",
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
                                crossAxisAlignment:
                                    Responsive.isDesktop(context)
                                        ? CrossAxisAlignment.center
                                        : CrossAxisAlignment.start,
                                children: [
                                  HeadingText(
                                      size: Responsive.isDesktop(context)
                                          ? 18
                                          : 14,
                                      value: "Finishing Time"),
                                  SizedBox(
                                    width: Responsive.isDesktop(context)
                                        ? 400
                                        : size.width,
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
                                          controller: _finishingTime,
                                          readOnly: true,
                                          onTap: () async {
                                            final time = await Funcs()
                                                .selectTime(context: context);

                                            setState(() {
                                              _finishingTime.text =
                                                  time!.format(context);
                                            });
                                          },
                                          textAlignVertical:
                                              TextAlignVertical.center,
                                          decoration: InputDecoration(
                                            suffixIcon: Icon(
                                              Icons.timer,
                                            ),
                                            border: InputBorder.none,
                                            hintText: "Finishing Time",
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
                                crossAxisAlignment:
                                    Responsive.isDesktop(context)
                                        ? CrossAxisAlignment.center
                                        : CrossAxisAlignment.start,
                                children: [
                                  HeadingText(
                                      size: Responsive.isDesktop(context)
                                          ? 18
                                          : 14,
                                      value: "Room / Comment"),
                                  SizedBox(
                                    width: Responsive.isDesktop(context)
                                        ? 400
                                        : size.width,
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
            )),
          ),
        ),
      ),
    );
  }
}
