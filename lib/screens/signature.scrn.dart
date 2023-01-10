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
import 'package:skyconnect_starter/components/heading4.dart';
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
import 'package:skyconnect_starter/theme/design.theme.dart';

class signature extends StatefulWidget {
  const signature({super.key});

  @override
  State<signature> createState() => _signatureState();
}

class _signatureState extends State<signature> {
  bool signtre = true;
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
    return Scaffold(
      appBar: !Responsive.isDesktop(context)
          ? AppBar(
              centerTitle: true,
              elevation: 0,
              title: Title(
                  color: Palette().textColor,
                  child: const Heading2(
                    value: "SkyShule",
                  )),
              backgroundColor: Palette().primaryColor,
            )
          : null,
      drawer: skyShuleDrawer(
        size: 305,
        onTap: () {},
        menu: false,
      ),
      body: SingleChildScrollView(
          child: SizedBox(
        height: Responsive.isDesktop(context)
            ? size.height + 180
            : size.height + 910,
        width: size.width,
        child: Row(children: [
          if (Responsive.isDesktop(context))
            AnimatedContainer(
                duration: const Duration(milliseconds: 400),
                width: _drawersize,
                child: skyShuleDrawer(
                  size: _drawersize,
                  onTap: (val) {
                    setState(() {
                      _drawersize = val;
                    });
                  },
                  menu: _menu,
                )),
          Expanded(
              child: Column(
            children: [
              Container(
                  padding: EdgeInsets.only(
                      left: Insets().appPadding / 2,
                      right: Insets().appPadding / 2,
                      top: Insets().appGap,
                      bottom: Insets().appGap),
                  decoration: BoxDecoration(color: Palette().primaryColorLight),
                  child: header(
                    onTap: (val) {
                      setState(() {
                        _drawersize = val[0];
                        _menu = val[1];
                      });
                    },
                  )),
              Container(
                alignment: Alignment.bottomLeft,
                padding: EdgeInsets.only(
                    top: Insets().appPadding,
                    left: Insets().appPadding,
                    right: Insets().appGap),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Heading2(
                      value: "SIGNATURE",
                      fontWeight: FontWeight.w700,
                      color: Colors.black,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    const Heading4(
                      value: "Change Signature and School Stamps",
                      fontWeight: FontWeight.w600,
                      color: Colors.black,
                    ),
                  ],
                ),
              ),
              Container(
                alignment: Alignment.centerLeft,
                padding: EdgeInsets.only(
                    top: Insets().appPadding,
                    bottom: Insets().appPadding,
                    left: Insets().appPadding,
                    right: Insets().appPadding),
                margin: EdgeInsets.only(
                    bottom: Insets().appPadding / 2,
                    top: Insets().appPadding / 2,
                    right: Insets().appPadding,
                    left: Insets().appPadding),
                decoration: BoxDecoration(
                    color: Palette().primaryColorLight,
                    borderRadius: BorderRadius.circular(Insets().appRadius)),
                child: Flex(
                  direction: Responsive.isDesktop(context)
                      ? Axis.horizontal
                      : Axis.horizontal,
                  mainAxisAlignment: Responsive.isDesktop(context)
                      ? MainAxisAlignment.start
                      : MainAxisAlignment.start,
                  crossAxisAlignment: Responsive.isDesktop(context)
                      ? CrossAxisAlignment.start
                      : CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      width: Responsive.isDesktop(context) ? 220 : 150,
                      height: Responsive.isDesktop(context) ? 50 : 40,
                      child: ElevatedButton(
                          onPressed: () {
                            setState(() {
                              signtre = true;
                              schoolstmp = false;
                            });
                          },
                          style: ElevatedButton.styleFrom(
                              elevation: 0,
                              backgroundColor: !signtre
                                  ? Colors.white
                                  : Palette().primaryColor,
                              side: BorderSide(
                                width: 1,
                                color: !signtre
                                    ? Colors.black
                                    : Colors.transparent,
                              ),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(
                                      Insets().appRadiusMin + 4)),
                              padding: EdgeInsets.only(
                                  left: Insets().appPadding / 1.5,
                                  right: Insets().appPadding / 1.5,
                                  top: Insets().appPadding,
                                  bottom: Insets().appPadding)),
                          child: HeadingText(
                            size: Responsive.isDesktop(context) ? 14 : 12,
                            value: "Captured Signature",
                            color: !signtre ? Colors.black : Colors.white,
                          )),
                    ),
                    SizedBox(
                      width: Responsive.isDesktop(context) ? 10 : 10,
                      height: Responsive.isDesktop(context) ? 0 : 10,
                    ),
                    SizedBox(
                      width: Responsive.isDesktop(context) ? 220 : 120,
                      height: Responsive.isDesktop(context) ? 50 : 40,
                      child: ElevatedButton(
                          onPressed: () {
                            setState(() {
                              signtre = false;
                              schoolstmp = true;
                            });
                          },
                          style: ElevatedButton.styleFrom(
                              elevation: 0,
                              backgroundColor: !schoolstmp
                                  ? Colors.white
                                  : Palette().primaryColor,
                              side: BorderSide(
                                width: 1,
                                color: !schoolstmp
                                    ? Colors.black
                                    : Colors.transparent,
                              ),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(
                                      Insets().appRadiusMin + 4)),
                              padding: EdgeInsets.only(
                                  left: Insets().appPadding / 1.5,
                                  right: Insets().appPadding / 1.5,
                                  top: Insets().appPadding,
                                  bottom: Insets().appPadding)),
                          child: HeadingText(
                            size: Responsive.isDesktop(context) ? 14 : 12,
                            value: "School Stamp",
                            color: !schoolstmp ? Colors.black : Colors.white,
                          )),
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
                    color: Palette().primaryColorLight,
                    borderRadius: BorderRadius.circular(Insets().appRadius)),
                child: Column(
                  children: [
                    Visibility(
                      visible: signtre,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Heading4(
                            value: "Your Captured Signature",
                            fontWeight: FontWeight.w700,
                          ),
                          Flex(
                            direction: Responsive.isDesktop(context)
                                ? Axis.horizontal
                                : Axis.vertical,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: Responsive.isDesktop(context)
                                ? CrossAxisAlignment.start
                                : CrossAxisAlignment.start,
                            children: [
                              Heading6(
                                  value:
                                      "To appear on administrative documents"),
                              SizedBox(
                                height: Responsive.isDesktop(context) ? 0 : 10,
                              ),
                              ElevatedButton(
                                  onPressed: () {},
                                  style: ElevatedButton.styleFrom(
                                      backgroundColor: Palette().primaryColor,
                                      shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.circular(
                                              Insets().appRadiusMin + 4)),
                                      padding: EdgeInsets.all(
                                          Insets().appPadding / 1.2)),
                                  child: Heading5(
                                    value: "Add Signature",
                                    color: Colors.white,
                                  ))
                            ],
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Container(
                            width: MediaQuery.of(context).size.width,
                            alignment: Alignment.topLeft,
                            padding: EdgeInsets.only(
                                top: Insets().appPadding,
                                bottom: Insets().appPadding,
                                left: Insets().appPadding,
                                right: Insets().appPadding),
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius:
                                    BorderRadius.circular(Insets().appRadius)),
                            child: Center(
                                child: Heading4(
                              value: "Signature",
                            )),
                          )
                        ],
                      ),
                    ),
                    Visibility(
                      visible: schoolstmp,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Heading4(
                            value: "Your School Stamp",
                            fontWeight: FontWeight.w700,
                          ),
                          Flex(
                            direction: Responsive.isDesktop(context)
                                ? Axis.horizontal
                                : Axis.vertical,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: Responsive.isDesktop(context)
                                ? CrossAxisAlignment.start
                                : CrossAxisAlignment.start,
                            children: [
                              Heading6(
                                  value:
                                      "To appear on administrative documents"),
                              SizedBox(
                                height: Responsive.isDesktop(context) ? 0 : 10,
                              ),
                              ElevatedButton(
                                  onPressed: () {},
                                  style: ElevatedButton.styleFrom(
                                      backgroundColor: Palette().primaryColor,
                                      shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.circular(
                                              Insets().appRadiusMin + 4)),
                                      padding: EdgeInsets.all(
                                          Insets().appPadding / 1.2)),
                                  child: Heading5(
                                    value: "Add School Stamp",
                                    color: Colors.white,
                                  ))
                            ],
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Container(
                            width: MediaQuery.of(context).size.width,
                            alignment: Alignment.topLeft,
                            padding: EdgeInsets.only(
                                top: Insets().appPadding,
                                bottom: Insets().appPadding,
                                left: Insets().appPadding,
                                right: Insets().appPadding),
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius:
                                    BorderRadius.circular(Insets().appRadius)),
                            child: Center(
                                child: Heading4(
                              value: "School Stamp",
                            )),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              )
            ],
          ))
        ]),
      )),
    );
  }
}
