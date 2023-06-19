import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:skyconnect_starter/controllers/responsive.dart';
import 'package:skyconnect_starter/theme/design.theme.dart';

// ignore: must_be_immutable
class inputTextOnly extends StatefulWidget {
  double? size;
  String? value;
  bool? hide;
  String? type;
  final String hintText;
  inputTextOnly(
      {super.key,
      required this.hintText,
      this.value,
      this.type,
      this.hide,
      this.size});

  @override
  State<inputTextOnly> createState() => _inputTextOnlyState();
}

class _inputTextOnlyState extends State<inputTextOnly> {
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
          SizedBox(
            width: Responsive.isDesktop(context) ? widget.size! : widget.size,
            height: Responsive.isDesktop(context) ? 40 : 40,
            child: Container(
              alignment: Alignment.centerLeft,
              padding: EdgeInsets.only(
                left: Insets().appPadding / 2,
                right: Insets().appPadding / 2,
              ),
              decoration: BoxDecoration(
                  border: Border.all(width: 1, color: Colors.grey),
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(Insets().appPadding / 2)),
              child: TextFormField(
                  keyboardType: widget.type == "number"
                      ? TextInputType.number
                      : widget.type == "phone"
                          ? TextInputType.phone
                          : widget.type == "email"
                              ? TextInputType.emailAddress
                              : widget.type == "url"
                                  ? TextInputType.url
                                  : widget.type == "datetime"
                                      ? TextInputType.datetime
                                      : widget.type == "address"
                                          ? TextInputType.streetAddress
                                          : widget.type == "multline"
                                              ? TextInputType.multiline
                                              : widget.type == "name"
                                                  ? TextInputType.name
                                                  : null,
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
