import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:path/path.dart';
import 'package:skyconnect_starter/components/app_drawer/skyShuleDrawer.dart';
import 'package:skyconnect_starter/components/downloadBar.comp.dart';
import 'package:skyconnect_starter/components/header.dart';
import 'package:skyconnect_starter/components/heading1.dart';
import 'package:skyconnect_starter/components/heading2.dart';
import 'package:skyconnect_starter/components/heading3.dart';
import 'package:skyconnect_starter/components/heading4.dart';
import 'package:skyconnect_starter/components/heading5.dart';
import 'package:skyconnect_starter/components/heading6.dart';
import 'package:skyconnect_starter/components/heading_text.dart';
import 'package:skyconnect_starter/components/searchBar.comp.dart';
import 'package:skyconnect_starter/components/searchInputOptions.comp.dart';
import 'package:skyconnect_starter/components/tile3.comp.dart';
import 'package:skyconnect_starter/controllers/responsive.dart';
import 'package:skyconnect_starter/screens/addClassRoutine.scrn.dart';
import 'package:skyconnect_starter/screens/student_admission.scrn.dart';
import 'package:skyconnect_starter/theme/design.theme.dart';

class classRoutine extends StatefulWidget {
  const classRoutine({super.key});

  @override
  State<classRoutine> createState() => _classRoutineState();
}

