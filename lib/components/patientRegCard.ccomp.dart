import 'package:flutter/material.dart';

import 'package:skyconnect_starter/components/heading2.dart';
import 'package:skyconnect_starter/components/heading4.dart';
import 'package:skyconnect_starter/components/heading5.dart';

import 'package:skyconnect_starter/theme/design.theme.dart';

class patientRegCard extends StatefulWidget {
  const patientRegCard({super.key});

  @override
  State<patientRegCard> createState() => patientRegCardState();
}

class patientRegCardState extends State<patientRegCard>
    with SingleTickerProviderStateMixin {
  late AnimationController controller;
  late Animation<double> scaleAnimation;

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
                            // QrImage(
                            //   data:
                            //       'John Snow\n007\n11/07/1992\nMale\n0123456789',
                            //   version: QrVersions.auto,
                            //   size: 80.0,
                            //   gapless: false,
                            // ),
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
