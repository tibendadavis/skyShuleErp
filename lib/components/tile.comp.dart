import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:skyconnect_starter/components/heading4.dart';
import 'package:skyconnect_starter/components/heading5.dart';
import 'package:skyconnect_starter/controllers/responsive.dart';
import 'package:skyconnect_starter/theme/design.theme.dart';

class tile extends StatefulWidget {
  final String tileHeading;
  final String tileLine1;
  final String tileLine2;
  final String tileLine3;
  String? tileLine4;

  final String tileData1;
  final String tileData2;
  final String tileData3;
  String? tileData4;
  tile(
      {super.key,
      required this.tileHeading,
      required this.tileLine1,
      required this.tileLine2,
      required this.tileLine3,
      required this.tileData1,
      required this.tileData2,
      required this.tileData3,
      this.tileLine4,
      this.tileData4});

  @override
  State<tile> createState() => _tileState();
}

class _tileState extends State<tile> with TickerProviderStateMixin {
  bool _expanded = false;
  @override
  void initState() {
    // TODO: implement initState

    Future.delayed(Duration(milliseconds: 100), () {
      setState(() {
        _expanded = true;
      });
    });

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedSize(
        // ignore: deprecated_member_use
        vsync: this,
        duration: Duration(milliseconds: 1200),
        curve: Curves.fastLinearToSlowEaseIn,
        child: _expanded
            ? Container(
                alignment: Alignment.centerLeft,
                margin: EdgeInsets.only(
                    left: Insets().appPadding,
                    right:
                        Responsive.isDesktop(context) ? 0 : Insets().appPadding,
                    bottom: Responsive.isDesktop(context)
                        ? Insets().appPadding
                        : 0),
                padding: EdgeInsets.only(
                  left: Responsive.isDesktop(context)
                      ? Insets().appPadding
                      : Insets().appPadding / 2,
                  right: Responsive.isDesktop(context)
                      ? Insets().appPadding
                      : Insets().appPadding / 2,
                  top: Insets().appGap + 2,
                  bottom: Responsive.isDesktop(context)
                      ? Insets().appPadding
                      : Insets().appPadding / 2,
                ),
                decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: Palette().borderColor,
                        blurRadius:
                            Insets().appRadiusMin + 4, // soften the shadow
                        spreadRadius: 2.0, //extend the shadow
                        offset: Offset(
                          1.0, // Move to right 5  horizontally
                          2.0, // Move to bottom 5 Vertically
                        ),
                      )
                    ],
                    color: Palette().primaryColor,
                    borderRadius:
                        BorderRadius.circular(Insets().appRadiusMin + 4)),
                child: Column(children: [
                  Row(
                    children: [
                      Icon(
                        Icons.local_hospital_rounded,
                        color: Colors.white,
                      ),
                      SizedBox(
                        width: 7,
                      ),
                      Expanded(
                        child: Heading4(
                          value: widget.tileHeading,
                          color: Colors.white,
                          fontWeight: FontWeight.w700,
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: Responsive.isDesktop(context) ? 20 : 10,
                  ),
                  Row(
                    children: [
                      SizedBox(width: 7),
                      Icon(
                        Icons.circle,
                        color: Colors.white,
                        size: 8,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Heading5(
                        value: widget.tileLine1,
                        color: Colors.white,
                      ),
                      Spacer(),
                      Heading5(value: widget.tileData1, color: Colors.white)
                    ],
                  ),
                  SizedBox(
                    height: 2,
                  ),
                  Row(
                    children: [
                      SizedBox(width: 7),
                      Icon(
                        Icons.circle,
                        color: Colors.white,
                        size: 8,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Heading5(
                        value: widget.tileLine2,
                        color: Colors.white,
                      ),
                      Spacer(),
                      Heading5(value: widget.tileData2, color: Colors.white)
                    ],
                  ),
                  SizedBox(
                    height: 2,
                  ),
                  Row(
                    children: [
                      SizedBox(width: 7),
                      Icon(
                        Icons.circle,
                        color: Colors.white,
                        size: 8,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Heading5(
                        value: widget.tileLine3,
                        color: Colors.white,
                      ),
                      Spacer(),
                      Heading5(value: widget.tileData3, color: Colors.white)
                    ],
                  ),
                  SizedBox(
                    height: 2,
                  ),
                  Row(
                    children: [
                      SizedBox(width: 7),
                      Icon(
                        Icons.circle,
                        color: Colors.white,
                        size: 8,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Heading5(
                        value: widget.tileLine4!,
                        color: Colors.white,
                      ),
                      Spacer(),
                      Heading5(value: widget.tileData4!, color: Colors.white)
                    ],
                  )
                ]),
              )
            : Container());
  }
}
