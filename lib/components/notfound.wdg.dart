import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:skyconnect_starter/theme/design.theme.dart';

class NotFoundWDG extends StatefulWidget {
  final String? value;
  const NotFoundWDG({Key? key, this.value}) : super(key: key);

  @override
  State<NotFoundWDG> createState() => _NotFoundWDGState();
}

class _NotFoundWDGState extends State<NotFoundWDG> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(Insets().appPadding * 2),
      child: Text(
        widget.value == null ? "Nothing found!".tr : widget.value!.tr,
        style: const TextStyle(
          color: Colors.grey,
          fontSize: 16,
        ),
        textAlign: TextAlign.center,
      ),
    );
  }
}
