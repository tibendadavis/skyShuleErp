import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import 'package:intl/intl.dart';
import 'package:path/path.dart';
import 'package:skyconnect_starter/components/app_drawer/skyShuleDrawer.dart';
import 'package:skyconnect_starter/components/certificate.comp.dart';
import 'package:skyconnect_starter/components/header.dart';
import 'package:skyconnect_starter/components/heading1.dart';
import 'package:skyconnect_starter/components/heading2.dart';
import 'package:skyconnect_starter/components/heading3.dart';
import 'package:skyconnect_starter/components/heading4.dart';
import 'package:skyconnect_starter/components/heading5.dart';
import 'package:skyconnect_starter/components/heading6.dart';
import 'package:skyconnect_starter/components/heading_text.dart';
import 'package:skyconnect_starter/controllers/funcs_main.dart';
import 'package:skyconnect_starter/controllers/responsive.dart';
import 'package:skyconnect_starter/screens/addSubject.scrn.dart';
import 'package:skyconnect_starter/screens/addTerm.scrn.dart';
import 'package:skyconnect_starter/screens/student_admission.scrn.dart';
import 'package:skyconnect_starter/theme/design.theme.dart';

class generateCertificate extends StatefulWidget {
  const generateCertificate({super.key});

  @override
  State<generateCertificate> createState() => _generateCertificateState();
}

