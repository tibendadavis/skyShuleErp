import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:skyconnect_starter/components/heading5.dart';
import 'package:skyconnect_starter/controllers/responsive.dart';
import 'package:skyconnect_starter/theme/design.theme.dart';

class studentsInfo extends StatefulWidget {
  const studentsInfo({super.key});
  @override
  State<studentsInfo> createState() => _studentsInfoState();
}

class _studentsInfoState extends State<studentsInfo> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(
          bottom: Insets().appPadding,
          left: Responsive.isDesktop(context) ? Insets().appPadding : 0,
          right: Responsive.isDesktop(context) ? Insets().appPadding : 0,
          top: Insets().appPadding / 2),
      child: Flex(
          direction:
              Responsive.isDesktop(context) ? Axis.horizontal : Axis.vertical,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Heading5(fontWeight: FontWeight.w600, value: "Reg NO:"),
                    SizedBox(
                      width: 20,
                    ),
                    Heading5(fontWeight: FontWeight.w600, value: "SH-2022-345")
                  ],
                ),
                SizedBox(
                  height: 5,
                ),
                SizedBox(
                    width: Responsive.isDesktop(context)
                        ? 400
                        : MediaQuery.of(context).size.width,
                    child: Divider(thickness: 1, color: Colors.grey)),
                SizedBox(
                  height: 5,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Heading5(
                        fontWeight: FontWeight.w600, value: "Date of Birth:"),
                    SizedBox(
                      width: 20,
                    ),
                    Heading5(fontWeight: FontWeight.w600, value: "03-Aug-2010")
                  ],
                ),
                SizedBox(
                  height: 5,
                ),
                SizedBox(
                    width: Responsive.isDesktop(context)
                        ? 400
                        : MediaQuery.of(context).size.width,
                    child: Divider(thickness: 1, color: Colors.grey)),
                SizedBox(
                  height: 5,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Heading5(fontWeight: FontWeight.w600, value: "Religion:"),
                    SizedBox(
                      width: 20,
                    ),
                    Heading5(fontWeight: FontWeight.w600, value: "Christian")
                  ],
                ),
                SizedBox(
                  height: 5,
                ),
                SizedBox(
                    width: Responsive.isDesktop(context)
                        ? 400
                        : MediaQuery.of(context).size.width,
                    child: Divider(thickness: 1, color: Colors.grey)),
                SizedBox(
                  height: 5,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Heading5(fontWeight: FontWeight.w600, value: "Phone:"),
                    SizedBox(
                      width: 20,
                    ),
                    Heading5(fontWeight: FontWeight.w600, value: "1234567890")
                  ],
                ),
                SizedBox(
                  height: 5,
                ),
                SizedBox(
                    width: Responsive.isDesktop(context)
                        ? 400
                        : MediaQuery.of(context).size.width,
                    child: Divider(thickness: 1, color: Colors.grey)),
                SizedBox(
                  height: 5,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Heading5(
                        fontWeight: FontWeight.w600, value: "Health Role:"),
                    SizedBox(
                      width: 20,
                    ),
                    Heading5(fontWeight: FontWeight.w600, value: " ")
                  ],
                ),
                SizedBox(
                  height: 5,
                ),
                SizedBox(
                    width: Responsive.isDesktop(context)
                        ? 400
                        : MediaQuery.of(context).size.width,
                    child: Divider(thickness: 1, color: Colors.grey)),
                SizedBox(
                  height: 5,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Heading5(
                        fontWeight: FontWeight.w600, value: "Nationality:"),
                    SizedBox(
                      width: 20,
                    ),
                    Heading5(fontWeight: FontWeight.w600, value: "Tanzanian")
                  ],
                ),
                SizedBox(
                  height: Responsive.isDesktop(context) ? 0 : 5,
                ),
                SizedBox(
                    width: Responsive.isDesktop(context)
                        ? 0
                        : MediaQuery.of(context).size.width,
                    child: Responsive.isDesktop(context)
                        ? Offstage()
                        : Divider(thickness: 1, color: Colors.grey)),
                SizedBox(
                  height: Responsive.isDesktop(context) ? 0 : 5,
                ),
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Heading5(
                        fontWeight: FontWeight.w600, value: "Section/Stream:"),
                    SizedBox(
                      width: 20,
                    ),
                    Heading5(fontWeight: FontWeight.w600, value: "SH-2022-345")
                  ],
                ),
                SizedBox(
                  height: 5,
                ),
                SizedBox(
                    width: Responsive.isDesktop(context)
                        ? 400
                        : MediaQuery.of(context).size.width,
                    child: Divider(thickness: 1, color: Colors.grey)),
                SizedBox(
                  height: 5,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Heading5(fontWeight: FontWeight.w600, value: "Gender:"),
                    SizedBox(
                      width: 20,
                    ),
                    Heading5(fontWeight: FontWeight.w600, value: "Female")
                  ],
                ),
                SizedBox(
                  height: 5,
                ),
                SizedBox(
                    width: Responsive.isDesktop(context)
                        ? 400
                        : MediaQuery.of(context).size.width,
                    child: Divider(thickness: 1, color: Colors.grey)),
                SizedBox(
                  height: 5,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Heading5(fontWeight: FontWeight.w600, value: "Email:"),
                    SizedBox(
                      width: 20,
                    ),
                    Heading5(fontWeight: FontWeight.w600, value: " ")
                  ],
                ),
                SizedBox(
                  height: 5,
                ),
                SizedBox(
                    width: Responsive.isDesktop(context)
                        ? 400
                        : MediaQuery.of(context).size.width,
                    child: Divider(thickness: 1, color: Colors.grey)),
                SizedBox(
                  height: 5,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Heading5(fontWeight: FontWeight.w600, value: "Address:"),
                    SizedBox(
                      width: 20,
                    ),
                    Heading5(fontWeight: FontWeight.w600, value: "")
                  ],
                ),
                SizedBox(
                  height: 5,
                ),
                SizedBox(
                    width: Responsive.isDesktop(context)
                        ? 400
                        : MediaQuery.of(context).size.width,
                    child: Divider(thickness: 1, color: Colors.grey)),
                SizedBox(
                  height: 5,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Heading5(
                        fontWeight: FontWeight.w600, value: "Health Status:"),
                    SizedBox(
                      width: 20,
                    ),
                    Heading5(fontWeight: FontWeight.w600, value: " ")
                  ],
                ),
                SizedBox(
                  height: 5,
                ),
                SizedBox(
                    width: Responsive.isDesktop(context)
                        ? 400
                        : MediaQuery.of(context).size.width,
                    child: Divider(thickness: 1, color: Colors.grey)),
                SizedBox(
                  height: 5,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Heading5(fontWeight: FontWeight.w600, value: "Username:"),
                    SizedBox(
                      width: 20,
                    ),
                    Heading5(fontWeight: FontWeight.w600, value: "JaneJaneDoe")
                  ],
                ),
              ],
            )
          ]),
    );
  }
}
