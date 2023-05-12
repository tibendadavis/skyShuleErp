import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:skyconnect_starter/controllers/funcs_main.dart';
import 'package:skyconnect_starter/theme/design.theme.dart';
import 'package:intl/intl.dart';

class searchInputDate extends StatefulWidget {
  String? title;
  String? value;
  searchInputDate({super.key, this.title, this.value});

  @override
  State<searchInputDate> createState() => _searchInputDateState();
}

class _searchInputDateState extends State<searchInputDate> {
  TextEditingController _date = TextEditingController();
  void initState() {
    super.initState();
    if (widget.value != null) _date.text = widget.value!;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.centerLeft,
      padding: EdgeInsets.only(
        left: Insets().appPadding / 2,
        right: Insets().appPadding / 2,
      ),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(Insets().appPadding / 1.5)),
      child: TextFormField(
          style: TextStyle(color: Palette().primaryColor),
          controller: _date,
          readOnly: true,
          onTap: () async {
            final date = await Funcs().selectDate(context: context);
            final formattedDate = DateFormat('yyyy-MM-dd').format(date!);
            setState(() {
              _date.text = formattedDate;
            });
          },
          textAlignVertical: TextAlignVertical.center,
          decoration: InputDecoration(
              suffixIcon: Icon(
                Icons.calendar_month_rounded,
                color: Palette().primaryColor,
              ),
              border: InputBorder.none,
              hintText: widget.title,
              hintStyle:
                  TextStyle(fontSize: 14, color: Palette().primaryColor))),
    );
  }
}
