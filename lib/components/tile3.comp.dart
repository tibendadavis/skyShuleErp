import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import 'package:skyconnect_starter/components/heading1.dart';
import 'package:skyconnect_starter/components/heading2.dart';
import 'package:skyconnect_starter/components/heading5.dart';
import 'package:skyconnect_starter/components/heading6.dart';
import 'package:skyconnect_starter/components/heading_text.dart';
import 'package:skyconnect_starter/controllers/responsive.dart';
import 'package:skyconnect_starter/main.dart';
import 'package:skyconnect_starter/theme/design.theme.dart';

class tile3 extends StatefulWidget {
  Widget? link;
  String? linkTitle;
  IconData? icon;
  tile3({super.key, this.link, this.icon, this.linkTitle});

  @override
  State<tile3> createState() => _tile3State();
}

class _tile3State extends State<tile3> with TickerProviderStateMixin {
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
                    right: Insets().appPadding,
                    top: Insets().appGap + 2,
                    bottom: Insets().appPadding),
                decoration: BoxDecoration(
                    gradient: LinearGradient(
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                        colors: [
                          Colors.white,
                          Palette().primaryColor.withOpacity(0.9)
                        ],
                        stops: [0.6, 0.9],
                        tileMode: TileMode.clamp),
                    boxShadow: [
                      BoxShadow(
                        color: Palette().borderColor,
                        blurRadius: Insets().appPadding, // soften the shadow
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
                child: SizedBox(
                  height: 70,
                  child: Row(
                    children: [
                      Icon(
                        widget.icon,
                        size: 50,
                        color: Palette().primaryColor,
                      ),
                      Spacer(),
                      ElevatedButton(
                          onPressed: () {
                            showDialog(
                                context: context, builder: (_) => widget.link!);
                          },
                          style: ElevatedButton.styleFrom(
                              elevation: 12,
                              backgroundColor: Colors.white,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(
                                      Insets().appRadiusMin)),
                              padding: EdgeInsets.all(Insets().appPadding - 5)),
                          child: Heading5(
                            value: widget.linkTitle!,
                            fontWeight: FontWeight.bold,
                            color: Palette().primaryColor,
                          ))
                    ],
                  ),
                ),
              )
            : Container());
  }
}
