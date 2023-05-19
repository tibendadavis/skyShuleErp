import 'package:flutter/material.dart';
import 'package:skyconnect_starter/components/downloadBar.comp.dart';
import 'package:skyconnect_starter/components/heading1.dart';
import 'package:skyconnect_starter/components/heading5.dart';
import 'package:skyconnect_starter/components/heading6.dart';
import 'package:skyconnect_starter/components/heading_text.dart';
import 'package:skyconnect_starter/components/searchBar.comp.dart';
import 'package:skyconnect_starter/components/searchInputOptions.comp.dart';
import 'package:skyconnect_starter/components/tile2.comp.dart';
import 'package:skyconnect_starter/components/tile3.comp.dart';
import 'package:skyconnect_starter/controllers/responsive.dart';
import 'package:skyconnect_starter/main.dart';
import 'package:skyconnect_starter/screens/Faculty%20Management/addEnrollment.scrn.dart';
import 'package:skyconnect_starter/screens/Users/components/user_profile.scrn.dart';
import 'package:skyconnect_starter/screens/Users/student_admission.scrn.dart';
import 'package:skyconnect_starter/theme/design.theme.dart';

class manageStudents extends StatefulWidget {
  const manageStudents({super.key});

  @override
  State<manageStudents> createState() => _manageStudentsState();
}

