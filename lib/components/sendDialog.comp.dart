import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:skyconnect_starter/components/heading4.dart';
import 'package:skyconnect_starter/components/heading5.dart';

class sendDialog extends StatefulWidget {
  const sendDialog({super.key});

  @override
  State<sendDialog> createState() => sendDialogState();
}

class sendDialogState extends State<sendDialog> {
  @override
  Widget build(BuildContext context) {
    return CupertinoAlertDialog(
      title: Heading4(
        value: "Do you want to send this offer?",
        fontWeight: FontWeight.bold,
      ),
      content: Heading5(value: "Send Offer"),
      actions: [
        CupertinoDialogAction(
            child: TextButton(
          onPressed: () {},
          child: Heading5(value: "Cancel", color: Colors.red),
        )),
        CupertinoDialogAction(
            child: TextButton(
          onPressed: () {},
          child: Heading5(
            value: "Send",
            color: Colors.green.shade800,
          ),
        ))
      ],
    );
  }
}
