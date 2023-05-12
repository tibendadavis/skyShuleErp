import 'dart:typed_data';
import 'dart:ui' as ui;
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/widgets.dart';
import 'package:path/path.dart';

import 'package:skyconnect_starter/components/header.dart';
import 'package:skyconnect_starter/components/heading2.dart';
import 'package:skyconnect_starter/components/heading3.dart';
import 'package:skyconnect_starter/components/heading4.dart';
import 'package:skyconnect_starter/components/heading_text.dart';
import 'package:skyconnect_starter/components/heading5.dart';
import 'package:skyconnect_starter/components/heading6.dart';
import 'package:skyconnect_starter/components/heading_text.dart';
import 'package:skyconnect_starter/components/inputBigText.comp.dart';
import 'package:skyconnect_starter/components/inputDate.comp.dart';
import 'package:skyconnect_starter/components/inputFile.comp.dart';
import 'package:skyconnect_starter/components/inputMultpleRadio.comp.dart';
import 'package:skyconnect_starter/components/inputOptions.comp.dart';
import 'package:skyconnect_starter/components/inputTextField.comp.dart';
import 'package:qr_flutter/qr_flutter.dart';
import 'package:skyconnect_starter/controllers/responsive.dart';
// import 'package:pdf/pdf.dart';
// import 'package:pdf/widgets.dart' as pw;

import 'package:skyconnect_starter/theme/design.theme.dart';

class patientRegCard extends StatefulWidget {
  const patientRegCard({super.key});

  @override
  State<patientRegCard> createState() => patientRegCardState();
}

class patientRegCardState extends State<patientRegCard>
    with SingleTickerProviderStateMixin {
  bool _menu = false;
  late AnimationController controller;
  late Animation<double> scaleAnimation;
  var _specialGrade;
  var _classlevel;
  double _drawersize = 250;
  GlobalKey<patientRegCardState> myWidgetKey = GlobalKey<patientRegCardState>();
  @override
  void initState() {
    super.initState();

    controller =
        AnimationController(vsync: this, duration: Duration(milliseconds: 700));
    scaleAnimation = CurvedAnimation(
        parent: controller, curve: Curves.fastLinearToSlowEaseIn);

    controller.addListener(() {
      setState(() {});
    });

    controller.forward();
  }

  // Future<void> _printDocument() async {
  //   RenderRepaintBoundary boundary =
  //       myWidgetKey.currentContext!.findRenderObject() as RenderRepaintBoundary;
  //   ui.Image image = await boundary.toImage(pixelRatio: 3.0);
  //   ByteData? byteData = await image.toByteData(format: ui.ImageByteFormat.png);
  //   Uint8List pngBytes = byteData!.buffer.asUint8List();

  //   final pdfDoc = pw.Document();

  //   pdfDoc.addPage(pw.Page(build: (pw.Context context) {
  //     return pw.Center(child: null //pw.Image(image: pw.MemoryImage(pngBytes)),
  //         );
  //   }));

  //   // Print the document
  //   // ...
  // }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Center(
      child: Material(
        color: Colors.transparent,
        child: ScaleTransition(
          scale: scaleAnimation,
          child: Container(
            decoration: ShapeDecoration(
                color: Palette().primaryColorLight,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0))),
            child: SingleChildScrollView(
                child: SizedBox(
              width: 645,
              child: Expanded(
                  child: Column(
                children: [
                  Container(
                    alignment: Alignment.bottomLeft,
                    padding: EdgeInsets.only(
                        top: Insets().appPadding,
                        left: Insets().appPadding * 2,
                        right: Insets().appGap),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Heading2(
                          value: "PATIENT CARD",
                          fontWeight: FontWeight.w700,
                          color: Colors.black,
                        ),
                        SizedBox(
                          height: 10,
                        ),
                      ],
                    ),
                  ),
                  Container(
                    key: myWidgetKey,
                    height: 322,
                    padding: EdgeInsets.only(
                        top: Insets().appPadding,
                        left: Insets().appPadding,
                        right: Insets().appPadding),
                    margin: EdgeInsets.only(
                        top: 0,
                        left: Insets().appPadding,
                        right: Insets().appPadding,
                        bottom: Insets().appPadding),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(5)),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Heading4(
                              value: "Registration Card",
                              color: Colors.grey.shade900,
                              fontWeight: FontWeight.w700,
                            )
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                              height: 200,
                              width: 200,
                              child: FittedBox(
                                  fit: BoxFit.fill,
                                  child: Icon(
                                    Icons.person,
                                    color: Palette().primaryColor,
                                  )),
                            ),
                            SizedBox(
                              width: 300,
                              child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Heading5(
                                          value: "Name",
                                          color: Colors.grey.shade800,
                                          fontWeight: FontWeight.w400,
                                        ),
                                        Heading5(
                                          value: "JOHN SNOW",
                                          color: Colors.grey.shade900,
                                          fontWeight: FontWeight.w700,
                                        )
                                      ],
                                    ),
                                    SizedBox(
                                      height: 2,
                                    ),
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Heading5(
                                          value: "Reg No.",
                                          color: Colors.grey.shade800,
                                          fontWeight: FontWeight.w400,
                                        ),
                                        Heading5(
                                          value: "007",
                                          color: Colors.grey.shade900,
                                          fontWeight: FontWeight.w700,
                                        )
                                      ],
                                    ),
                                    SizedBox(
                                      height: 2,
                                    ),
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Heading5(
                                          value: "Date of Birth",
                                          color: Colors.grey.shade800,
                                          fontWeight: FontWeight.w400,
                                        ),
                                        Heading5(
                                          value: "11/07/1992",
                                          color: Colors.grey.shade900,
                                          fontWeight: FontWeight.w700,
                                        )
                                      ],
                                    ),
                                    SizedBox(
                                      height: 2,
                                    ),
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Heading5(
                                          value: "Gender",
                                          color: Colors.grey.shade800,
                                          fontWeight: FontWeight.w400,
                                        ),
                                        Heading5(
                                          value: "Male",
                                          color: Colors.grey.shade900,
                                          fontWeight: FontWeight.w700,
                                        )
                                      ],
                                    ),
                                    SizedBox(
                                      height: 2,
                                    ),
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Heading5(
                                          value: "Phone",
                                          color: Colors.grey.shade800,
                                          fontWeight: FontWeight.w400,
                                        ),
                                        Heading5(
                                          value: "0123456789",
                                          color: Colors.grey.shade900,
                                          fontWeight: FontWeight.w700,
                                        )
                                      ],
                                    )
                                  ]),
                            )
                          ],
                        ),
                        Spacer(),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            QrImage(
                              data:
                                  'John Snow\n007\n11/07/1992\nMale\n0123456789',
                              version: QrVersions.auto,
                              size: 80.0,
                              gapless: false,
                            ),
                            TextButton(
                              onPressed: () {},
                              child: Heading5(
                                value: 'Print',
                                color: Palette().primaryColor,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  )
                ],
              )),
            )),
          ),
        ),
      ),
    );
  }
}
