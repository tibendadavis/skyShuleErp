import 'package:flutter/material.dart';
import 'package:skyconnect_starter/components/downloadBar.comp.dart';
import 'package:skyconnect_starter/components/heading_text.dart';
import 'package:skyconnect_starter/components/searchBar.comp.dart';
import 'package:skyconnect_starter/components/searchInputOptions.comp.dart';
import 'package:skyconnect_starter/components/tile2.comp.dart';
import 'package:skyconnect_starter/components/tile3.comp.dart';
import 'package:skyconnect_starter/controllers/responsive.dart';
import 'package:skyconnect_starter/screens/Users/addStaff.scrn.dart';
import 'package:skyconnect_starter/theme/design.theme.dart';

class supportingStaff extends StatefulWidget {
  const supportingStaff({super.key});

  @override
  State<supportingStaff> createState() => _supportingStaffState();
}

class _supportingStaffState extends State<supportingStaff> {
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
            value: "Supporting Staff",
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
                icon: Icons.groups_outlined,
                link: addStaff(),
                linkTitle: "New Suppporting Staff",
              ),
            ),
            Expanded(
                child: tile2(tileHeading: "Supporting Staffs", tileData: "7")),
            Expanded(child: tile2(tileHeading: "Male", tileData: "4")),
            Expanded(
                child: Container(
                    margin: EdgeInsets.only(right: 25),
                    child: tile2(tileHeading: "Female", tileData: "3"))),
          ],
        ),
        searchBar(
          title: "Search for Supporting Staff",
          opt1: searchInputOptions(title: "Role", opt1: ""),
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
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: DataTable(
                    dataRowHeight: 55,
                    headingTextStyle: TextStyle(color: Palette().primaryColor),
                    horizontalMargin: 0,
                    columnSpacing:
                        Responsive.isDesktop(context) && size.width < 1600
                            ? size.width / 70
                            : Responsive.isDesktop(context) && size.width > 1600
                                ? size.width / 32
                                : 25,
                    showCheckboxColumn: true,
                    checkboxHorizontalMargin: 10,
                    showBottomBorder: true,
                    columns: [
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
                          value: "Name",
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
                          value: "Religion",
                          fontWeight: FontWeight.w700,
                        ),
                      )),
                      DataColumn(
                          label: Expanded(
                        child: HeadingText(
                          size: 14,
                          value: "Nationality",
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
                        DataCell(HeadingText(
                          size: 14,
                          value: "1",
                        )),
                        DataCell(Icon(size: 20, Icons.person)),
                        DataCell(HeadingText(
                          size: 14,
                          value: "Doe Lucas John",
                        )),
                        DataCell(HeadingText(
                          size: 14,
                          value: "Male",
                        )),
                        DataCell(HeadingText(
                          size: 14,
                          value: "supporting@gmail.com",
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
                        DataCell(HeadingText(value: "Christian", size: 14)),
                        DataCell(HeadingText(
                          size: 14,
                          value: "TZ",
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
                        DataCell(HeadingText(
                          size: 14,
                          value: "1",
                        )),
                        DataCell(Icon(size: 20, Icons.person)),
                        DataCell(HeadingText(
                          size: 14,
                          value: "Doe Lucas John",
                        )),
                        DataCell(HeadingText(
                          size: 14,
                          value: "Male",
                        )),
                        DataCell(HeadingText(
                          size: 14,
                          value: "supporting@gmail.com",
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
                        DataCell(HeadingText(value: "Christian", size: 14)),
                        DataCell(HeadingText(
                          size: 14,
                          value: "TZ",
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
                        DataCell(HeadingText(
                          size: 14,
                          value: "1",
                        )),
                        DataCell(Icon(size: 20, Icons.person)),
                        DataCell(HeadingText(
                          size: 14,
                          value: "Doe Lucas John",
                        )),
                        DataCell(HeadingText(
                          size: 14,
                          value: "Male",
                        )),
                        DataCell(HeadingText(
                          size: 14,
                          value: "supporting@gmail.com",
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
                        DataCell(HeadingText(value: "Christian", size: 14)),
                        DataCell(HeadingText(
                          size: 14,
                          value: "TZ",
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
                        DataCell(HeadingText(
                          size: 14,
                          value: "1",
                        )),
                        DataCell(Icon(size: 20, Icons.person)),
                        DataCell(HeadingText(
                          size: 14,
                          value: "Doe Lucas John",
                        )),
                        DataCell(HeadingText(
                          size: 14,
                          value: "Male",
                        )),
                        DataCell(HeadingText(
                          size: 14,
                          value: "supporting@gmail.com",
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
                        DataCell(HeadingText(value: "Christian", size: 14)),
                        DataCell(HeadingText(
                          size: 14,
                          value: "TZ",
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
                        DataCell(HeadingText(
                          size: 14,
                          value: "1",
                        )),
                        DataCell(Icon(size: 20, Icons.person)),
                        DataCell(HeadingText(
                          size: 14,
                          value: "Doe Lucas John",
                        )),
                        DataCell(HeadingText(
                          size: 14,
                          value: "Male",
                        )),
                        DataCell(HeadingText(
                          size: 14,
                          value: "supporting@gmail.com",
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
                        DataCell(HeadingText(value: "Christian", size: 14)),
                        DataCell(HeadingText(
                          size: 14,
                          value: "TZ",
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
                        DataCell(HeadingText(
                          size: 14,
                          value: "1",
                        )),
                        DataCell(Icon(size: 20, Icons.person)),
                        DataCell(HeadingText(
                          size: 14,
                          value: "Doe Lucas John",
                        )),
                        DataCell(HeadingText(
                          size: 14,
                          value: "Male",
                        )),
                        DataCell(HeadingText(
                          size: 14,
                          value: "supporting@gmail.com",
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
                        DataCell(HeadingText(value: "Christian", size: 14)),
                        DataCell(HeadingText(
                          size: 14,
                          value: "TZ",
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
                        DataCell(HeadingText(
                          size: 14,
                          value: "1",
                        )),
                        DataCell(Icon(size: 20, Icons.person)),
                        DataCell(HeadingText(
                          size: 14,
                          value: "Doe Lucas John",
                        )),
                        DataCell(HeadingText(
                          size: 14,
                          value: "Male",
                        )),
                        DataCell(HeadingText(
                          size: 14,
                          value: "supporting@gmail.com",
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
                        DataCell(HeadingText(value: "Christian", size: 14)),
                        DataCell(HeadingText(
                          size: 14,
                          value: "TZ",
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
                        DataCell(HeadingText(
                          size: 14,
                          value: "1",
                        )),
                        DataCell(Icon(size: 20, Icons.person)),
                        DataCell(HeadingText(
                          size: 14,
                          value: "Doe Lucas John",
                        )),
                        DataCell(HeadingText(
                          size: 14,
                          value: "Male",
                        )),
                        DataCell(HeadingText(
                          size: 14,
                          value: "supporting@gmail.com",
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
                        DataCell(HeadingText(value: "Christian", size: 14)),
                        DataCell(HeadingText(
                          size: 14,
                          value: "TZ",
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
                        DataCell(HeadingText(
                          size: 14,
                          value: "1",
                        )),
                        DataCell(Icon(size: 20, Icons.person)),
                        DataCell(HeadingText(
                          size: 14,
                          value: "Doe Lucas John",
                        )),
                        DataCell(HeadingText(
                          size: 14,
                          value: "Male",
                        )),
                        DataCell(HeadingText(
                          size: 14,
                          value: "supporting@gmail.com",
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
                        DataCell(HeadingText(value: "Christian", size: 14)),
                        DataCell(HeadingText(
                          size: 14,
                          value: "TZ",
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
                        DataCell(HeadingText(
                          size: 14,
                          value: "1",
                        )),
                        DataCell(Icon(size: 20, Icons.person)),
                        DataCell(HeadingText(
                          size: 14,
                          value: "Doe Lucas John",
                        )),
                        DataCell(HeadingText(
                          size: 14,
                          value: "Male",
                        )),
                        DataCell(HeadingText(
                          size: 14,
                          value: "supporting@gmail.com",
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
                        DataCell(HeadingText(value: "Christian", size: 14)),
                        DataCell(HeadingText(
                          size: 14,
                          value: "TZ",
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
                        DataCell(HeadingText(
                          size: 14,
                          value: "1",
                        )),
                        DataCell(Icon(size: 20, Icons.person)),
                        DataCell(HeadingText(
                          size: 14,
                          value: "Doe Lucas John",
                        )),
                        DataCell(HeadingText(
                          size: 14,
                          value: "Male",
                        )),
                        DataCell(HeadingText(
                          size: 14,
                          value: "supporting@gmail.com",
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
                        DataCell(HeadingText(value: "Christian", size: 14)),
                        DataCell(HeadingText(
                          size: 14,
                          value: "TZ",
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
                        DataCell(HeadingText(
                          size: 14,
                          value: "1",
                        )),
                        DataCell(Icon(size: 20, Icons.person)),
                        DataCell(HeadingText(
                          size: 14,
                          value: "Doe Lucas John",
                        )),
                        DataCell(HeadingText(
                          size: 14,
                          value: "Male",
                        )),
                        DataCell(HeadingText(
                          size: 14,
                          value: "supporting@gmail.com",
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
                        DataCell(HeadingText(value: "Christian", size: 14)),
                        DataCell(HeadingText(
                          size: 14,
                          value: "TZ",
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
                        DataCell(HeadingText(
                          size: 14,
                          value: "1",
                        )),
                        DataCell(Icon(size: 20, Icons.person)),
                        DataCell(HeadingText(
                          size: 14,
                          value: "Doe Lucas John",
                        )),
                        DataCell(HeadingText(
                          size: 14,
                          value: "Male",
                        )),
                        DataCell(HeadingText(
                          size: 14,
                          value: "supporting@gmail.com",
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
                        DataCell(HeadingText(value: "Christian", size: 14)),
                        DataCell(HeadingText(
                          size: 14,
                          value: "TZ",
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
                        DataCell(HeadingText(
                          size: 14,
                          value: "1",
                        )),
                        DataCell(Icon(size: 20, Icons.person)),
                        DataCell(HeadingText(
                          size: 14,
                          value: "Doe Lucas John",
                        )),
                        DataCell(HeadingText(
                          size: 14,
                          value: "Male",
                        )),
                        DataCell(HeadingText(
                          size: 14,
                          value: "supporting@gmail.com",
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
                        DataCell(HeadingText(value: "Christian", size: 14)),
                        DataCell(HeadingText(
                          size: 14,
                          value: "TZ",
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
                        DataCell(HeadingText(
                          size: 14,
                          value: "1",
                        )),
                        DataCell(Icon(size: 20, Icons.person)),
                        DataCell(HeadingText(
                          size: 14,
                          value: "Doe Lucas John",
                        )),
                        DataCell(HeadingText(
                          size: 14,
                          value: "Male",
                        )),
                        DataCell(HeadingText(
                          size: 14,
                          value: "supporting@gmail.com",
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
                        DataCell(HeadingText(value: "Christian", size: 14)),
                        DataCell(HeadingText(
                          size: 14,
                          value: "TZ",
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
                        DataCell(HeadingText(
                          size: 14,
                          value: "1",
                        )),
                        DataCell(Icon(size: 20, Icons.person)),
                        DataCell(HeadingText(
                          size: 14,
                          value: "Doe Lucas John",
                        )),
                        DataCell(HeadingText(
                          size: 14,
                          value: "Male",
                        )),
                        DataCell(HeadingText(
                          size: 14,
                          value: "supporting@gmail.com",
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
                        DataCell(HeadingText(value: "Christian", size: 14)),
                        DataCell(HeadingText(
                          size: 14,
                          value: "TZ",
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
          ]),
        )
      ])),
    );
  }
}
