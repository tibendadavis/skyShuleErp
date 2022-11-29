import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:skyconnect_starter/theme/design.theme.dart';

class CameraScreen extends StatefulWidget {
  final List<CameraDescription> cameras;
  const CameraScreen({Key? key, required this.cameras}) : super(key: key);

  @override
  State<CameraScreen> createState() => _CameraScreenState();
}

class _CameraScreenState extends State<CameraScreen> {
  late CameraController controller;

  @override
  void initState() {
    controller = CameraController(widget.cameras[0], ResolutionPreset.max);
    controller.initialize().then((_) {
      if (!mounted) {
        return;
      }
      setState(() {});
    }).catchError((Object e) {
      if (e is CameraException) {
        switch (e.code) {
          case 'CameraAccessDenied':
            print('User denied camera access.');
            break;
          default:
            print('Handle other errors.');
            break;
        }
      }
    });

    super.initState();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;

    if (!controller.value.isInitialized) {
      return Container();
    }

    return Scaffold(
      body: Stack(
        children: [
          SafeArea(
            child: Stack(
              children: [
                Container(
                  margin: EdgeInsets.only(top: Insets().appBarHeight),
                  padding: EdgeInsets.symmetric(horizontal: Insets().appGap),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                          height: size.height * .45,
                          child: Transform.scale(
                            scale: (size.width * 2) / size.height * 2,
                            child: Center(
                              child: AspectRatio(
                                aspectRatio: controller.value.aspectRatio,
                                child: CameraPreview(controller),
                              ),
                            ),
                          )),
                      SizedBox(
                        height: Insets().appGap,
                      ),
                      Container(
                        color: Colors.white,
                        height: size.height * .37,
                      )
                    ],
                  ),
                ),
                Positioned(
                  child: Center(),
                  // child: ScreenAppBar(
                  //   showBorder: false,
                  //   title: "Gallery",
                  //   actions: [
                  //     TextButton(onPressed: () {}, child: Text("Next".tr, style: GoogleFonts.questrial(textStyle: TextStyle(
                  //       fontSize: Insets().appFontSize,
                  //       fontWeight: FontWeight.w300,
                  //     ))))
                  //   ],
                  // ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
