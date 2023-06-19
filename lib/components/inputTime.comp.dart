import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:skyconnect_starter/components/heading_text.dart';
import 'package:skyconnect_starter/controllers/funcs_main.dart';
import 'package:skyconnect_starter/controllers/responsive.dart';
import 'package:skyconnect_starter/theme/design.theme.dart';

// ignore: must_be_immutable
class inputTime1 extends StatefulWidget {
  final String heading;
  final String subheading1;
  String? subheading2;
  String? starting;
  String? finishing;
  String? type;
  inputTime1(
      {super.key,
      required this.heading,
      required this.subheading1,
      this.subheading2,
      this.starting,
      this.type,
      this.finishing});

  @override
  State<inputTime1> createState() => _inputTime1State();
}

class _inputTime1State extends State<inputTime1> {
  TextEditingController _starting = TextEditingController();
  TextEditingController _finishing = TextEditingController();
  void initState() {
    super.initState();

    if (widget.starting != null) _starting.text = widget.starting!;
    if (widget.finishing != null) _finishing.text = widget.finishing!;
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
              size: Responsive.isDesktop(context) ? 15 : 14,
              value: widget.heading),
          SizedBox(
            width: Responsive.isDesktop(context) ? 400 : size.width,
            height: Responsive.isDesktop(context) ? 40 : 40,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  width: Responsive.isDesktop(context) &&
                          widget.subheading2 == null
                      ? 400
                      : Responsive.isDesktop(context)
                          ? 190
                          : widget.subheading2 == null
                              ? size.width - 100
                              : size.width / 2.8,
                  alignment: Alignment.centerLeft,
                  padding: EdgeInsets.only(
                    left: Insets().appPadding / 2,
                    right: Insets().appPadding / 2,
                  ),
                  decoration: BoxDecoration(
                      border: Border.all(width: 1.5, color: Colors.grey),
                      color: Colors.white,
                      borderRadius:
                          BorderRadius.circular(Insets().appPadding / 2)),
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
                      controller: _starting,
                      readOnly: true,
                      onTap: () async {
                        final time = await Funcs().selectTime(context: context);

                        setState(() {
                          _starting.text = time!.format(context);
                        });
                      },
                      textAlignVertical: TextAlignVertical.center,
                      decoration: InputDecoration(
                        suffixIcon: Icon(
                          Icons.timer,
                        ),
                        border: InputBorder.none,
                        hintText: widget.subheading1,
                      )),
                ),
                if (widget.subheading2 != null)
                  Container(
                    width:
                        Responsive.isDesktop(context) ? 190 : size.width / 2.8,
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
                        controller: _finishing,
                        readOnly: true,
                        onTap: () async {
                          final time =
                              await Funcs().selectTime(context: context);

                          setState(() {
                            _finishing.text = time!.format(context);
                          });
                        },
                        textAlignVertical: TextAlignVertical.center,
                        decoration: InputDecoration(
                          suffixIcon: Icon(
                            Icons.timer,
                          ),
                          border: InputBorder.none,
                          hintText: widget.subheading2,
                        )),
                  ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
