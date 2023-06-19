import 'package:flutter/material.dart';
import 'package:skyconnect_starter/components/heading3.dart';
import 'package:skyconnect_starter/components/heading_text.dart';
import 'package:skyconnect_starter/components/inputBigText.comp.dart';
import 'package:skyconnect_starter/components/inputFile.comp.dart';
import 'package:skyconnect_starter/components/inputTextField.comp.dart';
import 'package:skyconnect_starter/controllers/responsive.dart';
import 'package:skyconnect_starter/main.dart';
import 'package:skyconnect_starter/screens/Messages/inbox.scrn.dart';
import 'package:skyconnect_starter/theme/design.theme.dart';

class compose extends StatefulWidget {
  const compose({super.key});

  @override
  State<compose> createState() => _composeState();
}

class _composeState extends State<compose> {
  var picked;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Expanded(
          child: Column(
        children: [
          Container(
            alignment: Alignment.bottomLeft,
            padding: EdgeInsets.only(
                top: Insets().appPadding,
                left: Responsive.isDesktop(context)
                    ? Insets().appPadding * 2
                    : Insets().appPadding,
                right: Insets().appPadding),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  alignment: Alignment.bottomLeft,
                  padding: EdgeInsets.only(right: Insets().appGap),
                  child: HeadingText(
                    size: Responsive.isDesktop(context) ? 35 : 30,
                    value: "Messages",
                    fontWeight: FontWeight.w700,
                    color: Colors.grey.shade800,
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Heading3(
                      value: "Compose Message",
                      fontWeight: FontWeight.w600,
                      color: Colors.black,
                    ),
                    ElevatedButton(
                      onPressed: () async {
                        Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => MyHomePage(
                            page: inbox(),
                          ),
                        ));
                      },
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Palette().primaryColor,
                          padding: EdgeInsets.only(
                            bottom: Responsive.isDesktop(context) ? 17 : 14,
                            left: Insets().appPadding / 2,
                            right: Insets().appPadding / 2,
                            top: Responsive.isDesktop(context) ? 17 : 14,
                          ),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10))),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.inbox_rounded,
                            color: Colors.white,
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          HeadingText(
                              size: Responsive.isDesktop(context) ? 15 : 13,
                              value: "Inbox"),
                        ],
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),
          Container(
            width: MediaQuery.of(context).size.width,
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
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: !Responsive.isDesktop(context)
                      ? MediaQuery.of(context).size.width
                      : MediaQuery.of(context).size.width / 2.3,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      inputTextField(title: "To", hintText: ""),
                      SizedBox(
                        height: Responsive.isDesktop(context) ? 10 : 15,
                      ),
                      inputTextField(title: "Subject", hintText: ""),
                      SizedBox(
                        height: Responsive.isDesktop(context) ? 10 : 15,
                      ),
                      inputBigText(
                          title: "Compose", hintText: "Compose Message"),
                      SizedBox(
                        height: Responsive.isDesktop(context) ? 10 : 15,
                      ),
                      inputFile(heading: "Attachment"),
                      SizedBox(
                        height: Responsive.isDesktop(context) ? 10 : 15,
                      ),
                      Flex(
                        direction: Responsive.isDesktop(context)
                            ? Axis.horizontal
                            : Axis.vertical,
                        mainAxisAlignment: Responsive.isDesktop(context)
                            ? MainAxisAlignment.end
                            : MainAxisAlignment.start,
                        crossAxisAlignment: Responsive.isDesktop(context)
                            ? CrossAxisAlignment.center
                            : CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            width: 400,
                            height: Responsive.isDesktop(context) ? 50 : 40,
                            child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                  padding: EdgeInsets.only(
                                    left: Insets().appPadding / 2,
                                    right: Insets().appPadding / 2,
                                  ),
                                  backgroundColor: Palette().primaryColor,
                                  elevation: 0,
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(
                                          Insets().appPadding / 1.5))),
                              onPressed: () {},
                              child: Center(
                                  child: HeadingText(
                                size: Responsive.isDesktop(context) ? 18 : 14,
                                value: "Send",
                              )),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          )
        ],
      )),
    );
  }
}
