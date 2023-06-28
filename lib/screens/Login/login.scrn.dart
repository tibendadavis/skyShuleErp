import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:skyconnect_starter/components/heading2.dart';
import 'package:skyconnect_starter/components/heading5.dart';
import 'package:skyconnect_starter/components/heading_text.dart';
import 'package:skyconnect_starter/controllers/funcs_main.dart';
import 'package:skyconnect_starter/controllers/responsive.dart';
import 'package:skyconnect_starter/screens/Login/loading.scrn.dart';
import 'package:skyconnect_starter/theme/design.theme.dart';

class login extends StatefulWidget {
  const login({super.key});

  @override
  State<login> createState() => _loginState();
}

class _loginState extends State<login> {
  TextEditingController _usernameController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();
  final _formKey = GlobalKey<FormState>();
  String _errorMessage = '';
  double? logoSize = 35;
  @override
  void initState() {
    super.initState();

    // Delay the execution of myFunction() by 2 seconds
    Future.delayed(Duration(milliseconds: 500), () {
      mylogoSize();
      // Future.delayed(Duration(milliseconds: 350), () {
      //   setState(() {
      //     logoSize = 150;
      //   });
      //   Future.delayed(Duration(milliseconds: 250), () {
      //     mylogoSize();
      //   });
      // });
    });
  }

