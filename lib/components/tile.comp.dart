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
  final String tileLine4;

  final String tileData1;
  final String tileData2;
  final String tileData3;
  final String tileData4;
  tile(
      {super.key,
      required this.tileHeading,
      required this.tileLine1,
      required this.tileLine2,
      required this.tileLine3,
      required this.tileData1,
      required this.tileData2,
      required this.tileData3,
      required this.tileLine4,
      required this.tileData4});

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
                    gradient: LinearGradient(
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                        colors: [
                          Colors.white,
                          Palette().primaryColor.withOpacity(0.7)
                        ],
                        stops: [0.4, 0.7],
                        tileMode: TileMode.clamp),
                    boxShadow: [
                      BoxShadow(
                        color: Palette().borderColor.withOpacity(0.6),
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
                        color: Palette().primaryColor,
                      ),
                      SizedBox(
                        width: 3,
                      ),
                      Expanded(
                        child: Heading4(
                          value: widget.tileHeading,
                          color: Palette().primaryColor,
                          fontWeight: FontWeight.w700,
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: Responsive.isDesktop(context) ? 2 : 2,
                  ),
                  Row(
                    children: [
                      SizedBox(width: 7),
                      Icon(
                        Icons.circle,
                        color: Palette().primaryColor,
                        size: 8,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Heading5(
                        value: widget.tileLine1,
                        color: Colors.grey.shade700,
                      ),
                      Spacer(),
                      Heading4(
                          value: widget.tileData1,
                          fontWeight: FontWeight.w400,
                          color: Colors.white)
                    ],
                  ),
                  SizedBox(
                    height: 1,
                  ),
                  Row(
                    children: [
                      SizedBox(width: 7),
                      Icon(
                        Icons.circle,
                        color: Palette().primaryColor,
                        size: 8,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Heading5(
                        value: widget.tileLine2,
                        color: Colors.grey.shade700,
                      ),
                      Spacer(),
                      Heading4(
                          value: widget.tileData2,
                          fontWeight: FontWeight.w400,
                          color: Colors.white)
                    ],
                  ),
                  SizedBox(
                    height: 1,
                  ),
                  Row(
                    children: [
                      SizedBox(width: 7),
                      Icon(
                        Icons.circle,
                        color: Palette().primaryColor,
                        size: 8,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Heading5(
                        value: widget.tileLine3,
                        color: Colors.grey.shade700,
                      ),
                      Spacer(),
                      Heading4(
                          value: widget.tileData3,
                          fontWeight: FontWeight.w400,
                          color: Colors.white)
                    ],
                  ),
                  SizedBox(
                    height: 1,
                  ),
                  Row(
                    children: [
                      SizedBox(width: 7),
                      Icon(
                        Icons.circle,
                        color: Palette().primaryColor,
                        size: 8,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Heading5(
                        value: widget.tileLine4,
                        color: Colors.grey.shade700,
                      ),
                      Spacer(),
                      Heading4(
                        value: widget.tileData4,
                        fontWeight: FontWeight.w400,
                        color: Colors.white,
                      )
                    ],
                  )
                ]),
              )
            : Container());
  }
}
