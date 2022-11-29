import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class HeadingText extends StatefulWidget {
  final String value;
  final double size;
  final Color? color;
  final TextAlign? align;
  final String? textFormat;
  final FontWeight? fontWeight;
  const HeadingText(
      {Key? key,
      required this.value,
      this.color,
      this.align,
      this.textFormat,
      required this.size,
      this.fontWeight})
      : super(key: key);

  @override
  State<HeadingText> createState() => _HeadingTextState();
}

class _HeadingTextState extends State<HeadingText> {
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
        fontSize: widget.size,
        fontWeight: widget.fontWeight ?? FontWeight.w500,
        color: widget.color,
      ),
    );
  }
}
