import 'package:flutter/material.dart';

import 'package:skyconnect_starter/components/heading5.dart';
import 'package:skyconnect_starter/components/heading_text.dart';
import 'package:skyconnect_starter/controllers/responsive.dart';
import 'package:skyconnect_starter/main.dart';
import 'package:skyconnect_starter/theme/design.theme.dart';

// ignore: must_be_immutable
class tile2 extends StatefulWidget {
  final String tileHeading;
  final String tileData;
  Widget? link;
  String? linkTitle;
  IconData? icon;
  tile2(
      {super.key,
      required this.tileHeading,
      required this.tileData,
      this.link,
      this.icon,
      this.linkTitle});

  @override
  State<tile2> createState() => _tile2State();
}

class _tile2State extends State<tile2> with TickerProviderStateMixin {
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
                margin: EdgeInsets.only(
                    left: Responsive.isDesktop(context)
                        ? Insets().appPadding * 2
                        : Insets().appPadding,
                    top: Insets().appPadding,
                    bottom: Responsive.isDesktop(context)
                        ? Insets().appPadding
                        : 0),
                padding: EdgeInsets.only(
                    left: Insets().appPadding,
                    right: 5,
                    top: Insets().appGap + 2,
                    bottom: Insets().appPadding),
                decoration: BoxDecoration(
                    gradient: LinearGradient(
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                        colors: [
                          Colors.white,
                          Colors.white,
                          //   Palette().primaryColor.withOpacity(0.9)
                        ],
                        stops: [0.6, 0.9],
                        tileMode: TileMode.clamp),
                    boxShadow: [
                      BoxShadow(
                        color: Palette().borderColor.withOpacity(0.6),
                        blurRadius: Insets().appPadding, // soften the shadow
                        spreadRadius: 2.0, //extend the shadow
                        offset: Offset(
                          1.0, // Move to right 5  horizontally
                          2.0, // Move to bottom 5 Vertically
                        ),
                      )
                    ],
                    //  color: Palette().primaryColor,
                    borderRadius:
                        BorderRadius.circular(Insets().appRadiusMin + 4)),
                child: SizedBox(
                  height: 70,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          HeadingText(
                              size: 29,
                              value: widget.tileData,
                              fontWeight: FontWeight.w300,
                              color: Palette().primaryColor),
                          Spacer(),
                          HeadingText(
                              size: 15,
                              value: widget.tileHeading,
                              fontWeight: FontWeight.w600,
                              color: Colors.grey.shade600)
                        ],
                      ),
                      if (widget.link != null)
                        Container(
                          margin: EdgeInsets.only(right: 10),
                          child: ElevatedButton(
                              onPressed: () {
                                Navigator.of(context).push(MaterialPageRoute(
                                  builder: (context) => MyHomePage(
                                    page: widget.link!,
                                  ),
                                ));
                              },
                              style: ElevatedButton.styleFrom(
                                  elevation: 12,
                                  backgroundColor: Colors.white,
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(
                                          Insets().appRadiusMin)),
                                  padding:
                                      EdgeInsets.all(Insets().appPadding - 5)),
                              child: Heading5(
                                value: widget.linkTitle!,
                                fontWeight: FontWeight.bold,
                                color: Palette().primaryColor,
                              )),
                        ),
                      if (widget.icon != null)
                        Icon(
                          widget.icon!,
                          color: Palette().primaryColor.withOpacity(0.7),
                          size: 45,
                        )
                    ],
                  ),
                ),
              )
            : Container());
  }
}
