import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:skyconnect_starter/components/heading5.dart';
import 'package:skyconnect_starter/components/heading6.dart';
import 'package:skyconnect_starter/components/heading_text.dart';
import 'package:skyconnect_starter/controllers/responsive.dart';
import 'package:skyconnect_starter/theme/design.theme.dart';

class searchInputOptions extends StatefulWidget {
  String? title;
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
  String? opt11;
  String? opt12;
  String? value;
  Function? onSelect;
  searchInputOptions(
      {super.key,
      this.title,
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
      this.opt11,
      this.opt12,
      this.onSelect,
      this.value});

  @override
  State<searchInputOptions> createState() => _searchInputOptionsState();
}

class _searchInputOptionsState extends State<searchInputOptions> {
  var _value;
  void initState() {
    super.initState();

    if (widget.value != null) _value = widget.value!;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        left: Responsive.isDesktop(context) ? 0 : 0,
        right: Insets().appGap,
      ),
      padding: EdgeInsets.only(
        left: Insets().appGap,
      ),
      decoration: BoxDecoration(
          color: Colors.transparent,
          borderRadius: BorderRadius.circular(Insets().appPadding / 2)),
      child: DropdownButton(
        items: [
          if (widget.opt1 != null)
            DropdownMenuItem(
                child: Heading5(
                  value: widget.opt1!,
                  color: Palette().primaryColor,
                ),
                value: widget.opt1!),
          if (widget.opt2 != null)
            DropdownMenuItem(
                child: Heading5(
                  value: widget.opt2!,
                  color: Palette().primaryColor,
                ),
                value: widget.opt2!),
          if (widget.opt3 != null)
            DropdownMenuItem(
                child: Heading5(
                  value: widget.opt3!,
                  color: Palette().primaryColor,
                ),
                value: widget.opt3!),
          if (widget.opt4 != null)
            DropdownMenuItem(
                child: Heading5(
                  value: widget.opt4!,
                  color: Palette().primaryColor,
                ),
                value: widget.opt4!),
          if (widget.opt5 != null)
            DropdownMenuItem(
                child: Heading5(
                  value: widget.opt5!,
                  color: Palette().primaryColor,
                ),
                value: widget.opt5!),
          if (widget.opt6 != null)
            DropdownMenuItem(
                child: Heading5(
                  value: widget.opt6!,
                  color: Palette().primaryColor,
                ),
                value: widget.opt6!),
          if (widget.opt7 != null)
            DropdownMenuItem(
                child: Heading5(
                  value: widget.opt7!,
                  color: Palette().primaryColor,
                ),
                value: widget.opt7!),
          if (widget.opt8 != null)
            DropdownMenuItem(
                child: Heading5(
                  value: widget.opt8!,
                  color: Palette().primaryColor,
                ),
                value: widget.opt8!),
          if (widget.opt9 != null)
            DropdownMenuItem(
                child: Heading5(
                  value: widget.opt9!,
                  color: Palette().primaryColor,
                ),
                value: widget.opt9!),
          if (widget.opt10 != null)
            DropdownMenuItem(
                child: Heading5(
                  value: widget.opt10!,
                  color: Palette().primaryColor,
                ),
                value: widget.opt10!),
          if (widget.opt11 != null)
            DropdownMenuItem(
                child: Heading5(
                  value: widget.opt11!,
                  color: Palette().primaryColor,
                ),
                value: widget.opt11!),
          if (widget.opt12 != null)
            DropdownMenuItem(
                child: Heading5(
                  value: widget.opt12!,
                  color: Palette().primaryColor,
                ),
                value: widget.opt12!),
        ],
        hint: Heading6(value: "${widget.title}", color: Palette().primaryColor),
        value: _value,
        iconEnabledColor: Palette().primaryColor,
        iconDisabledColor: Palette().primaryColor,
        icon: Icon(Icons.keyboard_arrow_down),
        isExpanded: true,
        underline: SizedBox(),
        dropdownColor: Colors.white,
        elevation: 1,
        borderRadius: BorderRadius.circular(Insets().appRadiusMin + 4),
        onChanged: ((value) {
          if (value != null) {
            setState(() {
              _value = value;
              if (widget.onSelect != null) widget.onSelect!(value);
            });
          }
        }),
      ),
    );
  }
}
