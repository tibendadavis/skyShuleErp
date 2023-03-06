import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:path/path.dart';

import 'package:skyconnect_starter/components/header.dart';
import 'package:skyconnect_starter/components/heading2.dart';
import 'package:skyconnect_starter/components/heading3.dart';
import 'package:skyconnect_starter/components/heading_text.dart';
import 'package:skyconnect_starter/components/heading5.dart';
import 'package:skyconnect_starter/components/heading6.dart';
import 'package:skyconnect_starter/components/heading_text.dart';
import 'package:skyconnect_starter/components/inputOptions.comp.dart';
import 'package:skyconnect_starter/components/inputTextField.comp.dart';

import 'package:skyconnect_starter/controllers/responsive.dart';

import 'package:skyconnect_starter/theme/design.theme.dart';

class loading extends StatefulWidget {
  const loading({super.key});

  @override
  State<loading> createState() => _loadingState();
}

class _loadingState extends State<loading> with SingleTickerProviderStateMixin {
  bool _menu = false;
  late AnimationController controller;
  late Animation<double> scaleAnimation;
  var _specialGrade;
  var _classlevel;

  double? loadSize = 900;
  @override
  void initState() {
    super.initState();

    controller =
        AnimationController(vsync: this, duration: Duration(milliseconds: 0));
    scaleAnimation = CurvedAnimation(
        parent: controller, curve: Curves.fastLinearToSlowEaseIn);

    controller.addListener(() {
      setState(() {});
    });

    controller.forward();
    Future.delayed(Duration(milliseconds: 100), () {
      myloadSize();
      Future.delayed(Duration(milliseconds: 200), () {
        setState(() {
          loadSize = 5;
        });
        Future.delayed(Duration(milliseconds: 290), () {
          myloadSize();
        });
      });
    });
  }

  void myloadSize() {
    setState(() {
      loadSize = 70;
    });
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Material(
      color: Colors.transparent,
      child: ScaleTransition(
          scale: scaleAnimation,
          child: SizedBox(
            width: size.width,
            height: size.height,
            child: Center(
                child: AnimatedContainer(
              duration: Duration(milliseconds: 1000),
              curve: Curves.fastLinearToSlowEaseIn,
              width: loadSize,
              height: loadSize,
              child: CircularProgressIndicator(
                color: Palette().primaryColor,
              ),
            )),
          )),
    );
  }
}
