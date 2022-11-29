import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class Heading5 extends StatefulWidget {
  final String value;
  final Color? color;
  final TextAlign? align;
  final String? textFormat;
  final FontWeight? fontWeight;
  const Heading5(
      {Key? key,
      required this.value,
      this.color,
      this.align,
      this.textFormat,
      this.fontWeight})
      : super(key: key);

  @override
  State<Heading5> createState() => _Heading5State();
}

class _Heading5State extends State<Heading5> {
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
        fontSize: 14,
        fontWeight: widget.fontWeight ?? FontWeight.w500,
        color: widget.color,
      ),
    );
  }
}
