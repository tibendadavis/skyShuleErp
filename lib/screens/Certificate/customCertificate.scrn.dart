import 'package:flutter/material.dart';
import 'package:skyconnect_starter/components/downloadBar.comp.dart';
import 'package:skyconnect_starter/components/heading_text.dart';
import 'package:skyconnect_starter/components/searchBar.comp.dart';
import 'package:skyconnect_starter/components/tile2.comp.dart';
import 'package:skyconnect_starter/components/tile3.comp.dart';
import 'package:skyconnect_starter/controllers/responsive.dart';
import 'package:skyconnect_starter/screens/Certificate/addCustomCertificate.scrn.dart';
import 'package:skyconnect_starter/theme/design.theme.dart';

class customCertificate extends StatefulWidget {
  const customCertificate({super.key});

  @override
  State<customCertificate> createState() => _customCertificateState();
}

class _customCertificateState extends State<customCertificate> {
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
            value: "Custom Certificate",
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
                    ? 360
                    : MediaQuery.of(context).size.width,
                child: tile3(
                  icon: Icons.dashboard_customize_rounded,
                  link: addCustomCertificate(),
                  linkTitle: "Add Custom Certificate",
                )),
            SizedBox(
                width: Responsive.isDesktop(context)
                    ? 360
                    : MediaQuery.of(context).size.width,
                child:
                    tile2(tileHeading: "Custom Certificates", tileData: "6")),
          ],
        ),
        searchBar(title: "Search for Custom Certificate"),
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
                            ? size.width / 10
                            : Responsive.isDesktop(context) && size.width > 1600
                                ? size.width / 8
                                : 25,
                    showCheckboxColumn: false,
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
                        value: "Certificate Name",
                        fontWeight: FontWeight.w700,
                      )),
                      DataColumn(
                          label: HeadingText(
                        size: 14,
                        value: "Certificate SubType",
                        fontWeight: FontWeight.w700,
                      )),
                      DataColumn(
                          label: HeadingText(
                        size: 14,
                        value: "Certificate Heading",
                        fontWeight: FontWeight.w700,
                      )),
                      DataColumn(
                          label: HeadingText(
                        size: 14,
                        value: "Action",
                        fontWeight: FontWeight.w700,
                      )),
                    ],
                    rows: []),
              ),
            ),
          ]),
        )
      ])),
    );
  }
}
