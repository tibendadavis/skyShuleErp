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
import 'package:skyconnect_starter/screens/addGrading.scrn.dart';
import 'package:skyconnect_starter/screens/student_admission.scrn.dart';
import 'package:skyconnect_starter/theme/design.theme.dart';

class specialGrading extends StatefulWidget {
  const specialGrading({super.key});

  @override
  State<specialGrading> createState() => _specialGradingState();
}

class _specialGradingState extends State<specialGrading> {
  bool _menu = false;
  double _drawersize = 250;
  var _specialGrade;

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
        size: 245,
        onTap: () {},
        menu: false,
      ),
      body: SizedBox(
        height: size.height,
        width: size.width,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
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
                child: Column(children: [
              Container(
                  padding: EdgeInsets.only(
                      left: Insets().appPadding,
                      right: Insets().appPadding,
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
                child: const Heading1(
                  value: "SPECIAL GRADING",
                  fontWeight: FontWeight.w700,
                  color: Colors.black,
                ),
              ),
              Row(
                children: [
                  SizedBox(
                    width: 400,
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
                          boxShadow: const [
                            BoxShadow(
                              color: Colors.grey,
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
                                      builder: (context) => addGrading()));
                                },
                                style: ElevatedButton.styleFrom(
                                    backgroundColor: Colors.white,
                                    shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(
                                            Insets().appRadiusMin + 4)),
                                    padding:
                                        EdgeInsets.all(Insets().appPadding)),
                                child: Heading5(
                                  value: "Add Special Grade",
                                  color: Colors.black,
                                ))
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Container(
                margin: EdgeInsets.only(
                    left: Insets().appPadding * 2,
                    right: Insets().appPadding * 2,
                    top: Insets().appPadding,
                    bottom: Insets().appPadding),
                padding: EdgeInsets.only(
                    left: Insets().appPadding,
                    right: Insets().appGap / 2,
                    top: Insets().appGap / 3,
                    bottom: Insets().appGap / 3),
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey, width: 2),
                    color: Palette().primaryColorLight,
                    borderRadius: BorderRadius.circular(Insets().appGap + 4)),
                child: Row(children: [
                  Expanded(
                      flex: 3,
                      child: TextFormField(
                          decoration: const InputDecoration(
                              // enabledBorder: OutlineInputBorder(
                              //     borderSide: BorderSide(
                              //         color: Colors.grey, width: 3.0)),
                              border: InputBorder.none,
                              hintText: " Search for Special Grade",
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
                            border: Border.all(color: Colors.grey, width: 2),
                            color: Palette().primaryColor,
                            borderRadius:
                                BorderRadius.circular(Insets().appGap + 4)),
                        child: DropdownButton(
                          items: const [
                            DropdownMenuItem(
                                child: Heading6(
                                  value: "CANDIDATE GRADE",
                                  color: Colors.white,
                                ),
                                value: "CANDIDATE GRADE"),
                            DropdownMenuItem(
                                child: Heading6(
                                    value: "JOINT GRADE", color: Colors.white),
                                value: "JOINT GRADE"),
                            DropdownMenuItem(
                                child: Heading6(
                                    value: "CANDIDATE2 GRADE",
                                    color: Colors.white),
                                value: "CANDIDATE2 GRADE")
                          ],
                          hint: Heading6(
                            value: "Special Grade Name",
                            color: Colors.white,
                          ),
                          value: _specialGrade,
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
                                _specialGrade = value;
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
                                Icons.clear,
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
                ]),
              ),
              Container(
                margin: EdgeInsets.only(
                  left: Insets().appPadding * 4,
                  right: Insets().appPadding * 4,
                ),
                padding: EdgeInsets.only(
                    left: Insets().appGap / 2,
                    right: Insets().appGap / 2,
                    top: Insets().appGap / 3,
                    bottom: Insets().appGap / 3),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Heading5(
                      value: "RESULTS (7)",
                      color: Palette().primaryColor,
                      fontWeight: FontWeight.w700,
                    ),
                    Container(
                      width: 140,
                      height: 40,
                      margin: EdgeInsets.only(
                        left: Insets().appGap,
                        right: Insets().appGap,
                      ),
                      padding: EdgeInsets.only(
                        left: Insets().appGap,
                      ),
                      decoration: BoxDecoration(
                          border: Border.all(
                              color: Palette().primaryColor, width: 1.5),
                          color: Colors.white,
                          borderRadius:
                              BorderRadius.circular(Insets().appGap + 6)),
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
                                  Icons.copy,
                                  color: Palette().primaryColor,
                                  size: 20,
                                ),
                                title: Heading6(
                                    value: "Copy",
                                    color: Palette().primaryColor),
                              ),
                              value: "Copy"),
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
                                    value: "Excel",
                                    color: Palette().primaryColor),
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
                                      value: "CSV",
                                      color: Palette().primaryColor)),
                              value: "CSV")
                        ],
                        hint: Row(
                          children: [
                            Icon(
                              Icons.cloud_download_outlined,
                              color: Palette().primaryColor,
                              size: 25,
                            ),
                            SizedBox(
                              width: 7,
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
                        underline: SizedBox(),
                        dropdownColor: Colors.white,
                        borderRadius:
                            BorderRadius.circular(Insets().appRadiusMin + 4),
                        onChanged: ((value) {
                          if (true) {
                            setState(() {
                              _specialGrade = value;
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
                      left: Insets().appPadding * 2,
                      right: Insets().appPadding * 2,
                    ),
                    padding: EdgeInsets.only(bottom: Insets().appPadding),
                    child: Center(
                      child: SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: DataTable(
                            horizontalMargin: 0,
                            columnSpacing: 20,
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
                                  label: SizedBox(
                                width: 90,
                                child: HeadingText(
                                  size: 14,
                                  value: "Grade Name",
                                  fontWeight: FontWeight.w700,
                                ),
                              )),
                              DataColumn(
                                  label: SizedBox(
                                width: 90,
                                child: HeadingText(
                                  size: 14,
                                  value: "Grade Point",
                                  fontWeight: FontWeight.w700,
                                ),
                              )),
                              DataColumn(
                                  label: SizedBox(
                                width: 90,
                                child: HeadingText(
                                  size: 14,
                                  value: "Mark From",
                                  fontWeight: FontWeight.w700,
                                ),
                              )),
                              DataColumn(
                                  label: SizedBox(
                                width: 90,
                                child: HeadingText(
                                  size: 14,
                                  value: "Mark Up to",
                                  fontWeight: FontWeight.w700,
                                ),
                              )),
                              DataColumn(
                                  label: SizedBox(
                                width: 90,
                                child: HeadingText(
                                  size: 14,
                                  value: "Remark",
                                  fontWeight: FontWeight.w700,
                                ),
                              )),
                              DataColumn(
                                  label: SizedBox(
                                width: 170,
                                child: HeadingText(
                                  size: 14,
                                  value: "Overall Academic Note",
                                  fontWeight: FontWeight.w700,
                                ),
                              )),
                              DataColumn(
                                  label: SizedBox(
                                width: 110,
                                child: HeadingText(
                                  size: 14,
                                  value: "Overall Remark",
                                  fontWeight: FontWeight.w700,
                                ),
                              )),
                              DataColumn(
                                  label: SizedBox(
                                width: 90,
                                child: HeadingText(
                                  size: 14,
                                  value: "Action",
                                  fontWeight: FontWeight.w700,
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
                                DataCell(HeadingText(
                                  size: 14,
                                  value: "A",
                                )),
                                DataCell(HeadingText(
                                  size: 14,
                                  value: "1",
                                )),
                                DataCell(HeadingText(
                                  size: 14,
                                  value: "41",
                                )),
                                DataCell(HeadingText(
                                  size: 14,
                                  value: "50",
                                )),
                                DataCell(HeadingText(
                                  size: 14,
                                  value: "Excellent",
                                )),
                                DataCell(HeadingText(
                                  size: 14,
                                  value: "Excellent",
                                )),
                                DataCell(HeadingText(
                                  size: 14,
                                  value: "Excellent",
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
                                      width: 5,
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
                                  value: "2",
                                )),
                                DataCell(HeadingText(
                                  size: 14,
                                  value: "B",
                                )),
                                DataCell(HeadingText(
                                  size: 14,
                                  value: "2",
                                )),
                                DataCell(HeadingText(
                                  size: 14,
                                  value: "31",
                                )),
                                DataCell(HeadingText(
                                  size: 14,
                                  value: "40",
                                )),
                                DataCell(HeadingText(
                                  size: 14,
                                  value: "Very Good",
                                )),
                                DataCell(HeadingText(
                                  size: 14,
                                  value: "Very Good",
                                )),
                                DataCell(HeadingText(
                                  size: 14,
                                  value: "Very Good",
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
                                      width: 5,
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
                                  value: "3",
                                )),
                                DataCell(HeadingText(
                                  size: 14,
                                  value: "C",
                                )),
                                DataCell(HeadingText(
                                  size: 14,
                                  value: "3",
                                )),
                                DataCell(HeadingText(
                                  size: 14,
                                  value: "21",
                                )),
                                DataCell(HeadingText(
                                  size: 14,
                                  value: "30",
                                )),
                                DataCell(HeadingText(
                                  size: 14,
                                  value: "Good",
                                )),
                                DataCell(HeadingText(
                                  size: 14,
                                  value: "Good",
                                )),
                                DataCell(HeadingText(
                                  size: 14,
                                  value: "Good",
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
                                      width: 5,
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
                                  value: "4",
                                )),
                                DataCell(HeadingText(
                                  size: 14,
                                  value: "D",
                                )),
                                DataCell(HeadingText(
                                  size: 14,
                                  value: "4",
                                )),
                                DataCell(HeadingText(
                                  size: 14,
                                  value: "11",
                                )),
                                DataCell(HeadingText(
                                  size: 14,
                                  value: "20",
                                )),
                                DataCell(HeadingText(
                                  size: 14,
                                  value: "Fair",
                                )),
                                DataCell(HeadingText(
                                  size: 14,
                                  value: "Fair",
                                )),
                                DataCell(HeadingText(
                                  size: 14,
                                  value: "Fair",
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
                                      width: 5,
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
                                  value: "5",
                                )),
                                DataCell(HeadingText(
                                  size: 14,
                                  value: "F",
                                )),
                                DataCell(HeadingText(
                                  size: 14,
                                  value: "5",
                                )),
                                DataCell(HeadingText(
                                  size: 14,
                                  value: "0",
                                )),
                                DataCell(HeadingText(
                                  size: 14,
                                  value: "10",
                                )),
                                DataCell(HeadingText(
                                  size: 14,
                                  value: "Poor",
                                )),
                                DataCell(HeadingText(
                                  size: 14,
                                  value: "Poor",
                                )),
                                DataCell(HeadingText(
                                  size: 14,
                                  value: "Poor",
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
                                      width: 5,
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
            ]))
          ],
        ),
      ),
    );
  }
}
