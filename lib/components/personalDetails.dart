import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:skyconnect_starter/components/inputDate.comp.dart';
import 'package:skyconnect_starter/components/inputGender.comp.dart';
import 'package:skyconnect_starter/components/inputOptions.comp.dart';
import 'package:skyconnect_starter/components/inputTextField.comp.dart';
import 'package:skyconnect_starter/controllers/responsive.dart';
import 'package:skyconnect_starter/theme/design.theme.dart';

class personalDetails extends StatefulWidget {
  const personalDetails({super.key});

  @override
  State<personalDetails> createState() => _personalDetailsState();
}

class _personalDetailsState extends State<personalDetails> {
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
          inputTextField(title: "First Name", hintText: "First Name"),
          SizedBox(
            height: Responsive.isDesktop(context) ? 10 : 15,
          ),
          inputTextField(title: "Middle Name", hintText: "Middle Name"),
          SizedBox(
            height: Responsive.isDesktop(context) ? 10 : 15,
          ),
          inputTextField(title: "Last Name", hintText: "Last Name"),
          SizedBox(
            height: Responsive.isDesktop(context) ? 10 : 15,
          ),
          inputDate(heading: "Date of Birth", subheading: "Date of Birth"),
          SizedBox(
            height: Responsive.isDesktop(context) ? 10 : 15,
          ),
          inputGender(),
          SizedBox(
            height: Responsive.isDesktop(context) ? 10 : 15,
          ),
          inputOptions(
            title: "Blood Group",
            opt1: "",
          ),
          SizedBox(
            height: Responsive.isDesktop(context) ? 10 : 15,
          ),
          inputTextField(title: "Birth Place", hintText: "Birth Place"),
          SizedBox(
            height: Responsive.isDesktop(context) ? 10 : 15,
          ),
          inputTextField(title: "Height", hintText: "Height"),
          SizedBox(
            height: Responsive.isDesktop(context) ? 10 : 15,
          ),
          inputTextField(title: "Weight", hintText: "Weight"),
        ],
      ),
    );
  }
}
