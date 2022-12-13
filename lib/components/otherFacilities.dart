import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:image/image.dart';
import 'package:skyconnect_starter/components/heading4.dart';
import 'package:skyconnect_starter/components/heading_text.dart';
import 'package:skyconnect_starter/controllers/responsive.dart';
import 'package:skyconnect_starter/theme/design.theme.dart';

class otherFacilities extends StatefulWidget {
  const otherFacilities({super.key});

  @override
  State<otherFacilities> createState() => _otherFacilitiesState();
}

class _otherFacilitiesState extends State<otherFacilities> {
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
              Row(
                children: [
                  Checkbox(
                    value: true,
                    onChanged: (value) {},
                  ),
                  SizedBox(
                    width: Responsive.isDesktop(context) ? 20 : 10,
                  ),
                  HeadingText(
                      size: Responsive.isDesktop(context) ? 18 : 14,
                      value: "Hostel Facilities"),
                ],
              ),
            ],
          ),
          SizedBox(
            height: 10,
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
              Row(
                children: [
                  Checkbox(
                    value: true,
                    onChanged: (value) {},
                  ),
                  SizedBox(
                    width: Responsive.isDesktop(context) ? 20 : 10,
                  ),
                  HeadingText(
                      size: Responsive.isDesktop(context) ? 18 : 14,
                      value: "Transport facilities"),
                ],
              ),
            ],
          ),
          SizedBox(
            height: 10,
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
              Row(
                children: [
                  Checkbox(
                    value: true,
                    onChanged: (value) {},
                  ),
                  SizedBox(
                    width: Responsive.isDesktop(context) ? 20 : 10,
                  ),
                  HeadingText(
                      size: Responsive.isDesktop(context) ? 18 : 14,
                      value: "Is Mobile App"),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