class _classRoutineState extends State<classRoutine> {
  bool _menu = false;
  double _drawersize = 250;
  var _classlevel;

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
      child: Expanded(
          child: Column(children: [
        Container(
          alignment: Alignment.bottomLeft,
          padding: EdgeInsets.only(
              top: Insets().appPadding,
              left: Responsive.isDesktop(context)
                  ? Insets().appPadding * 2
                  : Insets().appPadding,
              right: Insets().appGap),
          child: HeadingText(
            size: Responsive.isDesktop(context) ? 35 : 30,
            value: "Class Routine",
            fontWeight: FontWeight.w700,
            color: Colors.grey.shade800,
          ),
        ),
        Flex(
          direction:
              Responsive.isDesktop(context) ? Axis.horizontal : Axis.vertical,
          children: [
            SizedBox(
              width: Responsive.isDesktop(context)
                  ? 410
                  : MediaQuery.of(context).size.width,
              child: tile3(
                icon: Icons.route_outlined,
                link: addClassRoutine(),
                linkTitle: "Add Class Routine",
              ),
            ),
          ],
        ),
        searchBar(
          title: "Search for Class Level",
          opt1: searchInputOptions(title: "Class Level", opt1: ""),
        ),
        downloadBar(results: ""),
        Expanded(
          child: ListView(children: [
            Container(
              margin: EdgeInsets.only(
                  left: Responsive.isDesktop(context)
                      ? Insets().appPadding * 2
                      : Insets().appPadding,
                  right: Responsive.isDesktop(context)
                      ? Insets().appPadding * 2
                      : Insets().appPadding,
                  top: Insets().appPadding / 2),
              padding: EdgeInsets.only(
                  left: Insets().appPadding,
                  right: Insets().appPadding,
                  top: Insets().appPadding,
                  bottom: Insets().appPadding),
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(Insets().appGap + 4)),
              child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: SizedBox(
                    width: Responsive.isDesktop(context)
                        ? size.width - 370
                        : size.width + 200,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        HeadingText(
                          size: Responsive.isDesktop(context) ? 18 : 14,
                          value: "MONDAY",
                          fontWeight: FontWeight.w700,
                        ),
                      ],
                    ),
                  )),
            ),
            Container(
              margin: EdgeInsets.only(
                left: Responsive.isDesktop(context)
                    ? Insets().appPadding * 2
                    : Insets().appPadding,
                right: Responsive.isDesktop(context)
                    ? Insets().appPadding * 2
                    : Insets().appPadding,
              ),
              padding: EdgeInsets.only(
                  left: Insets().appPadding,
                  right: Insets().appPadding,
                  top: Insets().appPadding,
                  bottom: Insets().appPadding),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(Insets().appGap + 4)),
              child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: SizedBox(
                    width: Responsive.isDesktop(context)
                        ? size.width - 370
                        : size.width + 200,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        HeadingText(
                          size: Responsive.isDesktop(context) ? 18 : 14,
                          value: "TUESDAY",
                          fontWeight: FontWeight.w700,
                        ),
                      ],
                    ),
                  )),
            ),
            Container(
              margin: EdgeInsets.only(
                left: Responsive.isDesktop(context)
                    ? Insets().appPadding * 2
                    : Insets().appPadding,
                right: Responsive.isDesktop(context)
                    ? Insets().appPadding * 2
                    : Insets().appPadding,
              ),
              padding: EdgeInsets.only(
                  left: Insets().appPadding,
                  right: Insets().appPadding,
                  top: Insets().appPadding,
                  bottom: Insets().appPadding),
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(Insets().appGap + 4)),
              child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: SizedBox(
                    width: Responsive.isDesktop(context)
                        ? size.width - 370
                        : size.width + 200,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        HeadingText(
                          size: Responsive.isDesktop(context) ? 18 : 14,
                          value: "WEDNESDAY",
                          fontWeight: FontWeight.w700,
                        ),
                      ],
                    ),
                  )),
            ),
            Container(
              margin: EdgeInsets.only(
                left: Responsive.isDesktop(context)
                    ? Insets().appPadding * 2
                    : Insets().appPadding,
                right: Responsive.isDesktop(context)
                    ? Insets().appPadding * 2
                    : Insets().appPadding,
              ),
              padding: EdgeInsets.only(
                  left: Insets().appPadding,
                  right: Insets().appPadding,
                  top: Insets().appPadding,
                  bottom: Insets().appPadding),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(Insets().appGap + 4)),
              child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: SizedBox(
                    width: Responsive.isDesktop(context)
                        ? size.width - 370
                        : size.width + 200,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        HeadingText(
                          size: Responsive.isDesktop(context) ? 18 : 14,
                          value: "THURSDAY",
                          fontWeight: FontWeight.w700,
                        ),
                      ],
                    ),
                  )),
            ),
            Container(
              margin: EdgeInsets.only(
                left: Responsive.isDesktop(context)
                    ? Insets().appPadding * 2
                    : Insets().appPadding,
                right: Responsive.isDesktop(context)
                    ? Insets().appPadding * 2
                    : Insets().appPadding,
              ),
              padding: EdgeInsets.only(
                  left: Insets().appPadding,
                  right: Insets().appPadding,
                  top: Insets().appPadding,
                  bottom: Insets().appPadding),
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(Insets().appGap + 4)),
              child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: SizedBox(
                    width: Responsive.isDesktop(context)
                        ? size.width - 370
                        : size.width + 200,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        HeadingText(
                          size: Responsive.isDesktop(context) ? 18 : 14,
                          value: "FRIDAY",
                          fontWeight: FontWeight.w700,
                        ),
                      ],
                    ),
                  )),
            ),
            Container(
              margin: EdgeInsets.only(
                left: Responsive.isDesktop(context)
                    ? Insets().appPadding * 2
                    : Insets().appPadding,
                right: Responsive.isDesktop(context)
                    ? Insets().appPadding * 2
                    : Insets().appPadding,
              ),
              padding: EdgeInsets.only(
                  left: Insets().appPadding,
                  right: Insets().appPadding,
                  top: Insets().appPadding,
                  bottom: Insets().appPadding),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(Insets().appGap + 4)),
              child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: SizedBox(
                    width: Responsive.isDesktop(context)
                        ? size.width - 370
                        : size.width + 200,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        HeadingText(
                          size: Responsive.isDesktop(context) ? 18 : 14,
                          value: "SATURDAY",
                          fontWeight: FontWeight.w700,
                        ),
                      ],
                    ),
                  )),
            ),
            Container(
              margin: EdgeInsets.only(
                left: Responsive.isDesktop(context)
                    ? Insets().appPadding * 2
                    : Insets().appPadding,
                right: Responsive.isDesktop(context)
                    ? Insets().appPadding * 2
                    : Insets().appPadding,
              ),
              padding: EdgeInsets.only(
                  left: Insets().appPadding,
                  right: Insets().appPadding,
                  top: Insets().appPadding,
                  bottom: Insets().appPadding),
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(Insets().appGap + 4)),
              child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: SizedBox(
                    width: Responsive.isDesktop(context)
                        ? size.width - 370
                        : size.width + 200,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        HeadingText(
                          size: Responsive.isDesktop(context) ? 18 : 14,
                          value: "SUNDAY",
                          fontWeight: FontWeight.w700,
                        ),
                      ],
                    ),
                  )),
            ),
          ]),
        )
      ])),
    );
  }
}
