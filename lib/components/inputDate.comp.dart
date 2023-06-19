import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:skyconnect_starter/components/heading_text.dart';
import 'package:skyconnect_starter/controllers/funcs_main.dart';
import 'package:skyconnect_starter/controllers/responsive.dart';
import 'package:skyconnect_starter/theme/design.theme.dart';

// ignore: must_be_immutable
class inputDate extends StatefulWidget {
  final String heading;
  final String subheading;
  String? type;
  String? value;
  inputDate(
      {super.key,
      required this.heading,
      required this.subheading,
      this.value,
      this.type});

  @override
  State<inputDate> createState() => _inputDateState();
}

class _inputDateState extends State<inputDate> {
  TextEditingController _date = TextEditingController();
  void initState() {
    super.initState();

    if (widget.value != null) _date.text = widget.value!;
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
            child: Container(
              alignment: Alignment.centerLeft,
              padding: EdgeInsets.only(
                left: Insets().appPadding / 2,
                right: Insets().appPadding / 2,
              ),
              decoration: BoxDecoration(
                  border: Border.all(width: 1.5, color: Colors.grey),
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
                  controller: _date,
                  readOnly: true,
                  onTap: () async {
                    final date = await Funcs().selectDate(context: context);
                    final formattedDate = Funcs().getDateString(date: date!);
                    setState(() {
                      _date.text = formattedDate;
                    });
                  },
                  textAlignVertical: TextAlignVertical.center,
                  decoration: InputDecoration(
                    suffixIcon: Icon(
                      Icons.calendar_month_rounded,
                    ),
                    border: InputBorder.none,
                    hintText: widget.subheading,
                  )),
            ),
          ),
        ],
      ),
    );
  }
}
