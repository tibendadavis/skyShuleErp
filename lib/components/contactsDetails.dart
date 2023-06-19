import 'package:flutter/material.dart';
import 'package:skyconnect_starter/components/heading_text.dart';
import 'package:skyconnect_starter/components/inputBigText.comp.dart';
import 'package:skyconnect_starter/components/inputOptions.comp.dart';
import 'package:skyconnect_starter/components/inputTextField.comp.dart';
import 'package:skyconnect_starter/controllers/responsive.dart';
import 'package:skyconnect_starter/theme/design.theme.dart';

class contactsDetails extends StatefulWidget {
  const contactsDetails({super.key});

  @override
  State<contactsDetails> createState() => _contactsDetailsState();
}

class _contactsDetailsState extends State<contactsDetails> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(
        top: Responsive.isDesktop(context) ? Insets().appPadding * 2 : 14,
      ),
      child: Flex(
        direction:
            Responsive.isDesktop(context) ? Axis.horizontal : Axis.vertical,
        mainAxisAlignment: Responsive.isDesktop(context)
            ? MainAxisAlignment.spaceBetween
            : MainAxisAlignment.start,
        crossAxisAlignment: Responsive.isDesktop(context)
            ? CrossAxisAlignment.start
            : CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: Responsive.isDesktop(context) ? null : 620,
            width: Responsive.isDesktop(context)
                ? MediaQuery.of(context).size.width / 2.7
                : null,
            child: Expanded(
              flex: 8,
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      padding: EdgeInsets.only(
                        top: Responsive.isDesktop(context)
                            ? Insets().appPadding / 1.2
                            : 10,
                        bottom: Responsive.isDesktop(context)
                            ? Insets().appPadding / 1.2
                            : 12,
                      ),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius:
                              BorderRadius.circular(Insets().appRadius / 2)),
                      child: Center(
                          child: HeadingText(
                        size: 16,
                        value: "Present Address",
                        fontWeight: FontWeight.bold,
                      )),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    inputBigText(
                        title: "Present Address", hintText: "Present Address"),
                    SizedBox(
                      height: 10,
                    ),
                    inputOptions(
                      title: "Country",
                      opt1: "",
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    inputOptions(
                      title: "State",
                      opt1: "",
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    inputOptions(
                      title: "City",
                      opt1: "",
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    inputTextField(
                        title: "PinCode/Zip", hintText: "PinCode/Zip"),
                    SizedBox(
                      height: 10,
                    ),
                    inputTextField(title: "Phone No.", hintText: "Phone No."),
                    SizedBox(
                      height: 10,
                    ),
                    inputTextField(
                        title: "Registered\nMobile No..", hintText: "TZ +255"),
                  ]),
            ),
          ),
          SizedBox(
            height: Responsive.isDesktop(context) ? 450 : 0,
            child: Expanded(
              flex: 1,
              child: Center(
                  child: SizedBox(
                height: Responsive.isDesktop(context) ? 450 : 0,
                child: VerticalDivider(
                  thickness: 2,
                  color: Colors.grey,
                ),
              )),
            ),
          ),
          SizedBox(
            width: Responsive.isDesktop(context)
                ? MediaQuery.of(context).size.width / 2.7
                : null,
            height: Responsive.isDesktop(context) ? null : 620,
            child: Expanded(
              flex: 8,
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      padding: EdgeInsets.only(
                        top: Responsive.isDesktop(context)
                            ? Insets().appPadding / 1.2
                            : 12,
                        bottom: Responsive.isDesktop(context)
                            ? Insets().appPadding / 1.2
                            : 12,
                      ),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius:
                              BorderRadius.circular(Insets().appRadius / 2)),
                      child: Center(
                          child: HeadingText(
                        size: 16,
                        value: "Permanent Address",
                        fontWeight: FontWeight.bold,
                      )),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    inputBigText(
                        title: "Permanent\nAddress",
                        hintText: "Permanent Address"),
                    SizedBox(
                      height: 10,
                    ),
                    inputOptions(
                      title: "Country",
                      opt1: "",
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    inputOptions(
                      title: "State",
                      opt1: "",
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    inputOptions(
                      title: "City",
                      opt1: "",
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    inputTextField(
                        title: "PinCode/Zip", hintText: "PinCode/Zip"),
                    SizedBox(
                      height: 10,
                    ),
                    inputTextField(title: "Phone No.", hintText: "Phone No."),
                    SizedBox(
                      height: 10,
                    ),
                    inputTextField(
                        title: "Registered\nMobile No..", hintText: "TZ +255"),
                  ]),
            ),
          ),
        ],
      ),
    );
  }
}
