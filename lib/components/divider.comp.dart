import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:skyconnect_starter/theme/design.theme.dart';

class myDivider extends StatefulWidget {
  const myDivider({super.key});

  @override
  State<myDivider> createState() => _myDividerState();
}

class _myDividerState extends State<myDivider> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      width: size.width,
      height: 3,
      decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [Palette().primaryColorLight, Colors.white],
              stops: [0.2, 0.3],
              tileMode: TileMode.clamp),
          color: Palette().primaryColor,
          borderRadius: BorderRadius.circular(Insets().appPadding)),
      margin: EdgeInsets.only(
          left: Insets().appPadding,
          right: Insets().appPadding,
          top: 10,
          bottom: 10),
    );
  }
}
