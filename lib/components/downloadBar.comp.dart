import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:skyconnect_starter/components/heading6.dart';
import 'package:skyconnect_starter/components/heading_text.dart';
import 'package:skyconnect_starter/controllers/responsive.dart';
import 'package:skyconnect_starter/theme/design.theme.dart';

class downloadBar extends StatefulWidget {
  final String results;
  const downloadBar({super.key, required this.results});

  @override
  State<downloadBar> createState() => _downloadBarState();
}

class _downloadBarState extends State<downloadBar> {
  var _classlevel;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        left: Responsive.isDesktop(context) ? Insets().appPadding * 2 : 12,
        right: Responsive.isDesktop(context) ? Insets().appPadding * 2 : 12,
      ),
      padding: EdgeInsets.only(
          left: Insets().appGap / 2,
          right: Insets().appGap / 2,
          top: Insets().appGap / 3,
          bottom: Insets().appGap / 3),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          HeadingText(
            size: Responsive.isDesktop(context) ? 14 : 13,
            value: "RESULTS (${widget.results})",
            color: Palette().primaryColor,
            fontWeight: FontWeight.w700,
          ),
          Container(
            width: Responsive.isDesktop(context) ? 140 : 130,
            height: Responsive.isDesktop(context) ? 40 : 30,
            margin: EdgeInsets.only(
              left: Insets().appGap,
            ),
            padding: EdgeInsets.only(
              left: Insets().appGap,
            ),
            decoration: BoxDecoration(
                border: Border.all(color: Palette().primaryColor, width: 1.5),
                color: Colors.white,
                borderRadius: BorderRadius.circular(Insets().appGap + 6)),
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
                          value: "Excel", color: Palette().primaryColor),
                    ),
                    value: "Excel"),
                DropdownMenuItem(
                    child: ListTile(
                        dense: true,
                        minVerticalPadding: 0,
                        minLeadingWidth: 10,
                        contentPadding: EdgeInsets.only(left: 10),
                        onTap: () {},
                        leading: Icon(
                          Icons.description,
                          color: Palette().primaryColor,
                          size: 20,
                        ),
                        title: Heading6(
                            value: "CSV", color: Palette().primaryColor)),
                    value: "CSV")
              ],
              hint: Row(
                children: [
                  Icon(
                    Icons.cloud_download_outlined,
                    color: Palette().primaryColor,
                    size: Responsive.isDesktop(context) ? 25 : 20,
                  ),
                  SizedBox(
                    width: Responsive.isDesktop(context) ? 7 : 5,
                  ),
                  Heading6(
                    value: "Download",
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
              borderRadius: BorderRadius.circular(Insets().appRadiusMin + 4),
              onChanged: ((value) {
                if (true) {
                  setState(() {
                    _classlevel = value;
                  });
                }
              }),
            ),
          ),
        ],
      ),
    );
  }
}
