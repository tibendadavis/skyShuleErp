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
  Function? onSelect;
  inputGender({super.key, this.onSelect});

  @override
  State<inputGender> createState() => _inputGenderState();
}

class _inputGenderState extends State<inputGender> {
  var gender;

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
              size: Responsive.isDesktop(context) ? 15 : 14, value: "Gender"),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Radio(
                activeColor: Palette().primaryColor,
                value: "Male",
                onChanged: (value) {
                  setState(() {
                    gender = value;
                    widget.onSelect!(value);
                  });
                },
                groupValue: gender,
              ),
              Heading5(value: "Male"),
              SizedBox(
                width: 10,
              ),
              Radio(
                activeColor: Palette().primaryColor,
                value: "Female",
                onChanged: (value) {
                  setState(() {
                    gender = value;
                    widget.onSelect!(value);
                  });
                },
                groupValue: gender,
              ),
              Heading5(value: "Female"),
            ],
          ),
        ],
      ),
    );
  }
}
