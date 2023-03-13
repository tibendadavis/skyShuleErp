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

class studentPerfomanceReport extends StatefulWidget {
  const studentPerfomanceReport({super.key});

  @override
  State<studentPerfomanceReport> createState() =>
      _addStudentPerfomanceReportState();
}

class _addStudentPerfomanceReportState extends State<studentPerfomanceReport>
    with SingleTickerProviderStateMixin {
  bool _menu = false;
  late AnimationController controller;
  late Animation<double> scaleAnimation;
  TextEditingController _startDate = TextEditingController();
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
                    child: const Heading2(
                      value: "STUDENT PERFOMANCE REPORT",
                      fontWeight: FontWeight.w700,
                      color: Colors.black,
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
                              Container(
                                padding: EdgeInsets.only(
                                    bottom: Insets().appPadding),
                                child: Center(
                                  child: SingleChildScrollView(
                                    scrollDirection: Axis.horizontal,
                                    child: DataTable(
                                        headingTextStyle: TextStyle(
                                            color: Palette().primaryColor),
                                        horizontalMargin: 0,
                                        columnSpacing:
                                            Responsive.isDesktop(context)
                                                ? 20
                                                : 10,
                                        columns: [
                                          DataColumn(
                                              label: Expanded(
                                            child: HeadingText(
                                              size: 16,
                                              value: "No.",
                                              fontWeight: FontWeight.w700,
                                            ),
                                          )),
                                          DataColumn(
                                              label: SizedBox(
                                            width: Responsive.isDesktop(context)
                                                ? 200
                                                : 150,
                                            child: HeadingText(
                                              size: 16,
                                              value: "Subject",
                                              fontWeight: FontWeight.w700,
                                            ),
                                          )),
                                          DataColumn(
                                              label: SizedBox(
                                            width: Responsive.isDesktop(context)
                                                ? 200
                                                : 150,
                                            child: HeadingText(
                                              size: 16,
                                              value: "Mark",
                                              fontWeight: FontWeight.w700,
                                            ),
                                          )),
                                          DataColumn(
                                              label: SizedBox(
                                            width: Responsive.isDesktop(context)
                                                ? 200
                                                : 150,
                                            child: HeadingText(
                                              size: 16,
                                              value: "Grade",
                                              fontWeight: FontWeight.w700,
                                            ),
                                          )),
                                        ],
                                        rows: [
                                          DataRow(cells: [
                                            DataCell(
                                              HeadingText(
                                                size: 16,
                                                value: "1",
                                                fontWeight: FontWeight.w600,
                                              ),
                                            ),
                                            DataCell(
                                              HeadingText(
                                                size: 16,
                                                value: "Mathematics",
                                                fontWeight: FontWeight.w600,
                                              ),
                                            ),
                                            DataCell(
                                              HeadingText(
                                                size: 16,
                                                value: "97",
                                                fontWeight: FontWeight.w600,
                                              ),
                                            ),
                                            DataCell(
                                              HeadingText(
                                                size: 16,
                                                value: "A",
                                                fontWeight: FontWeight.w600,
                                              ),
                                            )
                                          ]),
                                          DataRow(cells: [
                                            DataCell(
                                              HeadingText(
                                                size: 16,
                                                value: "1",
                                                fontWeight: FontWeight.w600,
                                              ),
                                            ),
                                            DataCell(
                                              HeadingText(
                                                size: 16,
                                                value: "Mathematics",
                                                fontWeight: FontWeight.w600,
                                              ),
                                            ),
                                            DataCell(
                                              HeadingText(
                                                size: 16,
                                                value: "97",
                                                fontWeight: FontWeight.w600,
                                              ),
                                            ),
                                            DataCell(
                                              HeadingText(
                                                size: 16,
                                                value: "A",
                                                fontWeight: FontWeight.w600,
                                              ),
                                            )
                                          ]),
                                          DataRow(cells: [
                                            DataCell(
                                              HeadingText(
                                                size: 16,
                                                value: "1",
                                                fontWeight: FontWeight.w600,
                                              ),
                                            ),
                                            DataCell(
                                              HeadingText(
                                                size: 16,
                                                value: "Mathematics",
                                                fontWeight: FontWeight.w600,
                                              ),
                                            ),
                                            DataCell(
                                              HeadingText(
                                                size: 16,
                                                value: "97",
                                                fontWeight: FontWeight.w600,
                                              ),
                                            ),
                                            DataCell(
                                              HeadingText(
                                                size: 16,
                                                value: "A",
                                                fontWeight: FontWeight.w600,
                                              ),
                                            )
                                          ]),
                                          DataRow(cells: [
                                            DataCell(
                                              HeadingText(
                                                size: 16,
                                                value: "1",
                                                fontWeight: FontWeight.w600,
                                              ),
                                            ),
                                            DataCell(
                                              HeadingText(
                                                size: 16,
                                                value: "Mathematics",
                                                fontWeight: FontWeight.w600,
                                              ),
                                            ),
                                            DataCell(
                                              HeadingText(
                                                size: 16,
                                                value: "97",
                                                fontWeight: FontWeight.w600,
                                              ),
                                            ),
                                            DataCell(
                                              HeadingText(
                                                size: 16,
                                                value: "A",
                                                fontWeight: FontWeight.w600,
                                              ),
                                            )
                                          ]),
                                          DataRow(cells: [
                                            DataCell(
                                              HeadingText(
                                                size: 16,
                                                value: "1",
                                                fontWeight: FontWeight.w600,
                                              ),
                                            ),
                                            DataCell(
                                              HeadingText(
                                                size: 16,
                                                value: "Mathematics",
                                                fontWeight: FontWeight.w600,
                                              ),
                                            ),
                                            DataCell(
                                              HeadingText(
                                                size: 16,
                                                value: "97",
                                                fontWeight: FontWeight.w600,
                                              ),
                                            ),
                                            DataCell(
                                              HeadingText(
                                                size: 16,
                                                value: "A",
                                                fontWeight: FontWeight.w600,
                                              ),
                                            ),
                                          ]),
                                          DataRow(cells: [
                                            DataCell(
                                              HeadingText(
                                                size: 16,
                                                value: "1",
                                                fontWeight: FontWeight.w600,
                                              ),
                                            ),
                                            DataCell(
                                              HeadingText(
                                                size: 16,
                                                value: "Mathematics",
                                                fontWeight: FontWeight.w600,
                                              ),
                                            ),
                                            DataCell(
                                              HeadingText(
                                                size: 16,
                                                value: "97",
                                                fontWeight: FontWeight.w600,
                                              ),
                                            ),
                                            DataCell(
                                              HeadingText(
                                                size: 16,
                                                value: "A",
                                                fontWeight: FontWeight.w600,
                                              ),
                                            ),
                                          ]),
                                          DataRow(cells: [
                                            DataCell(
                                              HeadingText(
                                                size: 16,
                                                value: "1",
                                                fontWeight: FontWeight.w600,
                                              ),
                                            ),
                                            DataCell(
                                              HeadingText(
                                                size: 16,
                                                value: "Mathematics",
                                                fontWeight: FontWeight.w600,
                                              ),
                                            ),
                                            DataCell(
                                              HeadingText(
                                                size: 16,
                                                value: "97",
                                                fontWeight: FontWeight.w600,
                                              ),
                                            ),
                                            DataCell(
                                              HeadingText(
                                                size: 16,
                                                value: "A",
                                                fontWeight: FontWeight.w600,
                                              ),
                                            ),
                                          ]),
                                          DataRow(cells: [
                                            DataCell(
                                              HeadingText(
                                                size: 16,
                                                value: "1",
                                                fontWeight: FontWeight.w600,
                                              ),
                                            ),
                                            DataCell(
                                              HeadingText(
                                                size: 16,
                                                value: "Mathematics",
                                                fontWeight: FontWeight.w600,
                                              ),
                                            ),
                                            DataCell(
                                              HeadingText(
                                                size: 16,
                                                value: "97",
                                                fontWeight: FontWeight.w600,
                                              ),
                                            ),
                                            DataCell(
                                              HeadingText(
                                                size: 16,
                                                value: "A",
                                                fontWeight: FontWeight.w600,
                                              ),
                                            ),
                                          ]),
                                          DataRow(cells: [
                                            DataCell(
                                              HeadingText(
                                                size: 16,
                                                value: "1",
                                                fontWeight: FontWeight.w600,
                                              ),
                                            ),
                                            DataCell(
                                              HeadingText(
                                                size: 16,
                                                value: "Mathematics",
                                                fontWeight: FontWeight.w600,
                                              ),
                                            ),
                                            DataCell(
                                              HeadingText(
                                                size: 16,
                                                value: "97",
                                                fontWeight: FontWeight.w600,
                                              ),
                                            ),
                                            DataCell(
                                              HeadingText(
                                                size: 16,
                                                value: "A",
                                                fontWeight: FontWeight.w600,
                                              ),
                                            ),
                                          ]),
                                          DataRow(cells: [
                                            DataCell(
                                              HeadingText(
                                                size: 16,
                                                value: "1",
                                                fontWeight: FontWeight.w600,
                                              ),
                                            ),
                                            DataCell(
                                              HeadingText(
                                                size: 16,
                                                value: "Mathematics",
                                                fontWeight: FontWeight.w600,
                                              ),
                                            ),
                                            DataCell(
                                              HeadingText(
                                                size: 16,
                                                value: "97",
                                                fontWeight: FontWeight.w600,
                                              ),
                                            ),
                                            DataCell(
                                              HeadingText(
                                                size: 16,
                                                value: "A",
                                                fontWeight: FontWeight.w600,
                                              ),
                                            ),
                                          ]),
                                        ]),
                                  ),
                                ),
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
