import 'package:flutter/material.dart';
import 'package:skyconnect_starter/components/heading4.dart';
import 'package:skyconnect_starter/components/heading5.dart';
import 'package:skyconnect_starter/components/heading_text.dart';
import 'package:skyconnect_starter/controllers/funcs_main.dart';
import 'package:skyconnect_starter/controllers/responsive.dart';
import 'package:skyconnect_starter/main.dart';
import 'package:skyconnect_starter/screens/Settings/institutionSettings.scrn.dart';
import 'package:skyconnect_starter/theme/design.theme.dart';

class institutionDetails extends StatefulWidget {
  const institutionDetails({super.key});

  @override
  State<institutionDetails> createState() => _institutionDetailsState();
}

class _institutionDetailsState extends State<institutionDetails> {
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
                left: Responsive.isDesktop(context)
                    ? Insets().appPadding * 2
                    : Insets().appPadding,
                right: Insets().appPadding),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                HeadingText(
                  size: Responsive.isDesktop(context) ? 25 : 20,
                  value: "Institution Details",
                  fontWeight: FontWeight.w700,
                  color: Colors.grey.shade800,
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Container(
                          width: Responsive.isDesktop(context) ? 120 : 100,
                          height: Responsive.isDesktop(context) ? 120 : 100,
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              image: DecorationImage(
                                  fit: BoxFit.cover,
                                  image:
                                      AssetImage("assets/img/schoolLogo.jpg"))),
                        ),
                        SizedBox(
                            width: Responsive.isDesktop(context) ? 45 : 10),
                        SizedBox(
                          width: !Responsive.isMobile(context) ? 550 : 150,
                          child: Expanded(
                            child: HeadingText(
                              size: Responsive.isDesktop(context) ? 25 : 17,
                              value: "KOLANDOTO COLLEGE OF HEALTH SCIENCES",
                              fontWeight: Responsive.isDesktop(context)
                                  ? FontWeight.w800
                                  : FontWeight.w700,
                              color: Colors.grey.shade900,
                            ),
                          ),
                        ),
                      ],
                    ),
                    ElevatedButton(
                      onPressed: () async {
                        Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => MyHomePage(
                            page: institutionSettings(),
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
                            Icons.settings_suggest_rounded,
                            color: Colors.white,
                            size: Responsive.isDesktop(context) ? null : 20,
                          ),
                          SizedBox(
                            width: Responsive.isDesktop(context) ? 5 : 0,
                          ),
                          HeadingText(
                              size: Responsive.isDesktop(context) ? 15 : 0,
                              value: Responsive.isDesktop(context)
                                  ? "Update"
                                  : ""),
                        ],
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),
          SizedBox(
            height: 15,
          ),
          Expanded(
            child: Container(
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
              child: Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ListTile(
                      contentPadding: EdgeInsets.only(
                        left: Responsive.isDesktop(context) ? 70 : 0,
                      ),
                      title: Flex(
                        direction: Responsive.isDesktop(context)
                            ? Axis.horizontal
                            : Axis.vertical,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          HeadingText(
                              size: Responsive.isDesktop(context) ? 16 : 16,
                              fontWeight: FontWeight.w800,
                              color: Colors.grey.shade600,
                              value: "Institution Name"),
                          SizedBox(
                            width: 20,
                          ),
                          SizedBox(
                            width: Responsive.isDesktop(context)
                                ? 800
                                : size.width,
                            child: Expanded(
                              child: HeadingText(
                                  size: Responsive.isDesktop(context) ? 16 : 16,
                                  value:
                                      "Kolandoto College Of Health Sciences"),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Divider(),
                    ListTile(
                      contentPadding: EdgeInsets.only(
                        left: Responsive.isDesktop(context) ? 70 : 0,
                      ),
                      title: Flex(
                        direction: Responsive.isDesktop(context)
                            ? Axis.horizontal
                            : Axis.vertical,
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          HeadingText(
                              size: Responsive.isDesktop(context) ? 16 : 16,
                              fontWeight: FontWeight.w800,
                              color: Colors.grey.shade600,
                              value: "Institution Address"),
                          SizedBox(
                            width: 20,
                          ),
                          HeadingText(
                              size: Responsive.isDesktop(context) ? 16 : 16,
                              value: "P.O.Box 16, Shinyanga"),
                        ],
                      ),
                    ),
                    Divider(),
                    ListTile(
                      contentPadding: EdgeInsets.only(
                        left: Responsive.isDesktop(context) ? 70 : 0,
                      ),
                      title: Flex(
                        direction: Responsive.isDesktop(context)
                            ? Axis.horizontal
                            : Axis.vertical,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          HeadingText(
                              size: Responsive.isDesktop(context) ? 16 : 16,
                              fontWeight: FontWeight.w800,
                              color: Colors.grey.shade600,
                              value: "Institution Phone"),
                          SizedBox(
                            width: 20,
                          ),
                          HeadingText(
                              size: Responsive.isDesktop(context) ? 16 : 16,
                              value: "+255625974142\n+255742155623"),
                        ],
                      ),
                    ),
                    Divider(),
                    ListTile(
                      contentPadding: EdgeInsets.only(
                        left: Responsive.isDesktop(context) ? 70 : 0,
                      ),
                      title: Flex(
                        direction: Responsive.isDesktop(context)
                            ? Axis.horizontal
                            : Axis.vertical,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          HeadingText(
                              size: Responsive.isDesktop(context) ? 16 : 16,
                              fontWeight: FontWeight.w800,
                              color: Colors.grey.shade600,
                              value: "Institution Email"),
                          SizedBox(
                            width: 20,
                          ),
                          HeadingText(
                              size: Responsive.isDesktop(context) ? 16 : 16,
                              value: "kolandoto@gmail.com"),
                        ],
                      ),
                    ),
                    Divider(),
                    ListTile(
                      contentPadding: EdgeInsets.only(
                        left: Responsive.isDesktop(context) ? 70 : 0,
                      ),
                      title: Flex(
                        direction: Responsive.isDesktop(context)
                            ? Axis.horizontal
                            : Axis.vertical,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          HeadingText(
                              size: Responsive.isDesktop(context) ? 16 : 16,
                              fontWeight: FontWeight.w800,
                              color: Colors.grey.shade600,
                              value: "Institution Website"),
                          SizedBox(
                            width: 20,
                          ),
                          InkWell(
                            onTap: () {
                              Funcs().openLink(url: "http://kchs.ac.tz/");
                            },
                            child: HeadingText(
                              size: Responsive.isDesktop(context) ? 16 : 16,
                              value: "http://kchs.ac.tz/",
                              color: Palette().primaryColor,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Divider(),
                    ListTile(
                      contentPadding: EdgeInsets.only(
                        left: Responsive.isDesktop(context) ? 70 : 0,
                      ),
                      title: Flex(
                        direction: Responsive.isDesktop(context)
                            ? Axis.horizontal
                            : Axis.vertical,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          HeadingText(
                              size: Responsive.isDesktop(context) ? 16 : 16,
                              fontWeight: FontWeight.w800,
                              color: Colors.grey.shade600,
                              value: "Institution Motto"),
                          SizedBox(
                            width: 20,
                          ),
                          SizedBox(
                            width: 800,
                            child: Expanded(
                              child: HeadingText(
                                  size: Responsive.isDesktop(context) ? 16 : 16,
                                  value:
                                      "A Center of Excellence in health Training. We Serve the Lord Jesus Christ"),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Divider(),
                    ListTile(
                      contentPadding: EdgeInsets.only(
                        left: Responsive.isDesktop(context) ? 70 : 0,
                      ),
                      title: Flex(
                        direction: Responsive.isDesktop(context)
                            ? Axis.horizontal
                            : Axis.vertical,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          HeadingText(
                              size: Responsive.isDesktop(context) ? 16 : 16,
                              fontWeight: FontWeight.w800,
                              color: Colors.grey.shade600,
                              value: "Institution Vision"),
                          SizedBox(
                            width: 20,
                          ),
                          SizedBox(
                            width: 800,
                            child: Expanded(
                              child: HeadingText(
                                  size: Responsive.isDesktop(context) ? 16 : 16,
                                  value:
                                      "We envision to be, Reputable college in health and Allied Sciences. To meet National and International Needs"),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Divider(),
                    ListTile(
                      contentPadding: EdgeInsets.only(
                        left: Responsive.isDesktop(context) ? 70 : 0,
                      ),
                      title: Flex(
                        direction: Responsive.isDesktop(context)
                            ? Axis.horizontal
                            : Axis.vertical,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          HeadingText(
                              size: Responsive.isDesktop(context) ? 16 : 16,
                              fontWeight: FontWeight.w800,
                              color: Colors.grey.shade600,
                              value: "Institution Mission"),
                          SizedBox(
                            width: 20,
                          ),
                          SizedBox(
                            width: 800,
                            child: Expanded(
                              child: HeadingText(
                                  size: Responsive.isDesktop(context) ? 16 : 16,
                                  value:
                                      "Our Mission is, to provide High Quality Training, Research And Consultancy Services in Health and Allied sciences Though Efficient Use Of Available Resources To Meet National and International Needs"),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Divider(),
                    ListTile(
                      contentPadding: EdgeInsets.only(
                        left: Responsive.isDesktop(context) ? 70 : 0,
                      ),
                      title: Flex(
                        direction: Responsive.isDesktop(context)
                            ? Axis.horizontal
                            : Axis.vertical,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          HeadingText(
                              size: Responsive.isDesktop(context) ? 16 : 16,
                              fontWeight: FontWeight.w800,
                              color: Colors.grey.shade600,
                              value: "Academic Year Start"),
                          SizedBox(
                            width: 20,
                          ),
                          HeadingText(
                              size: Responsive.isDesktop(context) ? 16 : 16,
                              value: "AcademicYearStart"),
                        ],
                      ),
                    ),
                    Divider(),
                    ListTile(
                      contentPadding: EdgeInsets.only(
                        left: Responsive.isDesktop(context) ? 70 : 0,
                      ),
                      title: Flex(
                        direction: Responsive.isDesktop(context)
                            ? Axis.horizontal
                            : Axis.vertical,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          HeadingText(
                              size: Responsive.isDesktop(context) ? 16 : 16,
                              fontWeight: FontWeight.w800,
                              color: Colors.grey.shade600,
                              value: "Academic Year End"),
                          SizedBox(
                            width: 20,
                          ),
                          HeadingText(
                              size: Responsive.isDesktop(context) ? 16 : 16,
                              value: "AcademicYearEnd"),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          )
        ],
      )),
    );
  }
}
