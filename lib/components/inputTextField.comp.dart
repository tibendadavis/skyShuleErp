import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:skyconnect_starter/components/heading_text.dart';
import 'package:skyconnect_starter/controllers/responsive.dart';
import 'package:skyconnect_starter/theme/design.theme.dart';

class inputTextField extends StatefulWidget {
  final String title;
  String? value;
  bool? hide;
  final String hintText;
  inputTextField(
      {super.key,
      required this.title,
      required this.hintText,
      this.value,
      this.hide});

  @override
  State<inputTextField> createState() => _inputTextFieldState();
}

class _inputTextFieldState extends State<inputTextField> {
  TextEditingController value = TextEditingController();
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    value.text = "";
    if (widget.value != null) value.text = widget.value!;
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
          HeadingText(
              size: Responsive.isDesktop(context) ? 18 : 14,
              value: widget.title),
          SizedBox(
            width: Responsive.isDesktop(context) ? 400 : size.width,
            height: Responsive.isDesktop(context) ? 50 : 40,
            child: Container(
              alignment: Alignment.centerLeft,
              padding: EdgeInsets.only(
                left: Insets().appPadding / 2,
                right: Insets().appPadding / 2,
              ),
              decoration: BoxDecoration(
                  border: Border.all(width: 1.5, color: Colors.grey),
                  color: Colors.white,
                  borderRadius:
                      BorderRadius.circular(Insets().appPadding / 1.5)),
              child: TextFormField(
                  style: GoogleFonts.openSans(
                    fontSize: Responsive.isDesktop(context) ? 16 : 14,
                  ),
                  obscureText: widget.hide != null ? widget.hide! : false,
                  controller: value,
                  onChanged: (val) {
                    widget.value = val;
                  },
                  onEditingComplete: () {
                    setState(() {
                      value.text = widget.value!;
                    });
                    print(value.text);
                  },
                  textAlignVertical: TextAlignVertical.center,
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: widget.hintText,
                  )),
            ),
          ),
        ],
      ),
    );
  }
}
