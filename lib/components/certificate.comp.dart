import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:skyconnect_starter/components/heading3.dart';
import 'package:skyconnect_starter/components/heading4.dart';
import 'package:skyconnect_starter/components/heading5.dart';
import 'package:skyconnect_starter/controllers/responsive.dart';
import 'package:skyconnect_starter/screens/certificateType.scrn.dart';
import 'package:skyconnect_starter/theme/design.theme.dart';

class certificate extends StatefulWidget {
  final String? certificateType;
  final String? studentName;
  final String? hodSignature;
  final String? teacherSignature;
  final AlignmentGeometry? logoPosition;
  final AlignmentGeometry? userImage;
  final String? contentText;
  final String? lastText;

  const certificate({
    super.key,
    this.certificateType,
    this.studentName,
    this.hodSignature,
    this.teacherSignature,
    this.logoPosition,
    this.contentText,
    this.lastText,
    this.userImage,
  });

  @override
  State<certificate> createState() => _certificateState();
}

class _certificateState extends State<certificate> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: SizedBox(
        height: 800,
        child: Container(
          width: MediaQuery.of(context).size.width,
          margin: EdgeInsets.only(
              left: Responsive.isDesktop(context)
                  ? Insets().appPadding
                  : Insets().appPadding,
              right: Responsive.isDesktop(context)
                  ? Insets().appPadding
                  : Insets().appPadding,
              top: Responsive.isDesktop(context) ? Insets().appPadding : 12,
              bottom: Responsive.isDesktop(context) ? Insets().appPadding : 12),
          padding: EdgeInsets.only(
              left:
                  Responsive.isDesktop(context) ? Insets().appPadding / 2 : 10,
              right:
                  Responsive.isDesktop(context) ? Insets().appPadding / 2 : 10,
              top: Responsive.isDesktop(context) ? Insets().appPadding / 2 : 10,
              bottom:
                  Responsive.isDesktop(context) ? Insets().appPadding / 2 : 10),
          decoration: BoxDecoration(
              border: Border.all(color: Colors.black, width: 3),
              color: Colors.white,
              borderRadius: BorderRadius.circular(0)),
          child: Container(
            padding: EdgeInsets.only(
                left: Responsive.isDesktop(context)
                    ? Insets().appPadding / 2
                    : 10,
                right: Responsive.isDesktop(context)
                    ? Insets().appPadding / 2
                    : 10,
                top:
                    Responsive.isDesktop(context) ? Insets().appPadding / 2 : 5,
                bottom: Responsive.isDesktop(context)
                    ? Insets().appPadding / 2
                    : 10),
            decoration: BoxDecoration(
                border: Border.all(color: Colors.grey, width: 2),
                color: Colors.white,
                borderRadius: BorderRadius.circular(Insets().appGap + 4)),
            child: Container(
              padding: EdgeInsets.only(
                  left:
                      Responsive.isDesktop(context) ? Insets().appPadding : 10,
                  right:
                      Responsive.isDesktop(context) ? Insets().appPadding : 10,
                  top: Responsive.isDesktop(context) ? Insets().appPadding : 5,
                  bottom:
                      Responsive.isDesktop(context) ? Insets().appPadding : 10),
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.black),
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(Insets().appGap + 4)),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Heading3(
                    value: "GENIUS KINGS NURSERY & PRIMARY SCHOOL",
                    fontWeight: FontWeight.w700,
                  ),
                  SizedBox(
                    height: 4,
                  ),
                  Heading5(
                    value: "DSM - Segerea Kwa Bibi, DAR ES SALAAM",
                    fontWeight: FontWeight.w600,
                  ),
                  SizedBox(
                    height: 4,
                  ),
                  Heading5(
                    value: "Email : info@geniuskings.ac.tz",
                    fontWeight: FontWeight.w600,
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Heading4(
                        value: widget.certificateType!,
                        fontWeight: FontWeight.w700,
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Heading4(
                        value: "CERTIFICATE",
                        fontWeight: FontWeight.w700,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Heading4(
                        value: "Certificate No 1",
                        fontWeight: FontWeight.w700,
                      ),
                      Heading4(
                        value: "Phone: 0612345670",
                        fontWeight: FontWeight.w700,
                      ),
                    ],
                  ),
                  Container(
                    alignment: widget.logoPosition!,
                    child: SizedBox(
                      height: 140,
                      child: FittedBox(
                          child: Icon(
                        Icons.school_rounded,
                        size: 50,
                      )),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Heading4(
                        value: "Date: 19/10/2022",
                        fontWeight: FontWeight.w700,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Container(
                    alignment: widget.userImage!,
                    child: SizedBox(
                      height: 140,
                      child: FittedBox(
                          child: Icon(
                        Icons.person,
                        size: 50,
                      )),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      Heading4(
                        value: "This is to Certify that",
                        fontWeight: FontWeight.w700,
                      ),
                      SizedBox(
                        width: 15,
                      ),
                      Heading4(
                        value: widget.studentName!,
                        fontWeight: FontWeight.w700,
                      ),
                      Spacer(),
                    ],
                  ),
                  Row(
                    children: [
                      Heading4(
                        value: widget.studentName!,
                        fontWeight: FontWeight.w700,
                      ),
                      SizedBox(
                        width: 15,
                      ),
                      Heading4(
                        value: "passed",
                        fontWeight: FontWeight.w700,
                      ),
                      Spacer(),
                    ],
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: Heading4(
                          value: widget.contentText!,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Expanded(
                        child: Heading4(
                          value: widget.lastText!,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ],
                  ),
                  Spacer(),
                  Row(
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Heading4(
                            value: widget.hodSignature!,
                            fontWeight: FontWeight.w700,
                          ),
                          Heading4(
                            value: "HOD Signature",
                            fontWeight: FontWeight.w700,
                          ),
                        ],
                      ),
                      Spacer(),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Heading4(
                            value: "Principal",
                            fontWeight: FontWeight.w700,
                          ),
                          Heading4(
                            value: "Genius King Primary & Secondary Schoool",
                            fontWeight: FontWeight.w700,
                          ),
                          Heading4(
                            value: "----------",
                            fontWeight: FontWeight.w700,
                          ),
                        ],
                      ),
                      Spacer(),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Heading4(
                            value: widget.teacherSignature!,
                            fontWeight: FontWeight.w700,
                          ),
                          Heading4(
                            value: "Teacher",
                            fontWeight: FontWeight.w700,
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
