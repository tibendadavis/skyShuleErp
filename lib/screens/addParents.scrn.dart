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
import 'package:skyconnect_starter/theme/design.theme.dart';

class addParent extends StatefulWidget {
  const addParent({super.key});

  @override
  State<addParent> createState() => _addParentState();
}

class _addParentState extends State<addParent>
    with SingleTickerProviderStateMixin {
  bool regParent = true;
  bool regbyExcl = false;
  var picked;
  bool _menu = false;
  var _specialGrade;
  var _classlevel;
  var _designation;
  double _drawersize = 250;
  TextEditingController _dateOfBirth = TextEditingController();
  TextEditingController _joiningDate = TextEditingController();
  late AnimationController controller;
  late Animation<double> scaleAnimation;
  @override
  void initState() {
    super.initState();

    controller =
        AnimationController(vsync: this, duration: Duration(milliseconds: 700));
    scaleAnimation =
        CurvedAnimation(parent: controller, curve: Curves.elasticInOut);

    controller.addListener(() {
      setState(() {});
    });

    controller.forward();
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Center(
      child: Material(
        color: Colors.transparent,
        child: ScaleTransition(
          scale: scaleAnimation,
          child: Container(
            margin: EdgeInsets.only(
                top: Responsive.isDesktop(context) ? 20 : 50,
                bottom: Responsive.isDesktop(context) ? 20 : 50),
            decoration: ShapeDecoration(
                color: Colors.white,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15.0))),
            child: SingleChildScrollView(
                child: SizedBox(
              width: Responsive.isDesktop(context)
                  ? size.width / 1.2
                  : size.width - 20,
              child: Expanded(
                  child: Column(
                children: [
                  Container(
                    alignment: Alignment.bottomLeft,
                    padding: EdgeInsets.only(
                        top: Insets().appPadding,
                        left: Insets().appPadding * 2,
                        right: Insets().appGap),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Heading2(
                          value: "PARENT",
                          fontWeight: FontWeight.w700,
                          color: Colors.black,
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        const Heading3(
                          value: "Parent Information",
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
                    margin: EdgeInsets.all(Insets().appPadding),
                    decoration: BoxDecoration(
                        color: Palette().primaryColorLight,
                        borderRadius:
                            BorderRadius.circular(Insets().appRadius)),
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
                          width: Responsive.isDesktop(context) ? 220 : 130,
                          height: Responsive.isDesktop(context) ? 50 : 40,
                          child: ElevatedButton(
                              onPressed: () {
                                setState(() {
                                  regParent = true;
                                  regbyExcl = false;
                                });
                              },
                              style: ElevatedButton.styleFrom(
                                  elevation: 0,
                                  backgroundColor: !regParent
                                      ? Colors.white
                                      : Palette().primaryColor,
                                  side: BorderSide(
                                    width: 1,
                                    color: !regParent
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
                                value: "Register Parent",
                                color: !regParent ? Colors.black : Colors.white,
                              )),
                        ),
                        SizedBox(
                          width: Responsive.isDesktop(context) ? 10 : 10,
                          height: Responsive.isDesktop(context) ? 0 : 10,
                        ),
                        SizedBox(
                          width: Responsive.isDesktop(context) ? 220 : 130,
                          height: Responsive.isDesktop(context) ? 50 : 40,
                          child: ElevatedButton(
                              onPressed: () {
                                setState(() {
                                  regParent = false;
                                  regbyExcl = true;
                                });
                              },
                              style: ElevatedButton.styleFrom(
                                  elevation: 0,
                                  backgroundColor: !regbyExcl
                                      ? Colors.white
                                      : Palette().primaryColor,
                                  side: BorderSide(
                                    width: 1,
                                    color: !regbyExcl
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
                                size: Responsive.isDesktop(context) ? 14 : 11,
                                value: "Upload From Excel",
                                color: !regbyExcl ? Colors.black : Colors.white,
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
                        borderRadius:
                            BorderRadius.circular(Insets().appRadius)),
                    child: Visibility(
                      visible: regParent,
                      child: Flex(
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
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                width: Responsive.isDesktop(context)
                                    ? MediaQuery.of(context).size.width / 2.67
                                    : MediaQuery.of(context).size.width,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Flex(
                                      direction: Responsive.isDesktop(context)
                                          ? Axis.horizontal
                                          : Axis.vertical,
                                      mainAxisAlignment:
                                          Responsive.isDesktop(context)
                                              ? MainAxisAlignment.spaceBetween
                                              : MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          Responsive.isDesktop(context)
                                              ? CrossAxisAlignment.center
                                              : CrossAxisAlignment.start,
                                      children: [
                                        HeadingText(
                                            size: Responsive.isDesktop(context)
                                                ? 18
                                                : 14,
                                            value: "Name "),
                                        SizedBox(
                                          width: Responsive.isDesktop(context)
                                              ? 300
                                              : 400,
                                          height: Responsive.isDesktop(context)
                                              ? 50
                                              : 40,
                                          child: Container(
                                            alignment: Alignment.centerLeft,
                                            padding: EdgeInsets.only(
                                              left: Insets().appPadding / 2,
                                              right: Insets().appPadding / 2,
                                            ),
                                            decoration: BoxDecoration(
                                                border: Border.all(
                                                    width: 1.5,
                                                    color: Colors.grey),
                                                color: Colors.white,
                                                borderRadius:
                                                    BorderRadius.circular(
                                                        Insets().appPadding /
                                                            1.5)),
                                            child: TextFormField(
                                                textAlignVertical:
                                                    TextAlignVertical.center,
                                                decoration:
                                                    const InputDecoration(
                                                  border: InputBorder.none,
                                                  hintText: "Both Names",
                                                )),
                                          ),
                                        ),
                                      ],
                                    ),
                                    SizedBox(
                                      height: Responsive.isDesktop(context)
                                          ? 10
                                          : 15,
                                    ),
                                    Flex(
                                      direction: Responsive.isDesktop(context)
                                          ? Axis.horizontal
                                          : Axis.vertical,
                                      mainAxisAlignment:
                                          Responsive.isDesktop(context)
                                              ? MainAxisAlignment.spaceBetween
                                              : MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          Responsive.isDesktop(context)
                                              ? CrossAxisAlignment.center
                                              : CrossAxisAlignment.start,
                                      children: [
                                        HeadingText(
                                            size: Responsive.isDesktop(context)
                                                ? 18
                                                : 14,
                                            value: "Date of Birth"),
                                        SizedBox(
                                          width: Responsive.isDesktop(context)
                                              ? 300
                                              : 400,
                                          height: Responsive.isDesktop(context)
                                              ? 50
                                              : 40,
                                          child: Container(
                                            alignment: Alignment.centerLeft,
                                            padding: EdgeInsets.only(
                                              left: Insets().appPadding / 2,
                                              right: Insets().appPadding / 2,
                                            ),
                                            decoration: BoxDecoration(
                                                border: Border.all(
                                                    width: 1.5,
                                                    color: Colors.grey),
                                                color: Colors.white,
                                                borderRadius:
                                                    BorderRadius.circular(
                                                        Insets().appPadding /
                                                            1.5)),
                                            child: TextFormField(
                                                controller: _dateOfBirth,
                                                readOnly: true,
                                                onTap: () async {
                                                  final date = await Funcs()
                                                      .selectDate(
                                                          context: context);
                                                  final formattedDate =
                                                      DateFormat('yyyy-MM-dd')
                                                          .format(date!);
                                                  setState(() {
                                                    _dateOfBirth.text =
                                                        formattedDate;
                                                  });
                                                },
                                                textAlignVertical:
                                                    TextAlignVertical.center,
                                                decoration: InputDecoration(
                                                  suffixIcon: Icon(
                                                    Icons
                                                        .calendar_month_rounded,
                                                  ),
                                                  border: InputBorder.none,
                                                  hintText: "Date of Birth",
                                                )),
                                          ),
                                        ),
                                      ],
                                    ),
                                    SizedBox(
                                      height: Responsive.isDesktop(context)
                                          ? 10
                                          : 15,
                                    ),
                                    Flex(
                                      direction: Responsive.isDesktop(context)
                                          ? Axis.horizontal
                                          : Axis.vertical,
                                      mainAxisAlignment:
                                          Responsive.isDesktop(context)
                                              ? MainAxisAlignment.spaceBetween
                                              : MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          Responsive.isDesktop(context)
                                              ? CrossAxisAlignment.center
                                              : CrossAxisAlignment.start,
                                      children: [
                                        HeadingText(
                                            size: Responsive.isDesktop(context)
                                                ? 18
                                                : 14,
                                            value: "Gender"),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          children: [
                                            Radio(
                                              value: false,
                                              onChanged: (value) {},
                                              groupValue: null,
                                            ),
                                            Heading5(value: "Male"),
                                            SizedBox(
                                              width: 10,
                                            ),
                                            Radio(
                                              value: false,
                                              onChanged: (value) {},
                                              groupValue: null,
                                            ),
                                            Heading5(value: "Female"),
                                          ],
                                        ),
                                      ],
                                    ),
                                    SizedBox(
                                      height: Responsive.isDesktop(context)
                                          ? 10
                                          : 15,
                                    ),
                                    Flex(
                                      direction: Responsive.isDesktop(context)
                                          ? Axis.horizontal
                                          : Axis.vertical,
                                      mainAxisAlignment:
                                          Responsive.isDesktop(context)
                                              ? MainAxisAlignment.spaceBetween
                                              : MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          Responsive.isDesktop(context)
                                              ? CrossAxisAlignment.center
                                              : CrossAxisAlignment.start,
                                      children: [
                                        HeadingText(
                                            size: Responsive.isDesktop(context)
                                                ? 18
                                                : 14,
                                            value: "Nationality"),
                                        SizedBox(
                                          width: Responsive.isDesktop(context)
                                              ? 300
                                              : 400,
                                          height: Responsive.isDesktop(context)
                                              ? 50
                                              : 40,
                                          child: Container(
                                            padding: EdgeInsets.only(
                                              left: Insets().appPadding / 2,
                                              right: Insets().appPadding / 2,
                                            ),
                                            decoration: BoxDecoration(
                                                border: Border.all(
                                                    color: Colors.grey,
                                                    width: 1.5),
                                                color: Colors.white,
                                                borderRadius:
                                                    BorderRadius.circular(
                                                        Insets().appGap + 4)),
                                            child: DropdownButton(
                                              items: const [
                                                DropdownMenuItem(
                                                    child: Heading5(
                                                      value:
                                                          "Tanzania (United Republic of)",
                                                    ),
                                                    value: "TZ"),
                                                DropdownMenuItem(
                                                    child: Heading5(
                                                      value: "Kenya ",
                                                    ),
                                                    value: "KE"),
                                                DropdownMenuItem(
                                                    child: Heading5(
                                                      value: "Uganda",
                                                    ),
                                                    value: "UG"),
                                              ],
                                              value: _classlevel,
                                              isExpanded: true,
                                              iconSize: 35,
                                              icon: Icon(Icons
                                                  .keyboard_arrow_down_outlined),
                                              underline: SizedBox(),
                                              dropdownColor: Colors.white,
                                              borderRadius:
                                                  BorderRadius.circular(
                                                      Insets().appRadiusMin +
                                                          4),
                                              hint: Heading5(
                                                value: "Select Nationality",
                                              ),
                                              onChanged: ((value) {
                                                if (value is int) {
                                                  setState(() {
                                                    _classlevel = value;
                                                  });
                                                }
                                              }),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                    SizedBox(
                                      height: Responsive.isDesktop(context)
                                          ? 10
                                          : 15,
                                    ),
                                    Flex(
                                      direction: Responsive.isDesktop(context)
                                          ? Axis.horizontal
                                          : Axis.vertical,
                                      mainAxisAlignment:
                                          Responsive.isDesktop(context)
                                              ? MainAxisAlignment.spaceBetween
                                              : MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          Responsive.isDesktop(context)
                                              ? CrossAxisAlignment.center
                                              : CrossAxisAlignment.start,
                                      children: [
                                        HeadingText(
                                            size: Responsive.isDesktop(context)
                                                ? 18
                                                : 14,
                                            value: "National ID No "),
                                        SizedBox(
                                          width: Responsive.isDesktop(context)
                                              ? 300
                                              : 400,
                                          height: Responsive.isDesktop(context)
                                              ? 50
                                              : 40,
                                          child: Container(
                                            alignment: Alignment.centerLeft,
                                            padding: EdgeInsets.only(
                                              left: Insets().appPadding / 2,
                                              right: Insets().appPadding / 2,
                                            ),
                                            decoration: BoxDecoration(
                                                border: Border.all(
                                                    width: 1.5,
                                                    color: Colors.grey),
                                                color: Colors.white,
                                                borderRadius:
                                                    BorderRadius.circular(
                                                        Insets().appPadding /
                                                            1.5)),
                                            child: TextFormField(
                                                textAlignVertical:
                                                    TextAlignVertical.center,
                                                decoration:
                                                    const InputDecoration(
                                                  border: InputBorder.none,
                                                  hintText: "NIDA",
                                                )),
                                          ),
                                        ),
                                      ],
                                    ),
                                    SizedBox(
                                      height: Responsive.isDesktop(context)
                                          ? 10
                                          : 15,
                                    ),
                                    Flex(
                                      direction: Responsive.isDesktop(context)
                                          ? Axis.horizontal
                                          : Axis.vertical,
                                      mainAxisAlignment:
                                          Responsive.isDesktop(context)
                                              ? MainAxisAlignment.spaceBetween
                                              : MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          Responsive.isDesktop(context)
                                              ? CrossAxisAlignment.center
                                              : CrossAxisAlignment.start,
                                      children: [
                                        HeadingText(
                                            size: Responsive.isDesktop(context)
                                                ? 18
                                                : 14,
                                            value: "ID number/PF-number"),
                                        SizedBox(
                                          width: 200,
                                          height: Responsive.isDesktop(context)
                                              ? 50
                                              : 40,
                                          child: Container(
                                            alignment: Alignment.centerLeft,
                                            padding: EdgeInsets.only(
                                              left: Insets().appPadding / 2,
                                              right: Insets().appPadding / 2,
                                            ),
                                            decoration: BoxDecoration(
                                                border: Border.all(
                                                    width: 1.5,
                                                    color: Colors.grey),
                                                color: Colors.white,
                                                borderRadius:
                                                    BorderRadius.circular(
                                                        Insets().appPadding /
                                                            1.5)),
                                            child: TextFormField(
                                                textAlignVertical:
                                                    TextAlignVertical.center,
                                                decoration:
                                                    const InputDecoration(
                                                  border: InputBorder.none,
                                                  hintText: "",
                                                )),
                                          ),
                                        ),
                                      ],
                                    ),
                                    SizedBox(
                                      height: Responsive.isDesktop(context)
                                          ? 10
                                          : 15,
                                    ),
                                    Flex(
                                      direction: Responsive.isDesktop(context)
                                          ? Axis.horizontal
                                          : Axis.vertical,
                                      mainAxisAlignment:
                                          Responsive.isDesktop(context)
                                              ? MainAxisAlignment.spaceBetween
                                              : MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          Responsive.isDesktop(context)
                                              ? CrossAxisAlignment.center
                                              : CrossAxisAlignment.start,
                                      children: [
                                        HeadingText(
                                            size: Responsive.isDesktop(context)
                                                ? 18
                                                : 14,
                                            value: "Designation"),
                                        SizedBox(
                                          width: Responsive.isDesktop(context)
                                              ? 300
                                              : 400,
                                          height: Responsive.isDesktop(context)
                                              ? 50
                                              : 40,
                                          child: Container(
                                            padding: EdgeInsets.only(
                                              left: Insets().appPadding / 2,
                                              right: Insets().appPadding / 2,
                                            ),
                                            decoration: BoxDecoration(
                                                border: Border.all(
                                                    color: Colors.grey,
                                                    width: 1.5),
                                                color: Colors.white,
                                                borderRadius:
                                                    BorderRadius.circular(
                                                        Insets().appGap + 4)),
                                            child: DropdownButton(
                                              items: const [
                                                DropdownMenuItem(
                                                    child: Heading5(
                                                      value: "Admin",
                                                    ),
                                                    value: "Admin"),
                                                DropdownMenuItem(
                                                    child: Heading5(
                                                      value: "Parent",
                                                    ),
                                                    value: "Parent"),
                                                DropdownMenuItem(
                                                    child: Heading5(
                                                      value: "Accountant",
                                                    ),
                                                    value: "Accountant"),
                                                DropdownMenuItem(
                                                    child: Heading5(
                                                      value: "Teacher",
                                                    ),
                                                    value: "Teacher"),
                                                DropdownMenuItem(
                                                    child: Heading5(
                                                      value:
                                                          "Assistant Head teacher",
                                                    ),
                                                    value:
                                                        "Assistant Head teacher"),
                                                DropdownMenuItem(
                                                    child: Heading5(
                                                      value: "Head Teacher",
                                                    ),
                                                    value: "Head Teacher"),
                                                DropdownMenuItem(
                                                    child: Heading5(
                                                      value:
                                                          "Assistant of academic master",
                                                    ),
                                                    value:
                                                        "Assistant of academic master"),
                                                DropdownMenuItem(
                                                    child: Heading5(
                                                      value: "Burser",
                                                    ),
                                                    value: "Burser"),
                                                DropdownMenuItem(
                                                    child: Heading5(
                                                      value: "Cleaner",
                                                    ),
                                                    value: "Cleaner"),
                                                DropdownMenuItem(
                                                    child: Heading5(
                                                      value: "Cook",
                                                    ),
                                                    value: "Cook"),
                                                DropdownMenuItem(
                                                    child: Heading5(
                                                      value: "Driver",
                                                    ),
                                                    value: "Driver"),
                                                DropdownMenuItem(
                                                    child: Heading5(
                                                      value:
                                                          "Transport Officer",
                                                    ),
                                                    value: "Transport Officer"),
                                                DropdownMenuItem(
                                                    child: Heading5(
                                                      value: "Matron",
                                                    ),
                                                    value: "Matron"),
                                                DropdownMenuItem(
                                                    child: Heading5(
                                                      value: "Nurse",
                                                    ),
                                                    value: "Nurse"),
                                                DropdownMenuItem(
                                                    child: Heading5(
                                                      value:
                                                          "Quality Assurance Officer",
                                                    ),
                                                    value:
                                                        "Quality Assurance Officer"),
                                                DropdownMenuItem(
                                                    child: Heading5(
                                                      value: "Secretary",
                                                    ),
                                                    value: "Secretary"),
                                                DropdownMenuItem(
                                                    child: Heading5(
                                                      value: "Store-Keeper",
                                                    ),
                                                    value: "Store-Keeper"),
                                                DropdownMenuItem(
                                                    child: Heading5(
                                                      value: "Tailor",
                                                    ),
                                                    value: "Tailor"),
                                                DropdownMenuItem(
                                                    child: Heading5(
                                                      value: "Patron",
                                                    ),
                                                    value: "Patron"),
                                                DropdownMenuItem(
                                                    child: Heading5(
                                                      value:
                                                          "HR & Admin Manager",
                                                    ),
                                                    value:
                                                        "HR & Admin Manager"),
                                                DropdownMenuItem(
                                                    child: Heading5(
                                                      value: "Academic Master",
                                                    ),
                                                    value: "Academic Master"),
                                                DropdownMenuItem(
                                                    child: Heading5(
                                                      value:
                                                          "Discipline Master",
                                                    ),
                                                    value: "Discipline Master"),
                                                DropdownMenuItem(
                                                    child: Heading5(
                                                      value: "Normal",
                                                    ),
                                                    value: "Normal"),
                                                DropdownMenuItem(
                                                    child: Heading5(
                                                      value: "Class Teacher",
                                                    ),
                                                    value: "Class Teacher"),
                                              ],
                                              value: _designation,
                                              isExpanded: true,
                                              iconSize: 35,
                                              icon: Icon(Icons
                                                  .keyboard_arrow_down_outlined),
                                              underline: SizedBox(),
                                              dropdownColor: Colors.white,
                                              borderRadius:
                                                  BorderRadius.circular(
                                                      Insets().appRadiusMin +
                                                          4),
                                              hint: Heading5(
                                                value: "Select Designation",
                                              ),
                                              onChanged: ((value) {
                                                if (value is String) {
                                                  setState(() {
                                                    _designation = value;
                                                  });
                                                }
                                              }),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                    SizedBox(
                                      height: Responsive.isDesktop(context)
                                          ? 10
                                          : 15,
                                    ),
                                    Flex(
                                      direction: Responsive.isDesktop(context)
                                          ? Axis.horizontal
                                          : Axis.vertical,
                                      mainAxisAlignment:
                                          Responsive.isDesktop(context)
                                              ? MainAxisAlignment.spaceBetween
                                              : MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          Responsive.isDesktop(context)
                                              ? CrossAxisAlignment.center
                                              : CrossAxisAlignment.start,
                                      children: [
                                        HeadingText(
                                            size: Responsive.isDesktop(context)
                                                ? 18
                                                : 14,
                                            value: "Education"),
                                        SizedBox(
                                          width: Responsive.isDesktop(context)
                                              ? 300
                                              : 400,
                                          height: Responsive.isDesktop(context)
                                              ? 50
                                              : 40,
                                          child: Container(
                                            padding: EdgeInsets.only(
                                              left: Insets().appPadding / 2,
                                              right: Insets().appPadding / 2,
                                            ),
                                            decoration: BoxDecoration(
                                                border: Border.all(
                                                    color: Colors.grey,
                                                    width: 1.5),
                                                color: Colors.white,
                                                borderRadius:
                                                    BorderRadius.circular(
                                                        Insets().appGap + 4)),
                                            child: DropdownButton(
                                              items: const [
                                                DropdownMenuItem(
                                                    child: Heading5(
                                                      value: "Education",
                                                    ),
                                                    value: "Education"),
                                                DropdownMenuItem(
                                                    child: Heading5(
                                                      value: "Education2",
                                                    ),
                                                    value: "Education2"),
                                                DropdownMenuItem(
                                                    child: Heading5(
                                                      value: "Education3",
                                                    ),
                                                    value: "Education3"),
                                              ],
                                              value: _classlevel,
                                              isExpanded: true,
                                              iconSize: 35,
                                              icon: Icon(Icons
                                                  .keyboard_arrow_down_outlined),
                                              underline: SizedBox(),
                                              dropdownColor: Colors.white,
                                              borderRadius:
                                                  BorderRadius.circular(
                                                      Insets().appRadiusMin +
                                                          4),
                                              hint: Heading5(
                                                value: "Select Education",
                                              ),
                                              onChanged: ((value) {
                                                if (value is int) {
                                                  setState(() {
                                                    _classlevel = value;
                                                  });
                                                }
                                              }),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                    SizedBox(
                                      height: Responsive.isDesktop(context)
                                          ? 10
                                          : 15,
                                    ),
                                    Flex(
                                      direction: Responsive.isDesktop(context)
                                          ? Axis.horizontal
                                          : Axis.vertical,
                                      mainAxisAlignment:
                                          Responsive.isDesktop(context)
                                              ? MainAxisAlignment.spaceBetween
                                              : MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          Responsive.isDesktop(context)
                                              ? CrossAxisAlignment.center
                                              : CrossAxisAlignment.start,
                                      children: [
                                        HeadingText(
                                            size: Responsive.isDesktop(context)
                                                ? 18
                                                : 14,
                                            value: "Physical condition"),
                                        SizedBox(
                                          width: Responsive.isDesktop(context)
                                              ? 300
                                              : 400,
                                          height: Responsive.isDesktop(context)
                                              ? 50
                                              : 40,
                                          child: Container(
                                            padding: EdgeInsets.only(
                                              left: Insets().appPadding / 2,
                                              right: Insets().appPadding / 2,
                                            ),
                                            decoration: BoxDecoration(
                                                border: Border.all(
                                                    color: Colors.grey,
                                                    width: 1.5),
                                                color: Colors.white,
                                                borderRadius:
                                                    BorderRadius.circular(
                                                        Insets().appGap + 4)),
                                            child: DropdownButton(
                                              items: const [
                                                DropdownMenuItem(
                                                    child: Heading5(
                                                      value: "Designation",
                                                    ),
                                                    value: "Designation"),
                                                DropdownMenuItem(
                                                    child: Heading5(
                                                      value: "Designation2",
                                                    ),
                                                    value: "Designation2"),
                                                DropdownMenuItem(
                                                    child: Heading5(
                                                      value: "Designation3",
                                                    ),
                                                    value: "Designation3"),
                                              ],
                                              value: _classlevel,
                                              isExpanded: true,
                                              iconSize: 35,
                                              icon: Icon(Icons
                                                  .keyboard_arrow_down_outlined),
                                              underline: SizedBox(),
                                              dropdownColor: Colors.white,
                                              borderRadius:
                                                  BorderRadius.circular(
                                                      Insets().appRadiusMin +
                                                          4),
                                              onChanged: ((value) {
                                                if (value is int) {
                                                  setState(() {
                                                    _classlevel = value;
                                                  });
                                                }
                                              }),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                    SizedBox(
                                      height: Responsive.isDesktop(context)
                                          ? 10
                                          : 15,
                                    ),
                                    Flex(
                                      direction: Responsive.isDesktop(context)
                                          ? Axis.horizontal
                                          : Axis.vertical,
                                      mainAxisAlignment:
                                          Responsive.isDesktop(context)
                                              ? MainAxisAlignment.spaceBetween
                                              : MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          Responsive.isDesktop(context)
                                              ? CrossAxisAlignment.center
                                              : CrossAxisAlignment.start,
                                      children: [
                                        HeadingText(
                                            size: Responsive.isDesktop(context)
                                                ? 18
                                                : 14,
                                            value: "Health Status"),
                                        SizedBox(
                                          width: Responsive.isDesktop(context)
                                              ? 300
                                              : 400,
                                          height: Responsive.isDesktop(context)
                                              ? 50
                                              : 40,
                                          child: Container(
                                            padding: EdgeInsets.only(
                                              left: Insets().appPadding / 2,
                                              right: Insets().appPadding / 2,
                                            ),
                                            decoration: BoxDecoration(
                                                border: Border.all(
                                                    color: Colors.grey,
                                                    width: 1.5),
                                                color: Colors.white,
                                                borderRadius:
                                                    BorderRadius.circular(
                                                        Insets().appGap + 4)),
                                            child: DropdownButton(
                                              items: const [
                                                DropdownMenuItem(
                                                    child: Heading5(
                                                      value: "Health Status",
                                                    ),
                                                    value: "Health Status"),
                                              ],
                                              value: _classlevel,
                                              isExpanded: true,
                                              hint: Heading5(
                                                value: "Status",
                                              ),
                                              iconSize: 35,
                                              icon: Icon(Icons
                                                  .keyboard_arrow_down_outlined),
                                              underline: SizedBox(),
                                              dropdownColor: Colors.white,
                                              borderRadius:
                                                  BorderRadius.circular(
                                                      Insets().appRadiusMin +
                                                          4),
                                              onChanged: ((value) {
                                                if (value is int) {
                                                  setState(() {
                                                    _classlevel = value;
                                                  });
                                                }
                                              }),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                    SizedBox(
                                      height: Responsive.isDesktop(context)
                                          ? 10
                                          : 15,
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: Responsive.isDesktop(context) ? 550 : 0,
                            child: Responsive.isDesktop(context)
                                ? VerticalDivider(
                                    thickness: 1.5,
                                    color: Colors.grey,
                                  )
                                : Offstage(),
                            width: Responsive.isDesktop(context) ? 0 : 10,
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                width: Responsive.isDesktop(context)
                                    ? MediaQuery.of(context).size.width / 2.67
                                    : MediaQuery.of(context).size.width,
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Flex(
                                      direction: Responsive.isDesktop(context)
                                          ? Axis.horizontal
                                          : Axis.vertical,
                                      mainAxisAlignment:
                                          Responsive.isDesktop(context)
                                              ? MainAxisAlignment.spaceBetween
                                              : MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          Responsive.isDesktop(context)
                                              ? CrossAxisAlignment.center
                                              : CrossAxisAlignment.start,
                                      children: [
                                        HeadingText(
                                            size: Responsive.isDesktop(context)
                                                ? 18
                                                : 14,
                                            value: "Health Insuarance"),
                                        SizedBox(
                                          width: Responsive.isDesktop(context)
                                              ? 300
                                              : 400,
                                          height: Responsive.isDesktop(context)
                                              ? 50
                                              : 40,
                                          child: Container(
                                            padding: EdgeInsets.only(
                                              left: Insets().appPadding / 2,
                                              right: Insets().appPadding / 2,
                                            ),
                                            decoration: BoxDecoration(
                                                border: Border.all(
                                                    color: Colors.grey,
                                                    width: 1.5),
                                                color: Colors.white,
                                                borderRadius:
                                                    BorderRadius.circular(
                                                        Insets().appGap + 4)),
                                            child: DropdownButton(
                                              items: const [
                                                DropdownMenuItem(
                                                    child: Heading5(
                                                      value:
                                                          "Health Insuarance",
                                                    ),
                                                    value: "Health Insuarance"),
                                              ],
                                              value: _classlevel,
                                              isExpanded: true,
                                              hint: Heading5(
                                                value: "Health Insuarance",
                                              ),
                                              iconSize: 35,
                                              icon: Icon(Icons
                                                  .keyboard_arrow_down_outlined),
                                              underline: SizedBox(),
                                              dropdownColor: Colors.white,
                                              borderRadius:
                                                  BorderRadius.circular(
                                                      Insets().appRadiusMin +
                                                          4),
                                              onChanged: ((value) {
                                                if (value is int) {
                                                  setState(() {
                                                    _classlevel = value;
                                                  });
                                                }
                                              }),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                    SizedBox(
                                      height: Responsive.isDesktop(context)
                                          ? 10
                                          : 15,
                                    ),
                                    Flex(
                                      direction: Responsive.isDesktop(context)
                                          ? Axis.horizontal
                                          : Axis.vertical,
                                      mainAxisAlignment:
                                          Responsive.isDesktop(context)
                                              ? MainAxisAlignment.spaceBetween
                                              : MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          Responsive.isDesktop(context)
                                              ? CrossAxisAlignment.center
                                              : CrossAxisAlignment.start,
                                      children: [
                                        HeadingText(
                                            size: Responsive.isDesktop(context)
                                                ? 18
                                                : 14,
                                            value: "Religion"),
                                        SizedBox(
                                          width: Responsive.isDesktop(context)
                                              ? 300
                                              : 400,
                                          height: Responsive.isDesktop(context)
                                              ? 50
                                              : 40,
                                          child: Container(
                                            padding: EdgeInsets.only(
                                              left: Insets().appPadding / 2,
                                              right: Insets().appPadding / 2,
                                            ),
                                            decoration: BoxDecoration(
                                                border: Border.all(
                                                    color: Colors.grey,
                                                    width: 1.5),
                                                color: Colors.white,
                                                borderRadius:
                                                    BorderRadius.circular(
                                                        Insets().appGap + 4)),
                                            child: DropdownButton(
                                              items: const [
                                                DropdownMenuItem(
                                                    child: Heading5(
                                                      value: "Christianity",
                                                    ),
                                                    value: "Christian"),
                                                DropdownMenuItem(
                                                    child: Heading5(
                                                      value: "Islam",
                                                    ),
                                                    value: "Religion"),
                                                DropdownMenuItem(
                                                  child: Heading5(
                                                    value: "Religion",
                                                  ),
                                                )
                                              ],
                                              value: _classlevel,
                                              isExpanded: true,
                                              hint: Heading5(
                                                value: "Religion",
                                              ),
                                              iconSize: 35,
                                              icon: Icon(Icons
                                                  .keyboard_arrow_down_outlined),
                                              underline: SizedBox(),
                                              dropdownColor: Colors.white,
                                              borderRadius:
                                                  BorderRadius.circular(
                                                      Insets().appRadiusMin +
                                                          4),
                                              onChanged: ((value) {
                                                if (value is int) {
                                                  setState(() {
                                                    _classlevel = value;
                                                  });
                                                }
                                              }),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                    SizedBox(
                                      height: Responsive.isDesktop(context)
                                          ? 10
                                          : 15,
                                    ),
                                    Flex(
                                      direction: Responsive.isDesktop(context)
                                          ? Axis.horizontal
                                          : Axis.vertical,
                                      mainAxisAlignment:
                                          Responsive.isDesktop(context)
                                              ? MainAxisAlignment.spaceBetween
                                              : MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          Responsive.isDesktop(context)
                                              ? CrossAxisAlignment.center
                                              : CrossAxisAlignment.start,
                                      children: [
                                        HeadingText(
                                            size: Responsive.isDesktop(context)
                                                ? 18
                                                : 14,
                                            value: "Email"),
                                        SizedBox(
                                          width: Responsive.isDesktop(context)
                                              ? 300
                                              : 400,
                                          height: Responsive.isDesktop(context)
                                              ? 50
                                              : 40,
                                          child: Container(
                                            alignment: Alignment.centerLeft,
                                            padding: EdgeInsets.only(
                                              left: Insets().appPadding / 2,
                                              right: Insets().appPadding / 2,
                                            ),
                                            decoration: BoxDecoration(
                                                border: Border.all(
                                                    width: 1.5,
                                                    color: Colors.grey),
                                                color: Colors.white,
                                                borderRadius:
                                                    BorderRadius.circular(
                                                        Insets().appPadding /
                                                            1.5)),
                                            child: TextFormField(
                                                textAlignVertical:
                                                    TextAlignVertical.center,
                                                decoration:
                                                    const InputDecoration(
                                                  border: InputBorder.none,
                                                  hintText:
                                                      "Valid email eg. samson@gmail.com",
                                                )),
                                          ),
                                        ),
                                      ],
                                    ),
                                    SizedBox(
                                      height: Responsive.isDesktop(context)
                                          ? 10
                                          : 15,
                                    ),
                                    Flex(
                                      direction: Responsive.isDesktop(context)
                                          ? Axis.horizontal
                                          : Axis.vertical,
                                      mainAxisAlignment:
                                          Responsive.isDesktop(context)
                                              ? MainAxisAlignment.spaceBetween
                                              : MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          Responsive.isDesktop(context)
                                              ? CrossAxisAlignment.center
                                              : CrossAxisAlignment.start,
                                      children: [
                                        HeadingText(
                                            size: Responsive.isDesktop(context)
                                                ? 18
                                                : 14,
                                            value: "Phone "),
                                        SizedBox(
                                          width: 200,
                                          height: Responsive.isDesktop(context)
                                              ? 50
                                              : 40,
                                          child: Container(
                                            alignment: Alignment.centerLeft,
                                            padding: EdgeInsets.only(
                                              left: Insets().appPadding / 2,
                                              right: Insets().appPadding / 2,
                                            ),
                                            decoration: BoxDecoration(
                                                border: Border.all(
                                                    width: 1.5,
                                                    color: Colors.grey),
                                                color: Colors.white,
                                                borderRadius:
                                                    BorderRadius.circular(
                                                        Insets().appPadding /
                                                            1.5)),
                                            child: TextFormField(
                                                textAlignVertical:
                                                    TextAlignVertical.center,
                                                decoration:
                                                    const InputDecoration(
                                                  border: InputBorder.none,
                                                  hintText: "eg 693123456",
                                                )),
                                          ),
                                        ),
                                      ],
                                    ),
                                    SizedBox(
                                      height: Responsive.isDesktop(context)
                                          ? 10
                                          : 15,
                                    ),
                                    Flex(
                                      direction: Responsive.isDesktop(context)
                                          ? Axis.horizontal
                                          : Axis.vertical,
                                      mainAxisAlignment:
                                          Responsive.isDesktop(context)
                                              ? MainAxisAlignment.spaceBetween
                                              : MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          Responsive.isDesktop(context)
                                              ? CrossAxisAlignment.center
                                              : CrossAxisAlignment.start,
                                      children: [
                                        HeadingText(
                                            size: Responsive.isDesktop(context)
                                                ? 18
                                                : 14,
                                            value: "Address"),
                                        SizedBox(
                                          width: Responsive.isDesktop(context)
                                              ? 300
                                              : 400,
                                          height: Responsive.isDesktop(context)
                                              ? 70
                                              : 60,
                                          child: Container(
                                            padding: EdgeInsets.only(
                                              left: Insets().appPadding / 2,
                                              right: Insets().appPadding / 2,
                                            ),
                                            decoration: BoxDecoration(
                                                border: Border.all(
                                                    width: 1.5,
                                                    color: Colors.grey),
                                                color: Colors.white,
                                                borderRadius:
                                                    BorderRadius.circular(
                                                        Insets().appPadding /
                                                            1.5)),
                                            child: TextFormField(
                                                maxLines:
                                                    double.maxFinite.floor(),
                                                keyboardType:
                                                    TextInputType.multiline,
                                                textAlignVertical:
                                                    TextAlignVertical.top,
                                                decoration:
                                                    const InputDecoration(
                                                  border: InputBorder.none,
                                                  hintText: "Town",
                                                )),
                                          ),
                                        ),
                                      ],
                                    ),
                                    SizedBox(
                                      height: Responsive.isDesktop(context)
                                          ? 10
                                          : 15,
                                    ),
                                    Flex(
                                      direction: Responsive.isDesktop(context)
                                          ? Axis.horizontal
                                          : Axis.vertical,
                                      mainAxisAlignment:
                                          Responsive.isDesktop(context)
                                              ? MainAxisAlignment.spaceBetween
                                              : MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          Responsive.isDesktop(context)
                                              ? CrossAxisAlignment.center
                                              : CrossAxisAlignment.start,
                                      children: [
                                        HeadingText(
                                            size: Responsive.isDesktop(context)
                                                ? 18
                                                : 14,
                                            value: "Joining Date"),
                                        SizedBox(
                                          width: Responsive.isDesktop(context)
                                              ? 300
                                              : 400,
                                          height: Responsive.isDesktop(context)
                                              ? 50
                                              : 40,
                                          child: Container(
                                            alignment: Alignment.centerLeft,
                                            padding: EdgeInsets.only(
                                              left: Insets().appPadding / 2,
                                              right: Insets().appPadding / 2,
                                            ),
                                            decoration: BoxDecoration(
                                                border: Border.all(
                                                    width: 1.5,
                                                    color: Colors.grey),
                                                color: Colors.white,
                                                borderRadius:
                                                    BorderRadius.circular(
                                                        Insets().appPadding /
                                                            1.5)),
                                            child: TextFormField(
                                                controller: _joiningDate,
                                                readOnly: true,
                                                onTap: () async {
                                                  final date = await Funcs()
                                                      .selectDate(
                                                          context: context);
                                                  final formattedDate =
                                                      DateFormat('yyyy-MM-dd')
                                                          .format(date!);
                                                  setState(() {
                                                    _joiningDate.text =
                                                        formattedDate;
                                                  });
                                                },
                                                textAlignVertical:
                                                    TextAlignVertical.center,
                                                decoration: InputDecoration(
                                                  suffixIcon: Icon(
                                                    Icons
                                                        .calendar_month_rounded,
                                                  ),
                                                  border: InputBorder.none,
                                                  hintText: "Joining Date",
                                                )),
                                          ),
                                        ),
                                      ],
                                    ),
                                    SizedBox(
                                      height: Responsive.isDesktop(context)
                                          ? 10
                                          : 15,
                                    ),
                                    Flex(
                                      direction: Responsive.isDesktop(context)
                                          ? Axis.horizontal
                                          : Axis.vertical,
                                      mainAxisAlignment:
                                          Responsive.isDesktop(context)
                                              ? MainAxisAlignment.spaceBetween
                                              : MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          Responsive.isDesktop(context)
                                              ? CrossAxisAlignment.center
                                              : CrossAxisAlignment.start,
                                      children: [
                                        HeadingText(
                                            size: Responsive.isDesktop(context)
                                                ? 18
                                                : 14,
                                            value: "Photo"),
                                        SizedBox(
                                          width: Responsive.isDesktop(context)
                                              ? 300
                                              : 400,
                                          height: Responsive.isDesktop(context)
                                              ? 50
                                              : 40,
                                          child: Container(
                                            alignment: Alignment.centerLeft,
                                            padding: EdgeInsets.only(
                                              left: Insets().appPadding / 2,
                                              right:
                                                  Responsive.isDesktop(context)
                                                      ? 5
                                                      : 4,
                                            ),
                                            decoration: BoxDecoration(
                                                color: Colors.white,
                                                border: Border.all(
                                                    width: 1.5,
                                                    color: Colors.grey),
                                                borderRadius:
                                                    BorderRadius.circular(
                                                        Insets().appPadding /
                                                            1.5)),
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                HeadingText(
                                                    size: Responsive.isDesktop(
                                                            context)
                                                        ? 15
                                                        : 13,
                                                    value: picked != null
                                                        ? picked
                                                            .files.first.name
                                                            .toString()
                                                        : "No File Choosen"),
                                                ElevatedButton(
                                                  onPressed: () async {
                                                    setState(() async {
                                                      picked = await FilePicker
                                                          .platform
                                                          .pickFiles(
                                                              allowMultiple:
                                                                  false);
                                                    });
                                                    if (picked != null) {
                                                      print(picked
                                                          .files.first.name);
                                                    }
                                                  },
                                                  style:
                                                      ElevatedButton.styleFrom(
                                                          backgroundColor:
                                                              Palette()
                                                                  .primaryColor,
                                                          padding:
                                                              EdgeInsets.only(
                                                            bottom: Responsive
                                                                    .isDesktop(
                                                                        context)
                                                                ? 17
                                                                : 14,
                                                            left: Insets()
                                                                    .appPadding /
                                                                2,
                                                            right: Insets()
                                                                    .appPadding /
                                                                2,
                                                            top: Responsive
                                                                    .isDesktop(
                                                                        context)
                                                                ? 17
                                                                : 14,
                                                          ),
                                                          shape: RoundedRectangleBorder(
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          10))),
                                                  child: HeadingText(
                                                      size:
                                                          Responsive.isDesktop(
                                                                  context)
                                                              ? 15
                                                              : 13,
                                                      value: "Upload File"),
                                                )
                                              ],
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                    SizedBox(
                                      height: Responsive.isDesktop(context)
                                          ? 110
                                          : 20,
                                    ),
                                    Flex(
                                      direction: Responsive.isDesktop(context)
                                          ? Axis.horizontal
                                          : Axis.vertical,
                                      mainAxisAlignment:
                                          Responsive.isDesktop(context)
                                              ? MainAxisAlignment.center
                                              : MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          Responsive.isDesktop(context)
                                              ? CrossAxisAlignment.center
                                              : CrossAxisAlignment.start,
                                      children: [
                                        SizedBox(
                                          width: Responsive.isDesktop(context)
                                              ? 403
                                              : 403,
                                          height: Responsive.isDesktop(context)
                                              ? 50
                                              : 40,
                                          child: ElevatedButton(
                                            style: ElevatedButton.styleFrom(
                                                padding: EdgeInsets.only(
                                                  left: Insets().appPadding / 2,
                                                  right:
                                                      Insets().appPadding / 2,
                                                ),
                                                backgroundColor:
                                                    Palette().primaryColor,
                                                elevation: 0,
                                                shape: RoundedRectangleBorder(
                                                    borderRadius: BorderRadius
                                                        .circular(Insets()
                                                                .appPadding /
                                                            1.5))),
                                            onPressed: () {},
                                            child: Center(
                                                child: HeadingText(
                                              size:
                                                  Responsive.isDesktop(context)
                                                      ? 18
                                                      : 14,
                                              value: "Save",
                                            )),
                                          ),
                                        ),
                                      ],
                                    ),
                                    SizedBox(
                                      height: Responsive.isDesktop(context)
                                          ? 10
                                          : 15,
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              )),
            )),
          ),
        ),
      ),
    );
  }
}
