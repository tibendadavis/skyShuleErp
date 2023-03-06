import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:skyconnect_starter/components/heading5.dart';
import 'package:skyconnect_starter/components/heading6.dart';
import 'package:skyconnect_starter/components/heading_text.dart';
import 'package:skyconnect_starter/components/searchInputOptions.comp.dart';
import 'package:skyconnect_starter/controllers/responsive.dart';
import 'package:skyconnect_starter/theme/design.theme.dart';

class searchBar extends StatefulWidget {
  final String title;
  searchInputOptions? opt1;
  searchInputOptions? opt2;
  searchInputOptions? opt3;
  searchInputOptions? opt4;
  searchInputOptions? opt5;
  searchInputOptions? opt6;
  searchInputOptions? opt7;

  searchBar(
      {super.key,
      required this.title,
      this.opt1,
      this.opt2,
      this.opt3,
      this.opt4,
      this.opt5,
      this.opt6,
      this.opt7});

  @override
  State<searchBar> createState() => _searchBarState();
}

class _searchBarState extends State<searchBar> with TickerProviderStateMixin {
  bool _expanded = false;
  @override
  void initState() {
    // TODO: implement initState

    Future.delayed(Duration(milliseconds: 500), () {
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
                    right: Responsive.isDesktop(context)
                        ? Insets().appPadding * 2
                        : Insets().appPadding,
                    top: Responsive.isDesktop(context)
                        ? Insets().appPadding
                        : 12,
                    bottom: Responsive.isDesktop(context)
                        ? Insets().appPadding
                        : 12),
                padding: EdgeInsets.only(
                    left: Responsive.isDesktop(context)
                        ? Insets().appPadding
                        : 10,
                    right: Responsive.isDesktop(context)
                        ? Insets().appGap / 2
                        : 10,
                    top:
                        Responsive.isDesktop(context) ? Insets().appGap / 2 : 5,
                    bottom: Responsive.isDesktop(context)
                        ? Insets().appGap / 2
                        : 10),
                decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.centerLeft,
                      end: Alignment.centerRight,
                      stops: [0.3, 0.75],
                      colors: [
                        Colors.white,
                        Palette().primaryColorLight,
                      ],
                    ),
                    // border: Border.all(color: Colors.grey, width: 0),
                    color: Palette().primaryColorLight,
                    borderRadius: BorderRadius.circular(Insets().appGap + 4)),
                child: Flex(
                    direction: Responsive.isDesktop(context)
                        ? Axis.horizontal
                        : Axis.vertical,
                    crossAxisAlignment: Responsive.isDesktop(context)
                        ? CrossAxisAlignment.center
                        : CrossAxisAlignment.start,
                    children: [
                      if (Responsive.isDesktop(context)) ...[
                        Expanded(
                            flex: 3,
                            child: TextFormField(
                                style: GoogleFonts.openSans(
                                    fontSize: 20, fontWeight: FontWeight.w600),
                                decoration: InputDecoration(
                                    border: InputBorder.none,
                                    hintText: widget.title,
                                    hintStyle: GoogleFonts.openSans(
                                        fontSize: 20,
                                        fontWeight: FontWeight.w400)))),
                        SizedBox(
                          width: 10,
                        ),
                        if (widget.opt1 != null)
                          Expanded(flex: 1, child: widget.opt1!),
                        if (widget.opt2 != null)
                          Expanded(flex: 1, child: widget.opt2!),
                        if (widget.opt3 != null)
                          Expanded(flex: 1, child: widget.opt3!),
                        if (widget.opt4 != null)
                          Expanded(flex: 1, child: widget.opt4!),
                        if (widget.opt5 != null)
                          Expanded(flex: 1, child: widget.opt5!),
                        if (widget.opt6 != null)
                          Expanded(flex: 1, child: widget.opt6!),
                        if (widget.opt7 != null)
                          Expanded(flex: 1, child: widget.opt7!),
                        SizedBox(
                          width: 10,
                        ),
                        Expanded(
                            flex: 1,
                            child: ElevatedButton(
                                onPressed: () {},
                                style: ElevatedButton.styleFrom(
                                    backgroundColor: Palette().primaryColor,
                                    shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(
                                            Insets().appRadiusMin + 4)),
                                    padding: EdgeInsets.all(
                                        Insets().appPadding / 1.5)),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Icon(
                                      Icons.check,
                                      color: Colors.white,
                                      size: 30,
                                    ),
                                    SizedBox(
                                      width: 5,
                                    ),
                                    Heading6(
                                      value: "Apply",
                                      color: Colors.white,
                                    ),
                                  ],
                                ))),
                        SizedBox(
                          width: 10,
                        ),
                        Expanded(
                            flex: 1,
                            child: ElevatedButton(
                                onPressed: () {},
                                style: ElevatedButton.styleFrom(
                                    backgroundColor: Palette().primaryColor,
                                    shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(
                                            Insets().appRadiusMin + 4)),
                                    padding: EdgeInsets.all(
                                        Insets().appPadding / 1.5)),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Icon(
                                      Icons.restart_alt_rounded,
                                      color: Colors.white,
                                      size: 30,
                                    ),
                                    SizedBox(
                                      width: 5,
                                    ),
                                    Heading6(
                                      value: "Clear",
                                      color: Colors.white,
                                    ),
                                  ],
                                )))
                      ],
                      if (!Responsive.isDesktop(context)) ...[
                        Container(
                            child: TextFormField(
                                style: GoogleFonts.openSans(
                                    fontSize: 20, fontWeight: FontWeight.w600),
                                decoration: InputDecoration(
                                    border: InputBorder.none,
                                    hintText: widget.title,
                                    hintStyle: GoogleFonts.openSans(
                                        fontSize: 20,
                                        fontWeight: FontWeight.w400)))),
                        SizedBox(
                          width: Responsive.isDesktop(context) ? 10 : 0,
                          height: Responsive.isDesktop(context) ? 0 : 5,
                        ),
                        SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: SizedBox(
                              width: MediaQuery.of(context).size.width + 100,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  if (widget.opt1 != null)
                                    Container(width: 100, child: widget.opt1),
                                  if (widget.opt2 != null)
                                    Container(width: 100, child: widget.opt2),
                                  if (widget.opt3 != null)
                                    Container(width: 100, child: widget.opt3),
                                  if (widget.opt4 != null)
                                    Container(width: 100, child: widget.opt4),
                                  if (widget.opt5 != null)
                                    Container(width: 100, child: widget.opt5),
                                  if (widget.opt6 != null)
                                    Container(width: 100, child: widget.opt6),
                                  if (widget.opt7 != null)
                                    Container(width: 100, child: widget.opt7),
                                ],
                              )),
                        ),
                        SizedBox(
                          width: Responsive.isDesktop(context) ? 10 : 0,
                          height: Responsive.isDesktop(context) ? 0 : 5,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                                width: MediaQuery.of(context).size.width / 2.5,
                                child: ElevatedButton(
                                    onPressed: () {},
                                    style: ElevatedButton.styleFrom(
                                        backgroundColor: Palette().primaryColor,
                                        shape: RoundedRectangleBorder(
                                            borderRadius: BorderRadius.circular(
                                                Insets().appRadiusMin + 4)),
                                        padding: EdgeInsets.all(
                                            Insets().appPadding / 1.5)),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Icon(
                                          Icons.check,
                                          color: Colors.white,
                                          size: 30,
                                        ),
                                        SizedBox(
                                          width: 5,
                                        ),
                                        Heading6(
                                          value: "Apply",
                                          color: Colors.white,
                                        ),
                                      ],
                                    ))),
                            SizedBox(
                              width: Responsive.isDesktop(context) ? 10 : 0,
                              // height: Responsive.isDesktop(context) ? 0 : 5,
                            ),
                            Container(
                                width: MediaQuery.of(context).size.width / 2.5,
                                child: ElevatedButton(
                                    onPressed: () {},
                                    style: ElevatedButton.styleFrom(
                                        backgroundColor: Palette().primaryColor,
                                        shape: RoundedRectangleBorder(
                                            borderRadius: BorderRadius.circular(
                                                Insets().appRadiusMin + 4)),
                                        padding: EdgeInsets.all(
                                            Insets().appPadding / 1.5)),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Icon(
                                          Icons.restart_alt_rounded,
                                          color: Colors.white,
                                          size: 30,
                                        ),
                                        SizedBox(
                                          width: 5,
                                        ),
                                        Heading6(
                                          value: "Clear",
                                          color: Colors.white,
                                        ),
                                      ],
                                    )))
                          ],
                        ),
                      ]
                    ]),
              )
            : Container());
  }
}
