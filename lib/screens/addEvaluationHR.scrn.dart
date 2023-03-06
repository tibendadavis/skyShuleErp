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
import 'package:skyconnect_starter/components/inputDatePeriod.comp.dart';
import 'package:skyconnect_starter/components/inputOptions.comp.dart';
import 'package:skyconnect_starter/components/officialDetails.dart';
import 'package:skyconnect_starter/components/otherFacilities.dart';
import 'package:skyconnect_starter/components/parentsDetails.dart';
import 'package:skyconnect_starter/components/personalDetails.dart';
import 'package:skyconnect_starter/components/uploadDocuments.dart';
import 'package:skyconnect_starter/controllers/funcs_main.dart';
import 'package:skyconnect_starter/controllers/responsive.dart';
import 'package:skyconnect_starter/components/academicDetails.dart';
import 'package:skyconnect_starter/theme/design.theme.dart';

class addEvaluation extends StatefulWidget {
  const addEvaluation({super.key});

  @override
  State<addEvaluation> createState() => _addEvaluateState();
}

class _addEvaluateState extends State<addEvaluation>
    with SingleTickerProviderStateMixin {
  bool _menu = false;
  late AnimationController controller;
  late Animation<double> scaleAnimation;
  TextEditingController _enrollmentDate = TextEditingController();
  TextEditingController _endDate = TextEditingController();
  var _specialGrade;
  var _classlevel;
  double _drawersize = 250;
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
                      children: const [
                        Heading2(
                          value: "EVALUATION",
                          fontWeight: FontWeight.w700,
                          color: Colors.black,
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Heading3(
                          value: "Evaluation Information",
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
                                title: "Department",
                                opt1: "",
                              ),
                              SizedBox(
                                height: Responsive.isDesktop(context) ? 10 : 15,
                              ),
                              inputOptions(
                                title: "Employee",
                                opt1: "",
                              ),
                              SizedBox(
                                height: Responsive.isDesktop(context) ? 10 : 15,
                              ),
                              inputDatePeriod(
                                  heading: "Evaluation Period2",
                                  subheading1: "From",
                                  subheading2: "To"),
                              SizedBox(
                                height: Responsive.isDesktop(context) ? 10 : 15,
                              ),
                              inputOptions(
                                title: "Lesson Planning & Preparations",
                                opt1: "Poor",
                                opt2: "Satisfactory",
                                opt3: "Good",
                                opt4: "Very Good",
                                opt5: "Excellent",
                              ),
                              SizedBox(
                                height: Responsive.isDesktop(context) ? 10 : 15,
                              ),
                              inputOptions(
                                title: "Classroom Management",
                                opt1: "Poor",
                                opt2: "Satisfactory",
                                opt3: "Good",
                                opt4: "Very Good",
                                opt5: "Excellent",
                              ),
                              SizedBox(
                                height: Responsive.isDesktop(context) ? 10 : 15,
                              ),
                              inputOptions(
                                title: "Instructional Delivery",
                                opt1: "Poor",
                                opt2: "Satisfactory",
                                opt3: "Good",
                                opt4: "Very Good",
                                opt5: "Excellent",
                              ),
                              SizedBox(
                                height: Responsive.isDesktop(context) ? 10 : 15,
                              ),
                              inputOptions(
                                title: "Professionalism & Work Ethic",
                                opt1: "Poor",
                                opt2: "Satisfactory",
                                opt3: "Good",
                                opt4: "Very Good",
                                opt5: "Excellent",
                              ),
                              SizedBox(
                                height: Responsive.isDesktop(context) ? 10 : 15,
                              ),
                              inputOptions(
                                title: "Collaboration &  Communication",
                                opt1: "Poor",
                                opt2: "Satisfactory",
                                opt3: "Good",
                                opt4: "Very Good",
                                opt5: "Excellent",
                              ),
                              SizedBox(
                                height: Responsive.isDesktop(context) ? 10 : 15,
                              ),
                              inputOptions(
                                title: "Technology Integration",
                                opt1: "Poor",
                                opt2: "Satisfactory",
                                opt3: "Good",
                                opt4: "Very Good",
                                opt5: "Excellent",
                              ),
                              SizedBox(
                                height: Responsive.isDesktop(context) ? 10 : 15,
                              ),
                              inputOptions(
                                title: "Student Engagement &\nMotivation",
                                opt1: "Poor",
                                opt2: "Satisfactory",
                                opt3: "Good",
                                opt4: "Very Good",
                                opt5: "Excellent",
                              ),
                              SizedBox(
                                height: Responsive.isDesktop(context) ? 10 : 15,
                              ),
                              inputOptions(
                                title: "Assessment and Evaluation",
                                opt1: "Poor",
                                opt2: "Satisfactory",
                                opt3: "Good",
                                opt4: "Very Good",
                                opt5: "Excellent",
                              ),
                              SizedBox(
                                height: Responsive.isDesktop(context) ? 10 : 15,
                              ),
                              inputOptions(
                                title: "Overall Performance Rating",
                                opt1: "Poor",
                                opt2: "Satisfactory",
                                opt3: "Good",
                                opt4: "Very Good",
                                opt5: "Excellent",
                              ),
                              SizedBox(
                                height: Responsive.isDesktop(context) ? 10 : 15,
                              ),
                              inputBigText(
                                  title: "Comments and Feedback",
                                  hintText: "Comments and Feedback"),
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
