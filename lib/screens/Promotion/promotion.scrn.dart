import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:skyconnect_starter/components/heading_text.dart';
import 'package:skyconnect_starter/components/inputOptions.comp.dart';
import 'package:skyconnect_starter/controllers/responsive.dart';
import 'package:skyconnect_starter/theme/design.theme.dart';

class promotion extends StatefulWidget {
  const promotion({super.key});

  @override
  State<promotion> createState() => _promotionState();
}

class _promotionState extends State<promotion> {
  bool perClass = true;
  bool schoolstmp = false;
  var picked;
  bool _menu = false;
  var _specialGrade;
  var _classlevel;
  var _designation;
  double _drawersize = 250;
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
      child: Expanded(
          child: Column(
        children: [
          Container(
            alignment: Alignment.bottomLeft,
            padding: EdgeInsets.only(
                top: Insets().appPadding,
                left: Insets().appPadding,
                right: Insets().appGap),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                HeadingText(
                  size: Responsive.isDesktop(context) ? 35 : 30,
                  value: "Promotion",
                  fontWeight: FontWeight.w700,
                  color: Colors.grey.shade800,
                ),
                HeadingText(
                  size: Responsive.isDesktop(context) ? 18 : 15,
                  value: "Promote Student to Next Class",
                  fontWeight: FontWeight.w300,
                  color: Colors.grey.shade800,
                ),
              ],
            ),
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            alignment: Alignment.topLeft,
            padding: EdgeInsets.only(
                top: Insets().appPadding,
                bottom: Insets().appPadding,
                left: Insets().appPadding,
                right: Insets().appPadding),
            margin: EdgeInsets.only(
                top: 0,
                left: Insets().appPadding,
                right: Insets().appPadding,
                bottom: Insets().appPadding),
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(Insets().appRadius)),
            child: Column(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    RichText(
                      text: TextSpan(children: [
                        TextSpan(
                          text: "NOTE: ",
                          style: GoogleFonts.openSans(
                              color: Colors.black,
                              fontSize: 15,
                              fontWeight: FontWeight.w700),
                        ),
                        TextSpan(
                            text:
                                "Usually, students are promoted at the end of the year. To promote students you must start from final class in Descending order ",
                            style: GoogleFonts.openSans(
                                color: Colors.black, fontSize: 15)),
                        TextSpan(
                          text:
                              "eg. Class seven to Class Six then Class Five to Class Six",
                          style: GoogleFonts.openSans(
                              color: Colors.black,
                              fontSize: 15,
                              fontWeight: FontWeight.w700),
                        )
                      ]),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    SizedBox(
                      width: size.width,
                      child: Divider(
                        color: Colors.grey[700],
                        thickness: 1,
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                        width: MediaQuery.of(context).size.width,
                        alignment: Alignment.center,
                        padding: EdgeInsets.only(
                            top: Insets().appPadding,
                            bottom: Insets().appPadding,
                            left: Insets().appPadding,
                            right: Insets().appPadding),
                        decoration: BoxDecoration(
                            borderRadius:
                                BorderRadius.circular(Insets().appRadius)),
                        child: SizedBox(
                          width: 500,
                          child: Column(
                            children: [
                              inputOptions(
                                title: "From Class",
                                opt1: "",
                              ),
                              SizedBox(
                                height: Responsive.isDesktop(context) ? 10 : 15,
                              ),
                              inputOptions(
                                title: "To Class",
                                opt1: "",
                              ),
                              SizedBox(
                                height: Responsive.isDesktop(context) ? 30 : 35,
                              ),
                              Flex(
                                direction: Responsive.isDesktop(context)
                                    ? Axis.horizontal
                                    : Axis.vertical,
                                mainAxisAlignment: Responsive.isDesktop(context)
                                    ? MainAxisAlignment.center
                                    : MainAxisAlignment.start,
                                crossAxisAlignment:
                                    Responsive.isDesktop(context)
                                        ? CrossAxisAlignment.center
                                        : CrossAxisAlignment.start,
                                children: [
                                  SizedBox(
                                    width: Responsive.isDesktop(context)
                                        ? 500
                                        : 450,
                                    height:
                                        Responsive.isDesktop(context) ? 50 : 40,
                                    child: ElevatedButton(
                                      style: ElevatedButton.styleFrom(
                                          padding: EdgeInsets.only(
                                            left: Insets().appPadding / 2,
                                            right: Insets().appPadding / 2,
                                          ),
                                          backgroundColor:
                                              Palette().primaryColor,
                                          elevation: 0,
                                          shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(
                                                      Insets().appPadding /
                                                          1.5))),
                                      onPressed: () {},
                                      child: Center(
                                          child: HeadingText(
                                        size: Responsive.isDesktop(context)
                                            ? 16
                                            : 14,
                                        value: "Promote",
                                      )),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ))
                  ],
                ),
              ],
            ),
          )
        ],
      )),
    );
  }
}
