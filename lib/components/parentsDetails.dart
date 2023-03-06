import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:skyconnect_starter/components/heading4.dart';
import 'package:skyconnect_starter/components/heading5.dart';
import 'package:skyconnect_starter/components/heading_text.dart';
import 'package:skyconnect_starter/components/inputBigText.comp.dart';
import 'package:skyconnect_starter/components/inputFile.comp.dart';
import 'package:skyconnect_starter/components/inputOptions.comp.dart';
import 'package:skyconnect_starter/components/inputTextField.comp.dart';
import 'package:skyconnect_starter/controllers/responsive.dart';
import 'package:skyconnect_starter/theme/design.theme.dart';

class parentsDetails extends StatefulWidget {
  const parentsDetails({super.key});

  @override
  State<parentsDetails> createState() => _parentsDetailsState();
}

class _parentsDetailsState extends State<parentsDetails> {
  var _academicYear;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: !Responsive.isDesktop(context)
          ? MediaQuery.of(context).size.width
          : MediaQuery.of(context).size.width / 1.8,
      padding: EdgeInsets.only(
        top: Responsive.isDesktop(context) ? Insets().appPadding * 2 : 14,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          inputTextField(
              title: "Parents Full Name", hintText: "Parents Full Name"),
          SizedBox(
            height: Responsive.isDesktop(context) ? 10 : 15,
          ),
          inputTextField(title: "Parents Email", hintText: "Parents Email"),
          SizedBox(
            height: Responsive.isDesktop(context) ? 10 : 15,
          ),
          inputTextField(
              title: "Parents Phone No.", hintText: "Parents Phone No."),
          SizedBox(
            height: Responsive.isDesktop(context) ? 10 : 15,
          ),
          inputTextField(title: "Parents Mobile No.", hintText: "TZ +255"),
          SizedBox(
            height: Responsive.isDesktop(context) ? 10 : 15,
          ),
          inputFile(heading: "Parent's Image  Upload"),
          SizedBox(
            height: Responsive.isDesktop(context) ? 10 : 15,
          ),
          inputBigText(
              title: "Parents Present Address",
              hintText: "Parents Present Address"),
          SizedBox(
            height: Responsive.isDesktop(context) ? 10 : 15,
          ),
          inputOptions(
            title: "Country",
            opt1: "",
          ),
          SizedBox(
            height: Responsive.isDesktop(context) ? 10 : 15,
          ),
          inputOptions(
            title: "State",
            opt1: "",
          ),
          SizedBox(
            height: Responsive.isDesktop(context) ? 10 : 15,
          ),
          inputOptions(
            title: "City",
            opt1: "",
          ),
        ],
      ),
    );
  }
}
