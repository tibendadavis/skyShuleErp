import 'package:flutter/material.dart';
import 'package:skyconnect_starter/components/app_drawer/skyShuleDrawer.dart';
import 'package:skyconnect_starter/components/desktopScaffold.comp.dart';
import 'package:skyconnect_starter/components/header.dart';
import 'package:skyconnect_starter/components/heading5.dart';
import 'package:skyconnect_starter/components/heading6.dart';
import 'package:skyconnect_starter/components/mobileScaffold.comp.dart';
import 'package:skyconnect_starter/controllers/funcs_main.dart';
import 'package:skyconnect_starter/controllers/globalVariables.dart';
import 'package:skyconnect_starter/controllers/responsive.dart';
import 'package:skyconnect_starter/components/tabletScaffold.comp.dart';
import 'package:skyconnect_starter/routes/routes.dart';
import 'package:skyconnect_starter/theme/design.theme.dart';
import 'package:skyconnect_starter/components/heading2.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});
  final GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        routes: routes().route,
        initialRoute: "/",
        debugShowCheckedModeBanner: false);
  }
}

class MyHomePage extends StatefulWidget {
  final Widget page;
  const MyHomePage({super.key, required this.page});
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  bool _menu = false;
  double _drawersize = 250;
  @override
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: !Responsive.isDesktop(context)
          ? AppBar(
              centerTitle: true,
              elevation: 0,
              title: Title(
                  color: Palette().textColor,
                  child: const Heading2(
                    value: "SkyShule",
                  )),
              backgroundColor: Palette().primaryColor,
            )
          : null,
      drawer: skyShuleDrawer(
        size: 304,
        onTap: () {},
      ),
      body: Container(
          width: size.width,
          height: size.height,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              if (Responsive.isDesktop(context))
                AnimatedContainer(
                    duration: const Duration(milliseconds: 1000),
                    curve: Curves.fastLinearToSlowEaseIn,
                    width: _drawersize,
                    child: skyShuleDrawer(
                      size: _drawersize,
                      onTap: (val) {
                        setState(() {
                          _drawersize = val;
                        });
                      },
                    )),
              Expanded(
                  child: Column(
                children: [
                  Container(
                      padding: EdgeInsets.only(bottom: 3),
                      decoration: BoxDecoration(
                          color: Palette().primaryColorExtraLight),
                      child: header(
                        onTap: (val) {
                          setState(() {
                            _drawersize = val[0];
                            globalData.menu = val[1];
                          });
                        },
                      )),
                  SingleChildScrollView(
                    scrollDirection: Axis.vertical,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          height: Responsive.isDesktop(context)
                              ? size.height - 86
                              : size.height - 142,
                          child: LayoutBuilder(builder: (context, constraints) {
                            if (Responsive.isDesktop(context)) {
                              return desktopScaffold(
                                page: widget.page,
                              );
                            } else if (Responsive.isTablet(context)) {
                              return tabletScaffold(
                                page: widget.page,
                              );
                            } else {
                              return mobileScaffold(
                                page: widget.page,
                              );
                            }
                          }),
                        ),
                        SizedBox(
                            height: 20,
                            width: size.width,
                            child: Container(
                                padding: EdgeInsets.only(
                                    right: 3, top: 3, left: 25, bottom: 0),
                                color: Colors.white,
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Heading6(
                                        color: Colors.grey.shade500,
                                        value:
                                            "Copyright © ${DateTime.now().year}"),
                                    SizedBox(
                                      width: 5,
                                    ),
                                    InkWell(
                                        onTap: () {
                                          Funcs().openLink(
                                              url: "www.skyconnect.co.tz");
                                        },
                                        child: Heading6(
                                          value: "SkyConnect",
                                          color: Palette()
                                              .primaryColor
                                              .withOpacity(0.9),
                                          fontWeight: FontWeight.w600,
                                        )),
                                    Heading6(
                                        color: Colors.grey.shade500,
                                        value: ", All rights reserved.")
                                  ],
                                )))
                      ],
                    ),
                  )
                ],
              )),
            ],
          )),
    );
  }
}
