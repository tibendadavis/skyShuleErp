import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class Heading1 extends StatefulWidget {
  final String value;
  final Color? color;
  final TextAlign? align;
  final String? textFormat;
  final FontWeight? fontWeight;
  const Heading1(
      {Key? key,
      required this.value,
      this.color,
      this.align,
      this.textFormat,
      this.fontWeight})
      : super(key: key);

  @override
  State<Heading1> createState() => _Heading1State();
}

class _Heading1State extends State<Heading1> {
  @override
  Widget build(BuildContext context) {
    return Text(
      (widget.textFormat == "Capitalize"
              ? widget.value.capitalize!
              : widget.textFormat == "Uppercase"
                  ? widget.value.toUpperCase()
                  : widget.textFormat == "Lowercase"
                      ? widget.value.toLowerCase()
                      : widget.value)
          .tr,
      textAlign: widget.align,
      style: GoogleFonts.openSans(
        fontSize: 35,
        fontWeight: widget.fontWeight ?? FontWeight.w300,
        color: widget.color,
      ),
    );
  }
}
