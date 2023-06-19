import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:skyconnect_starter/components/heading4.dart';
import 'package:skyconnect_starter/components/heading5.dart';

class deleteDialog extends StatefulWidget {
  const deleteDialog({super.key});

  @override
  State<deleteDialog> createState() => _deleteDialogState();
}

class _deleteDialogState extends State<deleteDialog> {
  @override
  Widget build(BuildContext context) {
    return CupertinoAlertDialog(
      title: Heading4(
        value: "Do you want to delete this?",
        fontWeight: FontWeight.bold,
      ),
      content: Heading5(value: "You cannot undo this action"),
      actions: [
        CupertinoDialogAction(
            child: TextButton(
          onPressed: () {},
          child: Heading5(value: "Cancel"),
        )),
        CupertinoDialogAction(
            child: TextButton(
          onPressed: () {},
          child: Heading5(
            value: "Delete",
            color: Colors.red,
          ),
        ))
      ],
    );
  }
}