class _generateCertificateState extends State<generateCertificate> {
  bool _menu = false;
  bool generate = false;
  TextEditingController _issueDate = TextEditingController();
  double _drawersize = 250;
  var _classlevel;
  var _academicYear;
  var _stream;

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
      child: Column(
        children: [
          Visibility(
            visible: !generate,
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
                  value: "GENERATE CERTIFICATE",
                  fontWeight: FontWeight.w700,
                  color: Colors.black,
                ),
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                margin: EdgeInsets.only(
                    left: Responsive.isDesktop(context)
                        ? Insets().appPadding * 2
                        : Insets().appPadding,
                    right: Responsive.isDesktop(context)
                        ? Insets().appPadding * 2
                        : Insets().appPadding,
                    top: Responsive.isDesktop(context)
                        ? Insets().appPadding
                        : 12,
                    bottom: Responsive.isDesktop(context)
                        ? Insets().appPadding
                        : 12),
                padding: EdgeInsets.only(
                    left: Responsive.isDesktop(context)
                        ? Insets().appPadding
                        : 10,
                    right: Responsive.isDesktop(context)
                        ? Insets().appGap / 2
                        : 10,
                    top: Responsive.isDesktop(context)
                        ? Insets().appPadding / 2
                        : 5,
                    bottom: Responsive.isDesktop(context)
                        ? Insets().appPadding / 2
                        : 10),
                decoration: BoxDecoration(
                    color: Palette().primaryColorLight,
                    borderRadius: BorderRadius.circular(Insets().appGap + 4)),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      width: !Responsive.isDesktop(context)
                          ? MediaQuery.of(context).size.width
                          : MediaQuery.of(context).size.width / 2,
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
                              crossAxisAlignment: Responsive.isDesktop(context)
                                  ? CrossAxisAlignment.center
                                  : CrossAxisAlignment.start,
                              children: [
                                HeadingText(
                                    size:
                                        Responsive.isDesktop(context) ? 18 : 14,
                                    value: "Certificate Type"),
                                SizedBox(
                                  width: 400,
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
                                              value: "",
                                            ),
                                            value: ""),
                                        DropdownMenuItem(
                                            child: Heading5(
                                              value: "",
                                            ),
                                            value: ""),
                                        DropdownMenuItem(
                                            child: Heading5(
                                              value: "",
                                            ),
                                            value: ""),
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
                                        value: "Certificate Type",
                                      ),
                                      onChanged: ((value) {
                                        if (value is int) {
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
                              crossAxisAlignment: Responsive.isDesktop(context)
                                  ? CrossAxisAlignment.center
                                  : CrossAxisAlignment.start,
                              children: [
                                HeadingText(
                                    size:
                                        Responsive.isDesktop(context) ? 18 : 14,
                                    value: "Prefix"),
                                SizedBox(
                                  width: 400,
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
                                          hintText: "Prefix",
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
                              crossAxisAlignment: Responsive.isDesktop(context)
                                  ? CrossAxisAlignment.center
                                  : CrossAxisAlignment.start,
                              children: [
                                HeadingText(
                                    size:
                                        Responsive.isDesktop(context) ? 18 : 14,
                                    value: "Certificate For"),
                                SizedBox(
                                  width: 400,
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
                                              value: "",
                                            ),
                                            value: ""),
                                        DropdownMenuItem(
                                            child: Heading5(
                                              value: "",
                                            ),
                                            value: ""),
                                        DropdownMenuItem(
                                            child: Heading5(
                                              value: "",
                                            ),
                                            value: ""),
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
                                        value: "Certificate For",
                                      ),
                                      onChanged: ((value) {
                                        if (value is int) {
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
                              crossAxisAlignment: Responsive.isDesktop(context)
                                  ? CrossAxisAlignment.center
                                  : CrossAxisAlignment.start,
                              children: [
                                HeadingText(
                                    size:
                                        Responsive.isDesktop(context) ? 18 : 14,
                                    value: "Certificate Issue Date"),
                                SizedBox(
                                  width: 400,
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
                                        controller: _issueDate,
                                        readOnly: true,
                                        onTap: () async {
                                          final date = await Funcs()
                                              .selectDate(context: context);
                                          final formattedDate =
                                              DateFormat('yyyy-MM-dd')
                                                  .format(date!);
                                          setState(() {
                                            _issueDate.text = formattedDate;
                                          });
                                        },
                                        textAlignVertical:
                                            TextAlignVertical.center,
                                        decoration: InputDecoration(
                                          suffixIcon: Icon(
                                            Icons.calendar_month_rounded,
                                          ),
                                          border: InputBorder.none,
                                          hintText: "Certificate Issue Date",
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
                              crossAxisAlignment: Responsive.isDesktop(context)
                                  ? CrossAxisAlignment.center
                                  : CrossAxisAlignment.start,
                              children: [
                                HeadingText(
                                    size:
                                        Responsive.isDesktop(context) ? 18 : 14,
                                    value: "Class"),
                                SizedBox(
                                  width: 400,
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
                                              value: "",
                                            ),
                                            value: ""),
                                        DropdownMenuItem(
                                            child: Heading5(
                                              value: "",
                                            ),
                                            value: ""),
                                        DropdownMenuItem(
                                            child: Heading5(
                                              value: "",
                                            ),
                                            value: ""),
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
                                        if (value is int) {
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
                              crossAxisAlignment: Responsive.isDesktop(context)
                                  ? CrossAxisAlignment.center
                                  : CrossAxisAlignment.start,
                              children: [
                                HeadingText(
                                    size:
                                        Responsive.isDesktop(context) ? 18 : 14,
                                    value: "Stream"),
                                SizedBox(
                                  width: 400,
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
                                              value: "",
                                            ),
                                            value: ""),
                                        DropdownMenuItem(
                                            child: Heading5(
                                              value: "",
                                            ),
                                            value: ""),
                                        DropdownMenuItem(
                                            child: Heading5(
                                              value: "",
                                            ),
                                            value: ""),
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
                                        value: "Select Stream",
                                      ),
                                      onChanged: ((value) {
                                        if (value is int) {
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
                                  ? MainAxisAlignment.end
                                  : MainAxisAlignment.start,
                              crossAxisAlignment: Responsive.isDesktop(context)
                                  ? CrossAxisAlignment.center
                                  : CrossAxisAlignment.start,
                              children: [
                                SizedBox(
                                  width: 400,
                                  height:
                                      Responsive.isDesktop(context) ? 50 : 40,
                                  child: ElevatedButton(
                                    style: ElevatedButton.styleFrom(
                                        padding: EdgeInsets.only(
                                          left: Insets().appPadding / 2,
                                          right: Insets().appPadding / 2,
                                        ),
                                        backgroundColor: Palette().primaryColor,
                                        elevation: 0,
                                        shape: RoundedRectangleBorder(
                                            borderRadius: BorderRadius.circular(
                                                Insets().appPadding / 1.5))),
                                    onPressed: () {},
                                    child: Center(
                                        child: HeadingText(
                                      size: Responsive.isDesktop(context)
                                          ? 18
                                          : 14,
                                      value: "Generate",
                                    )),
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: Responsive.isDesktop(context) ? 10 : 15,
                            ),
                          ]),
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(
                  left: Responsive.isDesktop(context)
                      ? Insets().appPadding * 4
                      : 12,
                  right: Responsive.isDesktop(context)
                      ? Insets().appPadding * 4
                      : 12,
                ),
                padding: EdgeInsets.only(
                    left: Insets().appGap / 2,
                    right: Insets().appGap / 2,
                    top: Insets().appGap / 3,
                    bottom: Insets().appGap / 3),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
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
                            columnSpacing:
                                Responsive.isDesktop(context) ? 20 : 10,
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
                                width:
                                    Responsive.isDesktop(context) ? 250 : 150,
                                child: HeadingText(
                                  size: 14,
                                  value: "Student Registration No.",
                                  fontWeight: FontWeight.w700,
                                ),
                              )),
                              DataColumn(
                                  label: SizedBox(
                                width:
                                    Responsive.isDesktop(context) ? 250 : 150,
                                child: HeadingText(
                                  size: 14,
                                  value: "Student Name",
                                  fontWeight: FontWeight.w700,
                                ),
                              )),
                              DataColumn(
                                  label: SizedBox(
                                width:
                                    Responsive.isDesktop(context) ? 250 : 150,
                                child: HeadingText(
                                  size: 14,
                                  value: "View Certificate",
                                  fontWeight: FontWeight.w700,
                                ),
                              )),
                              DataColumn(
                                  label: SizedBox(
                                width:
                                    Responsive.isDesktop(context) ? 250 : 150,
                                child: HeadingText(
                                  size: 14,
                                  value: "Issue Certificate",
                                  fontWeight: FontWeight.w700,
                                ),
                              )),
                            ],
                            rows: [
                              DataRow(cells: [
                                DataCell(HeadingText(
                                  size: 14,
                                  value: "",
                                )),
                                DataCell(HeadingText(
                                  size: 14,
                                  value: "1",
                                )),
                                DataCell(HeadingText(
                                  size: 14,
                                  value: "SH 707 / 01",
                                )),
                                DataCell(HeadingText(
                                  size: 14,
                                  value: "Jane John Doe",
                                )),
                                DataCell(Row(
                                  children: [
                                    TextButton(
                                      onPressed: () {
                                        setState(() {
                                          generate = !generate;
                                        });
                                      },
                                      child: HeadingText(
                                        size: 14,
                                        value: "View Certificate",
                                        color: Colors.blue,
                                      ),
                                    ),
                                  ],
                                )),
                                DataCell(Row(
                                  children: [
                                    TextButton(
                                      onPressed: () {},
                                      child: HeadingText(
                                        size: 14,
                                        value: "Issue Certificate",
                                        color: Colors.green,
                                      ),
                                    ),
                                  ],
                                ))
                              ])
                            ]),
                      ),
                    ),
                  ),
                ]),
              )
            ])),
          ),
          Visibility(
              visible: generate,
              child: Expanded(
                child: Column(
                  children: [
                    certificate(
                      certificateType: "",
                      contentText: "",
                      hodSignature: "",
                      lastText: "",
                      logoPosition: Alignment.center,
                      studentName: "",
                      teacherSignature: "",
                      userImage: Alignment.bottomLeft,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.red),
                            onPressed: () {
                              setState(() {
                                generate = !generate;
                              });
                            },
                            child: Heading5(
                              value: "Cancel",
                            )),
                        SizedBox(
                          width: 20,
                        ),
                        ElevatedButton(
                            onPressed: () {},
                            child: Heading5(
                              value: "Print",
                            )),
                      ],
                    )
                  ],
                ),
              )),
        ],
      ),
    );
  }
}
