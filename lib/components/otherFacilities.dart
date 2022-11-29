import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:image/image.dart';
import 'package:skyconnect_starter/components/heading4.dart';
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
      padding: EdgeInsets.only(
          top: Insets().appPadding * 2,
          right: MediaQuery.of(context).size.width / 3),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Checkbox(
                value: true,
                onChanged: (value) {},
              ),
              SizedBox(
                width: 20,
              ),
              Heading4(value: "Hostel Facilities"),
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Checkbox(
                value: true,
                onChanged: (value) {},
              ),
              SizedBox(
                width: 20,
              ),
              Heading4(value: "Transport facilities"),
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Checkbox(
                value: true,
                onChanged: (value) {},
              ),
              SizedBox(
                width: 20,
              ),
              Heading4(value: "Is Mobile App"),
            ],
          ),
        ],
      ),
    );
  }
}
