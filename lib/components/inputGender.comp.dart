import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:intl/intl.dart';
import 'package:skyconnect_starter/components/heading2.dart';
import 'package:skyconnect_starter/components/heading3.dart';
import 'package:skyconnect_starter/components/heading5.dart';
import 'package:skyconnect_starter/components/heading_text.dart';
import 'package:skyconnect_starter/components/inputDate.comp.dart';
import 'package:skyconnect_starter/components/inputTextField.comp.dart';
import 'package:skyconnect_starter/controllers/funcs_main.dart';
import 'package:skyconnect_starter/controllers/responsive.dart';
import 'package:skyconnect_starter/theme/design.theme.dart';

class inputGender extends StatefulWidget {
  const inputGender({super.key});

  @override
  State<inputGender> createState() => _inputGenderState();
}

class _inputGenderState extends State<inputGender> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Flex(
        direction:
            Responsive.isDesktop(context) ? Axis.horizontal : Axis.vertical,
        mainAxisAlignment: Responsive.isDesktop(context)
            ? MainAxisAlignment.spaceBetween
            : MainAxisAlignment.start,
        crossAxisAlignment: Responsive.isDesktop(context)
            ? CrossAxisAlignment.center
            : CrossAxisAlignment.start,
        children: [
          HeadingText(
              size: Responsive.isDesktop(context) ? 18 : 14, value: "Gender"),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Radio(
                value: false,
                onChanged: (value) {},
                groupValue: null,
              ),
              Heading5(value: "Male"),
              SizedBox(
                width: 10,
              ),
              Radio(
                value: false,
                onChanged: (value) {},
                groupValue: null,
              ),
              Heading5(value: "Female"),
            ],
          ),
        ],
      ),
    );
  }
}
