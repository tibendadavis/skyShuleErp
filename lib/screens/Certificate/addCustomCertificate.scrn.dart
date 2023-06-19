import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:skyconnect_starter/components/heading2.dart';
import 'package:skyconnect_starter/components/heading3.dart';
import 'package:skyconnect_starter/components/heading_text.dart';
import 'package:skyconnect_starter/components/heading5.dart';
import 'package:skyconnect_starter/components/inputBigText.comp.dart';
import 'package:skyconnect_starter/components/inputOptions.comp.dart';
import 'package:skyconnect_starter/components/inputTextField.comp.dart';
import 'package:skyconnect_starter/controllers/responsive.dart';
import 'package:skyconnect_starter/theme/design.theme.dart';

class addCustomCertificate extends StatefulWidget {
  const addCustomCertificate({super.key});

  @override
  State<addCustomCertificate> createState() => _addCustomCertificateState();
}

class _addCustomCertificateState extends State<addCustomCertificate>
    with SingleTickerProviderStateMixin {
  late AnimationController controller;
  late Animation<double> scaleAnimation;

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
                color: Colors.white,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15.0))),
            child: SingleChildScrollView(
                child: SizedBox(
              width: Responsive.isDesktop(context)
                  ? size.width / 2
                  : size.width - 20,
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
                          value: "CUSTOM CERTIFICATE",
                          fontWeight: FontWeight.w700,
                          color: Colors.black,
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        const Heading3(
                          value: "Custom Certificate Information",
                          fontWeight: FontWeight.w600,
                          color: Colors.black,
                        ),
                      ],
                    ),
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width,
                    padding: EdgeInsets.only(
                        top: Insets().appPadding,
                        bottom: Insets().appPadding,
                        left: Insets().appPadding,
                        right: Insets().appPadding),
                    margin: EdgeInsets.only(
                        top: 0,
                        left: Insets().appPadding,
                        right: Insets().appPadding,
                        bottom: Insets().appPadding),
                    decoration: BoxDecoration(
                        color: Palette().primaryColorLight,
                        borderRadius:
                            BorderRadius.circular(Insets().appRadius)),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          width: !Responsive.isDesktop(context)
                              ? MediaQuery.of(context).size.width
                              : MediaQuery.of(context).size.width / 1.8,
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
                              inputTextField(
                                  title: "Certificate SubType",
                                  hintText: "Certificate SubType"),
                              SizedBox(
                                height: Responsive.isDesktop(context) ? 12 : 15,
                              ),
                              Flex(
                                direction: Responsive.isDesktop(context)
                                    ? Axis.horizontal
                                    : Axis.vertical,
                                mainAxisAlignment: Responsive.isDesktop(context)
                                    ? MainAxisAlignment.spaceBetween
                                    : MainAxisAlignment.start,
                                crossAxisAlignment:
                                    Responsive.isDesktop(context)
                                        ? CrossAxisAlignment.center
                                        : CrossAxisAlignment.start,
                                children: [
                                  HeadingText(
                                      size: Responsive.isDesktop(context)
                                          ? 18
                                          : 14,
                                      value: "Select Logo Position"),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Radio(
                                        value: false,
                                        onChanged: (value) {},
                                        groupValue: null,
                                      ),
                                      Heading5(value: "Left"),
                                      SizedBox(
                                        width: 10,
                                      ),
                                      Radio(
                                        value: false,
                                        onChanged: (value) {},
                                        groupValue: null,
                                      ),
                                      Heading5(value: "Center"),
                                      SizedBox(
                                        width: 10,
                                      ),
                                      Radio(
                                        value: false,
                                        onChanged: (value) {},
                                        groupValue: null,
                                      ),
                                      Heading5(value: "Right"),
                                    ],
                                  )
                                ],
                              ),
                              SizedBox(
                                height: Responsive.isDesktop(context) ? 12 : 15,
                              ),
                              Flex(
                                direction: Responsive.isDesktop(context)
                                    ? Axis.horizontal
                                    : Axis.vertical,
                                mainAxisAlignment: Responsive.isDesktop(context)
                                    ? MainAxisAlignment.spaceBetween
                                    : MainAxisAlignment.start,
                                crossAxisAlignment:
                                    Responsive.isDesktop(context)
                                        ? CrossAxisAlignment.center
                                        : CrossAxisAlignment.start,
                                children: [
                                  HeadingText(
                                      size: Responsive.isDesktop(context)
                                          ? 18
                                          : 14,
                                      value: "Mobile No. Position"),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Radio(
                                        value: false,
                                        onChanged: (value) {},
                                        groupValue: null,
                                      ),
                                      Heading5(value: "Left"),
                                      SizedBox(
                                        width: 10,
                                      ),
                                      Radio(
                                        value: false,
                                        onChanged: (value) {},
                                        groupValue: null,
                                      ),
                                      Heading5(value: "Center"),
                                      SizedBox(
                                        width: 10,
                                      ),
                                      Radio(
                                        value: false,
                                        onChanged: (value) {},
                                        groupValue: null,
                                      ),
                                      Heading5(value: "Right"),
                                    ],
                                  )
                                ],
                              ),
                              SizedBox(
                                height: Responsive.isDesktop(context) ? 12 : 15,
                              ),
                              Flex(
                                direction: Responsive.isDesktop(context)
                                    ? Axis.horizontal
                                    : Axis.vertical,
                                mainAxisAlignment: Responsive.isDesktop(context)
                                    ? MainAxisAlignment.spaceBetween
                                    : MainAxisAlignment.start,
                                crossAxisAlignment:
                                    Responsive.isDesktop(context)
                                        ? CrossAxisAlignment.center
                                        : CrossAxisAlignment.start,
                                children: [
                                  HeadingText(
                                      size: Responsive.isDesktop(context)
                                          ? 18
                                          : 14,
                                      value: "Address Position"),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Radio(
                                        value: false,
                                        onChanged: (value) {},
                                        groupValue: null,
                                      ),
                                      Heading5(value: "Left"),
                                      SizedBox(
                                        width: 10,
                                      ),
                                      Radio(
                                        value: false,
                                        onChanged: (value) {},
                                        groupValue: null,
                                      ),
                                      Heading5(value: "Center"),
                                      SizedBox(
                                        width: 10,
                                      ),
                                      Radio(
                                        value: false,
                                        onChanged: (value) {},
                                        groupValue: null,
                                      ),
                                      Heading5(value: "Right"),
                                    ],
                                  )
                                ],
                              ),
                              SizedBox(
                                height: Responsive.isDesktop(context) ? 12 : 15,
                              ),
                              Flex(
                                direction: Responsive.isDesktop(context)
                                    ? Axis.horizontal
                                    : Axis.vertical,
                                mainAxisAlignment: Responsive.isDesktop(context)
                                    ? MainAxisAlignment.spaceBetween
                                    : MainAxisAlignment.start,
                                crossAxisAlignment:
                                    Responsive.isDesktop(context)
                                        ? CrossAxisAlignment.center
                                        : CrossAxisAlignment.start,
                                children: [
                                  HeadingText(
                                      size: Responsive.isDesktop(context)
                                          ? 18
                                          : 14,
                                      value: "HOD Signature Position"),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Radio(
                                        value: false,
                                        onChanged: (value) {},
                                        groupValue: null,
                                      ),
                                      Heading5(value: "Left"),
                                      SizedBox(
                                        width: 10,
                                      ),
                                      Radio(
                                        value: false,
                                        onChanged: (value) {},
                                        groupValue: null,
                                      ),
                                      Heading5(value: "Center"),
                                      SizedBox(
                                        width: 10,
                                      ),
                                      Radio(
                                        value: false,
                                        onChanged: (value) {},
                                        groupValue: null,
                                      ),
                                      Heading5(value: "Right"),
                                    ],
                                  )
                                ],
                              ),
                              SizedBox(
                                height: Responsive.isDesktop(context) ? 12 : 15,
                              ),
                              Flex(
                                direction: Responsive.isDesktop(context)
                                    ? Axis.horizontal
                                    : Axis.vertical,
                                mainAxisAlignment: Responsive.isDesktop(context)
                                    ? MainAxisAlignment.spaceBetween
                                    : MainAxisAlignment.start,
                                crossAxisAlignment:
                                    Responsive.isDesktop(context)
                                        ? CrossAxisAlignment.center
                                        : CrossAxisAlignment.start,
                                children: [
                                  HeadingText(
                                      size: Responsive.isDesktop(context)
                                          ? 18
                                          : 14,
                                      value: "Teacher Signature Position"),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Radio(
                                        value: false,
                                        onChanged: (value) {},
                                        groupValue: null,
                                      ),
                                      Heading5(value: "Left"),
                                      SizedBox(
                                        width: 10,
                                      ),
                                      Radio(
                                        value: false,
                                        onChanged: (value) {},
                                        groupValue: null,
                                      ),
                                      Heading5(value: "Center"),
                                      SizedBox(
                                        width: 10,
                                      ),
                                      Radio(
                                        value: false,
                                        onChanged: (value) {},
                                        groupValue: null,
                                      ),
                                      Heading5(value: "Right"),
                                    ],
                                  )
                                ],
                              ),
                              SizedBox(
                                height: Responsive.isDesktop(context) ? 12 : 15,
                              ),
                              Flex(
                                direction: Responsive.isDesktop(context)
                                    ? Axis.horizontal
                                    : Axis.vertical,
                                mainAxisAlignment: Responsive.isDesktop(context)
                                    ? MainAxisAlignment.spaceBetween
                                    : MainAxisAlignment.start,
                                crossAxisAlignment:
                                    Responsive.isDesktop(context)
                                        ? CrossAxisAlignment.center
                                        : CrossAxisAlignment.start,
                                children: [
                                  HeadingText(
                                      size: Responsive.isDesktop(context)
                                          ? 18
                                          : 14,
                                      value: "Principal Signature Position"),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Radio(
                                        value: false,
                                        onChanged: (value) {},
                                        groupValue: null,
                                      ),
                                      Heading5(value: "Left"),
                                      SizedBox(
                                        width: 10,
                                      ),
                                      Radio(
                                        value: false,
                                        onChanged: (value) {},
                                        groupValue: null,
                                      ),
                                      Heading5(value: "Center"),
                                      SizedBox(
                                        width: 10,
                                      ),
                                      Radio(
                                        value: false,
                                        onChanged: (value) {},
                                        groupValue: null,
                                      ),
                                      Heading5(value: "Right"),
                                    ],
                                  )
                                ],
                              ),
                              SizedBox(
                                height: Responsive.isDesktop(context) ? 12 : 15,
                              ),
                              inputOptions(
                                title: "Certifiacte Type",
                                opt1: "Default",
                              ),
                              SizedBox(
                                height: Responsive.isDesktop(context) ? 10 : 15,
                              ),
                              inputBigText(
                                  title: "Institution Address",
                                  hintText: "Institution Address"),
                              SizedBox(
                                height: Responsive.isDesktop(context) ? 10 : 15,
                              ),
                              inputTextField(
                                  title: "District", hintText: "District"),
                              SizedBox(
                                height: Responsive.isDesktop(context) ? 10 : 15,
                              ),
                              inputTextField(
                                  title: "PinCode", hintText: "PinCode"),
                              SizedBox(
                                height: Responsive.isDesktop(context) ? 10 : 15,
                              ),
                              inputTextField(
                                  title: "Status", hintText: "Status"),
                              SizedBox(
                                height: Responsive.isDesktop(context) ? 10 : 15,
                              ),
                              inputOptions(
                                title: "HOD Signature",
                                opt1: "",
                              ),
                              SizedBox(
                                height: Responsive.isDesktop(context) ? 10 : 15,
                              ),
                              inputOptions(
                                title: "Teacher",
                                opt1: "",
                              ),
                              SizedBox(
                                height: Responsive.isDesktop(context) ? 10 : 15,
                              ),
                              inputOptions(
                                title: "Principal",
                                opt1: "",
                              ),
                              SizedBox(
                                height: Responsive.isDesktop(context) ? 10 : 15,
                              ),
                              inputBigText(
                                  title: "Content Line",
                                  hintText: "Content Lines"),
                              SizedBox(
                                height: Responsive.isDesktop(context) ? 10 : 15,
                              ),
                              inputTextField(
                                  title: "Certificate Heading",
                                  hintText: "Certificate Heading"),
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
                                crossAxisAlignment:
                                    Responsive.isDesktop(context)
                                        ? CrossAxisAlignment.center
                                        : CrossAxisAlignment.start,
                                children: [
                                  SizedBox(
                                    width: Responsive.isDesktop(context)
                                        ? 400
                                        : size.width,
                                    height:
                                        Responsive.isDesktop(context) ? 50 : 40,
                                    child: ElevatedButton(
                                      style: ElevatedButton.styleFrom(
                                          padding: EdgeInsets.only(
                                            left: Insets().appPadding / 2,
                                            right: Insets().appPadding / 2,
                                          ),
                                          backgroundColor:
                                              Palette().primaryColor,
                                          elevation: 0,
                                          shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(
                                                      Insets().appPadding /
                                                          1.5))),
                                      onPressed: () {},
                                      child: Center(
                                          child: HeadingText(
                                        size: Responsive.isDesktop(context)
                                            ? 18
                                            : 14,
                                        value: "Save",
                                      )),
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: Responsive.isDesktop(context) ? 10 : 15,
                              ),
                            ],
                          ),
                        ),
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
