import 'package:flutter/material.dart';
import 'package:skyconnect_starter/components/bankDetails.dart';
import 'package:skyconnect_starter/components/contactsDetails.dart';
import 'package:skyconnect_starter/components/heading6.dart';
import 'package:skyconnect_starter/components/heading_text.dart';
import 'package:skyconnect_starter/components/officialDetails.dart';
import 'package:skyconnect_starter/components/otherFacilities.dart';
import 'package:skyconnect_starter/components/parentsDetails.dart';
import 'package:skyconnect_starter/components/personalDetails.dart';
import 'package:skyconnect_starter/components/uploadDocuments.dart';
import 'package:skyconnect_starter/controllers/responsive.dart';
import 'package:skyconnect_starter/components/academicDetails.dart';
import 'package:skyconnect_starter/theme/design.theme.dart';

class studentAdmission extends StatefulWidget {
  const studentAdmission({super.key});

  @override
  State<studentAdmission> createState() => _studentAdmissionState();
}

class _studentAdmissionState extends State<studentAdmission> {
  bool offDtls = true;
  bool prsnlDtls = false;
  bool conctDtls = false;
  bool prntsDtls = false;
  bool acdmcDtls = false;
  bool bnkDtls = false;
  bool othrFacilities = false;
  bool upldDocs = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Expanded(
          child: Column(
        children: [
          Container(
            alignment: Alignment.bottomLeft,
            padding: EdgeInsets.only(
                left: Responsive.isDesktop(context)
                    ? Insets().appPadding * 2
                    : Insets().appPadding,
                right: Insets().appGap),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                HeadingText(
                  size: Responsive.isDesktop(context) ? 30 : 20,
                  value: "STUDENT ENROLLMENT & ADMISSION",
                  fontWeight: FontWeight.w700,
                  color: Colors.grey.shade800,
                ),
                HeadingText(
                  size: Responsive.isDesktop(context) ? 14 : 14,
                  value: "Official Details",
                  fontWeight: FontWeight.w600,
                  color: Colors.black,
                ),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.only(
                top: Responsive.isDesktop(context) ? Insets().appPadding : 15,
                bottom:
                    Responsive.isDesktop(context) ? Insets().appPadding : 15,
                left: Responsive.isDesktop(context)
                    ? Insets().appPadding * 2
                    : 15,
                right: Responsive.isDesktop(context)
                    ? Insets().appPadding * 2
                    : 15),
            margin: EdgeInsets.only(
                bottom:
                    Responsive.isDesktop(context) ? Insets().appPadding : 10,
                left: Insets().appPadding,
                right: Insets().appPadding,
                top: Responsive.isDesktop(context) ? Insets().appPadding : 12),
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(Insets().appRadius)),
            child: Flex(
                direction: Responsive.isDesktop(context)
                    ? Axis.horizontal
                    : Axis.vertical,
                mainAxisAlignment: Responsive.isDesktop(context)
                    ? MainAxisAlignment.spaceBetween
                    : MainAxisAlignment.start,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      HeadingText(
                        size: Responsive.isDesktop(context) ? 18 : 15,
                        value: "Online Admission Form Link",
                        fontWeight: FontWeight.w700,
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: SizedBox(
                          width: Responsive.isDesktop(context)
                              ? 600
                              : MediaQuery.of(context).size.width + 150,
                          child: HeadingText(
                            size: Responsive.isDesktop(context) ? 18 : 15,
                            value:
                                "Https://www.skyshule.com/admission/nameofinstitute/123/new",
                            color: Palette().primaryColor,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: Responsive.isDesktop(context) ? 0 : 15,
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: SizedBox(
                      width: Responsive.isDesktop(context)
                          ? 500
                          : MediaQuery.of(context).size.width + 10,
                      child: Row(
                        mainAxisAlignment: Responsive.isDesktop(context)
                            ? MainAxisAlignment.end
                            : MainAxisAlignment.start,
                        children: [
                          SizedBox(
                            width: Responsive.isDesktop(context) ? 145 : 70,
                            child: ElevatedButton(
                                onPressed: () {},
                                style: ElevatedButton.styleFrom(
                                    backgroundColor: Palette().primaryColor,
                                    shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(
                                            Insets().appRadiusMin + 4)),
                                    padding: EdgeInsets.all(
                                        Insets().appPadding / 1.2)),
                                child: Heading6(
                                  value: "Print",
                                  color: Colors.white,
                                )),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          SizedBox(
                            width: Responsive.isDesktop(context) ? 145 : 140,
                            child: ElevatedButton(
                                onPressed: () {},
                                style: ElevatedButton.styleFrom(
                                    backgroundColor: Palette().primaryColor,
                                    shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(
                                            Insets().appRadiusMin + 4)),
                                    padding: EdgeInsets.all(
                                        Insets().appPadding / 1.2)),
                                child: Heading6(
                                  value: "Import Students",
                                  color: Colors.white,
                                )),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          SizedBox(
                            width: Responsive.isDesktop(context) ? 145 : 140,
                            child: ElevatedButton(
                                onPressed: () {},
                                style: ElevatedButton.styleFrom(
                                    backgroundColor: Palette().primaryColor,
                                    shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(
                                            Insets().appRadiusMin + 4)),
                                    padding: EdgeInsets.all(
                                        Insets().appPadding / 1.2)),
                                child: Heading6(
                                  value: "Export Students",
                                  color: Colors.white,
                                )),
                          ),
                        ],
                      ),
                    ),
                  )
                ]),
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            padding: EdgeInsets.only(
                top: Insets().appPadding,
                bottom: Insets().appPadding,
                left: Responsive.isDesktop(context)
                    ? Insets().appPadding * 2
                    : Insets().appPadding,
                right: Responsive.isDesktop(context)
                    ? Insets().appPadding * 2
                    : Insets().appPadding),
            margin: EdgeInsets.only(
                bottom: Insets().appPadding,
                left: Insets().appPadding,
                right: Insets().appPadding,
                top: Responsive.isDesktop(context) ? Insets().appPadding : 12),
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(Insets().appRadius)),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: SizedBox(
                    width: Responsive.isDesktop(context)
                        ? 1060
                        : MediaQuery.of(context).size.width + 700,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        ElevatedButton(
                            onPressed: () {
                              setState(() {
                                offDtls = true;
                                prsnlDtls = false;
                                conctDtls = false;
                                prntsDtls = false;
                                acdmcDtls = false;
                                bnkDtls = false;
                                othrFacilities = false;
                                upldDocs = false;
                              });
                            },
                            style: ElevatedButton.styleFrom(
                                elevation: 0,
                                backgroundColor: !offDtls
                                    ? Colors.white
                                    : Palette().primaryColor,
                                side: BorderSide(
                                  width: 1,
                                  color: !offDtls
                                      ? Colors.black
                                      : Colors.transparent,
                                ),
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(
                                        Insets().appRadiusMin + 4)),
                                padding: EdgeInsets.only(
                                  left: Insets().appPadding / 1.5,
                                  right: Insets().appPadding / 1.5,
                                  top: Responsive.isDesktop(context)
                                      ? Insets().appPadding
                                      : 17,
                                  bottom: Responsive.isDesktop(context)
                                      ? Insets().appPadding
                                      : 17,
                                )),
                            child: Heading6(
                              value: "Official Details",
                              color: !offDtls ? Colors.black : Colors.white,
                            )),
                        SizedBox(
                          width: 10,
                        ),
                        ElevatedButton(
                            onPressed: () {
                              setState(() {
                                offDtls = false;
                                prsnlDtls = true;
                                conctDtls = false;
                                prntsDtls = false;
                                acdmcDtls = false;
                                bnkDtls = false;
                                othrFacilities = false;
                                upldDocs = false;
                              });
                            },
                            style: ElevatedButton.styleFrom(
                                elevation: 0,
                                backgroundColor: !prsnlDtls
                                    ? Colors.white
                                    : Palette().primaryColor,
                                side: BorderSide(
                                  width: 1,
                                  color: !prsnlDtls
                                      ? Colors.black
                                      : Colors.transparent,
                                ),
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(
                                        Insets().appRadiusMin + 4)),
                                padding: EdgeInsets.only(
                                  left: Insets().appPadding / 1.5,
                                  right: Insets().appPadding / 1.5,
                                  top: Responsive.isDesktop(context)
                                      ? Insets().appPadding
                                      : 17,
                                  bottom: Responsive.isDesktop(context)
                                      ? Insets().appPadding
                                      : 17,
                                )),
                            child: Heading6(
                              value: "Personal Details",
                              color: !prsnlDtls ? Colors.black : Colors.white,
                            )),
                        SizedBox(
                          width: 10,
                        ),
                        ElevatedButton(
                            onPressed: () {
                              setState(() {
                                offDtls = false;
                                prsnlDtls = false;
                                conctDtls = true;
                                prntsDtls = false;
                                acdmcDtls = false;
                                bnkDtls = false;
                                othrFacilities = false;
                                upldDocs = false;
                              });
                            },
                            style: ElevatedButton.styleFrom(
                                elevation: 0,
                                backgroundColor: !conctDtls
                                    ? Colors.white
                                    : Palette().primaryColor,
                                side: BorderSide(
                                  width: 1,
                                  color: !conctDtls
                                      ? Colors.black
                                      : Colors.transparent,
                                ),
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(
                                        Insets().appRadiusMin + 4)),
                                padding: EdgeInsets.only(
                                  left: Insets().appPadding / 1.5,
                                  right: Insets().appPadding / 1.5,
                                  top: Responsive.isDesktop(context)
                                      ? Insets().appPadding
                                      : 17,
                                  bottom: Responsive.isDesktop(context)
                                      ? Insets().appPadding
                                      : 17,
                                )),
                            child: Heading6(
                              value: "Contact Details",
                              color: !conctDtls ? Colors.black : Colors.white,
                            )),
                        SizedBox(
                          width: 10,
                        ),
                        ElevatedButton(
                            onPressed: () {
                              setState(() {
                                offDtls = false;
                                prsnlDtls = false;
                                conctDtls = false;
                                prntsDtls = true;
                                acdmcDtls = false;
                                bnkDtls = false;
                                othrFacilities = false;
                                upldDocs = false;
                              });
                            },
                            style: ElevatedButton.styleFrom(
                                elevation: 0,
                                backgroundColor: !prntsDtls
                                    ? Colors.white
                                    : Palette().primaryColor,
                                side: BorderSide(
                                  width: 1,
                                  color: !prntsDtls
                                      ? Colors.black
                                      : Colors.transparent,
                                ),
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(
                                        Insets().appRadiusMin + 4)),
                                padding: EdgeInsets.only(
                                  left: Insets().appPadding / 1.5,
                                  right: Insets().appPadding / 1.5,
                                  top: Responsive.isDesktop(context)
                                      ? Insets().appPadding
                                      : 17,
                                  bottom: Responsive.isDesktop(context)
                                      ? Insets().appPadding
                                      : 17,
                                )),
                            child: Heading6(
                              value: "Parents Details",
                              color: !prntsDtls ? Colors.black : Colors.white,
                            )),
                        SizedBox(
                          width: 10,
                        ),
                        ElevatedButton(
                            onPressed: () {
                              setState(() {
                                offDtls = false;
                                prsnlDtls = false;
                                conctDtls = false;
                                prntsDtls = false;
                                acdmcDtls = true;
                                bnkDtls = false;
                                othrFacilities = false;
                                upldDocs = false;
                              });
                            },
                            style: ElevatedButton.styleFrom(
                                elevation: 0,
                                backgroundColor: !acdmcDtls
                                    ? Colors.white
                                    : Palette().primaryColor,
                                side: BorderSide(
                                  width: 1,
                                  color: !acdmcDtls
                                      ? Colors.black
                                      : Colors.transparent,
                                ),
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(
                                        Insets().appRadiusMin + 4)),
                                padding: EdgeInsets.only(
                                  left: Insets().appPadding / 1.5,
                                  right: Insets().appPadding / 1.5,
                                  top: Responsive.isDesktop(context)
                                      ? Insets().appPadding
                                      : 17,
                                  bottom: Responsive.isDesktop(context)
                                      ? Insets().appPadding
                                      : 17,
                                )),
                            child: Heading6(
                              value: "Academic Details",
                              color: !acdmcDtls ? Colors.black : Colors.white,
                            )),
                        SizedBox(
                          width: 10,
                        ),
                        ElevatedButton(
                            onPressed: () {
                              setState(() {
                                offDtls = false;
                                prsnlDtls = false;
                                conctDtls = false;
                                prntsDtls = false;
                                acdmcDtls = false;
                                bnkDtls = true;
                                othrFacilities = false;
                                upldDocs = false;
                              });
                            },
                            style: ElevatedButton.styleFrom(
                                elevation: 0,
                                backgroundColor: !bnkDtls
                                    ? Colors.white
                                    : Palette().primaryColor,
                                side: BorderSide(
                                  width: 1,
                                  color: !bnkDtls
                                      ? Colors.black
                                      : Colors.transparent,
                                ),
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(
                                        Insets().appRadiusMin + 4)),
                                padding: EdgeInsets.only(
                                  left: Insets().appPadding / 1.5,
                                  right: Insets().appPadding / 1.5,
                                  top: Responsive.isDesktop(context)
                                      ? Insets().appPadding
                                      : 17,
                                  bottom: Responsive.isDesktop(context)
                                      ? Insets().appPadding
                                      : 17,
                                )),
                            child: Heading6(
                              value: "Bank Details",
                              color: !bnkDtls ? Colors.black : Colors.white,
                            )),
                        SizedBox(
                          width: 10,
                        ),
                        ElevatedButton(
                            onPressed: () {
                              setState(() {
                                offDtls = false;
                                prsnlDtls = false;
                                conctDtls = false;
                                prntsDtls = false;
                                acdmcDtls = false;
                                bnkDtls = false;
                                othrFacilities = true;
                                upldDocs = false;
                              });
                            },
                            style: ElevatedButton.styleFrom(
                                elevation: 0,
                                backgroundColor: !othrFacilities
                                    ? Colors.white
                                    : Palette().primaryColor,
                                side: BorderSide(
                                  width: 1,
                                  color: !othrFacilities
                                      ? Colors.black
                                      : Colors.transparent,
                                ),
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(
                                        Insets().appRadiusMin + 4)),
                                padding: EdgeInsets.only(
                                  left: Insets().appPadding / 1.5,
                                  right: Insets().appPadding / 1.5,
                                  top: Responsive.isDesktop(context)
                                      ? Insets().appPadding
                                      : 17,
                                  bottom: Responsive.isDesktop(context)
                                      ? Insets().appPadding
                                      : 17,
                                )),
                            child: Heading6(
                              value: "Other Facilities",
                              color:
                                  !othrFacilities ? Colors.black : Colors.white,
                            )),
                        SizedBox(
                          width: 10,
                        ),
                        ElevatedButton(
                            onPressed: () {
                              setState(() {
                                offDtls = false;
                                prsnlDtls = false;
                                conctDtls = false;
                                prntsDtls = false;
                                acdmcDtls = false;
                                bnkDtls = false;
                                othrFacilities = false;
                                upldDocs = true;
                              });
                            },
                            style: ElevatedButton.styleFrom(
                                elevation: 0,
                                backgroundColor: !upldDocs
                                    ? Colors.white
                                    : Palette().primaryColor,
                                side: BorderSide(
                                  width: 1,
                                  color: !upldDocs
                                      ? Colors.black
                                      : Colors.transparent,
                                ),
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(
                                        Insets().appRadiusMin + 4)),
                                padding: EdgeInsets.only(
                                  left: Insets().appPadding / 1.5,
                                  right: Insets().appPadding / 1.5,
                                  top: Responsive.isDesktop(context)
                                      ? Insets().appPadding
                                      : 17,
                                  bottom: Responsive.isDesktop(context)
                                      ? Insets().appPadding
                                      : 17,
                                )),
                            child: Heading6(
                              value: "Upload Documents",
                              color: !upldDocs ? Colors.black : Colors.white,
                            )),
                      ],
                    ),
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Visibility(visible: offDtls, child: (officialDetails())),
                    Visibility(visible: prsnlDtls, child: (personalDetails())),
                    Visibility(visible: conctDtls, child: (contactsDetails())),
                    Visibility(visible: prntsDtls, child: (parentsDetails())),
                    Visibility(visible: acdmcDtls, child: (academicDetails())),
                    Visibility(visible: bnkDtls, child: (bankDetails())),
                    Visibility(
                        visible: othrFacilities, child: (otherFacilities())),
                    Visibility(visible: upldDocs, child: (uploadDocuments()))
                  ],
                ),
              ],
            ),
          )
        ],
      )),
    );
  }
}
