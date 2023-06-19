import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:skyconnect_starter/components/divider.comp.dart';
import 'package:skyconnect_starter/components/heading_text.dart';
import 'package:skyconnect_starter/components/tile.comp.dart';
import 'package:skyconnect_starter/components/tile2.comp.dart';
import 'package:skyconnect_starter/controllers/globalVariables.dart';
import 'package:skyconnect_starter/controllers/responsive.dart';
import 'package:skyconnect_starter/main.dart';
import 'package:skyconnect_starter/theme/design.theme.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class HomePage extends StatefulWidget {
  HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final ScrollController _scrollController = ScrollController();
  bool _atStart = true;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  void dispose() {
    // Stop scrolling when the widget is disposed
    _scrollController.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    final List<ChartData> chartData = [
      ChartData("Jan", 250),
      ChartData("Feb", 320),
      ChartData("Mar", 200),
      ChartData("Apr", 340),
      ChartData("May", 400),
      ChartData("Jun", 350),
      ChartData("Jul", 500),
      ChartData("Aug", 450),
      ChartData("Sept", 670),
      ChartData("Oct", 120),
      ChartData("Nov", 340),
      ChartData("Dec", 530),
    ];
    final List<ChartData> chartData3 = [
      ChartData("Jan", 400),
      ChartData("Feb", 230),
      ChartData("Mar", 560),
      ChartData("Apr", 340),
      ChartData("May", 670),
      ChartData("Jun", 320),
      ChartData("Jul", 560),
      ChartData("Aug", 120),
      ChartData("Sept", 450),
      ChartData("Oct", 320),
      ChartData("Nov", 340),
      ChartData("Dec", 560),
    ];

    return ListView(
      children: [
        Container(
          child: Expanded(
            child: Column(
              children: [
                Container(
                  alignment: Alignment.bottomLeft,
                  padding: EdgeInsets.only(
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
                              margin:
                                  EdgeInsets.only(right: Insets().appPadding),
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
                Container(
                  decoration: BoxDecoration(
                      color: Palette().primaryColorLight,
                      borderRadius:
                          BorderRadius.circular(Insets().appRadiusMin + 4)),
                  child: Flex(
                      direction: Responsive.isDesktop(context)
                          ? Axis.horizontal
                          : Axis.vertical,
                      children: [
                        Stack(
                          children: [
                            SizedBox(
                              width: Responsive.isDesktop(context) &&
                                      globalData.menu == true
                                  ? size.width - 60
                                  : Responsive.isDesktop(context) &&
                                          globalData.menu == false
                                      ? size.width - 250
                                      : size.width,
                              height:
                                  Responsive.isDesktop(context) ? 280 : null,
                              child: SingleChildScrollView(
                                controller: _scrollController,
                                scrollDirection: Axis.horizontal,
                                child: Row(
                                  children: [
                                    Container(
                                      width: Responsive.isDesktop(context)
                                          ? 520
                                          : size.width - 20,
                                      margin: EdgeInsets.only(
                                        left: Insets().appPadding,
                                      ),
                                      padding: EdgeInsets.only(
                                        right: Insets().appPadding,
                                        top: 5,
                                      ),
                                      decoration: BoxDecoration(
                                          color: Colors.white,
                                          borderRadius: BorderRadius.circular(
                                              Insets().appRadiusMin + 4)),
                                      child: Container(
                                          //Initialize the spark charts widget
                                          child: SfCartesianChart(
                                        title: ChartTitle(
                                            text: ' ',
                                            textStyle: GoogleFonts.openSans(
                                                color: Palette().primaryColor)),
                                        primaryXAxis: CategoryAxis(
                                            majorGridLines:
                                                MajorGridLines(width: 0),
                                            minorGridLines:
                                                MinorGridLines(width: 0)),
                                        primaryYAxis: NumericAxis(
                                            title: AxisTitle(
                                              text: "Students",
                                              textStyle: GoogleFonts.openSans(
                                                  fontWeight: FontWeight.bold,
                                                  color: Palette().primaryColor,
                                                  fontSize: 17),
                                              alignment: ChartAlignment.center,
                                            ),
                                            majorGridLines:
                                                MajorGridLines(width: 0),
                                            minorGridLines:
                                                MinorGridLines(width: 0)),
                                        series: [
                                          SplineAreaSeries<ChartData, String>(
                                            color: Palette().primaryColor,
                                            dataSource: chartData,
                                            xValueMapper: (ChartData data, _) =>
                                                data.x,
                                            yValueMapper: (ChartData data, _) =>
                                                data.y,
                                            // Enable data label
                                            dataLabelSettings:
                                                DataLabelSettings(
                                                    isVisible: false),
                                            // Enable tooltip
                                            enableTooltip: true,
                                            splineType: SplineType.natural,
                                            animationDelay: 300,
                                            animationDuration: 2500,

                                            gradient: LinearGradient(
                                                colors: [
                                                  Palette().primaryColor,
                                                  Colors.white
                                                ],
                                                stops: [
                                                  0.4,
                                                  1.0
                                                ],
                                                end: Alignment.bottomCenter,
                                                begin: Alignment.topCenter),

                                            // Enable point interaction
                                            // enablePointSelection: true,
                                            // Handle point tap event
                                            // onPointTapped:
                                            //     (PointTapArgs args) {
                                            // Do something on point tap
                                            //  },
                                          ),
                                        ],
                                      )),
                                    ),
                                    Container(
                                      width: Responsive.isDesktop(context)
                                          ? 520
                                          : 520,
                                      margin: EdgeInsets.only(
                                        left: Insets().appPadding,
                                      ),
                                      decoration: BoxDecoration(
                                          color: Colors.white,
                                          borderRadius: BorderRadius.circular(
                                              Insets().appRadiusMin + 4)),
                                      child: SfCircularChart(
                                        series: <CircularSeries>[
                                          PieSeries<ChartData2, String>(
                                            dataSource: chartData2,
                                            enableTooltip: true,

                                            xValueMapper:
                                                (ChartData2 data, _) => data.x,
                                            yValueMapper:
                                                (ChartData2 data, _) => data.y,
                                            strokeColor: Palette().primaryColor,
                                            radius: "90",
                                            explode: true,
                                            explodeOffset: '20%',
                                            explodeIndex: 0,
                                            animationDelay: 7,
                                            animationDuration: 1500,

                                            //enableSmartLabels: true,
                                            dataLabelMapper:
                                                (ChartData2 data, _) =>
                                                    '${data.x} : ${data.y}',
                                            dataLabelSettings:
                                                DataLabelSettings(
                                              isVisible: true,
                                              labelPosition:
                                                  ChartDataLabelPosition
                                                      .outside,
                                              useSeriesColor: true,
                                              textStyle: GoogleFonts.openSans(
                                                  fontSize: 12,
                                                  fontWeight: FontWeight.bold),
                                              // labelIntersectAction:
                                              //     LabelIntersectAction
                                              //         .hide
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Container(
                                      width: Responsive.isDesktop(context)
                                          ? 520
                                          : size.width - 20,
                                      margin: EdgeInsets.only(
                                        left: Insets().appPadding,
                                      ),
                                      padding: EdgeInsets.only(
                                        right: Insets().appPadding,
                                        top: 5,
                                      ),
                                      decoration: BoxDecoration(
                                          color: Colors.white,
                                          borderRadius: BorderRadius.circular(
                                              Insets().appRadiusMin + 4)),
                                      child: Container(
                                          //Initialize the spark charts widget
                                          child: SfCartesianChart(
                                        title: ChartTitle(
                                            text: ' ',
                                            textStyle: GoogleFonts.openSans(
                                                color: Palette().primaryColor)),
                                        primaryXAxis: CategoryAxis(
                                            majorGridLines:
                                                MajorGridLines(width: 0),
                                            minorGridLines:
                                                MinorGridLines(width: 0)),
                                        primaryYAxis: NumericAxis(
                                            title: AxisTitle(
                                              text: "Teaching Staff",
                                              textStyle: GoogleFonts.openSans(
                                                  fontWeight: FontWeight.bold,
                                                  color: Palette().primaryColor,
                                                  fontSize: 17),
                                              alignment: ChartAlignment.center,
                                            ),
                                            majorGridLines:
                                                MajorGridLines(width: 0),
                                            minorGridLines:
                                                MinorGridLines(width: 0)),
                                        series: <SplineSeries<ChartData,
                                            String>>[
                                          SplineSeries<ChartData, String>(
                                            dataSource: chartData3,
                                            xValueMapper: (ChartData data, _) =>
                                                data.x,
                                            yValueMapper: (ChartData data, _) =>
                                                data.y,
                                            // Enable data label
                                            dataLabelSettings:
                                                DataLabelSettings(
                                                    isVisible: false),
                                            // Enable tooltip
                                            enableTooltip: true,
                                            splineType: SplineType.natural,
                                            animationDelay: 300,
                                            animationDuration: 2500,
                                            color: Colors.blue,
                                            opacity: 1,
                                            width: 3,
                                          ),
                                          SplineSeries<ChartData, String>(
                                            dataSource: chartData,
                                            xValueMapper: (ChartData data, _) =>
                                                data.x,
                                            yValueMapper: (ChartData data, _) =>
                                                data.y,
                                            // Enable data label
                                            dataLabelSettings:
                                                DataLabelSettings(
                                                    isVisible: false),
                                            // Enable tooltip
                                            enableTooltip: true,
                                            splineType: SplineType.natural,
                                            animationDelay: 300,
                                            animationDuration: 2500,
                                            color: Colors.pink,
                                            opacity: 1,
                                            width: 3,
                                          )
                                        ],
                                      )),
                                    ),
                                    Container(
                                        width: Responsive.isDesktop(context)
                                            ? 500
                                            : size.width - 20,
                                        margin: EdgeInsets.only(
                                          left: Insets().appPadding,
                                          right: Insets().appPadding,
                                        ),
                                        padding: EdgeInsets.only(
                                          right: Insets().appPadding,
                                          top: 5,
                                        ),
                                        decoration: BoxDecoration(
                                            color: Colors.white,
                                            borderRadius: BorderRadius.circular(
                                                Insets().appRadiusMin + 4)),
                                        child: SfCartesianChart(
                                          title: ChartTitle(
                                              text: ' ',
                                              textStyle: GoogleFonts.openSans(
                                                  color:
                                                      Palette().primaryColor)),
                                          primaryXAxis: CategoryAxis(
                                              majorGridLines:
                                                  MajorGridLines(width: 0),
                                              minorGridLines:
                                                  MinorGridLines(width: 0)),
                                          primaryYAxis: NumericAxis(
                                              title: AxisTitle(
                                                text: "Supporting Staff",
                                                textStyle: GoogleFonts.openSans(
                                                    fontWeight: FontWeight.bold,
                                                    color:
                                                        Palette().primaryColor,
                                                    fontSize: 17),
                                                alignment:
                                                    ChartAlignment.center,
                                              ),
                                              majorGridLines:
                                                  MajorGridLines(width: 0),
                                              minorGridLines:
                                                  MinorGridLines(width: 0)),
                                          series: [
                                            ScatterSeries<ChartData, String>(
                                              dataSource: chartData,
                                              xValueMapper:
                                                  (ChartData data, _) => data.x,
                                              yValueMapper:
                                                  (ChartData data, _) => data.y,
                                              markerSettings: MarkerSettings(
                                                  isVisible: true,
                                                  shape: DataMarkerType.circle,
                                                  color: Colors.yellow.shade500,
                                                  borderWidth: 2,
                                                  width: 8,
                                                  borderColor: Colors.black),
                                            ),
                                            ScatterSeries<ChartData, String>(
                                              dataSource: chartData3,
                                              xValueMapper:
                                                  (ChartData data, _) => data.x,
                                              yValueMapper:
                                                  (ChartData data, _) => data.y,
                                              markerSettings: MarkerSettings(
                                                  isVisible: true,
                                                  shape: DataMarkerType.circle,
                                                  width: 8,
                                                  color: Colors.brown.shade600,
                                                  borderWidth: 2,
                                                  borderColor: Colors.black),
                                            )
                                          ],
                                        )),
                                  ],
                                ),
                              ),
                            ),
                            if (!_atStart)
                              Positioned(
                                left: 20,
                                top: Responsive.isDesktop(context) ? 100 : 130,
                                child: InkWell(
                                  onTap: () {
                                    _scrollController.animateTo(
                                        duration: Duration(milliseconds: 1500),
                                        curve: Curves.fastLinearToSlowEaseIn,
                                        _scrollController
                                            .position.minScrollExtent);
                                    setState(() {
                                      _atStart = !_atStart;
                                    });
                                  },
                                  child: Container(
                                    decoration: BoxDecoration(
                                        color: Colors.white.withOpacity(0.2),
                                        borderRadius:
                                            BorderRadius.circular(20)),
                                    child: Icon(
                                      Icons.navigate_before_rounded,
                                      color: Colors.grey[700],
                                      size: 50,
                                    ),
                                  ),
                                ),
                              ),
                            if (_atStart)
                              Positioned(
                                right: 20,
                                top: Responsive.isDesktop(context) ? 100 : 130,
                                child: InkWell(
                                  onTap: () {
                                    _scrollController.animateTo(
                                        duration: Duration(milliseconds: 1500),
                                        curve: Curves.fastLinearToSlowEaseIn,
                                        _scrollController
                                            .position.maxScrollExtent);

                                    setState(() {
                                      _atStart = !_atStart;
                                    });
                                  },
                                  child: Container(
                                    decoration: BoxDecoration(
                                        color: Colors.white.withOpacity(0.2),
                                        borderRadius:
                                            BorderRadius.circular(20)),
                                    child: Icon(
                                      Icons.navigate_next_rounded,
                                      color: Colors.grey[700],
                                      size: 50,
                                    ),
                                  ),
                                ),
                              )
                          ],
                        ),
                      ]),
                ),
                Container(
                  alignment: Alignment.bottomLeft,
                  padding: EdgeInsets.only(
                      top: Insets().appPadding / 2,
                      left: Responsive.isDesktop(context)
                          ? Insets().appPadding
                          : Insets().appPadding,
                      right: Insets().appPadding),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        child: HeadingText(
                          size: Responsive.isDesktop(context) ? 27 : 25,
                          value: "Highlights",
                          fontWeight: FontWeight.w700,
                          color: Colors.grey[700],
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  child: Flex(
                    direction: Responsive.isDesktop(context)
                        ? Axis.horizontal
                        : Axis.vertical,
                    children: [
                      if (Responsive.isDesktop(context)) ...[
                        Expanded(
                            child: InkWell(
                          onTap: () {
                            Navigator.pushNamed(context, "/users/students");
                          },
                          child: tile2(
                            tileHeading: "Students Enrolled",
                            tileData: "146,700",
                            icon: Icons.group,
                          ),
                        )),
                        Expanded(
                            child: InkWell(
                          onTap: () {
                            Navigator.pushNamed(context, "/attendance/student");
                          },
                          child: tile2(
                            tileHeading: "Attendance Rate",
                            tileData: "73%",
                            icon: Icons.show_chart_outlined,
                          ),
                        )),
                        Expanded(
                          child: InkWell(
                            onTap: () {
                              Navigator.pushNamed(
                                  context, "/exams/reports/singleReports");
                            },
                            child: tile2(
                              tileHeading: "Average Grade",
                              tileData: "B",
                              icon: Icons.grade_rounded,
                            ),
                          ),
                        ),
                        Expanded(
                            child: Container(
                          margin:
                              EdgeInsets.only(right: Insets().appPadding * 2),
                          child: InkWell(
                            onTap: () {
                              Navigator.pushNamed(
                                  context, "/financeManagement/feePayment");
                            },
                            child: tile2(
                              tileHeading: "Pending Fees (Tzs)",
                              tileData: "71,340,200",
                              icon: Icons.payments,
                            ),
                          ),
                        )),
                      ],
                      if (!Responsive.isDesktop(context)) ...[
                        Container(
                            width: MediaQuery.of(context).size.width,
                            margin: EdgeInsets.only(
                              right: Insets().appPadding,
                            ),
                            child: InkWell(
                              onTap: () {
                                Navigator.pushNamed(context, "/users/students");
                              },
                              child: tile2(
                                tileHeading: "Students Enrolled",
                                tileData: "146,700",
                                icon: Icons.group,
                              ),
                            )),
                        Container(
                            width: MediaQuery.of(context).size.width,
                            margin: EdgeInsets.only(
                              right: Insets().appPadding,
                            ),
                            child: InkWell(
                              onTap: () {
                                Navigator.pushNamed(
                                    context, "/attendance/student");
                              },
                              child: tile2(
                                tileHeading: "Attendance Rate",
                                tileData: "73%",
                                icon: Icons.show_chart_outlined,
                              ),
                            )),
                        Container(
                          width: MediaQuery.of(context).size.width,
                          margin: EdgeInsets.only(
                            right: Insets().appPadding,
                          ),
                          child: InkWell(
                            onTap: () {
                              Navigator.pushNamed(
                                  context, "/exams/reports/singleReports");
                            },
                            child: tile2(
                              tileHeading: "Average Grade",
                              tileData: "B",
                              icon: Icons.grade_rounded,
                            ),
                          ),
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width,
                          margin: EdgeInsets.only(
                            right: Insets().appPadding,
                            bottom: Insets().appPadding,
                          ),
                          child: InkWell(
                            onTap: () {
                              Navigator.pushNamed(
                                  context, "/financeManagement/feePayment");
                            },
                            child: tile2(
                              tileHeading: "Pending Fees (Tzs)",
                              tileData: "71,340,200",
                              icon: Icons.payments,
                            ),
                          ),
                        ),
                      ]
                    ],
                  ),
                ),
                myDivider(),
                Container(
                  child: Flex(
                    direction: Responsive.isDesktop(context)
                        ? Axis.horizontal
                        : Axis.vertical,
                    children: [
                      if (Responsive.isDesktop(context)) ...[
                        Expanded(
                            child: InkWell(
                          onTap: () {
                            Navigator.pushNamed(
                                context, "/attendance/employee");
                          },
                          child: tile2(
                            tileHeading: "Staff Attendance Rate",
                            tileData: "89%",
                            icon: Icons.show_chart_rounded,
                          ),
                        )),
                        Expanded(
                            child: InkWell(
                          onTap: () {
                            Navigator.pushNamed(context, "/library/books");
                          },
                          child: tile2(
                            tileHeading: "Library Books",
                            tileData: "127",
                            icon: Icons.book_rounded,
                          ),
                        )),
                        Expanded(
                          child: InkWell(
                            onTap: () {
                              Navigator.pushNamed(context, "/class");
                            },
                            child: tile2(
                                tileHeading: "Average Class Size",
                                tileData: "47",
                                icon: Icons.class_rounded),
                          ),
                        ),
                        Expanded(
                            child: Container(
                          margin:
                              EdgeInsets.only(right: Insets().appPadding * 2),
                          child: InkWell(
                            onTap: () {
                              // Navigator.pushNamed(context, "/payments");
                            },
                            child: tile2(
                              tileHeading: "Discipline Incidents",
                              tileData: "12",
                              icon: Icons.warning_amber_rounded,
                            ),
                          ),
                        )),
                      ],
                      if (!Responsive.isDesktop(context)) ...[
                        Container(
                            width: MediaQuery.of(context).size.width,
                            margin: EdgeInsets.only(
                              right: Insets().appPadding,
                            ),
                            child: InkWell(
                              onTap: () {
                                Navigator.pushNamed(
                                    context, "/attendance/employee");
                              },
                              child: tile2(
                                tileHeading: "Staff Attendance Rate",
                                tileData: "89%",
                                icon: Icons.show_chart_rounded,
                              ),
                            )),
                        Container(
                            width: MediaQuery.of(context).size.width,
                            margin: EdgeInsets.only(
                              right: Insets().appPadding,
                            ),
                            child: InkWell(
                              onTap: () {
                                Navigator.pushNamed(context, "/library/books");
                              },
                              child: tile2(
                                  tileHeading: "Library Books",
                                  icon: Icons.book_rounded,
                                  tileData: "127"),
                            )),
                        Container(
                          width: MediaQuery.of(context).size.width,
                          margin: EdgeInsets.only(
                            right: Insets().appPadding,
                          ),
                          child: InkWell(
                            onTap: () {
                              Navigator.pushNamed(context, "/class");
                            },
                            child: tile2(
                                tileHeading: "Average Class Size",
                                icon: Icons.class_rounded,
                                tileData: "47"),
                          ),
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width,
                          margin: EdgeInsets.only(
                            right: Insets().appPadding,
                            bottom: Insets().appPadding,
                          ),
                          child: InkWell(
                            onTap: () {
                              // Navigator.pushNamed(context, "/payments");
                            },
                            child: tile2(
                              tileHeading: "Discipline Incidents",
                              tileData: "127",
                              icon: Icons.warning_amber_rounded,
                            ),
                          ),
                        ),
                      ]
                    ],
                  ),
                ),
                myDivider(),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

class ChartData {
  final String x;
  final y;

  ChartData(this.x, this.y);
}

class ChartData2 {
  final String x;
  final double y;
  List<Color>? gradientColors;

  ChartData2(this.x, this.y);
}

final List<ChartData2> chartData2 = [
  ChartData2(
    "Fees Collected\n",
    149000000,
  ),
  ChartData2(
    'Fees Pending\n',
    123000000,
  ),
];
