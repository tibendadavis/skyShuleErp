import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:skyconnect_starter/components/heading5.dart';
import 'package:skyconnect_starter/components/heading_text.dart';
import 'package:skyconnect_starter/controllers/responsive.dart';
import 'package:skyconnect_starter/theme/design.theme.dart';

class inputOptions extends StatefulWidget {
  String? title;
  String? opt1;
  String? opt2;
  String? opt3;
  String? opt4;
  String? opt5;
  String? opt6;
  String? opt7;
  String? hint;

  String? value;
  inputOptions(
      {super.key,
      this.title,
      this.opt1,
      this.opt2,
      this.opt3,
      this.opt4,
      this.opt5,
      this.opt6,
      this.opt7,
      this.hint,
      this.value});

  @override
  State<inputOptions> createState() => _inputOptionsState();
}

class _inputOptionsState extends State<inputOptions> {
  var _value;
  void initState() {
    super.initState();

    if (widget.value != null) _value = widget.value!;
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
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
          if (widget.title != null)
            HeadingText(
                size: Responsive.isDesktop(context) ? 18 : 14,
                value: widget.title!),
          if (widget.opt1 != null)
            SizedBox(
              width: Responsive.isDesktop(context) && widget.title == null
                  ? 190
                  : Responsive.isDesktop(context)
                      ? 400
                      : widget.title == null
                          ? size.width / 2.8
                          : size.width,
              height: Responsive.isDesktop(context) ? 50 : 40,
              child: Container(
                padding: EdgeInsets.only(
                  left: Insets().appPadding / 2,
                  right: Insets().appPadding / 2,
                ),
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey, width: 1.5),
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(Insets().appGap + 4)),
                child: DropdownButton(
                  items: [
                    if (widget.opt1 != null)
                      DropdownMenuItem(
                          child: Heading5(
                            value: widget.opt1!,
                          ),
                          value: widget.opt1!),
                    if (widget.opt2 != null)
                      DropdownMenuItem(
                          child: Heading5(
                            value: widget.opt2!,
                          ),
                          value: widget.opt2!),
                    if (widget.opt3 != null)
                      DropdownMenuItem(
                          child: Heading5(
                            value: widget.opt3!,
                          ),
                          value: widget.opt3!),
                    if (widget.opt4 != null)
                      DropdownMenuItem(
                          child: Heading5(
                            value: widget.opt4!,
                          ),
                          value: widget.opt4!),
                    if (widget.opt5 != null)
                      DropdownMenuItem(
                          child: Heading5(
                            value: widget.opt5!,
                          ),
                          value: widget.opt5!),
                    if (widget.opt6 != null)
                      DropdownMenuItem(
                          child: Heading5(
                            value: widget.opt6!,
                          ),
                          value: widget.opt6!),
                    if (widget.opt7 != null)
                      DropdownMenuItem(
                          child: Heading5(
                            value: widget.opt7!,
                          ),
                          value: widget.opt7!),
                  ],
                  value: _value,
                  isExpanded: true,
                  iconSize: 35,
                  icon: Icon(Icons.keyboard_arrow_down_outlined),
                  underline: SizedBox(),
                  dropdownColor: Colors.white,
                  borderRadius:
                      BorderRadius.circular(Insets().appRadiusMin + 4),
                  hint: Heading5(
                    value: widget.title != null
                        ? "Select ${widget.title}"
                        : widget.hint!,
                  ),
                  onChanged: ((value) {
                    if (value != null) {
                      setState(() {
                        _value = value;
                      });
                    }
                  }),
                ),
              ),
            ),
        ],
      ),
    );
  }
}