class _manageStudentsState extends State<manageStudents> {
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
              left: Responsive.isDesktop(context)
                  ? Insets().appPadding * 2
                  : Insets().appPadding,
              right: Insets().appGap),
          child: HeadingText(
            size: Responsive.isDesktop(context) ? 35 : 30,
            value: "Manage Students",
            fontWeight: FontWeight.w700,
            color: Colors.grey.shade800,
          ),
        ),
        Flex(
          direction:
              Responsive.isDesktop(context) ? Axis.horizontal : Axis.vertical,
          children: [
            Expanded(
              child: tile3(
                icon: Icons.person,
                link: MyHomePage(page: studentAdmission()),
                linkTitle: "Enroll Student",
              ),
            ),
            Expanded(child: tile2(tileHeading: "Students", tileData: "7")),
            Expanded(child: tile2(tileHeading: "Male", tileData: "4")),
            Expanded(
                child: Container(
                    margin: EdgeInsets.only(right: 25),
                    child: tile2(tileHeading: "Female", tileData: "3"))),
          ],
        ),
        searchBar(
          title: "Search for Students",
          opt1: searchInputOptions(title: "Class Level", opt1: ""),
          opt2: searchInputOptions(title: "Academic Year", opt1: ""),
          opt3: searchInputOptions(title: "Class ", opt1: ""),
          opt4: searchInputOptions(title: "Stream", opt1: ""),
        ),
        downloadBar(results: "7"),
        Expanded(
          child: ListView(children: [
            Container(
              margin: EdgeInsets.only(
                left: Responsive.isDesktop(context) ? Insets().appPadding : 13,
                right: Responsive.isDesktop(context) ? Insets().appPadding : 13,
              ),
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(Insets().appGap + 4)),
              padding: EdgeInsets.only(
                  left: 15, right: 15, bottom: Insets().appPadding),
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
                            label: HeadingText(
                          size: 14,
                          value: "No.",
                          fontWeight: FontWeight.w700,
                        )),
                        DataColumn(
                            label: SizedBox(
                          child: HeadingText(
                            size: 14,
                            value: "Photo",
                            fontWeight: FontWeight.w700,
                          ),
                        )),
                        DataColumn(
                            label: SizedBox(
                          width: 100,
                          child: HeadingText(
                            size: 14,
                            value: "Name",
                            fontWeight: FontWeight.w700,
                          ),
                        )),
                        DataColumn(
                            label: SizedBox(
                          child: HeadingText(
                            size: 14,
                            value: "Gender",
                            fontWeight: FontWeight.w700,
                          ),
                        )),
                        DataColumn(
                            label: SizedBox(
                          width: 100,
                          child: HeadingText(
                            size: 14,
                            value: "Date of Birth",
                            fontWeight: FontWeight.w700,
                          ),
                        )),
                        DataColumn(
                            label: SizedBox(
                          width: 100,
                          child: HeadingText(
                            size: 14,
                            value: "Reg No.",
                            fontWeight: FontWeight.w700,
                          ),
                        )),
                        DataColumn(
                            label: SizedBox(
                          width: 100,
                          child: HeadingText(
                            size: 14,
                            value: "Stream",
                            fontWeight: FontWeight.w700,
                          ),
                        )),
                        DataColumn(
                            label: SizedBox(
                          width: 100,
                          child: HeadingText(
                            size: 14,
                            value: "Address",
                            fontWeight: FontWeight.w700,
                          ),
                        )),
                        DataColumn(
                            label: SizedBox(
                          width: 100,
                          child: HeadingText(
                            size: 14,
                            value: "Religion",
                            fontWeight: FontWeight.w700,
                          ),
                        )),
                        DataColumn(
                            label: SizedBox(
                          child: HeadingText(
                            size: 14,
                            value: "Year",
                            fontWeight: FontWeight.w700,
                          ),
                        )),
                        DataColumn(
                            label: SizedBox(
                          width: 100,
                          child: HeadingText(
                            size: 14,
                            value: "Parents Phone",
                            fontWeight: FontWeight.w700,
                          ),
                        )),
                        DataColumn(
                            label: SizedBox(
                          width: 100,
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
                            value: "SH-07-01",
                          )),
                          DataCell(HeadingText(
                            size: 14,
                            value: "MIKUMI",
                          )),
                          DataCell(HeadingText(
                            size: 14,
                            value: "TABATA, BIMA",
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
                          DataCell(TextButton(
                            onPressed: () {
                              showDialog(
                                  context: context,
                                  builder: (_) =>
                                      MyHomePage(page: userProfile()));
                            },
                            child: HeadingText(
                              size: 14,
                              value: "View",
                            ),
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
                            value: "SH-07-01",
                          )),
                          DataCell(HeadingText(
                            size: 14,
                            value: "MIKUMI",
                          )),
                          DataCell(HeadingText(
                            size: 14,
                            value: "TABATA, BIMA",
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
                          DataCell(TextButton(
                            onPressed: () {
                              showDialog(
                                  context: context,
                                  builder: (_) =>
                                      MyHomePage(page: userProfile()));
                            },
                            child: HeadingText(
                              size: 14,
                              value: "View",
                            ),
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
                            value: "SH-07-01",
                          )),
                          DataCell(HeadingText(
                            size: 14,
                            value: "MIKUMI",
                          )),
                          DataCell(HeadingText(
                            size: 14,
                            value: "TABATA, BIMA",
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
                          DataCell(TextButton(
                            onPressed: () {
                              showDialog(
                                  context: context,
                                  builder: (_) =>
                                      MyHomePage(page: userProfile()));
                            },
                            child: HeadingText(
                              size: 14,
                              value: "View",
                            ),
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
                            value: "SH-07-01",
                          )),
                          DataCell(HeadingText(
                            size: 14,
                            value: "MIKUMI",
                          )),
                          DataCell(HeadingText(
                            size: 14,
                            value: "TABATA, BIMA",
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
                          DataCell(TextButton(
                            onPressed: () {
                              showDialog(
                                  context: context,
                                  builder: (_) =>
                                      MyHomePage(page: userProfile()));
                            },
                            child: HeadingText(
                              size: 14,
                              value: "View",
                            ),
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
                            value: "SH-07-01",
                          )),
                          DataCell(HeadingText(
                            size: 14,
                            value: "MIKUMI",
                          )),
                          DataCell(HeadingText(
                            size: 14,
                            value: "TABATA, BIMA",
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
                          DataCell(TextButton(
                            onPressed: () {
                              showDialog(
                                  context: context,
                                  builder: (_) =>
                                      MyHomePage(page: userProfile()));
                            },
                            child: HeadingText(
                              size: 14,
                              value: "View",
                            ),
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
                            value: "SH-07-01",
                          )),
                          DataCell(HeadingText(
                            size: 14,
                            value: "MIKUMI",
                          )),
                          DataCell(HeadingText(
                            size: 14,
                            value: "TABATA, BIMA",
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
                          DataCell(TextButton(
                            onPressed: () {
                              showDialog(
                                  context: context,
                                  builder: (_) =>
                                      MyHomePage(page: userProfile()));
                            },
                            child: HeadingText(
                              size: 14,
                              value: "View",
                            ),
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
                            value: "SH-07-01",
                          )),
                          DataCell(HeadingText(
                            size: 14,
                            value: "MIKUMI",
                          )),
                          DataCell(HeadingText(
                            size: 14,
                            value: "TABATA, BIMA",
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
                          DataCell(TextButton(
                            onPressed: () {
                              showDialog(
                                  context: context,
                                  builder: (_) =>
                                      MyHomePage(page: userProfile()));
                            },
                            child: HeadingText(
                              size: 14,
                              value: "View",
                            ),
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
                            value: "SH-07-01",
                          )),
                          DataCell(HeadingText(
                            size: 14,
                            value: "MIKUMI",
                          )),
                          DataCell(HeadingText(
                            size: 14,
                            value: "TABATA, BIMA",
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
                          DataCell(TextButton(
                            onPressed: () {
                              showDialog(
                                  context: context,
                                  builder: (_) =>
                                      MyHomePage(page: userProfile()));
                            },
                            child: HeadingText(
                              size: 14,
                              value: "View",
                            ),
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
                            value: "SH-07-01",
                          )),
                          DataCell(HeadingText(
                            size: 14,
                            value: "MIKUMI",
                          )),
                          DataCell(HeadingText(
                            size: 14,
                            value: "TABATA, BIMA",
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
                          DataCell(TextButton(
                            onPressed: () {
                              showDialog(
                                  context: context,
                                  builder: (_) =>
                                      MyHomePage(page: userProfile()));
                            },
                            child: HeadingText(
                              size: 14,
                              value: "View",
                            ),
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
                            value: "SH-07-01",
                          )),
                          DataCell(HeadingText(
                            size: 14,
                            value: "MIKUMI",
                          )),
                          DataCell(HeadingText(
                            size: 14,
                            value: "TABATA, BIMA",
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
                          DataCell(TextButton(
                            onPressed: () {
                              showDialog(
                                  context: context,
                                  builder: (_) =>
                                      MyHomePage(page: userProfile()));
                            },
                            child: HeadingText(
                              size: 14,
                              value: "View",
                            ),
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
                            value: "SH-07-01",
                          )),
                          DataCell(HeadingText(
                            size: 14,
                            value: "MIKUMI",
                          )),
                          DataCell(HeadingText(
                            size: 14,
                            value: "TABATA, BIMA",
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
                          DataCell(TextButton(
                            onPressed: () {
                              showDialog(
                                  context: context,
                                  builder: (_) =>
                                      MyHomePage(page: userProfile()));
                            },
                            child: HeadingText(
                              size: 14,
                              value: "View",
                            ),
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
                            value: "SH-07-01",
                          )),
                          DataCell(HeadingText(
                            size: 14,
                            value: "MIKUMI",
                          )),
                          DataCell(HeadingText(
                            size: 14,
                            value: "TABATA, BIMA",
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
                          DataCell(TextButton(
                            onPressed: () {
                              showDialog(
                                  context: context,
                                  builder: (_) =>
                                      MyHomePage(page: userProfile()));
                            },
                            child: HeadingText(
                              size: 14,
                              value: "View",
                            ),
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
                            value: "SH-07-01",
                          )),
                          DataCell(HeadingText(
                            size: 14,
                            value: "MIKUMI",
                          )),
                          DataCell(HeadingText(
                            size: 14,
                            value: "TABATA, BIMA",
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
                          DataCell(TextButton(
                            onPressed: () {
                              showDialog(
                                  context: context,
                                  builder: (_) =>
                                      MyHomePage(page: userProfile()));
                            },
                            child: HeadingText(
                              size: 14,
                              value: "View",
                            ),
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
                            value: "SH-07-01",
                          )),
                          DataCell(HeadingText(
                            size: 14,
                            value: "MIKUMI",
                          )),
                          DataCell(HeadingText(
                            size: 14,
                            value: "TABATA, BIMA",
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
                          DataCell(TextButton(
                            onPressed: () {
                              showDialog(
                                  context: context,
                                  builder: (_) =>
                                      MyHomePage(page: userProfile()));
                            },
                            child: HeadingText(
                              size: 14,
                              value: "View",
                            ),
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
