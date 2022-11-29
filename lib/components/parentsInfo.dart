import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:skyconnect_starter/components/heading4.dart';
import 'package:skyconnect_starter/components/heading5.dart';
import 'package:skyconnect_starter/theme/design.theme.dart';

class parentsInfo extends StatefulWidget {
  const parentsInfo({super.key});

  @override
  State<parentsInfo> createState() => _parentsInfoState();
}

class _parentsInfoState extends State<parentsInfo> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(Insets().appPadding),
      child: Row(mainAxisAlignment: MainAxisAlignment.start, children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Heading5(fontWeight: FontWeight.w600, value: "Name:"),
                SizedBox(
                  width: 20,
                ),
                Heading5(fontWeight: FontWeight.w600, value: "John Doe")
              ],
            ),
            SizedBox(
              height: 5,
            ),
            SizedBox(
                width: 400,
                child: Divider(
                  thickness: 1,
                  color: Colors.grey,
                )),
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
                Heading5(fontWeight: FontWeight.w600, value: "+255719007163")
              ],
            ),
            SizedBox(
              height: 5,
            ),
            SizedBox(
                width: 400,
                child: Divider(
                  thickness: 1,
                  color: Colors.grey,
                )),
            SizedBox(
              height: 5,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Heading5(fontWeight: FontWeight.w600, value: "Employer Name:"),
                SizedBox(
                  width: 20,
                ),
                Heading5(fontWeight: FontWeight.w600, value: "GVT")
              ],
            ),
            SizedBox(
              height: 5,
            ),
            SizedBox(
                width: 400,
                child: Divider(
                  thickness: 1,
                  color: Colors.grey,
                )),
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
                Heading5(
                    fontWeight: FontWeight.w600, value: "johndoe@gmail.com")
              ],
            ),
            SizedBox(
              height: 5,
            ),
            SizedBox(
                width: 400,
                child: Divider(
                  thickness: 1,
                  color: Colors.grey,
                )),
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
                Heading5(
                    fontWeight: FontWeight.w600, value: "786 Dar es salaam ")
              ],
            ),
            SizedBox(
              height: 5,
            ),
            SizedBox(
                width: 400,
                child: Divider(
                  thickness: 1,
                  color: Colors.grey,
                )),
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
                Heading5(fontWeight: FontWeight.w600, value: "JohnDoe")
              ],
            ),
          ],
        ),
      ]),
    );
  }
}
