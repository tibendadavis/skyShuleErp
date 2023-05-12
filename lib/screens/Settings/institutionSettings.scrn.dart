import 'package:file_picker/file_picker.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:intl/intl.dart';
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
import 'package:skyconnect_starter/controllers/funcs_main.dart';
import 'package:skyconnect_starter/controllers/responsive.dart';
import 'package:skyconnect_starter/components/academicDetails.dart';
import 'package:skyconnect_starter/main.dart';
import 'package:skyconnect_starter/screens/Settings/institutionDetails.scrn.dart';
import 'package:skyconnect_starter/theme/design.theme.dart';

class institutionSettings extends StatefulWidget {
  const institutionSettings({super.key});

  @override
  State<institutionSettings> createState() => _institutionSettingsState();
}

class _institutionSettingsState extends State<institutionSettings> {
  TextEditingController _startYear = TextEditingController();
  TextEditingController _endYear = TextEditingController();
  bool _menu = false;
  var picked;
  var _specialGrade;
  var _classlevel;
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
                left: Insets().appPadding * 2,
                right: Insets().appPadding * 2),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Heading2(
                  value: "INSTITUTION SETTING",
                  fontWeight: FontWeight.w700,
                  color: Colors.black,
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Heading3(
                      value: "Settings",
                      fontWeight: FontWeight.w600,
                      color: Colors.black,
                    ),
                    ElevatedButton(
                      onPressed: () async {
                        Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => MyHomePage(
                            page: institutionDetails(),
                          ),
                        ));
                      },
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Palette().primaryColor,
                          padding: EdgeInsets.only(
                            bottom: Responsive.isDesktop(context) ? 17 : 14,
                            left: 5,
                            right: 5,
                            top: Responsive.isDesktop(context) ? 17 : 14,
                          ),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10))),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.remove_red_eye_rounded,
                            color: Colors.white,
                            size: Responsive.isDesktop(context) ? null : 20,
                          ),
                          SizedBox(
                            width: Responsive.isDesktop(context) ? 5 : 0,
                          ),
                          HeadingText(
                              size: Responsive.isDesktop(context) ? 15 : 0,
                              value: Responsive.isDesktop(context)
                                  ? "View Details"
                                  : ""),
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
                              value: "Institution Name"),
                          SizedBox(
                            width: 400,
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
                                    hintText: "Institution Name",
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
                              value: "Institution Address"),
                          SizedBox(
                            width: 400,
                            height: Responsive.isDesktop(context) ? 100 : 70,
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
                                  textAlignVertical: TextAlignVertical.top,
                                  maxLines: double.maxFinite.floor(),
                                  keyboardType: TextInputType.multiline,
                                  decoration: const InputDecoration(
                                    border: InputBorder.none,
                                    hintText: "Institution Address",
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
                              value: "Instituition Phone"),
                          SizedBox(
                            width: 400,
                            height: Responsive.isDesktop(context) ? 100 : 70,
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
                                  textAlignVertical: TextAlignVertical.top,
                                  maxLines: double.maxFinite.floor(),
                                  keyboardType: TextInputType.multiline,
                                  decoration: const InputDecoration(
                                    border: InputBorder.none,
                                    hintText: "Institution Phone",
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
                              value: "Institution Email"),
                          SizedBox(
                            width: 400,
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
                                    hintText: "Institution Email",
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
                              value: "Institution Website"),
                          SizedBox(
                            width: 400,
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
                                    hintText: "Institution Website",
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
                              value: "Institution Motto"),
                          SizedBox(
                            width: 400,
                            height: Responsive.isDesktop(context) ? 100 : 70,
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
                                  textAlignVertical: TextAlignVertical.top,
                                  maxLines: double.maxFinite.floor(),
                                  keyboardType: TextInputType.multiline,
                                  decoration: const InputDecoration(
                                    border: InputBorder.none,
                                    hintText: "Institution Motto",
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
                              value: "Institution Vision"),
                          SizedBox(
                            width: 400,
                            height: Responsive.isDesktop(context) ? 100 : 70,
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
                                  textAlignVertical: TextAlignVertical.top,
                                  maxLines: double.maxFinite.floor(),
                                  keyboardType: TextInputType.multiline,
                                  decoration: const InputDecoration(
                                    border: InputBorder.none,
                                    hintText: "Institution Vision",
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
                              value: "Institution Mission"),
                          SizedBox(
                            width: 400,
                            height: Responsive.isDesktop(context) ? 100 : 70,
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
                                  textAlignVertical: TextAlignVertical.top,
                                  maxLines: double.maxFinite.floor(),
                                  keyboardType: TextInputType.multiline,
                                  decoration: const InputDecoration(
                                    border: InputBorder.none,
                                    hintText: "Institution Mission",
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
                              value: "Academic Year Start"),
                          SizedBox(
                            width: 400,
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
                                  controller: _startYear,
                                  readOnly: true,
                                  onTap: () async {
                                    final date = await Funcs()
                                        .selectDate(context: context);
                                    final formattedDate =
                                        DateFormat.y().format(date!);
                                    setState(() {
                                      _startYear.text = formattedDate;
                                    });
                                  },
                                  textAlignVertical: TextAlignVertical.center,
                                  decoration: InputDecoration(
                                    suffixIcon: Icon(
                                      Icons.calendar_month_rounded,
                                    ),
                                    border: InputBorder.none,
                                    hintText: "Academic Year Start",
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
                              value: "Academic Year End"),
                          SizedBox(
                            width: 400,
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
                                  controller: _endYear,
                                  readOnly: true,
                                  onTap: () async {
                                    final date = await Funcs()
                                        .selectDate(context: context);
                                    final formattedDate =
                                        DateFormat.y().format(date!);
                                    setState(() {
                                      _endYear.text = formattedDate;
                                    });
                                  },
                                  textAlignVertical: TextAlignVertical.center,
                                  decoration: InputDecoration(
                                    suffixIcon: Icon(
                                      Icons.calendar_month_rounded,
                                    ),
                                    border: InputBorder.none,
                                    hintText: "Academic Year End",
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
                              value: "Institution Logo"),
                          SizedBox(
                            width: 400,
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
                                          : "No File Choosen"),
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
                                        value: "Upload Logo"),
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
                                value: "Save",
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
