import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:skyconnect_starter/components/heading_text.dart';
import 'package:skyconnect_starter/controllers/responsive.dart';
import 'package:skyconnect_starter/theme/design.theme.dart';

// ignore: must_be_immutable
class inputMultipleCheckbox extends StatefulWidget {
  String? heading;
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
  Function? onSelect;
  inputMultipleCheckbox({
    super.key,
    this.heading,
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
    this.onSelect,
  });

  @override
  State<inputMultipleCheckbox> createState() => _inputMultipleCheckboxState();
}

class _inputMultipleCheckboxState extends State<inputMultipleCheckbox> {
  List<String> selectedOptions = [];
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
          if (widget.heading != null)
            HeadingText(
                size: Responsive.isDesktop(context) ? 16 : 14,
                value: "${widget.heading!}"),
          SizedBox(
            width: Responsive.isDesktop(context) ? 400 : size.width,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                if (widget.opt1 != null)
                  CheckboxListTile(
                      activeColor: Palette().primaryColor,
                      dense: true,
                      checkboxShape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(7)),
                      value: selectedOptions.contains(widget.opt1),
                      title: HeadingText(
                          size: Responsive.isDesktop(context) ? 16 : 14,
                          value: widget.opt1!),
                      onChanged: (value) {
                        setState(() {
                          if (value!) {
                            selectedOptions.add(widget.opt1!);
                          } else {
                            selectedOptions.remove(widget.opt1);
                          }
                          widget.onSelect!(selectedOptions);
                        });
                      }),
                if (widget.opt2 != null)
                  CheckboxListTile(
                      activeColor: Palette().primaryColor,
                      dense: true,
                      checkboxShape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(7)),
                      value: selectedOptions.contains(widget.opt2),
                      title: HeadingText(
                          size: Responsive.isDesktop(context) ? 16 : 14,
                          value: widget.opt2!),
                      onChanged: (value) {
                        setState(() {
                          if (value!) {
                            selectedOptions.add(widget.opt2!);
                          } else {
                            selectedOptions.remove(widget.opt2);
                          }
                          widget.onSelect!(selectedOptions);
                        });
                      }),
                if (widget.opt3 != null)
                  CheckboxListTile(
                      activeColor: Palette().primaryColor,
                      dense: true,
                      checkboxShape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(7)),
                      value: selectedOptions.contains(widget.opt3),
                      title: HeadingText(
                          size: Responsive.isDesktop(context) ? 16 : 14,
                          value: widget.opt3!),
                      onChanged: (value) {
                        setState(() {
                          if (value!) {
                            selectedOptions.add(widget.opt3!);
                          } else {
                            selectedOptions.remove(widget.opt3);
                          }
                          widget.onSelect!(selectedOptions);
                        });
                      }),
                if (widget.opt4 != null)
                  CheckboxListTile(
                      activeColor: Palette().primaryColor,
                      dense: true,
                      checkboxShape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(7)),
                      value: selectedOptions.contains(widget.opt4),
                      title: HeadingText(
                          size: Responsive.isDesktop(context) ? 16 : 14,
                          value: widget.opt4!),
                      onChanged: (value) {
                        setState(() {
                          if (value!) {
                            selectedOptions.add(widget.opt4!);
                          } else {
                            selectedOptions.remove(widget.opt4);
                          }
                          widget.onSelect!(selectedOptions);
                        });
                      }),
                if (widget.opt5 != null)
                  CheckboxListTile(
                      activeColor: Palette().primaryColor,
                      dense: true,
                      checkboxShape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(7)),
                      value: selectedOptions.contains(widget.opt5),
                      title: HeadingText(
                          size: Responsive.isDesktop(context) ? 16 : 14,
                          value: widget.opt5!),
                      onChanged: (value) {
                        setState(() {
                          if (value!) {
                            selectedOptions.add(widget.opt5!);
                          } else {
                            selectedOptions.remove(widget.opt5);
                          }
                          widget.onSelect!(selectedOptions);
                        });
                      }),
                if (widget.opt6 != null)
                  CheckboxListTile(
                      activeColor: Palette().primaryColor,
                      dense: true,
                      checkboxShape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(7)),
                      value: selectedOptions.contains(widget.opt6),
                      title: HeadingText(
                          size: Responsive.isDesktop(context) ? 16 : 14,
                          value: widget.opt6!),
                      onChanged: (value) {
                        setState(() {
                          if (value!) {
                            selectedOptions.add(widget.opt6!);
                          } else {
                            selectedOptions.remove(widget.opt6);
                          }
                          widget.onSelect!(selectedOptions);
                        });
                      }),
                if (widget.opt7 != null)
                  CheckboxListTile(
                      activeColor: Palette().primaryColor,
                      dense: true,
                      checkboxShape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(7)),
                      value: selectedOptions.contains(widget.opt7),
                      title: HeadingText(
                          size: Responsive.isDesktop(context) ? 16 : 14,
                          value: widget.opt7!),
                      onChanged: (value) {
                        setState(() {
                          if (value!) {
                            selectedOptions.add(widget.opt7!);
                          } else {
                            selectedOptions.remove(widget.opt7);
                          }
                          widget.onSelect!(selectedOptions);
                        });
                      }),
              ],
            ),
          )
        ],
      ),
    );
  }
}
