import 'package:flutter/material.dart';
import 'package:skyconnect_starter/theme/design.theme.dart';

class loading extends StatefulWidget {
  const loading({super.key});

  @override
  State<loading> createState() => _loadingState();
}

class _loadingState extends State<loading> with SingleTickerProviderStateMixin {
  late AnimationController controller;
  late Animation<double> scaleAnimation;

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
