import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:skyconnect_starter/components/heading4.dart';
import 'package:skyconnect_starter/components/heading5.dart';
import 'package:skyconnect_starter/components/heading_text.dart';
import 'package:skyconnect_starter/controllers/responsive.dart';
import 'package:skyconnect_starter/theme/design.theme.dart';

class academicDetails extends StatefulWidget {
  const academicDetails({super.key});

  @override
  State<academicDetails> createState() => _academicDetailsState();
}

class _academicDetailsState extends State<academicDetails> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: !Responsive.isDesktop(context)
          ? MediaQuery.of(context).size.width
          : MediaQuery.of(context).size.width / 1.8,
      padding: EdgeInsets.only(
        top: Responsive.isDesktop(context) ? Insets().appPadding * 2 : 14,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Flex(
            direction:
                Responsive.isDesktop(context) ? Axis.horizontal : Axis.vertical,
            mainAxisAlignment: Responsive.isDesktop(context)
                ? MainAxisAlignment.spaceBetween
                : MainAxisAlignment.start,
            crossAxisAlignment: Responsive.isDesktop(context)
                ? CrossAxisAlignment.center
                : CrossAxisAlignment.start,
            children: [
              HeadingText(
                  size: Responsive.isDesktop(context) ? 18 : 14,
                  value: "Past School"),
              SizedBox(
                width: 350,
                height: Responsive.isDesktop(context) ? 50 : 40,
                child: Container(
                  alignment: Alignment.centerLeft,
                  padding: EdgeInsets.only(
                    left: Insets().appPadding / 2,
                    right: Insets().appPadding / 2,
                  ),
                  decoration: BoxDecoration(
                      border: Border.all(width: 1.5, color: Colors.grey),
                      color: Colors.white,
                      borderRadius:
                          BorderRadius.circular(Insets().appPadding / 1.5)),
                  child: TextFormField(
                      textAlignVertical: TextAlignVertical.center,
                      decoration: const InputDecoration(
                        border: InputBorder.none,
                        hintText: "Past School",
                      )),
                ),
              ),
            ],
          ),
          SizedBox(
            height: Responsive.isDesktop(context) ? 10 : 15,
          ),
          Flex(
            direction:
                Responsive.isDesktop(context) ? Axis.horizontal : Axis.vertical,
            mainAxisAlignment: Responsive.isDesktop(context)
                ? MainAxisAlignment.spaceBetween
                : MainAxisAlignment.start,
            crossAxisAlignment: Responsive.isDesktop(context)
                ? CrossAxisAlignment.center
                : CrossAxisAlignment.start,
            children: [
              HeadingText(
                  size: Responsive.isDesktop(context) ? 18 : 14,
                  value: "School Address"),
              SizedBox(
                width: 350,
                height: Responsive.isDesktop(context) ? 90 : 70,
                child: Container(
                  alignment: Alignment.topLeft,
                  padding: EdgeInsets.only(
                    left: Insets().appPadding / 2,
                    right: Insets().appPadding / 2,
                  ),
                  decoration: BoxDecoration(
                      border: Border.all(width: 1.5, color: Colors.grey),
                      color: Colors.white,
                      borderRadius:
                          BorderRadius.circular(Insets().appPadding / 1.5)),
                  child: TextFormField(
                      maxLines: double.maxFinite.floor(),
                      keyboardType: TextInputType.multiline,
                      textAlignVertical: TextAlignVertical.top,
                      decoration: const InputDecoration(
                        border: InputBorder.none,
                        hintText: "School Address",
                      )),
                ),
              ),
            ],
          ),
          SizedBox(
            height: Responsive.isDesktop(context) ? 10 : 15,
          ),
          Flex(
            direction:
                Responsive.isDesktop(context) ? Axis.horizontal : Axis.vertical,
            mainAxisAlignment: Responsive.isDesktop(context)
                ? MainAxisAlignment.spaceBetween
                : MainAxisAlignment.start,
            crossAxisAlignment: Responsive.isDesktop(context)
                ? CrossAxisAlignment.center
                : CrossAxisAlignment.start,
            children: [
              HeadingText(
                  size: Responsive.isDesktop(context) ? 18 : 14,
                  value: "Past Qualification (%)"),
              SizedBox(
                width: 350,
                height: Responsive.isDesktop(context) ? 50 : 40,
                child: Container(
                  alignment: Alignment.centerLeft,
                  padding: EdgeInsets.only(
                    left: Insets().appPadding / 2,
                    right: Insets().appPadding / 2,
                  ),
                  decoration: BoxDecoration(
                      border: Border.all(width: 1.5, color: Colors.grey),
                      color: Colors.white,
                      borderRadius:
                          BorderRadius.circular(Insets().appPadding / 1.5)),
                  child: TextFormField(
                      textAlignVertical: TextAlignVertical.center,
                      decoration: const InputDecoration(
                        border: InputBorder.none,
                        hintText: "Past Qualification",
                      )),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
