import 'package:flutter/material.dart';
import 'package:skyconnect_starter/components/heading_text.dart';
import 'package:skyconnect_starter/components/tile.comp.dart';
import 'package:skyconnect_starter/components/heading5.dart';
import 'package:skyconnect_starter/components/heading6.dart';
import 'package:skyconnect_starter/controllers/responsive.dart';
import 'package:skyconnect_starter/main.dart';
import 'package:skyconnect_starter/theme/design.theme.dart';

class HomePage extends StatefulWidget {
  HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

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
                  top: Insets().appPadding / 2,
                  bottom: Insets().appPadding / 2,
                  left: Responsive.isDesktop(context)
                      ? Insets().appPadding
                      : Insets().appPadding,
                  right: Insets().appPadding),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  HeadingText(
                    size: Responsive.isDesktop(context) ? 35 : 25,
                    value: "Dashboard",
                    fontWeight: FontWeight.w700,
                    color: Palette().primaryColor,
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => MyHomePage(
                          page: HomePage(),
                        ),
                      ));
                    },
                    child: Icon(
                      Icons.restart_alt_rounded,
                      size: 40,
                      color: Palette().primaryColor,
                    ),
                  )
                ],
              ),
            ),
            Column(children: [
              Flex(
                direction: Responsive.isDesktop(context)
                    ? Axis.horizontal
                    : Axis.vertical,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  if (Responsive.isDesktop(context)) ...[
                    Expanded(
                        child: tile(
                            tileHeading: "Students Summary",
                            tileLine1: "Total  Students",
                            tileLine2: "Students Presents",
                            tileLine3: "Students Absent",
                            tileData1: "750",
                            tileData2: "740",
                            tileData3: "7",
                            tileLine4: "Student Leaves",
                            tileData4: "3")),
                    Expanded(
                        child: tile(
                            tileHeading: "Teaching Summary",
                            tileLine1: "Total  Teachers",
                            tileLine2: "Teachers Present",
                            tileLine3: "Teachers Absent",
                            tileData1: "750",
                            tileData2: "740",
                            tileData3: "7",
                            tileLine4: "Teacher Leaves",
                            tileData4: "3")),
                    Expanded(
                        child: Container(
                      margin: EdgeInsets.only(right: Insets().appPadding),
                      child: tile(
                          tileHeading: "Fee Summary",
                          tileLine1: "Total  Fees",
                          tileLine2: "Fees Collected",
                          tileLine3: "Fees Pending",
                          tileData1: "Tsh 46,000,000.00",
                          tileData2: "Tsh 33,000,000.00",
                          tileData3: "Tsh 19,000,000.00",
                          tileLine4: "",
                          tileData4: ""),
                    ))
                  ],
                  if (!Responsive.isDesktop(context)) ...[
                    Container(
                      child: tile(
                          tileHeading: "Students Summary",
                          tileLine1: "Total  Students",
                          tileLine2: "Students Presents",
                          tileLine3: "Students Absent",
                          tileData1: "750",
                          tileData2: "740",
                          tileData3: "7",
                          tileLine4: "Student Leaves",
                          tileData4: "3"),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: Insets().appPadding / 2),
                      child: tile(
                          tileHeading: "Teaching Summary",
                          tileLine1: "Total  Teachers",
                          tileLine2: "Teachers Present",
                          tileLine3: "Teachers Absent",
                          tileData1: "750",
                          tileData2: "740",
                          tileData3: "7",
                          tileLine4: "Teacher Leaves",
                          tileData4: "3"),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: Insets().appPadding / 2),
                      child: tile(
                          tileHeading: "Fee Summary",
                          tileLine1: "Total  Fees",
                          tileLine2: "Fees Collected",
                          tileLine3: "Fees Pending",
                          tileData1: "Tsh 46,000,000.00",
                          tileData2: "Tsh 33,000,000.00",
                          tileData3: "Tsh 19,000,000.00",
                          tileLine4: "",
                          tileData4: ""),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: Insets().appPadding / 2),
                      child: tile(
                          tileHeading: "Non-Teaching Summary",
                          tileLine1: "Total Non-Teacheing Staff",
                          tileLine2: "Non-Teaching Staff Present",
                          tileLine3: "Non-Teaching Staff Absent",
                          tileData1: "750",
                          tileData2: "740",
                          tileData3: "7",
                          tileLine4: "Non-Teaching Staff Leaves",
                          tileData4: "3"),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: Insets().appPadding / 2),
                      child: tile(
                          tileHeading: "Institute Summary",
                          tileLine1: "Total Departments",
                          tileLine2: "Total Classes",
                          tileLine3: "Total Streams",
                          tileData1: "9",
                          tileData2: "14",
                          tileData3: "24",
                          tileLine4: "Total Employees",
                          tileData4: "81"),
                    ),
                    Container(
                      margin: EdgeInsets.only(
                          top: Insets().appPadding / 2,
                          bottom: Insets().appPadding),
                      child: tile(
                          tileHeading: "Parents Summary",
                          tileLine1: "Total Parents",
                          tileLine2: "Total Male Parents",
                          tileLine3: "Total Female Parents",
                          tileData1: "400",
                          tileData2: "200",
                          tileData3: "200",
                          tileLine4: " ",
                          tileData4: " "),
                    ),
                  ]
                ],
              ),
              Flex(
                direction: Responsive.isDesktop(context)
                    ? Axis.horizontal
                    : Axis.vertical,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  if (Responsive.isDesktop(context)) ...[
                    Expanded(
                        flex: 1,
                        child: tile(
                            tileHeading: "Non-Teaching Summary",
                            tileLine1: "Total Non-Teacheing Staff",
                            tileLine2: "Non-Teaching Staff Present",
                            tileLine3: "Non-Teaching Staff Absent",
                            tileData1: "750",
                            tileData2: "740",
                            tileData3: "7",
                            tileLine4: "Non-Teaching Staff Leaves",
                            tileData4: "3")),
                    Expanded(
                        flex: 1,
                        child: tile(
                            tileHeading: "Institute Summary",
                            tileLine1: "Total Departments",
                            tileLine2: "Total Classes",
                            tileLine3: "Total Streams",
                            tileData1: "9",
                            tileData2: "14",
                            tileData3: "24",
                            tileLine4: "Total Employees",
                            tileData4: "81")),
                    Expanded(
                        flex: 1,
                        child: Container(
                          margin: EdgeInsets.only(right: Insets().appPadding),
                          child: tile(
                              tileHeading: "Parents Summary",
                              tileLine1: "Total Parents",
                              tileLine2: "Total Male Parents",
                              tileLine3: "Total Female Parents",
                              tileData1: "400",
                              tileData2: "200",
                              tileData3: "200",
                              tileLine4: " ",
                              tileData4: " "),
                        ))
                  ],
                ],
              ),
            ]),
            Flex(
                direction: Responsive.isDesktop(context)
                    ? Axis.horizontal
                    : Axis.vertical,
                children: [
                  if (Responsive.isDesktop(context)) ...[
                    Expanded(
                        flex: 2,
                        child: Container(
                          margin: EdgeInsets.only(
                              left: Insets().appPadding,
                              bottom: Insets().appPadding),
                          padding: EdgeInsets.only(
                              left: Insets().appPadding,
                              right: Insets().appPadding,
                              top: Insets().appGap + 2,
                              bottom: Insets().appPadding),
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(
                                  Insets().appRadiusMin + 4)),
                          child: Text("Chart 1"),
                        )),
                    Expanded(
                      flex: 1,
                      child: Container(
                        margin: EdgeInsets.only(
                            left: Insets().appPadding,
                            bottom: Insets().appPadding),
                        padding: EdgeInsets.only(
                            left: Insets().appPadding,
                            right: Insets().appPadding,
                            top: Insets().appGap + 2,
                            bottom: Insets().appPadding),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(
                                Insets().appRadiusMin + 4)),
                        child: Text("Chart 2"),
                      ),
                    ),
                    Expanded(
                      flex: 2,
                      child: Container(
                        margin: EdgeInsets.only(
                            left: Insets().appPadding,
                            bottom: Insets().appPadding),
                        padding: EdgeInsets.only(
                            left: Insets().appPadding,
                            right: Insets().appPadding,
                            top: Insets().appGap + 2,
                            bottom: Insets().appPadding),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(
                                Insets().appRadiusMin + 4)),
                        child: Text("Chart 3"),
                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child: Container(
                        margin: EdgeInsets.only(
                          left: Insets().appPadding,
                          bottom: Insets().appPadding,
                          right: Insets().appPadding,
                        ),
                        padding: EdgeInsets.only(
                            left: Insets().appPadding,
                            right: Insets().appPadding,
                            top: Insets().appGap + 2,
                            bottom: Insets().appPadding),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(
                                Insets().appRadiusMin + 4)),
                        child: Text("Chart 4"),
                      ),
                    )
                  ],
                  if (!Responsive.isDesktop(context)) ...[
                    Container(
                      width: MediaQuery.of(context).size.width,
                      margin: EdgeInsets.only(
                          left: Insets().appPadding,
                          right: Insets().appPadding,
                          bottom: 15),
                      padding: EdgeInsets.only(
                          left: Insets().appPadding,
                          right: Insets().appPadding,
                          top: Insets().appGap + 2,
                          bottom: Insets().appPadding),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius:
                              BorderRadius.circular(Insets().appRadiusMin + 4)),
                      child: Text("Chart 1"),
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width,
                      margin: EdgeInsets.only(
                          left: Insets().appPadding,
                          right: Insets().appPadding,
                          bottom: 15),
                      padding: EdgeInsets.only(
                          left: Insets().appPadding,
                          right: Insets().appPadding,
                          top: Insets().appGap + 2,
                          bottom: Insets().appPadding),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius:
                              BorderRadius.circular(Insets().appRadiusMin + 4)),
                      child: Heading6(value: "Chart 2"),
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width,
                      margin: EdgeInsets.only(
                          left: Insets().appPadding,
                          right: Insets().appPadding,
                          bottom: 15),
                      padding: EdgeInsets.only(
                          left: Insets().appPadding,
                          right: Insets().appPadding,
                          top: Insets().appGap + 2,
                          bottom: Insets().appPadding),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius:
                              BorderRadius.circular(Insets().appRadiusMin + 4)),
                      child: Heading6(value: "Chart 3"),
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width,
                      margin: EdgeInsets.only(
                        left: Insets().appPadding,
                        bottom: Insets().appPadding,
                        right: Insets().appPadding,
                      ),
                      padding: EdgeInsets.only(
                          left: Insets().appPadding,
                          right: Insets().appPadding,
                          top: Insets().appGap + 2,
                          bottom: Insets().appPadding),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius:
                              BorderRadius.circular(Insets().appRadiusMin + 4)),
                      child: Heading6(value: "Chart 4"),
                    )
                  ]
                ]),
            Flex(
                direction: Responsive.isDesktop(context)
                    ? Axis.horizontal
                    : Axis.vertical,
                children: [
                  if (Responsive.isDesktop(context)) ...[
                    Expanded(
                        flex: 2,
                        child: Container(
                            margin: EdgeInsets.only(
                                left: Insets().appPadding,
                                bottom: Insets().appPadding),
                            padding: EdgeInsets.only(
                                left: Insets().appPadding,
                                right: Insets().appPadding,
                                top: Insets().appGap + 2,
                                bottom: Insets().appPadding),
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(
                                    Insets().appRadiusMin + 4)),
                            child: Heading5(value: "Calendar"))),
                    Expanded(
                      flex: 3,
                      child: Container(
                        margin: EdgeInsets.only(
                            left: Insets().appPadding,
                            bottom: Insets().appPadding),
                        padding: EdgeInsets.only(
                            left: Insets().appPadding,
                            right: Insets().appPadding,
                            top: Insets().appGap + 2,
                            bottom: Insets().appPadding),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(
                                Insets().appRadiusMin + 4)),
                        child: Text("Tasks"),
                      ),
                    ),
                    Expanded(
                      flex: 4,
                      child: Container(
                        margin: EdgeInsets.only(
                            left: Insets().appPadding,
                            right: Insets().appPadding,
                            bottom: Insets().appPadding),
                        padding: EdgeInsets.only(
                            left: Insets().appPadding,
                            right: Insets().appPadding,
                            top: Insets().appGap + 2,
                            bottom: Insets().appPadding),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(
                                Insets().appRadiusMin + 4)),
                        child: Heading5(value: "Activity Feed"),
                      ),
                    ),
                  ],
                  if (!Responsive.isDesktop(context)) ...[
                    Container(
                        width: MediaQuery.of(context).size.width,
                        margin: EdgeInsets.only(
                            left: Insets().appPadding,
                            right: Insets().appPadding,
                            bottom: 15),
                        padding: EdgeInsets.only(
                            left: Insets().appPadding,
                            right: Insets().appPadding,
                            top: Insets().appGap + 2,
                            bottom: Insets().appPadding),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(
                                Insets().appRadiusMin + 4)),
                        child: Heading6(value: "Calendar")),
                    Container(
                      width: MediaQuery.of(context).size.width,
                      margin: EdgeInsets.only(
                          left: Insets().appPadding,
                          right: Insets().appPadding,
                          bottom: 15),
                      padding: EdgeInsets.only(
                          left: Insets().appPadding,
                          right: Insets().appPadding,
                          top: Insets().appGap + 2,
                          bottom: Insets().appPadding),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius:
                              BorderRadius.circular(Insets().appRadiusMin + 4)),
                      child: Text("Tasks"),
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width,
                      margin: EdgeInsets.only(
                        left: Insets().appPadding,
                        bottom: 15,
                        right: Insets().appPadding,
                      ),
                      padding: EdgeInsets.only(
                          left: Insets().appPadding,
                          right: Insets().appPadding,
                          top: Insets().appGap + 2,
                          bottom: Insets().appPadding),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius:
                              BorderRadius.circular(Insets().appRadiusMin + 4)),
                      child: Heading6(value: "Activity Feed"),
                    ),
                  ]
                ])
          ],
        ),
      ),
    );
  }
}
