import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:skyconnect_starter/components/heading2.dart';
import 'package:skyconnect_starter/components/heading3.dart';
import 'package:skyconnect_starter/components/heading5.dart';
import 'package:skyconnect_starter/components/heading_text.dart';
import 'package:skyconnect_starter/components/inputTextField.comp.dart';
import 'package:skyconnect_starter/controllers/funcs_main.dart';
import 'package:skyconnect_starter/controllers/responsive.dart';
import 'package:skyconnect_starter/theme/design.theme.dart';

class inputDatePeriod extends StatefulWidget {
  final String heading;
  final String subheading1;
  final String subheading2;
  String? type;
  String? from;
  String? to;
  inputDatePeriod(
      {super.key,
      required this.heading,
      required this.subheading1,
      required this.subheading2,
      this.from,
      this.type,
      this.to});

  @override
  State<inputDatePeriod> createState() => _inputDateState();
}

class _inputDateState extends State<inputDatePeriod> {
  TextEditingController _from = TextEditingController();
  TextEditingController _to = TextEditingController();
  void initState() {
    super.initState();

    if (widget.from != null) _from.text = widget.from!;
    if (widget.to != null) _to.text = widget.to!;
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
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(
                width: Responsive.isDesktop(context) ? 400 : size.width,
                height: Responsive.isDesktop(context) ? 40 : 40,
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
                      controller: _from,
                      readOnly: true,
                      onTap: () async {
                        final date = await Funcs().selectDate(context: context);
                        final formattedDate =
                            Funcs().getDateString(date: date!);
                        setState(() {
                          _from.text = formattedDate;
                        });
                      },
                      textAlignVertical: TextAlignVertical.center,
                      decoration: InputDecoration(
                        suffixIcon: Icon(
                          Icons.calendar_month_rounded,
                        ),
                        border: InputBorder.none,
                        hintText: widget.subheading1,
                      )),
                ),
              ),
              SizedBox(
                height: 5,
              ),
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
                      controller: _to,
                      readOnly: true,
                      onTap: () async {
                        final date = await Funcs().selectDate(context: context);
                        final formattedDate =
                            Funcs().getDateString(date: date!);
                        setState(() {
                          _to.text = formattedDate;
                        });
                      },
                      textAlignVertical: TextAlignVertical.center,
                      decoration: InputDecoration(
                        suffixIcon: Icon(
                          Icons.calendar_month_rounded,
                        ),
                        border: InputBorder.none,
                        hintText: widget.subheading2,
                      )),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
