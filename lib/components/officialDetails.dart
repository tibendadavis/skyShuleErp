import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:skyconnect_starter/components/heading4.dart';
import 'package:skyconnect_starter/components/heading5.dart';
import 'package:skyconnect_starter/components/heading6.dart';
import 'package:skyconnect_starter/components/heading_text.dart';
import 'package:skyconnect_starter/components/inputDate.comp.dart';
import 'package:skyconnect_starter/components/inputMultpleRadio.comp.dart';
import 'package:skyconnect_starter/components/inputOptions.comp.dart';
import 'package:skyconnect_starter/components/inputTextField.comp.dart';
import 'package:skyconnect_starter/controllers/responsive.dart';
import 'package:skyconnect_starter/theme/design.theme.dart';

class officialDetails extends StatefulWidget {
  const officialDetails({super.key});

  @override
  State<officialDetails> createState() => _officialDetailsState();
}

class _officialDetailsState extends State<officialDetails> {
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
          inputMultipleRadio(
            heading: "if Student is New",
            opt1: "Is a new Student",
            opt2: "Not a new Student",
          ),
          SizedBox(
            height: Responsive.isDesktop(context) ? 10 : 15,
          ),
          inputTextField(
              title: "Application No.", hintText: "Application Number"),
          SizedBox(
            height: Responsive.isDesktop(context) ? 10 : 15,
          ),
          inputOptions(
            title: "Academic Year",
            opt1: "2019",
            opt2: "2020",
            opt3: "2021",
            opt4: "2022",
            opt5: "2023",
          ),
          SizedBox(
            height: Responsive.isDesktop(context) ? 10 : 15,
          ),
          inputDate(
              heading: "Date of Admission", subheading: "Date of Admission"),
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
        ],
      ),
    );
  }
}
