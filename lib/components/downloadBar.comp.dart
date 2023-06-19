import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:skyconnect_starter/components/heading5.dart';
import 'package:skyconnect_starter/components/heading6.dart';
import 'package:skyconnect_starter/components/heading_text.dart';
import 'package:skyconnect_starter/controllers/responsive.dart';
import 'package:skyconnect_starter/theme/design.theme.dart';

// ignore: must_be_immutable
class downloadBar extends StatefulWidget {
  String? results;
  bool? icons;
  downloadBar({super.key, this.results, this.icons});

  @override
  State<downloadBar> createState() => _downloadBarState();
}

class _downloadBarState extends State<downloadBar>
    with TickerProviderStateMixin {
  bool _expanded = false;
  @override
  void initState() {
    // TODO: implement initState

    Future.delayed(Duration(milliseconds: 300), () {
      setState(() {
        _expanded = true;
      });
    });

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return AnimatedSize(
        // ignore: deprecated_member_use

        duration: Duration(milliseconds: 1200),
        curve: Curves.fastLinearToSlowEaseIn,
        child: _expanded
            ? Container(
                margin: EdgeInsets.only(
                  left: Responsive.isDesktop(context)
                      ? Insets().appPadding * 2
                      : 12,
                  right: Responsive.isDesktop(context)
                      ? Insets().appPadding * 2
                      : 12,
                ),
                padding: EdgeInsets.only(
                    left: Insets().appGap / 2,
                    right: Insets().appGap / 2,
                    top: Insets().appGap / 3,
                    bottom: Insets().appGap / 3),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    if (widget.results != null)
                      HeadingText(
                        size: Responsive.isDesktop(context) ? 14 : 13,
                        value: "RESULTS (${widget.results})",
                        color: Palette().primaryColor,
                        fontWeight: FontWeight.w700,
                      ),
                    if (widget.icons == true)
                      SizedBox(
                        width: Responsive.isDesktop(context)
                            ? null
                            : size.width / 2,
                        child: SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Heading5(
                                  value: "Note: ",
                                  fontWeight: FontWeight.bold,
                                ),
                                Icon(
                                  Icons.star_rounded,
                                  color: Color.fromRGBO(252, 189, 1, 1),
                                  size: 20,
                                ),
                                Icon(
                                  Icons.arrow_forward,
                                  color: Color.fromRGBO(153, 165, 181, 1),
                                  size: 20,
                                ),
                                Heading5(
                                  value: "Holiday | ",
                                ),
                                Icon(
                                  Icons.check,
                                  color: Colors.blue,
                                  size: 20,
                                ),
                                Icon(
                                  Icons.arrow_forward_rounded,
                                  color: Color.fromRGBO(153, 165, 181, 1),
                                  size: 20,
                                ),
                                Heading5(
                                  value: "Present | ",
                                ),
                                Icon(
                                  Icons.star_half_rounded,
                                  color: Colors.blue,
                                  size: 20,
                                ),
                                Icon(
                                  Icons.arrow_forward,
                                  color: Color.fromRGBO(153, 165, 181, 1),
                                  size: 20,
                                ),
                                Heading5(
                                  value: "Half Day | ",
                                ),
                                Icon(
                                  Icons.info_rounded,
                                  color: Colors.blue,
                                  size: 20,
                                ),
                                Icon(
                                  Icons.arrow_forward,
                                  color: Color.fromRGBO(153, 165, 181, 1),
                                  size: 20,
                                ),
                                Heading5(
                                  value: "Late | ",
                                ),
                                Icon(
                                  Icons.clear,
                                  color: Color.fromRGBO(153, 165, 181, 1),
                                  size: 20,
                                ),
                                Icon(
                                  Icons.arrow_forward,
                                  color: Color.fromRGBO(153, 165, 181, 1),
                                  size: 20,
                                ),
                                Heading5(
                                  value: "Absent | ",
                                ),
                                Icon(
                                  Icons.flight_takeoff_rounded,
                                  color: Colors.red,
                                  size: 20,
                                ),
                                Icon(
                                  Icons.arrow_forward,
                                  color: Color.fromRGBO(153, 165, 181, 1),
                                  size: 20,
                                ),
                                Heading5(
                                  value: "On Leave",
                                ),
                              ]),
                        ),
                      ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Container(
                          width: Responsive.isDesktop(context) ? 105 : 105,
                          height: Responsive.isDesktop(context) ? 30 : 30,
                          margin: EdgeInsets.only(
                            left: Insets().appGap,
                          ),
                          padding: EdgeInsets.only(
                            left: Insets().appGap,
                          ),
                          decoration: BoxDecoration(
                              border: Border.all(
                                  color: Palette().primaryColor, width: 1.5),
                              color: Colors.white,
                              borderRadius:
                                  BorderRadius.circular(Insets().appGap + 6)),
                          child: DropdownButton(
                            items: [
                              DropdownMenuItem(
                                  child: ListTile(
                                    dense: true,
                                    minVerticalPadding: 0,
                                    minLeadingWidth: 10,
                                    contentPadding: EdgeInsets.only(left: 10),
                                    onTap: () {},
                                    leading: Icon(
                                      Icons.format_align_justify,
                                      color: Palette().primaryColor,
                                      size: 20,
                                    ),
                                    title: Heading6(
                                        value: "Excel",
                                        color: Palette().primaryColor),
                                  ),
                                  value: "Excel"),
                            ],
                            hint: Row(
                              children: [
                                Icon(
                                  Icons.file_upload_outlined,
                                  color: Palette().primaryColor,
                                  size: Responsive.isDesktop(context) ? 20 : 20,
                                ),
                                SizedBox(
                                  width: Responsive.isDesktop(context) ? 5 : 5,
                                ),
                                Heading6(
                                  value: "Import",
                                  color: Palette().primaryColor,
                                ),
                              ],
                            ),
                            value: null,
                            iconEnabledColor: Palette().primaryColor,
                            iconDisabledColor: Palette().primaryColor,
                            isExpanded: true,
                            elevation: 1,
                            underline: SizedBox(),
                            dropdownColor: Colors.white,
                            borderRadius: BorderRadius.circular(
                                Insets().appRadiusMin + 4),
                            onChanged: ((value) {
                              if (true) {
                                setState(() {});
                              }
                            }),
                          ),
                        ),
                        Container(
                          width: Responsive.isDesktop(context) ? 105 : 105,
                          height: Responsive.isDesktop(context) ? 30 : 30,
                          margin: EdgeInsets.only(
                            left: Insets().appGap,
                          ),
                          padding: EdgeInsets.only(
                            left: Insets().appGap,
                          ),
                          decoration: BoxDecoration(
                              border: Border.all(
                                  color: Palette().primaryColor, width: 1.5),
                              color: Colors.white,
                              borderRadius:
                                  BorderRadius.circular(Insets().appGap + 6)),
                          child: DropdownButton(
                            items: [
                              DropdownMenuItem(
                                  child: ListTile(
                                    dense: true,
                                    minVerticalPadding: 0,
                                    minLeadingWidth: 10,
                                    contentPadding: EdgeInsets.only(left: 10),
                                    onTap: () {},
                                    leading: Icon(
                                      Icons.picture_as_pdf,
                                      color: Palette().primaryColor,
                                      size: 20,
                                    ),
                                    title: Heading6(
                                      value: "PDF",
                                      color: Palette().primaryColor,
                                    ),
                                  ),
                                  value: "PDF"),
                              DropdownMenuItem(
                                  child: ListTile(
                                    dense: true,
                                    minVerticalPadding: 0,
                                    minLeadingWidth: 10,
                                    contentPadding: EdgeInsets.only(left: 10),
                                    onTap: () {},
                                    leading: Icon(
                                      Icons.format_align_justify,
                                      color: Palette().primaryColor,
                                      size: 20,
                                    ),
                                    title: Heading6(
                                        value: "Excel",
                                        color: Palette().primaryColor),
                                  ),
                                  value: "Excel"),
                            ],
                            hint: Row(
                              children: [
                                Icon(
                                  Icons.file_download_outlined,
                                  color: Palette().primaryColor,
                                  size: Responsive.isDesktop(context) ? 20 : 20,
                                ),
                                SizedBox(
                                  width: Responsive.isDesktop(context) ? 5 : 5,
                                ),
                                Heading6(
                                  value: "Export",
                                  color: Palette().primaryColor,
                                ),
                              ],
                            ),
                            value: null,
                            iconEnabledColor: Palette().primaryColor,
                            iconDisabledColor: Palette().primaryColor,
                            isExpanded: true,
                            elevation: 1,
                            underline: SizedBox(),
                            dropdownColor: Colors.white,
                            borderRadius: BorderRadius.circular(
                                Insets().appRadiusMin + 4),
                            onChanged: ((value) {
                              if (true) {
                                setState(() {});
                              }
                            }),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              )
            : Container());
  }
}
