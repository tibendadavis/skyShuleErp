import 'package:flutter/material.dart';
import 'package:skyconnect_starter/components/heading2.dart';
import 'package:skyconnect_starter/components/heading3.dart';
import 'package:skyconnect_starter/components/heading_text.dart';
import 'package:skyconnect_starter/components/inputBigText.comp.dart';
import 'package:skyconnect_starter/components/inputOptions.comp.dart';
import 'package:skyconnect_starter/components/inputTextField.comp.dart';
import 'package:skyconnect_starter/controllers/responsive.dart';
import 'package:skyconnect_starter/theme/design.theme.dart';

class addGrading extends StatefulWidget {
  const addGrading({super.key});

  @override
  State<addGrading> createState() => _addGradingState();
}

class _addGradingState extends State<addGrading>
    with SingleTickerProviderStateMixin {
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
                          value: "GRADE",
                          fontWeight: FontWeight.w700,
                          color: Colors.black,
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        const Heading3(
                          value: "Grade Information",
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
                              inputTextField(
                                  title: "Grade Name",
                                  hintText: "Grade name eg. A"),
                              SizedBox(
                                height: Responsive.isDesktop(context) ? 10 : 15,
                              ),
                              inputOptions(
                                title: "Class Level",
                                opt1: "",
                              ),
                              SizedBox(
                                height: Responsive.isDesktop(context) ? 10 : 15,
                              ),
                              inputTextField(
                                  title: "Grade Point",
                                  hintText: "Weight of this grade"),
                              SizedBox(
                                height: Responsive.isDesktop(context) ? 10 : 15,
                              ),
                              inputTextField(
                                  title: "Mark From",
                                  hintText: "Minimum marks for this grade"),
                              SizedBox(
                                height: Responsive.isDesktop(context) ? 10 : 15,
                              ),
                              inputTextField(
                                  title: "Mark Up To",
                                  hintText: "Maximum marks for this grade"),
                              SizedBox(
                                height: Responsive.isDesktop(context) ? 10 : 15,
                              ),
                              inputTextField(
                                  title: "Remark", hintText: "E.g Excellent"),
                              SizedBox(
                                height: Responsive.isDesktop(context) ? 10 : 15,
                              ),
                              inputTextField(
                                  title: "Overall Remark", hintText: ""),
                              SizedBox(
                                height: Responsive.isDesktop(context) ? 10 : 15,
                              ),
                              inputBigText(
                                  title: "Overalll Academic Note",
                                  hintText: ""),
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
