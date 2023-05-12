import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class Heading4 extends StatefulWidget {
  final String value;
  final Paint? fpaint;
  final Paint? bpaint;
  final Color? color;
  final TextAlign? align;
  final String? textFormat;
  final FontWeight? fontWeight;
  const Heading4(
      {Key? key,
      required this.value,
      this.color,
      this.align,
      this.fpaint,
      this.bpaint,
      this.textFormat,
      this.fontWeight})
      : super(key: key);

  @override
  State<Heading4> createState() => _Heading4State();
}

class _Heading4State extends State<Heading4> {
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
          fontSize: 18,
          fontWeight: widget.fontWeight ?? FontWeight.w500,
          color: widget.color,
          height: 1.2,
          foreground: widget.fpaint != null ? widget.fpaint : null),
    );
  }
}
