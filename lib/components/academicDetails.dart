import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:skyconnect_starter/components/heading4.dart';
import 'package:skyconnect_starter/components/heading5.dart';
import 'package:skyconnect_starter/components/heading_text.dart';
import 'package:skyconnect_starter/components/inputBigText.comp.dart';
import 'package:skyconnect_starter/components/inputTextField.comp.dart';
import 'package:skyconnect_starter/controllers/responsive.dart';
import 'package:skyconnect_starter/theme/design.theme.dart';

class academicDetails extends StatefulWidget {
  const academicDetails({super.key});

  @override
  State<academicDetails> createState() => _academicDetailsState();
}

class _academicDetailsState extends State<academicDetails> {
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
          inputTextField(title: "Past School", hintText: "Past School"),
          SizedBox(
            height: Responsive.isDesktop(context) ? 10 : 15,
          ),
          inputBigText(title: "School Address", hintText: "School Address"),
          SizedBox(
            height: Responsive.isDesktop(context) ? 10 : 15,
          ),
          inputTextField(
              title: "Past Qualification (%)",
              hintText: "Past Qualification (%)"),
        ],
      ),
    );
  }
}
