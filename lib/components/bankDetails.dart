import 'package:flutter/material.dart';
import 'package:skyconnect_starter/components/inputTextField.comp.dart';
import 'package:skyconnect_starter/controllers/responsive.dart';
import 'package:skyconnect_starter/theme/design.theme.dart';

class bankDetails extends StatefulWidget {
  const bankDetails({super.key});

  @override
  State<bankDetails> createState() => _bankDetailsState();
}

class _bankDetailsState extends State<bankDetails> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: !Responsive.isDesktop(context)
          ? MediaQuery.of(context).size.width
          : MediaQuery.of(context).size.width / 1.8,
      padding: EdgeInsets.only(
        top: Responsive.isDesktop(context) ? Insets().appPadding * 2 : 14,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          inputTextField(title: "Bank Name", hintText: "Bank Name"),
          SizedBox(
            height: Responsive.isDesktop(context) ? 10 : 15,
          ),
          inputTextField(title: "Bank Branch", hintText: "Bank Branch"),
          SizedBox(
            height: Responsive.isDesktop(context) ? 10 : 15,
          ),
          inputTextField(title: "Account No.", hintText: "Account No."),
          SizedBox(
            height: Responsive.isDesktop(context) ? 10 : 15,
          ),
          inputTextField(title: "IFSC Code", hintText: "IFSC Code"),
        ],
      ),
    );
  }
}
