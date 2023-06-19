import 'package:flutter/material.dart';
import 'package:skyconnect_starter/components/certificate.comp.dart';
import 'package:skyconnect_starter/components/downloadBar.comp.dart';
import 'package:skyconnect_starter/components/heading5.dart';
import 'package:skyconnect_starter/components/heading_text.dart';
import 'package:skyconnect_starter/components/inputDate.comp.dart';
import 'package:skyconnect_starter/components/inputOptions.comp.dart';
import 'package:skyconnect_starter/components/inputTextField.comp.dart';
import 'package:skyconnect_starter/controllers/responsive.dart';
import 'package:skyconnect_starter/theme/design.theme.dart';

class generateCertificate extends StatefulWidget {
  const generateCertificate({super.key});

  @override
  State<generateCertificate> createState() => _generateCertificateState();
}

class _generateCertificateState extends State<generateCertificate> {
  bool generate = false;

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
                    left: Responsive.isDesktop(context)
                        ? Insets().appPadding * 2
                        : Insets().appPadding,
                    right: Insets().appGap),
                child: HeadingText(
                  size: Responsive.isDesktop(context) ? 35 : 30,
                  value: "Generate Certificate",
                  fontWeight: FontWeight.w700,
                  color: Colors.grey.shade800,
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
                        ? Insets().appPadding / 2
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
                    color: Colors.white,
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
                            inputOptions(
                              title: "Certificate Type",
                              opt1: "",
                            ),
                            SizedBox(
                              height: Responsive.isDesktop(context) ? 10 : 15,
                            ),
                            inputTextField(title: "Prefix", hintText: "Prefix"),
                            SizedBox(
                              height: Responsive.isDesktop(context) ? 10 : 15,
                            ),
                            inputOptions(
                              title: "Certificate For",
                              opt1: "",
                            ),
                            SizedBox(
                              height: Responsive.isDesktop(context) ? 10 : 15,
                            ),
                            inputDate(
                                heading: "Certificate Issue Date",
                                subheading: "Certificate Issue Date"),
                            SizedBox(
                              height: Responsive.isDesktop(context) ? 10 : 15,
                            ),
                            inputOptions(
                              title: "Class",
                              opt1: "",
                            ),
                            SizedBox(
                              height: Responsive.isDesktop(context) ? 10 : 15,
                            ),
                            inputOptions(
                              title: "Stream",
                              opt1: "",
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
                          ]),
                    ),
                  ],
                ),
              ),
              downloadBar(results: "7"),
              Expanded(
                child: ListView(children: [
                  Container(
                    margin: EdgeInsets.only(
                      left: Responsive.isDesktop(context)
                          ? Insets().appPadding
                          : 13,
                      right: Responsive.isDesktop(context)
                          ? Insets().appPadding
                          : 13,
                    ),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius:
                            BorderRadius.circular(Insets().appGap + 4)),
                    padding: EdgeInsets.only(
                        left: 15, right: 15, bottom: Insets().appPadding),
                    child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: DataTable(
                          dataRowHeight: 55,
                          headingTextStyle:
                              TextStyle(color: Palette().primaryColor),
                          horizontalMargin: 0,
                          columnSpacing:
                              Responsive.isDesktop(context) && size.width < 1600
                                  ? size.width / 10
                                  : Responsive.isDesktop(context) &&
                                          size.width > 1600
                                      ? size.width / 8
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
                                label: HeadingText(
                              size: 14,
                              value: "Student Registration No.",
                              fontWeight: FontWeight.w700,
                            )),
                            DataColumn(
                                label: HeadingText(
                              size: 14,
                              value: "Student Name",
                              fontWeight: FontWeight.w700,
                            )),
                            DataColumn(
                                label: HeadingText(
                              size: 14,
                              value: "View Certificate",
                              fontWeight: FontWeight.w700,
                            )),
                            DataColumn(
                                label: HeadingText(
                              size: 14,
                              value: "Issue Certificate",
                              fontWeight: FontWeight.w700,
                            )),
                          ],
                          rows: [
                            DataRow(cells: [
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
