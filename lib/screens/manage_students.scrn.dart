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
import 'package:skyconnect_starter/screens/student_admission.scrn.dart';
import 'package:skyconnect_starter/theme/design.theme.dart';

class manageStudents extends StatefulWidget {
  const manageStudents({super.key});

  @override
  State<manageStudents> createState() => _manageStudentsState();
}

class _manageStudentsState extends State<manageStudents> {
  double _drawersize = 250;
  var _classlevel;
  var _academicYear;
  var _stream;

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
                        _drawersize = val;
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
                  value: "MANAGE STUDENTS",
                  fontWeight: FontWeight.w700,
                  color: Colors.black,
                ),
              ),
              Row(
                children: [
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
                                      builder: (context) =>
                                          studentAdmission()));
                                },
                                style: ElevatedButton.styleFrom(
                                    backgroundColor: Colors.white,
                                    shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(
                                            Insets().appRadiusMin + 4)),
                                    padding:
                                        EdgeInsets.all(Insets().appPadding)),
                                child: Heading5(
                                  value: "Enroll Students",
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
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Heading1(
                              value: "640",
                              color: Colors.white,
                            ),
                            Heading6(
                                value: "Total Students", color: Colors.white)
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
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Heading1(
                              value: "410",
                              color: Colors.white,
                            ),
                            Heading6(
                                value: "Total Male Students",
                                color: Colors.white)
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
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Heading1(
                              value: "230",
                              color: Colors.white,
                            ),
                            Heading6(
                                value: "Total Female Students",
                                color: Colors.white)
                          ],
                        ),
                      ),
                    ),
                  )
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
                              hintText: " Search for Students",
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
                      child: Container(
                        margin: EdgeInsets.only(
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
                                  value: "2019",
                                  color: Colors.white,
                                ),
                                value: 2019),
                            DropdownMenuItem(
                                child: Heading6(
                                  value: "2020",
                                  color: Colors.white,
                                ),
                                value: 2020),
                            DropdownMenuItem(
                                child: Heading6(
                                  value: "2021",
                                  color: Colors.white,
                                ),
                                value: 2021),
                            DropdownMenuItem(
                                child: Heading6(
                                  value: "2022",
                                  color: Colors.white,
                                ),
                                value: 2022),
                            DropdownMenuItem(
                                child: Heading6(
                                  value: "2023",
                                  color: Colors.white,
                                ),
                                value: 2023)
                          ],
                          value: _academicYear,
                          iconEnabledColor: Colors.white,
                          iconDisabledColor: Colors.white,
                          isExpanded: true,
                          underline: SizedBox(),
                          dropdownColor: Palette().primaryColor,
                          borderRadius:
                              BorderRadius.circular(Insets().appRadiusMin + 4),
                          hint: Heading6(
                            value: "Academic Year",
                            color: Colors.white,
                          ),
                          onChanged: ((value) {
                            if (value is int) {
                              setState(() {
                                _academicYear = value;
                              });
                            }
                          }),
                        ),
                      )),
                  SizedBox(
                    width: 7,
                  ),
                  Expanded(
                      flex: 1,
                      child: Container(
                        margin: EdgeInsets.only(
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
                                  value: "Nursery",
                                  color: Colors.white,
                                ),
                                value: "Nursery"),
                            DropdownMenuItem(
                                child: Heading6(
                                  value: "Primary",
                                  color: Colors.white,
                                ),
                                value: "Primary"),
                            DropdownMenuItem(
                                child: Heading6(
                                  value: "Secondary",
                                  color: Colors.white,
                                ),
                                value: "Secondary")
                          ],
                          value: _classlevel,
                          iconEnabledColor: Colors.white,
                          iconDisabledColor: Colors.white,
                          isExpanded: true,
                          dropdownColor: Palette().primaryColor,
                          underline: SizedBox(),
                          borderRadius:
                              BorderRadius.circular(Insets().appRadiusMin + 4),
                          hint: Heading6(
                            value: "Select Class",
                            color: Colors.white,
                          ),
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
                      child: Container(
                        margin: EdgeInsets.only(
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
                                  value: "MIKUMI",
                                  color: Colors.white,
                                ),
                                value: "MIKUMI"),
                            DropdownMenuItem(
                                child: Heading6(
                                  value: "RUAHA",
                                  color: Colors.white,
                                ),
                                value: "RUAHA"),
                          ],
                          value: _stream,
                          iconEnabledColor: Colors.white,
                          iconDisabledColor: Colors.white,
                          dropdownColor: Palette().primaryColor,
                          underline: SizedBox(),
                          borderRadius:
                              BorderRadius.circular(Insets().appRadiusMin + 4),
                          isExpanded: true,
                          hint: Heading6(
                            value: "Select Stream",
                            color: Colors.white,
                          ),
                          onChanged: ((value) {
                            if (value is String) {
                              setState(() {
                                _stream = value;
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
                      value: "RESULTS (23)",
                      color: Palette().primaryColor,
                      fontWeight: FontWeight.w700,
                    ),
                    ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.white,
                            elevation: 0,
                            shape: RoundedRectangleBorder(
                                side: BorderSide(
                                    color: Palette().primaryColor, width: 1.5),
                                borderRadius: BorderRadius.circular(
                                    Insets().appRadiusMin + 8)),
                            padding: EdgeInsets.all(Insets().appPadding / 1.5)),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                        )),
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
                                  label: HeadingText(
                                size: 14,
                                value: "No.",
                                fontWeight: FontWeight.w700,
                              )),
                              DataColumn(
                                  label: HeadingText(
                                size: 14,
                                value: "Photo",
                                fontWeight: FontWeight.w700,
                              )),
                              DataColumn(
                                  label: HeadingText(
                                size: 14,
                                value: "Name",
                                fontWeight: FontWeight.w700,
                              )),
                              DataColumn(
                                  label: HeadingText(
                                size: 14,
                                value: "Gender",
                                fontWeight: FontWeight.w700,
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
                                  value: "Reg No.",
                                  fontWeight: FontWeight.w700,
                                ),
                              )),
                              DataColumn(
                                  label: HeadingText(
                                size: 14,
                                value: "Stream",
                                fontWeight: FontWeight.w700,
                              )),
                              DataColumn(
                                  label: HeadingText(
                                size: 14,
                                value: "Address",
                                fontWeight: FontWeight.w700,
                              )),
                              DataColumn(
                                  label: HeadingText(
                                size: 14,
                                value: "Religion",
                                fontWeight: FontWeight.w700,
                              )),
                              DataColumn(
                                  label: HeadingText(
                                size: 14,
                                value: "Year",
                                fontWeight: FontWeight.w700,
                              )),
                              DataColumn(
                                  label: Expanded(
                                child: HeadingText(
                                  size: 14,
                                  value: "Parents Phone",
                                  fontWeight: FontWeight.w700,
                                ),
                              )),
                              DataColumn(
                                  label: HeadingText(
                                size: 14,
                                value: "Action",
                                fontWeight: FontWeight.w700,
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
                                DataCell(Icon(Icons.person)),
                                DataCell(HeadingText(
                                  size: 14,
                                  value: "Juma Ibra",
                                )),
                                DataCell(HeadingText(
                                  size: 14,
                                  value: "Male",
                                )),
                                DataCell(HeadingText(
                                  size: 14,
                                  value: "3 May 2010",
                                )),
                                DataCell(HeadingText(
                                  size: 14,
                                  value: "MIKUMI",
                                )),
                                DataCell(HeadingText(
                                  size: 14,
                                  value: "TABAT, BIMA",
                                )),
                                DataCell(HeadingText(
                                  size: 14,
                                  value: "Christian",
                                )),
                                DataCell(HeadingText(
                                  size: 14,
                                  value: "2022",
                                )),
                                DataCell(HeadingText(
                                  size: 14,
                                  value: "+255734848894",
                                )),
                                DataCell(HeadingText(
                                  size: 14,
                                  value: "View",
                                )),
                                DataCell(HeadingText(
                                  size: 14,
                                  value: "View",
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
                                DataCell(Icon(Icons.person)),
                                DataCell(HeadingText(
                                  size: 14,
                                  value: "Juma Ibra",
                                )),
                                DataCell(HeadingText(
                                  size: 14,
                                  value: "Male",
                                )),
                                DataCell(HeadingText(
                                  size: 14,
                                  value: "3 May 2010",
                                )),
                                DataCell(HeadingText(
                                  size: 14,
                                  value: "MIKUMI",
                                )),
                                DataCell(HeadingText(
                                  size: 14,
                                  value: "TABAT, BIMA",
                                )),
                                DataCell(HeadingText(
                                  size: 14,
                                  value: "Christian",
                                )),
                                DataCell(HeadingText(
                                  size: 14,
                                  value: "2022",
                                )),
                                DataCell(HeadingText(
                                  size: 14,
                                  value: "+255734848894",
                                )),
                                DataCell(HeadingText(
                                  size: 14,
                                  value: "View",
                                )),
                                DataCell(HeadingText(
                                  size: 14,
                                  value: "View",
                                )),
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
                                DataCell(Icon(Icons.person)),
                                DataCell(HeadingText(
                                  size: 14,
                                  value: "Juma Ibra",
                                )),
                                DataCell(HeadingText(
                                  size: 14,
                                  value: "Male",
                                )),
                                DataCell(HeadingText(
                                  size: 14,
                                  value: "3 May 2010",
                                )),
                                DataCell(HeadingText(
                                  size: 14,
                                  value: "MIKUMI",
                                )),
                                DataCell(HeadingText(
                                  size: 14,
                                  value: "TABAT, BIMA",
                                )),
                                DataCell(HeadingText(
                                  size: 14,
                                  value: "Christian",
                                )),
                                DataCell(HeadingText(
                                  size: 14,
                                  value: "2022",
                                )),
                                DataCell(HeadingText(
                                  size: 14,
                                  value: "+255734848894",
                                )),
                                DataCell(HeadingText(
                                  size: 14,
                                  value: "View",
                                )),
                                DataCell(HeadingText(
                                  size: 14,
                                  value: "View",
                                )),
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
                                DataCell(Icon(Icons.person)),
                                DataCell(HeadingText(
                                  size: 14,
                                  value: "Juma Ibra",
                                )),
                                DataCell(HeadingText(
                                  size: 14,
                                  value: "Male",
                                )),
                                DataCell(HeadingText(
                                  size: 14,
                                  value: "3 May 2010",
                                )),
                                DataCell(HeadingText(
                                  size: 14,
                                  value: "MIKUMI",
                                )),
                                DataCell(HeadingText(
                                  size: 14,
                                  value: "TABAT, BIMA",
                                )),
                                DataCell(HeadingText(
                                  size: 14,
                                  value: "Christian",
                                )),
                                DataCell(HeadingText(
                                  size: 14,
                                  value: "2022",
                                )),
                                DataCell(HeadingText(
                                  size: 14,
                                  value: "+255734848894",
                                )),
                                DataCell(HeadingText(
                                  size: 14,
                                  value: "View",
                                )),
                                DataCell(HeadingText(
                                  size: 14,
                                  value: "View",
                                )),
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
                                DataCell(Icon(Icons.person)),
                                DataCell(HeadingText(
                                  size: 14,
                                  value: "Juma Ibra",
                                )),
                                DataCell(HeadingText(
                                  size: 14,
                                  value: "Male",
                                )),
                                DataCell(HeadingText(
                                  size: 14,
                                  value: "3 May 2010",
                                )),
                                DataCell(HeadingText(
                                  size: 14,
                                  value: "MIKUMI",
                                )),
                                DataCell(HeadingText(
                                  size: 14,
                                  value: "TABAT, BIMA",
                                )),
                                DataCell(HeadingText(
                                  size: 14,
                                  value: "Christian",
                                )),
                                DataCell(HeadingText(
                                  size: 14,
                                  value: "2022",
                                )),
                                DataCell(HeadingText(
                                  size: 14,
                                  value: "+255734848894",
                                )),
                                DataCell(HeadingText(
                                  size: 14,
                                  value: "View",
                                )),
                                DataCell(HeadingText(
                                  size: 14,
                                  value: "View",
                                )),
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
                                DataCell(Icon(Icons.person)),
                                DataCell(HeadingText(
                                  size: 14,
                                  value: "Juma Ibra",
                                )),
                                DataCell(HeadingText(
                                  size: 14,
                                  value: "Male",
                                )),
                                DataCell(HeadingText(
                                  size: 14,
                                  value: "3 May 2010",
                                )),
                                DataCell(HeadingText(
                                  size: 14,
                                  value: "MIKUMI",
                                )),
                                DataCell(HeadingText(
                                  size: 14,
                                  value: "TABAT, BIMA",
                                )),
                                DataCell(HeadingText(
                                  size: 14,
                                  value: "Christian",
                                )),
                                DataCell(HeadingText(
                                  size: 14,
                                  value: "2022",
                                )),
                                DataCell(HeadingText(
                                  size: 14,
                                  value: "+255734848894",
                                )),
                                DataCell(HeadingText(
                                  size: 14,
                                  value: "View",
                                )),
                                DataCell(HeadingText(
                                  size: 14,
                                  value: "View",
                                )),
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
                                DataCell(Icon(Icons.person)),
                                DataCell(HeadingText(
                                  size: 14,
                                  value: "Juma Ibra",
                                )),
                                DataCell(HeadingText(
                                  size: 14,
                                  value: "Male",
                                )),
                                DataCell(HeadingText(
                                  size: 14,
                                  value: "3 May 2010",
                                )),
                                DataCell(HeadingText(
                                  size: 14,
                                  value: "MIKUMI",
                                )),
                                DataCell(HeadingText(
                                  size: 14,
                                  value: "TABAT, BIMA",
                                )),
                                DataCell(HeadingText(
                                  size: 14,
                                  value: "Christian",
                                )),
                                DataCell(HeadingText(
                                  size: 14,
                                  value: "2022",
                                )),
                                DataCell(HeadingText(
                                  size: 14,
                                  value: "+255734848894",
                                )),
                                DataCell(HeadingText(
                                  size: 14,
                                  value: "View",
                                )),
                                DataCell(HeadingText(
                                  size: 14,
                                  value: "View",
                                )),
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
                                DataCell(Icon(Icons.person)),
                                DataCell(HeadingText(
                                  size: 14,
                                  value: "Juma Ibra",
                                )),
                                DataCell(HeadingText(
                                  size: 14,
                                  value: "Male",
                                )),
                                DataCell(HeadingText(
                                  size: 14,
                                  value: "3 May 2010",
                                )),
                                DataCell(HeadingText(
                                  size: 14,
                                  value: "MIKUMI",
                                )),
                                DataCell(HeadingText(
                                  size: 14,
                                  value: "TABAT, BIMA",
                                )),
                                DataCell(HeadingText(
                                  size: 14,
                                  value: "Christian",
                                )),
                                DataCell(HeadingText(
                                  size: 14,
                                  value: "2022",
                                )),
                                DataCell(HeadingText(
                                  size: 14,
                                  value: "+255734848894",
                                )),
                                DataCell(HeadingText(
                                  size: 14,
                                  value: "View",
                                )),
                                DataCell(HeadingText(
                                  size: 14,
                                  value: "View",
                                )),
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
                                DataCell(Icon(Icons.person)),
                                DataCell(HeadingText(
                                  size: 14,
                                  value: "Juma Ibra",
                                )),
                                DataCell(HeadingText(
                                  size: 14,
                                  value: "Male",
                                )),
                                DataCell(HeadingText(
                                  size: 14,
                                  value: "3 May 2010",
                                )),
                                DataCell(HeadingText(
                                  size: 14,
                                  value: "MIKUMI",
                                )),
                                DataCell(HeadingText(
                                  size: 14,
                                  value: "TABAT, BIMA",
                                )),
                                DataCell(HeadingText(
                                  size: 14,
                                  value: "Christian",
                                )),
                                DataCell(HeadingText(
                                  size: 14,
                                  value: "2022",
                                )),
                                DataCell(HeadingText(
                                  size: 14,
                                  value: "+255734848894",
                                )),
                                DataCell(HeadingText(
                                  size: 14,
                                  value: "View",
                                )),
                                DataCell(HeadingText(
                                  size: 14,
                                  value: "View",
                                )),
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
                                DataCell(Icon(Icons.person)),
                                DataCell(HeadingText(
                                  size: 14,
                                  value: "Juma Ibra",
                                )),
                                DataCell(HeadingText(
                                  size: 14,
                                  value: "Male",
                                )),
                                DataCell(HeadingText(
                                  size: 14,
                                  value: "3 May 2010",
                                )),
                                DataCell(HeadingText(
                                  size: 14,
                                  value: "MIKUMI",
                                )),
                                DataCell(HeadingText(
                                  size: 14,
                                  value: "TABAT, BIMA",
                                )),
                                DataCell(HeadingText(
                                  size: 14,
                                  value: "Christian",
                                )),
                                DataCell(HeadingText(
                                  size: 14,
                                  value: "2022",
                                )),
                                DataCell(HeadingText(
                                  size: 14,
                                  value: "+255734848894",
                                )),
                                DataCell(HeadingText(
                                  size: 14,
                                  value: "View",
                                )),
                                DataCell(HeadingText(
                                  size: 14,
                                  value: "View",
                                )),
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
                                DataCell(Icon(Icons.person)),
                                DataCell(HeadingText(
                                  size: 14,
                                  value: "Juma Ibra",
                                )),
                                DataCell(HeadingText(
                                  size: 14,
                                  value: "Male",
                                )),
                                DataCell(HeadingText(
                                  size: 14,
                                  value: "3 May 2010",
                                )),
                                DataCell(HeadingText(
                                  size: 14,
                                  value: "MIKUMI",
                                )),
                                DataCell(HeadingText(
                                  size: 14,
                                  value: "TABAT, BIMA",
                                )),
                                DataCell(HeadingText(
                                  size: 14,
                                  value: "Christian",
                                )),
                                DataCell(HeadingText(
                                  size: 14,
                                  value: "2022",
                                )),
                                DataCell(HeadingText(
                                  size: 14,
                                  value: "+255734848894",
                                )),
                                DataCell(HeadingText(
                                  size: 14,
                                  value: "View",
                                )),
                                DataCell(HeadingText(
                                  size: 14,
                                  value: "View",
                                )),
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
                                DataCell(Icon(Icons.person)),
                                DataCell(HeadingText(
                                  size: 14,
                                  value: "Juma Ibra",
                                )),
                                DataCell(HeadingText(
                                  size: 14,
                                  value: "Male",
                                )),
                                DataCell(HeadingText(
                                  size: 14,
                                  value: "3 May 2010",
                                )),
                                DataCell(HeadingText(
                                  size: 14,
                                  value: "MIKUMI",
                                )),
                                DataCell(HeadingText(
                                  size: 14,
                                  value: "TABAT, BIMA",
                                )),
                                DataCell(HeadingText(
                                  size: 14,
                                  value: "Christian",
                                )),
                                DataCell(HeadingText(
                                  size: 14,
                                  value: "2022",
                                )),
                                DataCell(HeadingText(
                                  size: 14,
                                  value: "+255734848894",
                                )),
                                DataCell(HeadingText(
                                  size: 14,
                                  value: "View",
                                )),
                                DataCell(HeadingText(
                                  size: 14,
                                  value: "View",
                                )),
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
                                DataCell(Icon(Icons.person)),
                                DataCell(HeadingText(
                                  size: 14,
                                  value: "Juma Ibra",
                                )),
                                DataCell(HeadingText(
                                  size: 14,
                                  value: "Male",
                                )),
                                DataCell(HeadingText(
                                  size: 14,
                                  value: "3 May 2010",
                                )),
                                DataCell(HeadingText(
                                  size: 14,
                                  value: "MIKUMI",
                                )),
                                DataCell(HeadingText(
                                  size: 14,
                                  value: "TABAT, BIMA",
                                )),
                                DataCell(HeadingText(
                                  size: 14,
                                  value: "Christian",
                                )),
                                DataCell(HeadingText(
                                  size: 14,
                                  value: "2022",
                                )),
                                DataCell(HeadingText(
                                  size: 14,
                                  value: "+255734848894",
                                )),
                                DataCell(HeadingText(
                                  size: 14,
                                  value: "View",
                                )),
                                DataCell(HeadingText(
                                  size: 14,
                                  value: "View",
                                )),
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
                                DataCell(Icon(Icons.person)),
                                DataCell(HeadingText(
                                  size: 14,
                                  value: "Juma Ibra",
                                )),
                                DataCell(HeadingText(
                                  size: 14,
                                  value: "Male",
                                )),
                                DataCell(HeadingText(
                                  size: 14,
                                  value: "3 May 2010",
                                )),
                                DataCell(HeadingText(
                                  size: 14,
                                  value: "MIKUMI",
                                )),
                                DataCell(HeadingText(
                                  size: 14,
                                  value: "TABAT, BIMA",
                                )),
                                DataCell(HeadingText(
                                  size: 14,
                                  value: "Christian",
                                )),
                                DataCell(HeadingText(
                                  size: 14,
                                  value: "2022",
                                )),
                                DataCell(HeadingText(
                                  size: 14,
                                  value: "+255734848894",
                                )),
                                DataCell(HeadingText(
                                  size: 14,
                                  value: "View",
                                )),
                                DataCell(HeadingText(
                                  size: 14,
                                  value: "View",
                                )),
                              ])
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
