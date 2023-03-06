import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:skyconnect_starter/components/heading5.dart';
import 'package:skyconnect_starter/components/heading_text.dart';
import 'package:skyconnect_starter/controllers/responsive.dart';

class inputMultipleRadio extends StatefulWidget {
  final String heading;
  String? opt1;
  String? opt2;
  String? opt3;
  String? opt4;
  String? opt5;
  String? opt6;
  String? opt7;
  String? opt8;
  String? opt9;
  String? opt10;
  String? hint;
  bool? onlyTwo;
  bool? value;
  inputMultipleRadio({
    super.key,
    required this.heading,
    this.opt1,
    this.opt2,
    this.opt3,
    this.opt4,
    this.opt5,
    this.opt6,
    this.opt7,
    this.opt8,
    this.opt9,
    this.opt10,
    this.hint,
    this.value,
    this.onlyTwo,
  });

  @override
  State<inputMultipleRadio> createState() => _inputMultipleRadioState();
}

class _inputMultipleRadioState extends State<inputMultipleRadio> {
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
              size: Responsive.isDesktop(context) ? 18 : 14,
              value: "Select ${widget.heading}"),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  if (widget.opt1 != null)
                    Row(
                      children: [
                        Radio(
                          value: false,
                          onChanged: (value) {
                            value = true;
                          },
                          groupValue: null,
                        ),
                        Heading5(value: widget.opt1!),
                      ],
                    ),
                  SizedBox(
                    width:
                        Responsive.isDesktop(context) && widget.onlyTwo == true
                            ? 100
                            : 20,
                  ),
                  if (widget.opt2 != null)
                    Row(
                      children: [
                        Radio(
                          value: widget.value,
                          onChanged: (value) {
                            widget.value = true;
                          },
                          groupValue: null,
                        ),
                        Heading5(value: widget.opt2!),
                      ],
                    ),
                  SizedBox(
                    width: 10,
                  ),
                  if (widget.opt3 != null)
                    Row(
                      children: [
                        Radio(
                          value: widget.value,
                          onChanged: (value) {},
                          groupValue: null,
                        ),
                        Heading5(value: widget.opt3!),
                      ],
                    ),
                ],
              ),
              SizedBox(
                height: 5,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  if (widget.opt4 != null)
                    Row(
                      children: [
                        Radio(
                          value: widget.value,
                          onChanged: (value) {},
                          groupValue: null,
                        ),
                        Heading5(value: widget.opt4!),
                      ],
                    ),
                  SizedBox(
                    width: 10,
                  ),
                  if (widget.opt5 != null)
                    Row(
                      children: [
                        Radio(
                          value: widget.value,
                          onChanged: (value) {},
                          groupValue: null,
                        ),
                        Heading5(value: widget.opt5!),
                      ],
                    ),
                  SizedBox(
                    width: 10,
                  ),
                  if (widget.opt6 != null)
                    Row(
                      children: [
                        Radio(
                          value: widget.value,
                          onChanged: (value) {},
                          groupValue: null,
                        ),
                        Heading5(value: widget.opt6!),
                      ],
                    ),
                ],
              ),
              SizedBox(
                height: 5,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  if (widget.opt7 != null)
                    Row(
                      children: [
                        Radio(
                          value: widget.value,
                          onChanged: (value) {},
                          groupValue: null,
                        ),
                        Heading5(value: widget.opt7!),
                      ],
                    ),
                  SizedBox(
                    width: 10,
                  ),
                  if (widget.opt8 != null)
                    Row(
                      children: [
                        Radio(
                          value: widget.value,
                          onChanged: (value) {},
                          groupValue: null,
                        ),
                        Heading5(value: widget.opt8!),
                      ],
                    ),
                  SizedBox(
                    width: 10,
                  ),
                  if (widget.opt8 != null)
                    Row(
                      children: [
                        Radio(
                          value: widget.value,
                          onChanged: (value) {},
                          groupValue: null,
                        ),
                        Heading5(value: widget.opt9!),
                      ],
                    ),
                ],
              ),
            ],
          )
        ],
      ),
    );
  }
}