  void mylogoSize() {
    setState(() {
      logoSize = 140;
    });
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: SizedBox(
        width: size.width,
        height: size.height,
        child: Container(
            constraints: BoxConstraints.expand(),
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("assets/img/skyShulebg.jpg"),
                  fit: BoxFit.cover),
            ),
            child: Row(
              mainAxisAlignment: !Responsive.isMobile(context)
                  ? MainAxisAlignment.end
                  : MainAxisAlignment.center,
              children: [
                Container(
                  width: !Responsive.isMobile(context) ? 500 : size.width - 30,
                  height: size.height,
                  margin: EdgeInsets.only(
                      right: !Responsive.isMobile(context) ? 55 : 0,
                      top: 20,
                      bottom: 20),
                  padding: EdgeInsets.only(
                    right: Responsive.isDesktop(context) ? 30 : 20,
                    left: Responsive.isDesktop(context) ? 30 : 20,
                    bottom: Responsive.isDesktop(context) ? 15 : 15,
                    top: Responsive.isDesktop(context) ? 20 : 20,
                  ),
                  decoration: BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment.topLeft,
                        end: Alignment.bottomCenter,
                        stops: [0.07, 0.4],
                        colors: [Palette().primaryColor, Colors.white],
                      ),
                      boxShadow: [
                        BoxShadow(
                          color: Palette().borderColor,
                          blurRadius:
                              Insets().appRadiusMin + 4, // soften the shadow
                          spreadRadius: 2.0, //extend the shadow
                          offset: Offset(
                            1.0, // Move to right 5  horizontally
                            2.0, // Move to bottom 5 Vertically
                          ),
                        )
                      ],
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(Insets().appRadius)),
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            HeadingText(
                              size: Responsive.isDesktop(context) ? 30 : 24,
                              value: Funcs().getSalutation(),
                              color: Colors.white,
                              fontWeight: FontWeight.w700,
                            ),
                          ],
                        ),
                        Spacer(),
                        Center(
                          child: Form(
                            key: _formKey,
                            autovalidateMode:
                                AutovalidateMode.onUserInteraction,
                            child: Column(
                              children: [
                                AnimatedContainer(
                                  duration: Duration(milliseconds: 3500),
                                  height: logoSize,
                                  width: logoSize,
                                  curve: Curves.fastLinearToSlowEaseIn,
                                  child: CircleAvatar(
                                    backgroundColor: Colors.transparent,
                                    child: ClipOval(
                                        child: Image.asset(
                                            "assets/img/skylogo2.png")),
                                  ),
                                ),
                                SizedBox(
                                  height: 15,
                                ),
                                Heading2(
                                  value: "SkyShule",
                                  color: Palette().primaryColor,
                                  fontWeight: FontWeight.w500,
                                ),
                                SizedBox(
                                  height: 15,
                                ),
                                SizedBox(
                                  width: Responsive.isDesktop(context)
                                      ? 400
                                      : size.width - 20,
                                  height:
                                      Responsive.isDesktop(context) ? 60 : 60,
                                  child: Container(
                                    alignment: Alignment.centerLeft,
                                    padding: EdgeInsets.only(
                                      left: Insets().appPadding / 2,
                                      right: Insets().appPadding / 2,
                                    ),
                                    decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius: BorderRadius.circular(
                                            Insets().appPadding / 1.5)),
                                    child: TextFormField(
                                        style:
                                            GoogleFonts.openSans(fontSize: 18),
                                        controller: _usernameController,
                                        onChanged: (val) {},
                                        validator: (value) {
                                          if (value!.isEmpty) {
                                            return 'Please enter your username';
                                          }
                                          return null;
                                        },
                                        onEditingComplete: () {
                                          setState(() {});
                                        },
                                        textAlignVertical:
                                            TextAlignVertical.center,
                                        decoration: InputDecoration(
                                            focusedBorder: OutlineInputBorder(
                                                borderRadius: BorderRadius.all(
                                                    Radius.circular(10.0)),
                                                borderSide: BorderSide(
                                                    color: Palette()
                                                        .primaryColor)),
                                            border: InputBorder.none,
                                            label: Text("Username"),
                                            labelStyle:
                                                TextStyle(fontSize: 18))),
                                  ),
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                SizedBox(
                                  width: Responsive.isDesktop(context)
                                      ? 400
                                      : size.width - 20,
                                  height:
                                      Responsive.isDesktop(context) ? 60 : 60,
                                  child: Container(
                                    alignment: Alignment.centerLeft,
                                    padding: EdgeInsets.only(
                                      left: Insets().appPadding / 2,
                                      right: Insets().appPadding / 2,
                                    ),
                                    decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius: BorderRadius.circular(
                                            Insets().appPadding / 1.5)),
                                    child: TextFormField(
                                        obscureText: true,
                                        style:
                                            GoogleFonts.openSans(fontSize: 18),
                                        controller: _passwordController,
                                        onChanged: (val) {},
                                        validator: (value) {
                                          if (value!.isEmpty) {
                                            return 'Please enter your Password';
                                          }
                                          return null;
                                        },
                                        onEditingComplete: () {
                                          setState(() {});
                                        },
                                        textAlignVertical:
                                            TextAlignVertical.center,
                                        decoration: InputDecoration(
                                            focusedBorder: OutlineInputBorder(
                                                borderRadius: BorderRadius.all(
                                                    Radius.circular(10.0)),
                                                borderSide: BorderSide(
                                                    color: Palette()
                                                        .primaryColor)),
                                            border: InputBorder.none,
                                            label: Text("Password"),
                                            labelStyle:
                                                TextStyle(fontSize: 18))),
                                  ),
                                ),
                                SizedBox(
                                  height: _errorMessage == "" ? 20 : 0,
                                ),
                                if (_errorMessage.isNotEmpty)
                                  Center(
                                      child: Container(
                                    padding: EdgeInsets.only(bottom: 7),
                                    child: Heading5(
                                      value: _errorMessage,
                                      color: Colors.red,
                                    ),
                                  )),
                                SizedBox(
                                  width: Responsive.isDesktop(context)
                                      ? 400
                                      : size.width,
                                  height:
                                      Responsive.isDesktop(context) ? 60 : 60,
                                  child: Container(
                                    decoration: BoxDecoration(
                                      gradient: LinearGradient(
                                        begin: Alignment.topLeft,
                                        end: Alignment.bottomRight,
                                        stops: [0.5, 3.0],
                                        colors: [
                                          Palette().primaryColor,
                                          Palette().primaryColorLight
                                        ],
                                      ),
                                      color: Palette().primaryColor,
                                      borderRadius: BorderRadius.circular(
                                          Insets().appPadding / 1.5),
                                    ),
                                    child: ElevatedButton(
                                      style: ElevatedButton.styleFrom(
                                          padding: EdgeInsets.only(
                                            left: Insets().appPadding / 2,
                                            right: Insets().appPadding / 2,
                                          ),
                                          backgroundColor: Colors.transparent,
                                          elevation: 0,
                                          shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(
                                                      Insets().appPadding /
                                                          1.5))),
                                      onPressed: () {
                                        if (_formKey.currentState!.validate()) {
                                          _submitForm();
                                        }
                                      },
                                      child: Center(
                                          child: HeadingText(
                                        size: Responsive.isDesktop(context)
                                            ? 18
                                            : 18,
                                        value: "LogIn",
                                      )),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Spacer(),
                        SizedBox(
                            width: size.width,
                            child: Container(
                                child: Expanded(
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  HeadingText(
                                      size: Responsive.isDesktop(context)
                                          ? 12
                                          : 12,
                                      color:
                                          Colors.grey.shade700.withOpacity(0.7),
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
                                      child: HeadingText(
                                        size: Responsive.isDesktop(context)
                                            ? 12
                                            : 12,
                                        value: "SkyConnect",
                                        color: Palette()
                                            .primaryColor
                                            .withOpacity(0.7),
                                        fontWeight: FontWeight.w600,
                                      )),
                                  HeadingText(
                                      size: Responsive.isDesktop(context)
                                          ? 12
                                          : 12,
                                      color:
                                          Colors.grey.shade700.withOpacity(0.7),
                                      value: ", All rights reserved.")
                                ],
                              ),
                            )))
                      ]),
                )
              ],
            )),
      ),
    );
  }

//
  void _submitForm() {
    final username = _usernameController.text;
    final password = _passwordController.text;

    // Here you would perform your authentication logic, such as sending a request to a server
    // to verify the credentials.
    // username and password.
    if (username == "Dave" ||
        username == "sky" && password == "davedave" ||
        password == "sky") {
      showDialog(
          context: context,
          builder: (_) => loading(),
          barrierDismissible: false);
      Future.delayed(Duration(seconds: 1), () {
        Navigator.pushReplacementNamed(context, "/home");
      });
    } else {
      setState(() {
        _errorMessage = 'Invalid username or password';
      });
    }
  }
}
