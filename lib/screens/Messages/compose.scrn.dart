import 'package:file_picker/file_picker.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:path/path.dart';
import 'package:skyconnect_starter/components/app_drawer/skyShuleDrawer.dart';
import 'package:skyconnect_starter/components/bankDetails.dart';
import 'package:skyconnect_starter/components/contactsDetails.dart';
import 'package:skyconnect_starter/components/header.dart';
import 'package:skyconnect_starter/components/heading2.dart';
import 'package:skyconnect_starter/components/heading3.dart';
import 'package:skyconnect_starter/components/heading_text.dart';
import 'package:skyconnect_starter/components/heading5.dart';
import 'package:skyconnect_starter/components/heading6.dart';
import 'package:skyconnect_starter/components/heading_text.dart';
import 'package:skyconnect_starter/components/officialDetails.dart';
import 'package:skyconnect_starter/components/otherFacilities.dart';
import 'package:skyconnect_starter/components/parentsDetails.dart';
import 'package:skyconnect_starter/components/personalDetails.dart';
import 'package:skyconnect_starter/components/uploadDocuments.dart';
import 'package:skyconnect_starter/controllers/responsive.dart';
import 'package:skyconnect_starter/components/academicDetails.dart';
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
  bool _menu = false;
  var _specialGrade;
  var _date;
  var _madefor;
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
                left: Responsive.isDesktop(context)
                    ? Insets().appPadding * 2
                    : Insets().appPadding,
                right: Insets().appPadding),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                HeadingText(
                  size: Responsive.isDesktop(context) ? 35 : 20,
                  value: "Messages",
                  fontWeight: FontWeight.w700,
                  color: Colors.grey.shade800,
                ),
                SizedBox(
                  height: 10,
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
                color: Palette().primaryColorLight,
                borderRadius: BorderRadius.circular(Insets().appRadius)),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: !Responsive.isDesktop(context)
                      ? MediaQuery.of(context).size.width
                      : MediaQuery.of(context).size.width / 1.8,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Flex(
                        direction: Responsive.isDesktop(context)
                            ? Axis.horizontal
                            : Axis.vertical,
                        mainAxisAlignment: Responsive.isDesktop(context)
                            ? MainAxisAlignment.spaceBetween
                            : MainAxisAlignment.start,
                        crossAxisAlignment: Responsive.isDesktop(context)
                            ? CrossAxisAlignment.center
                            : CrossAxisAlignment.start,
                        children: [
                          HeadingText(
                              size: Responsive.isDesktop(context) ? 18 : 14,
                              value: "To"),
                          SizedBox(
                            width: 600,
                            height: Responsive.isDesktop(context) ? 50 : 40,
                            child: Container(
                              alignment: Alignment.centerLeft,
                              padding: EdgeInsets.only(
                                left: Insets().appPadding / 2,
                                right: Insets().appPadding / 2,
                              ),
                              decoration: BoxDecoration(
                                  border: Border.all(
                                      width: 1.5, color: Colors.grey),
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(
                                      Insets().appPadding / 1.5)),
                              child: TextFormField(
                                  textAlignVertical: TextAlignVertical.center,
                                  decoration: const InputDecoration(
                                    border: InputBorder.none,
                                  )),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: Responsive.isDesktop(context) ? 10 : 15,
                      ),
                      Flex(
                        direction: Responsive.isDesktop(context)
                            ? Axis.horizontal
                            : Axis.vertical,
                        mainAxisAlignment: Responsive.isDesktop(context)
                            ? MainAxisAlignment.spaceBetween
                            : MainAxisAlignment.start,
                        crossAxisAlignment: Responsive.isDesktop(context)
                            ? CrossAxisAlignment.center
                            : CrossAxisAlignment.start,
                        children: [
                          HeadingText(
                              size: Responsive.isDesktop(context) ? 18 : 14,
                              value: "Subject"),
                          SizedBox(
                            width: 600,
                            height: Responsive.isDesktop(context) ? 50 : 40,
                            child: Container(
                              alignment: Alignment.centerLeft,
                              padding: EdgeInsets.only(
                                left: Insets().appPadding / 2,
                                right: Insets().appPadding / 2,
                              ),
                              decoration: BoxDecoration(
                                  border: Border.all(
                                      width: 1.5, color: Colors.grey),
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(
                                      Insets().appPadding / 1.5)),
                              child: TextFormField(
                                  textAlignVertical: TextAlignVertical.center,
                                  decoration: const InputDecoration(
                                    border: InputBorder.none,
                                  )),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: Responsive.isDesktop(context) ? 10 : 15,
                      ),
                      Flex(
                        direction: Responsive.isDesktop(context)
                            ? Axis.horizontal
                            : Axis.vertical,
                        mainAxisAlignment: Responsive.isDesktop(context)
                            ? MainAxisAlignment.spaceBetween
                            : MainAxisAlignment.start,
                        crossAxisAlignment: Responsive.isDesktop(context)
                            ? CrossAxisAlignment.start
                            : CrossAxisAlignment.start,
                        children: [
                          HeadingText(
                              size: Responsive.isDesktop(context) ? 18 : 14,
                              value: "Compose"),
                          SizedBox(
                            width: 600,
                            height: Responsive.isDesktop(context) ? 300 : 200,
                            child: Container(
                              padding: EdgeInsets.only(
                                left: Insets().appPadding / 2,
                                right: Insets().appPadding / 2,
                              ),
                              decoration: BoxDecoration(
                                  border: Border.all(
                                      width: 1.5, color: Colors.grey),
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(
                                      Insets().appPadding / 1.5)),
                              child: Expanded(
                                child: TextFormField(
                                    textAlignVertical: TextAlignVertical.top,
                                    maxLines: double.maxFinite.floor(),
                                    keyboardType: TextInputType.multiline,
                                    decoration: const InputDecoration(
                                      border: InputBorder.none,
                                      hintText: "Compose Message",
                                    )),
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: Responsive.isDesktop(context) ? 10 : 15,
                      ),
                      Flex(
                        direction: Responsive.isDesktop(context)
                            ? Axis.horizontal
                            : Axis.vertical,
                        mainAxisAlignment: Responsive.isDesktop(context)
                            ? MainAxisAlignment.spaceBetween
                            : MainAxisAlignment.start,
                        crossAxisAlignment: Responsive.isDesktop(context)
                            ? CrossAxisAlignment.center
                            : CrossAxisAlignment.start,
                        children: [
                          HeadingText(
                              size: Responsive.isDesktop(context) ? 18 : 14,
                              value: "Attachment"),
                          SizedBox(
                            width: 600,
                            height: Responsive.isDesktop(context) ? 50 : 40,
                            child: Container(
                              alignment: Alignment.centerLeft,
                              padding: EdgeInsets.only(
                                left: Insets().appPadding / 2,
                                right: Insets().appPadding / 2,
                              ),
                              decoration: BoxDecoration(
                                  border: Border.all(
                                      width: 1.5, color: Colors.grey),
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(
                                      Insets().appPadding / 1.5)),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  HeadingText(
                                      size: Responsive.isDesktop(context)
                                          ? 15
                                          : 13,
                                      value: picked != null
                                          ? picked.files.first.name.toString()
                                          : "No Files Choosen"),
                                  ElevatedButton(
                                    onPressed: () async {
                                      setState(() async {
                                        picked = await FilePicker.platform
                                            .pickFiles(allowMultiple: false);
                                      });
                                      if (picked != null) {
                                        print(picked.files.first.name);
                                      }
                                    },
                                    style: ElevatedButton.styleFrom(
                                        backgroundColor: Palette().primaryColor,
                                        padding: EdgeInsets.only(
                                          bottom: Responsive.isDesktop(context)
                                              ? 17
                                              : 14,
                                          left: Insets().appPadding / 2,
                                          right: Insets().appPadding / 2,
                                          top: Responsive.isDesktop(context)
                                              ? 17
                                              : 14,
                                        ),
                                        shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(10))),
                                    child: HeadingText(
                                        size: Responsive.isDesktop(context)
                                            ? 15
                                            : 13,
                                        value: "Upload File(s)"),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: Responsive.isDesktop(context) ? 15 : 15,
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
                            width: 600,
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
                      SizedBox(
                        height: Responsive.isDesktop(context) ? 10 : 15,
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
