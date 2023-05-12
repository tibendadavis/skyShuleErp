import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:path/path.dart';
import 'package:skyconnect_starter/components/app_drawer/skyShuleDrawer.dart';
import 'package:skyconnect_starter/components/header.dart';
import 'package:skyconnect_starter/components/heading1.dart';
import 'package:skyconnect_starter/components/heading2.dart';
import 'package:skyconnect_starter/components/heading3.dart';
import 'package:skyconnect_starter/components/heading4.dart';
import 'package:skyconnect_starter/components/heading5.dart';
import 'package:skyconnect_starter/components/heading6.dart';
import 'package:skyconnect_starter/components/heading_text.dart';
import 'package:skyconnect_starter/controllers/responsive.dart';
import 'package:skyconnect_starter/screens/addTeacher.scrn.dart';
import 'package:skyconnect_starter/screens/student_admission.scrn.dart';
import 'package:skyconnect_starter/theme/design.theme.dart';

class teachers extends StatefulWidget {
  const teachers({super.key});

  @override
  State<teachers> createState() => _teachersState();
}

class _teachersState extends State<teachers> {
  bool _menu = false;
  double _drawersize = 250;
  var _classlevel;
  var _academicYear;
  var _stream;

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
            value: "TEACHERS",
            fontWeight: FontWeight.w700,
            color: Colors.black,
          ),
        ),
        Flex(
          direction:
              Responsive.isDesktop(context) ? Axis.horizontal : Axis.vertical,
          children: [
            if (Responsive.isDesktop(context)) ...[
              Expanded(
                child: Container(
                  margin: EdgeInsets.only(
                      left: Insets().appPadding * 2,
                      top: Insets().appPadding,
                      bottom: Insets().appPadding),
                  padding: EdgeInsets.only(
                      left: Insets().appPadding,
                      right: Insets().appPadding,
                      top: Insets().appGap + 2,
                      bottom: Insets().appPadding),
                  decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          color: Palette().borderColor,
                          blurRadius: 15.0, // soften the shadow
                          spreadRadius: 2.0, //extend the shadow
                          offset: Offset(
                            1.0, // Move to right 5  horizontally
                            2.0, // Move to bottom 5 Vertically
                          ),
                        )
                      ],
                      color: Palette().primaryColor,
                      borderRadius:
                          BorderRadius.circular(Insets().appRadiusMin + 4)),
                  child: SizedBox(
                    height: 70,
                    child: Row(
                      children: [
                        Icon(
                          Icons.star,
                          size: 50,
                          color: Colors.white,
                        ),
                        Spacer(),
                        ElevatedButton(
                            onPressed: () {
                              showDialog(
                                context: context,
                                builder: (_) => addTeachers(),
                              );
                            },
                            style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.white,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(
                                        Insets().appRadiusMin + 4)),
                                padding: EdgeInsets.all(Insets().appPadding)),
                            child: Heading5(
                              value: "Add Teacher",
                              color: Colors.black,
                            ))
                      ],
                    ),
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  margin: EdgeInsets.only(
                      left: Insets().appPadding * 2,
                      top: Insets().appPadding,
                      bottom: Insets().appPadding),
                  padding: EdgeInsets.only(
                      left: Insets().appPadding,
                      right: Insets().appPadding,
                      top: Insets().appGap + 2,
                      bottom: Insets().appPadding),
                  decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          color: Palette().borderColor,
                          blurRadius: 15.0, // soften the shadow
                          spreadRadius: 2.0, //extend the shadow
                          offset: Offset(
                            1.0, // Move to right 5  horizontally
                            2.0, // Move to bottom 5 Vertically
                          ),
                        )
                      ],
                      color: Palette().primaryColor,
                      borderRadius:
                          BorderRadius.circular(Insets().appRadiusMin + 4)),
                  child: SizedBox(
                    height: 70,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Heading1(
                          value: "480",
                          color: Colors.white,
                        ),
                        Heading6(value: "Total Teachers", color: Colors.white)
                      ],
                    ),
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  margin: EdgeInsets.only(
                      left: Insets().appPadding * 2,
                      top: Insets().appPadding,
                      bottom: Insets().appPadding),
                  padding: EdgeInsets.only(
                      left: Insets().appPadding,
                      right: Insets().appPadding,
                      top: Insets().appGap + 2,
                      bottom: Insets().appPadding),
                  decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          color: Palette().borderColor,
                          blurRadius: 15.0, // soften the shadow
                          spreadRadius: 2.0, //extend the shadow
                          offset: Offset(
                            1.0, // Move to right 5  horizontally
                            2.0, // Move to bottom 5 Vertically
                          ),
                        )
                      ],
                      color: Palette().primaryColor,
                      borderRadius:
                          BorderRadius.circular(Insets().appRadiusMin + 4)),
                  child: SizedBox(
                    height: 70,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Heading1(
                          value: "240",
                          color: Colors.white,
                        ),
                        Heading6(
                            value: "Total Male Teachers", color: Colors.white)
                      ],
                    ),
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  margin: EdgeInsets.only(
                      left: Insets().appPadding * 2,
                      top: Insets().appPadding,
                      right: Insets().appPadding * 2,
                      bottom: Insets().appPadding),
                  padding: EdgeInsets.only(
                      left: Insets().appPadding,
                      right: Insets().appPadding,
                      top: Insets().appGap + 2,
                      bottom: Insets().appPadding),
                  decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          color: Palette().borderColor,
                          blurRadius: 15.0, // soften the shadow
                          spreadRadius: 2.0, //extend the shadow
                          offset: Offset(
                            1.0, // Move to right 5  horizontally
                            2.0, // Move to bottom 5 Vertically
                          ),
                        )
                      ],
                      color: Palette().primaryColor,
                      borderRadius:
                          BorderRadius.circular(Insets().appRadiusMin + 4)),
                  child: SizedBox(
                    height: 70,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Heading1(
                          value: "240",
                          color: Colors.white,
                        ),
                        Heading6(
                            value: "Total Female Teachers", color: Colors.white)
                      ],
                    ),
                  ),
                ),
              ),
            ],
            if (!Responsive.isDesktop(context)) ...[
              Container(
                margin: EdgeInsets.only(
                    left: Insets().appPadding,
                    right: Insets().appPadding,
                    top: Insets().appPadding / 2,
                    bottom: Insets().appPadding / 2),
                padding: EdgeInsets.only(
                    left: Insets().appPadding,
                    right: Insets().appPadding,
                    top: Insets().appGap + 2,
                    bottom: Insets().appPadding),
                decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: Palette().borderColor,
                        blurRadius: 15.0, // soften the shadow
                        spreadRadius: 2.0, //extend the shadow
                        offset: Offset(
                          1.0, // Move to right 5  horizontally
                          2.0, // Move to bottom 5 Vertically
                        ),
                      )
                    ],
                    color: Palette().primaryColor,
                    borderRadius:
                        BorderRadius.circular(Insets().appRadiusMin + 4)),
                child: SizedBox(
                  height: 70,
                  child: Row(
                    children: [
                      Icon(
                        Icons.star,
                        size: 50,
                        color: Colors.white,
                      ),
                      Spacer(),
                      ElevatedButton(
                          onPressed: () {
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => addTeachers()));
                          },
                          style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.white,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(
                                      Insets().appRadiusMin + 4)),
                              padding: EdgeInsets.all(Insets().appPadding)),
                          child: Heading5(
                            value: "Add Teacher",
                            color: Colors.black,
                          ))
                    ],
                  ),
                ),
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                margin: EdgeInsets.only(
                    left: Insets().appPadding,
                    right: Insets().appPadding,
                    bottom: Insets().appPadding / 2),
                padding: EdgeInsets.only(
                    left: Insets().appPadding,
                    right: Insets().appPadding,
                    top: Insets().appGap + 2,
                    bottom: Insets().appPadding / 2),
                decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: Palette().borderColor,
                        blurRadius: 15.0, // soften the shadow
                        spreadRadius: 2.0, //extend the shadow
                        offset: Offset(
                          1.0, // Move to right 5  horizontally
                          2.0, // Move to bottom 5 Vertically
                        ),
                      )
                    ],
                    color: Palette().primaryColor,
                    borderRadius:
                        BorderRadius.circular(Insets().appRadiusMin + 4)),
                child: SizedBox(
                  height: 70,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Heading1(
                        value: "480",
                        color: Colors.white,
                      ),
                      Heading6(value: "Total Teachers", color: Colors.white)
                    ],
                  ),
                ),
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                margin: EdgeInsets.only(
                    left: Insets().appPadding,
                    right: Insets().appPadding,
                    bottom: Insets().appPadding / 2),
                padding: EdgeInsets.only(
                    left: Insets().appPadding,
                    right: Insets().appPadding,
                    top: Insets().appGap + 2,
                    bottom: Insets().appPadding),
                decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: Palette().borderColor,
                        blurRadius: 15.0, // soften the shadow
                        spreadRadius: 2.0, //extend the shadow
                        offset: Offset(
                          1.0, // Move to right 5  horizontally
                          2.0, // Move to bottom 5 Vertically
                        ),
                      )
                    ],
                    color: Palette().primaryColor,
                    borderRadius:
                        BorderRadius.circular(Insets().appRadiusMin + 4)),
                child: SizedBox(
                  height: 70,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Heading1(
                        value: "240",
                        color: Colors.white,
                      ),
                      Heading6(
                          value: "Total Male Teachers", color: Colors.white)
                    ],
                  ),
                ),
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                margin: EdgeInsets.only(
                    left: Insets().appPadding,
                    right: Insets().appPadding,
                    bottom: 7),
                padding: EdgeInsets.only(
                    left: Insets().appPadding,
                    right: Insets().appPadding,
                    top: Insets().appGap + 2,
                    bottom: Insets().appPadding),
                decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: Palette().borderColor,
                        blurRadius: 15.0, // soften the shadow
                        spreadRadius: 2.0, //extend the shadow
                        offset: Offset(
                          1.0, // Move to right 5  horizontally
                          2.0, // Move to bottom 5 Vertically
                        ),
                      )
                    ],
                    color: Palette().primaryColor,
                    borderRadius:
                        BorderRadius.circular(Insets().appRadiusMin + 4)),
                child: SizedBox(
                  height: 70,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Heading1(
                        value: "240",
                        color: Colors.white,
                      ),
                      Heading6(
                          value: "Total Female Teachers", color: Colors.white)
                    ],
                  ),
                ),
              )
            ]
          ],
        ),
        Container(
          margin: EdgeInsets.only(
              left: Responsive.isDesktop(context)
                  ? Insets().appPadding * 2
                  : Insets().appPadding,
              right: Responsive.isDesktop(context)
                  ? Insets().appPadding * 2
                  : Insets().appPadding,
              top: Responsive.isDesktop(context) ? Insets().appPadding : 12,
              bottom: Responsive.isDesktop(context) ? Insets().appPadding : 12),
          padding: EdgeInsets.only(
              left: Responsive.isDesktop(context) ? Insets().appPadding : 10,
              right: Responsive.isDesktop(context) ? Insets().appGap / 2 : 10,
              top: Responsive.isDesktop(context) ? Insets().appGap / 3 : 5,
              bottom: Responsive.isDesktop(context) ? Insets().appGap / 3 : 10),
          decoration: BoxDecoration(
              border: Border.all(color: Colors.grey, width: 2),
              color: Palette().primaryColorLight,
              borderRadius: BorderRadius.circular(Insets().appGap + 4)),
          child: Flex(
              direction: Responsive.isDesktop(context)
                  ? Axis.horizontal
                  : Axis.vertical,
              crossAxisAlignment: Responsive.isDesktop(context)
                  ? CrossAxisAlignment.center
                  : CrossAxisAlignment.start,
              children: [
                if (Responsive.isDesktop(context)) ...[
                  Expanded(
                      flex: 3,
                      child: TextFormField(
                          decoration: const InputDecoration(
                              // enabledBorder: OutlineInputBorder(
                              //     borderSide: BorderSide(
                              //         color: Palette().borderColor, width: 3.0)),
                              border: InputBorder.none,
                              hintText: " Search for Teachers",
                              hintStyle: TextStyle(fontSize: 20)))),
                  SizedBox(
                    width: 10,
                  ),
                  Expanded(
                      flex: 1,
                      child: Container(
                        margin: EdgeInsets.only(
                          left: Insets().appGap,
                          right: Insets().appGap,
                        ),
                        padding: EdgeInsets.only(
                          left: Insets().appGap,
                        ),
                        decoration: BoxDecoration(
                            border: Border.all(
                                color: Palette().borderColor, width: 1),
                            color: Palette().primaryColor,
                            borderRadius:
                                BorderRadius.circular(Insets().appGap + 4)),
                        child: DropdownButton(
                          items: const [
                            DropdownMenuItem(
                                child: Heading6(
                                  value: "Nursery",
                                  color: Colors.white,
                                ),
                                value: "Nursery"),
                            DropdownMenuItem(
                                child: Heading6(
                                    value: "Primary", color: Colors.white),
                                value: "Primary"),
                            DropdownMenuItem(
                                child: Heading6(
                                    value: "Secondary", color: Colors.white),
                                value: "Secondary")
                          ],
                          hint: Heading6(
                            value: "Class Level",
                            color: Colors.white,
                          ),
                          value: _classlevel,
                          iconEnabledColor: Colors.white,
                          iconDisabledColor: Colors.white,
                          isExpanded: true,
                          underline: SizedBox(),
                          dropdownColor: Palette().primaryColor,
                          borderRadius:
                              BorderRadius.circular(Insets().appRadiusMin + 4),
                          onChanged: ((value) {
                            if (value is String) {
                              setState(() {
                                _classlevel = value;
                              });
                            }
                          }),
                        ),
                      )),
                  SizedBox(
                    width: 10,
                  ),
                  Expanded(
                      flex: 1,
                      child: ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                              backgroundColor: Palette().primaryColor,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(
                                      Insets().appRadiusMin + 4)),
                              padding:
                                  EdgeInsets.all(Insets().appPadding / 1.5)),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.check,
                                color: Colors.white,
                                size: 30,
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              Heading6(
                                value: "Apply",
                                color: Colors.white,
                              ),
                            ],
                          ))),
                  SizedBox(
                    width: 10,
                  ),
                  Expanded(
                      flex: 1,
                      child: ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                              backgroundColor: Palette().primaryColor,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(
                                      Insets().appRadiusMin + 4)),
                              padding:
                                  EdgeInsets.all(Insets().appPadding / 1.5)),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.restart_alt_rounded,
                                color: Colors.white,
                                size: 30,
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              Heading6(
                                value: "Clear",
                                color: Colors.white,
                              ),
                            ],
                          )))
                ],
                if (!Responsive.isDesktop(context)) ...[
                  Container(
                      child: TextFormField(
                          decoration: const InputDecoration(
                              // enabledBorder: OutlineInputBorder(
                              //     borderSide: BorderSide(
                              //         color: Palette().borderColor, width: 3.0)),
                              border: InputBorder.none,
                              hintText: " Search for Teachers",
                              hintStyle: TextStyle(fontSize: 20)))),
                  SizedBox(
                    width: Responsive.isDesktop(context) ? 10 : 0,
                    height: Responsive.isDesktop(context) ? 0 : 5,
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: SizedBox(
                        width: MediaQuery.of(context).size.width + 100,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Container(
                              width: 100,
                              margin: EdgeInsets.only(
                                right: Insets().appGap,
                              ),
                              padding: EdgeInsets.only(
                                left: Insets().appGap,
                              ),
                              decoration: BoxDecoration(
                                  border: Border.all(
                                      color: Palette().borderColor, width: 1),
                                  color: Palette().primaryColor,
                                  borderRadius: BorderRadius.circular(
                                      Insets().appGap + 4)),
                              child: DropdownButton(
                                items: const [
                                  DropdownMenuItem(
                                      child: Heading6(
                                        value: "Nursery",
                                        color: Colors.white,
                                      ),
                                      value: "Nursery"),
                                  DropdownMenuItem(
                                      child: Heading6(
                                          value: "Primary",
                                          color: Colors.white),
                                      value: "Primary"),
                                  DropdownMenuItem(
                                      child: Heading6(
                                          value: "Secondary",
                                          color: Colors.white),
                                      value: "Secondary")
                                ],
                                hint: Heading6(
                                  value: "Class Level",
                                  color: Colors.white,
                                ),
                                value: _classlevel,
                                iconEnabledColor: Colors.white,
                                iconDisabledColor: Colors.white,
                                isExpanded: true,
                                underline: SizedBox(),
                                dropdownColor: Palette().primaryColor,
                                borderRadius: BorderRadius.circular(
                                    Insets().appRadiusMin + 4),
                                onChanged: ((value) {
                                  if (value is String) {
                                    setState(() {
                                      _classlevel = value;
                                    });
                                  }
                                }),
                              ),
                            ),
                            SizedBox(
                              width: Responsive.isDesktop(context) ? 10 : 0,
                              // height:
                              //     Responsive.isDesktop(context) ? 0 : 5,
                            ),
                          ],
                        )),
                  ),
                  SizedBox(
                    width: Responsive.isDesktop(context) ? 10 : 0,
                    height: Responsive.isDesktop(context) ? 0 : 5,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                          width: MediaQuery.of(context).size.width / 2.5,
                          child: ElevatedButton(
                              onPressed: () {},
                              style: ElevatedButton.styleFrom(
                                  backgroundColor: Palette().primaryColor,
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(
                                          Insets().appRadiusMin + 4)),
                                  padding: EdgeInsets.all(
                                      Insets().appPadding / 1.5)),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(
                                    Icons.check,
                                    color: Colors.white,
                                    size: 30,
                                  ),
                                  SizedBox(
                                    width: 5,
                                  ),
                                  Heading6(
                                    value: "Apply",
                                    color: Colors.white,
                                  ),
                                ],
                              ))),
                      SizedBox(
                        width: Responsive.isDesktop(context) ? 10 : 0,
                        // height: Responsive.isDesktop(context) ? 0 : 5,
                      ),
                      Container(
                          width: MediaQuery.of(context).size.width / 2.5,
                          child: ElevatedButton(
                              onPressed: () {},
                              style: ElevatedButton.styleFrom(
                                  backgroundColor: Palette().primaryColor,
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(
                                          Insets().appRadiusMin + 4)),
                                  padding: EdgeInsets.all(
                                      Insets().appPadding / 1.5)),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(
                                    Icons.restart_alt_rounded,
                                    color: Colors.white,
                                    size: 30,
                                  ),
                                  SizedBox(
                                    width: 5,
                                  ),
                                  Heading6(
                                    value: "Clear",
                                    color: Colors.white,
                                  ),
                                ],
                              )))
                    ],
                  ),
                ]
              ]),
        ),
        Container(
          margin: EdgeInsets.only(
            left: Responsive.isDesktop(context) ? Insets().appPadding * 4 : 12,
            right: Responsive.isDesktop(context) ? Insets().appPadding * 4 : 12,
          ),
          padding: EdgeInsets.only(
              left: Insets().appGap / 2,
              right: Insets().appGap / 2,
              top: Insets().appGap / 3,
              bottom: Insets().appGap / 3),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              HeadingText(
                size: Responsive.isDesktop(context) ? 14 : 13,
                value: "RESULTS (23)",
                color: Palette().primaryColor,
                fontWeight: FontWeight.w700,
              ),
              Container(
                width: Responsive.isDesktop(context) ? 140 : 130,
                height: Responsive.isDesktop(context) ? 40 : 30,
                margin: EdgeInsets.only(
                  left: Insets().appGap,
                  right: Insets().appGap,
                ),
                padding: EdgeInsets.only(
                  left: Insets().appGap,
                ),
                decoration: BoxDecoration(
                    border:
                        Border.all(color: Palette().primaryColor, width: 1.5),
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(Insets().appGap + 6)),
                child: DropdownButton(
                  items: [
                    DropdownMenuItem(
                        child: ListTile(
                          dense: true,
                          minVerticalPadding: 0,
                          minLeadingWidth: 10,
                          contentPadding: EdgeInsets.only(left: 10),
                          onTap: () {},
                          leading: Icon(
                            Icons.picture_as_pdf,
                            color: Palette().primaryColor,
                            size: 20,
                          ),
                          title: Heading6(
                            value: "PDF",
                            color: Palette().primaryColor,
                          ),
                        ),
                        value: "PDF"),
                    DropdownMenuItem(
                        child: ListTile(
                          dense: true,
                          minVerticalPadding: 0,
                          minLeadingWidth: 10,
                          contentPadding: EdgeInsets.only(left: 10),
                          onTap: () {},
                          leading: Icon(
                            Icons.format_align_justify,
                            color: Palette().primaryColor,
                            size: 20,
                          ),
                          title: Heading6(
                              value: "Excel", color: Palette().primaryColor),
                        ),
                        value: "Excel"),
                    DropdownMenuItem(
                        child: ListTile(
                            dense: true,
                            minVerticalPadding: 0,
                            minLeadingWidth: 10,
                            contentPadding: EdgeInsets.only(left: 10),
                            onTap: () {},
                            leading: Icon(
                              Icons.description,
                              color: Palette().primaryColor,
                              size: 20,
                            ),
                            title: Heading6(
                                value: "CSV", color: Palette().primaryColor)),
                        value: "CSV")
                  ],
                  hint: Row(
                    children: [
                      Icon(
                        Icons.cloud_download_outlined,
                        color: Palette().primaryColor,
                        size: Responsive.isDesktop(context) ? 25 : 20,
                      ),
                      SizedBox(
                        width: Responsive.isDesktop(context) ? 7 : 5,
                      ),
                      Heading6(
                        value: "Download",
                        color: Palette().primaryColor,
                      ),
                    ],
                  ),
                  value: null,
                  iconEnabledColor: Palette().primaryColor,
                  iconDisabledColor: Palette().primaryColor,
                  isExpanded: true,
                  elevation: 1,
                  underline: SizedBox(),
                  dropdownColor: Colors.white,
                  borderRadius:
                      BorderRadius.circular(Insets().appRadiusMin + 4),
                  onChanged: ((value) {
                    if (true) {
                      setState(() {
                        _classlevel = value;
                      });
                    }
                  }),
                ),
              ),
            ],
          ),
        ),
        Expanded(
          child: ListView(children: [
            Container(
              margin: EdgeInsets.only(
                left: Responsive.isDesktop(context)
                    ? Insets().appPadding * 2
                    : 13,
                right: Responsive.isDesktop(context)
                    ? Insets().appPadding * 2
                    : 13,
              ),
              padding: EdgeInsets.only(bottom: Insets().appPadding),
              child: Center(
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: DataTable(
                      headingTextStyle:
                          TextStyle(color: Palette().primaryColor),
                      horizontalMargin: 0,
                      columnSpacing: Responsive.isDesktop(context) ? 20 : 10,
                      columns: [
                        DataColumn(
                            label: Checkbox(
                          value: false,
                          onChanged: (value) {
                            setState(() {});
                          },
                        )),
                        DataColumn(
                            label: Expanded(
                          child: HeadingText(
                            size: 14,
                            value: "No.",
                            fontWeight: FontWeight.w700,
                          ),
                        )),
                        DataColumn(
                            label: Expanded(
                          child: HeadingText(
                            size: 14,
                            value: "Photo",
                            fontWeight: FontWeight.w700,
                          ),
                        )),
                        DataColumn(
                            label: Expanded(
                          child: HeadingText(
                            size: 14,
                            value: "Teacher Name",
                            fontWeight: FontWeight.w700,
                          ),
                        )),
                        DataColumn(
                            label: Expanded(
                          child: HeadingText(
                            size: 14,
                            value: "Gender",
                            fontWeight: FontWeight.w700,
                          ),
                        )),
                        DataColumn(
                            label: Expanded(
                          child: HeadingText(
                            size: 14,
                            value: "Email Address",
                            fontWeight: FontWeight.w700,
                          ),
                        )),
                        DataColumn(
                            label: Expanded(
                          child: HeadingText(
                            size: 14,
                            value: "Phone",
                            fontWeight: FontWeight.w700,
                          ),
                        )),
                        DataColumn(
                            label: Expanded(
                          child: HeadingText(
                            size: 14,
                            value: "Date of Birth",
                            fontWeight: FontWeight.w700,
                          ),
                        )),
                        DataColumn(
                            label: Expanded(
                          child: HeadingText(
                            size: 14,
                            value: "Role",
                            fontWeight: FontWeight.w700,
                          ),
                        )),
                        DataColumn(
                            label: Expanded(
                          child: HeadingText(
                            size: 14,
                            value: "Employment Type",
                            fontWeight: FontWeight.w700,
                          ),
                        )),
                        DataColumn(
                            label: Expanded(
                          child: Center(
                            child: HeadingText(
                              size: 14,
                              value: "Action",
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        )),
                      ],
                      rows: [
                        DataRow(cells: [
                          DataCell(Checkbox(
                            value: false,
                            onChanged: (value) {
                              setState(() {});
                            },
                          )),
                          DataCell(HeadingText(
                            size: 14,
                            value: "1",
                          )),
                          DataCell(Icon(size: 20, Icons.person)),
                          DataCell(HeadingText(
                            size: 14,
                            value: "Lucy Boniphace Gami",
                          )),
                          DataCell(HeadingText(
                            size: 14,
                            value: "Female",
                          )),
                          DataCell(HeadingText(
                            size: 14,
                            value: "teachersemail@gmail.com",
                          )),
                          DataCell(Row(
                            children: [
                              HeadingText(
                                size: 15,
                                value: "+255734848894",
                              ),
                              SizedBox(
                                width: 3,
                              ),
                              Icon(
                                Icons.add_call,
                                size: 16,
                                color: Palette().primaryColor,
                              )
                            ],
                          )),
                          DataCell(HeadingText(
                            size: 14,
                            value: "YY - MM - DD",
                          )),
                          DataCell(HeadingText(
                            size: 14,
                            value: "Teacher",
                          )),
                          DataCell(HeadingText(
                            size: 14,
                            value: "Not Defined",
                          )),
                          DataCell(Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              TextButton(
                                onPressed: () {},
                                child: HeadingText(
                                  size: 14,
                                  value: "Edit",
                                ),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              TextButton(
                                onPressed: () {},
                                child: HeadingText(
                                  size: 14,
                                  value: "Delete",
                                  color: Colors.red,
                                ),
                              ),
                            ],
                          ))
                        ]),
                        DataRow(cells: [
                          DataCell(Checkbox(
                            value: false,
                            onChanged: (value) {
                              setState(() {});
                            },
                          )),
                          DataCell(HeadingText(
                            size: 14,
                            value: "1",
                          )),
                          DataCell(Icon(size: 20, Icons.person)),
                          DataCell(HeadingText(
                            size: 14,
                            value: "Lucy Boniphace Gami",
                          )),
                          DataCell(HeadingText(
                            size: 14,
                            value: "Female",
                          )),
                          DataCell(HeadingText(
                            size: 14,
                            value: "teachersemail@gmail.com",
                          )),
                          DataCell(Row(
                            children: [
                              HeadingText(
                                size: 15,
                                value: "+255734848894",
                              ),
                              SizedBox(
                                width: 3,
                              ),
                              Icon(
                                Icons.add_call,
                                size: 16,
                                color: Palette().primaryColor,
                              )
                            ],
                          )),
                          DataCell(HeadingText(
                            size: 14,
                            value: "YY - MM - DD",
                          )),
                          DataCell(HeadingText(
                            size: 14,
                            value: "Teacher",
                          )),
                          DataCell(HeadingText(
                            size: 14,
                            value: "Not Defined",
                          )),
                          DataCell(Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              TextButton(
                                onPressed: () {},
                                child: HeadingText(
                                  size: 14,
                                  value: "Edit",
                                ),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              TextButton(
                                onPressed: () {},
                                child: HeadingText(
                                  size: 14,
                                  value: "Delete",
                                  color: Colors.red,
                                ),
                              ),
                            ],
                          ))
                        ]),
                        DataRow(cells: [
                          DataCell(Checkbox(
                            value: false,
                            onChanged: (value) {
                              setState(() {});
                            },
                          )),
                          DataCell(HeadingText(
                            size: 14,
                            value: "1",
                          )),
                          DataCell(Icon(size: 20, Icons.person)),
                          DataCell(HeadingText(
                            size: 14,
                            value: "Lucy Boniphace Gami",
                          )),
                          DataCell(HeadingText(
                            size: 14,
                            value: "Female",
                          )),
                          DataCell(HeadingText(
                            size: 14,
                            value: "teachersemail@gmail.com",
                          )),
                          DataCell(Row(
                            children: [
                              HeadingText(
                                size: 15,
                                value: "+255734848894",
                              ),
                              SizedBox(
                                width: 3,
                              ),
                              Icon(
                                Icons.add_call,
                                size: 16,
                                color: Palette().primaryColor,
                              )
                            ],
                          )),
                          DataCell(HeadingText(
                            size: 14,
                            value: "YY - MM - DD",
                          )),
                          DataCell(HeadingText(
                            size: 14,
                            value: "Teacher",
                          )),
                          DataCell(HeadingText(
                            size: 14,
                            value: "Not Defined",
                          )),
                          DataCell(Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              TextButton(
                                onPressed: () {},
                                child: HeadingText(
                                  size: 14,
                                  value: "Edit",
                                ),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              TextButton(
                                onPressed: () {},
                                child: HeadingText(
                                  size: 14,
                                  value: "Delete",
                                  color: Colors.red,
                                ),
                              ),
                            ],
                          ))
                        ]),
                        DataRow(cells: [
                          DataCell(Checkbox(
                            value: false,
                            onChanged: (value) {
                              setState(() {});
                            },
                          )),
                          DataCell(HeadingText(
                            size: 14,
                            value: "1",
                          )),
                          DataCell(Icon(size: 20, Icons.person)),
                          DataCell(HeadingText(
                            size: 14,
                            value: "Lucy Boniphace Gami",
                          )),
                          DataCell(HeadingText(
                            size: 14,
                            value: "Female",
                          )),
                          DataCell(HeadingText(
                            size: 14,
                            value: "teachersemail@gmail.com",
                          )),
                          DataCell(Row(
                            children: [
                              HeadingText(
                                size: 15,
                                value: "+255734848894",
                              ),
                              SizedBox(
                                width: 3,
                              ),
                              Icon(
                                Icons.add_call,
                                size: 16,
                                color: Palette().primaryColor,
                              )
                            ],
                          )),
                          DataCell(HeadingText(
                            size: 14,
                            value: "YY - MM - DD",
                          )),
                          DataCell(HeadingText(
                            size: 14,
                            value: "Teacher",
                          )),
                          DataCell(HeadingText(
                            size: 14,
                            value: "Not Defined",
                          )),
                          DataCell(Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              TextButton(
                                onPressed: () {},
                                child: HeadingText(
                                  size: 14,
                                  value: "Edit",
                                ),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              TextButton(
                                onPressed: () {},
                                child: HeadingText(
                                  size: 14,
                                  value: "Delete",
                                  color: Colors.red,
                                ),
                              ),
                            ],
                          ))
                        ]),
                        DataRow(cells: [
                          DataCell(Checkbox(
                            value: false,
                            onChanged: (value) {
                              setState(() {});
                            },
                          )),
                          DataCell(HeadingText(
                            size: 14,
                            value: "1",
                          )),
                          DataCell(Icon(size: 20, Icons.person)),
                          DataCell(HeadingText(
                            size: 14,
                            value: "Lucy Boniphace Gami",
                          )),
                          DataCell(HeadingText(
                            size: 14,
                            value: "Female",
                          )),
                          DataCell(HeadingText(
                            size: 14,
                            value: "teachersemail@gmail.com",
                          )),
                          DataCell(Row(
                            children: [
                              HeadingText(
                                size: 15,
                                value: "+255734848894",
                              ),
                              SizedBox(
                                width: 3,
                              ),
                              Icon(
                                Icons.add_call,
                                size: 16,
                                color: Palette().primaryColor,
                              )
                            ],
                          )),
                          DataCell(HeadingText(
                            size: 14,
                            value: "YY - MM - DD",
                          )),
                          DataCell(HeadingText(
                            size: 14,
                            value: "Teacher",
                          )),
                          DataCell(HeadingText(
                            size: 14,
                            value: "Not Defined",
                          )),
                          DataCell(Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              TextButton(
                                onPressed: () {},
                                child: HeadingText(
                                  size: 14,
                                  value: "Edit",
                                ),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              TextButton(
                                onPressed: () {},
                                child: HeadingText(
                                  size: 14,
                                  value: "Delete",
                                  color: Colors.red,
                                ),
                              ),
                            ],
                          ))
                        ]),
                        DataRow(cells: [
                          DataCell(Checkbox(
                            value: false,
                            onChanged: (value) {
                              setState(() {});
                            },
                          )),
                          DataCell(HeadingText(
                            size: 14,
                            value: "1",
                          )),
                          DataCell(Icon(size: 20, Icons.person)),
                          DataCell(HeadingText(
                            size: 14,
                            value: "Lucy Boniphace Gami",
                          )),
                          DataCell(HeadingText(
                            size: 14,
                            value: "Female",
                          )),
                          DataCell(HeadingText(
                            size: 14,
                            value: "teachersemail@gmail.com",
                          )),
                          DataCell(Row(
                            children: [
                              HeadingText(
                                size: 15,
                                value: "+255734848894",
                              ),
                              SizedBox(
                                width: 3,
                              ),
                              Icon(
                                Icons.add_call,
                                size: 16,
                                color: Palette().primaryColor,
                              )
                            ],
                          )),
                          DataCell(HeadingText(
                            size: 14,
                            value: "YY - MM - DD",
                          )),
                          DataCell(HeadingText(
                            size: 14,
                            value: "Teacher",
                          )),
                          DataCell(HeadingText(
                            size: 14,
                            value: "Not Defined",
                          )),
                          DataCell(Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              TextButton(
                                onPressed: () {},
                                child: HeadingText(
                                  size: 14,
                                  value: "Edit",
                                ),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              TextButton(
                                onPressed: () {},
                                child: HeadingText(
                                  size: 14,
                                  value: "Delete",
                                  color: Colors.red,
                                ),
                              ),
                            ],
                          ))
                        ]),
                        DataRow(cells: [
                          DataCell(Checkbox(
                            value: false,
                            onChanged: (value) {
                              setState(() {});
                            },
                          )),
                          DataCell(HeadingText(
                            size: 14,
                            value: "1",
                          )),
                          DataCell(Icon(size: 20, Icons.person)),
                          DataCell(HeadingText(
                            size: 14,
                            value: "Lucy Boniphace Gami",
                          )),
                          DataCell(HeadingText(
                            size: 14,
                            value: "Female",
                          )),
                          DataCell(HeadingText(
                            size: 14,
                            value: "teachersemail@gmail.com",
                          )),
                          DataCell(Row(
                            children: [
                              HeadingText(
                                size: 15,
                                value: "+255734848894",
                              ),
                              SizedBox(
                                width: 3,
                              ),
                              Icon(
                                Icons.add_call,
                                size: 16,
                                color: Palette().primaryColor,
                              )
                            ],
                          )),
                          DataCell(HeadingText(
                            size: 14,
                            value: "YY - MM - DD",
                          )),
                          DataCell(HeadingText(
                            size: 14,
                            value: "Teacher",
                          )),
                          DataCell(HeadingText(
                            size: 14,
                            value: "Not Defined",
                          )),
                          DataCell(Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              TextButton(
                                onPressed: () {},
                                child: HeadingText(
                                  size: 14,
                                  value: "Edit",
                                ),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              TextButton(
                                onPressed: () {},
                                child: HeadingText(
                                  size: 14,
                                  value: "Delete",
                                  color: Colors.red,
                                ),
                              ),
                            ],
                          ))
                        ]),
                      ]),
                ),
              ),
            ),
          ]),
        )
      ])),
    );
  }
}