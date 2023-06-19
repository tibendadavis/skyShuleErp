import 'package:flutter/material.dart';
import 'package:skyconnect_starter/components/heading4.dart';
import 'package:skyconnect_starter/components/heading5.dart';

import 'package:skyconnect_starter/theme/design.theme.dart';

class IDCardFront extends StatefulWidget {
  final String name;
  final String idNumber;
  final String imageUrl;
  final String employeeCode;
  final String designation;
  final String department;
  final String mobile;
  final String address;

  IDCardFront(
      {required this.name,
      required this.idNumber,
      required this.imageUrl,
      required this.employeeCode,
      required this.designation,
      required this.department,
      required this.mobile,
      required this.address});

  @override
  State<IDCardFront> createState() => _IDCardFrontState();
}

class _IDCardFrontState extends State<IDCardFront> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 500,
      height: 350,
      decoration: BoxDecoration(
        border: Border.all(color: Colors.black, width: 1.3),
        borderRadius: BorderRadius.circular(10),
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Color.fromARGB(171, 0, 0, 0),
            offset: Offset(5, 9),
            blurRadius: 6.0,
          ),
        ],
      ),
      child: Column(
        children: <Widget>[
          Container(
            height: 70,
            width: double.infinity,
            child: Row(mainAxisAlignment: MainAxisAlignment.start, children: [
              SizedBox(
                width: 15,
              ),
              CircleAvatar(
                radius: Insets().appRadius + 5,
                backgroundColor: Colors.white,
              ),
              SizedBox(
                width: 10,
              ),
              Heading4(
                value: "GENIUS KINGS NURSERY & PRIMARY SCHOOL",
                fontWeight: FontWeight.w700,
              )
            ]),
            decoration: BoxDecoration(
              color: Palette().primaryColor.withOpacity(0.8),
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(10),
                topRight: Radius.circular(10),
              ),
            ),
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                margin: EdgeInsets.only(bottom: 5, left: 10, right: 5, top: 10),
                decoration: BoxDecoration(
                    color: Colors.grey[300],
                    borderRadius: BorderRadius.circular(10)),
                alignment: Alignment.center,
                child: SizedBox(
                  height: 120,
                  child: FittedBox(
                      child: Icon(
                    Icons.person,
                    size: 60,
                  )),
                ),
              ),
              SizedBox(
                width: 10,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 10),
                  Heading4(
                    fontWeight: FontWeight.w700,
                    value: widget.name,
                  ),
                  SizedBox(height: 10),
                  Heading4(
                    fontWeight: FontWeight.w700,
                    value: widget.idNumber,
                  ),
                  SizedBox(height: 10),
                  Heading5(
                    fontWeight: FontWeight.w700,
                    value: "Employee Code:  " + widget.employeeCode,
                  ),
                  SizedBox(height: 10),
                  Heading5(
                    fontWeight: FontWeight.w700,
                    value: "Designation:  " + widget.designation,
                  ),
                  SizedBox(height: 10),
                  Heading5(
                    fontWeight: FontWeight.w700,
                    value: "Department:  " + widget.department,
                  ),
                  SizedBox(height: 10),
                  Heading5(
                    fontWeight: FontWeight.w700,
                    value: "Mobile:  " + widget.mobile,
                  ),
                  SizedBox(height: 10),
                  Heading5(
                    fontWeight: FontWeight.w700,
                    value: "Address:  " + widget.address,
                  ),
                ],
              ),
            ],
          ),
          Spacer(),
          Container(
            height: 50,
            width: double.infinity,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Heading4(
                  value: "Some Text",
                  fontWeight: FontWeight.w600,
                ),
              ],
            ),
            decoration: BoxDecoration(
              color: Palette().primaryColor,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(10),
                bottomRight: Radius.circular(10),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class IDCardBack extends StatefulWidget {
  IDCardBack();

  @override
  State<IDCardBack> createState() => _IDCardBackState();
}

class _IDCardBackState extends State<IDCardBack> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 500,
      height: 350,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.white,
        border: Border.all(color: Colors.black, width: 1.3),
        boxShadow: [
          BoxShadow(
            color: Color.fromARGB(171, 0, 0, 0),
            offset: Offset(5, 9),
            blurRadius: 6.0,
          ),
        ],
      ),
      child: Column(
        children: <Widget>[
          Container(
            height: 70,
            width: double.infinity,
            child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              Heading4(
                value: "INSTRUCTIONS",
                fontWeight: FontWeight.w700,
              )
            ]),
            decoration: BoxDecoration(
              color: Palette().primaryColor.withOpacity(0.8),
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(10),
                topRight: Radius.circular(10),
              ),
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                margin: EdgeInsets.only(bottom: 5, left: 10, right: 5, top: 0),
                decoration: BoxDecoration(
                    color: Colors.grey[300],
                    borderRadius: BorderRadius.circular(10)),
                child: SizedBox(
                  height: 120,
                  child: FittedBox(
                      child: Icon(
                    Icons.qr_code,
                    size: 60,
                  )),
                ),
              ),
              SizedBox(
                width: 10,
              ),
              SizedBox(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 10),
                    SizedBox(
                      width: 340,
                      child: Expanded(
                        child: Heading5(
                          fontWeight: FontWeight.w700,
                          value:
                              "1) Come to School regulary and always be on time",
                        ),
                      ),
                    ),
                    SizedBox(height: 10),
                    SizedBox(
                      width: 340,
                      child: Expanded(
                        child: Heading5(
                          fontWeight: FontWeight.w700,
                          value:
                              "2) Always be clean, well groomed and in proper school uniform",
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          Spacer(),
          Container(
            height: 50,
            width: double.infinity,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Heading4(
                  value: "Some Text",
                  fontWeight: FontWeight.w600,
                ),
              ],
            ),
            decoration: BoxDecoration(
              color: Palette().primaryColor,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(10),
                bottomRight: Radius.circular(10),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
