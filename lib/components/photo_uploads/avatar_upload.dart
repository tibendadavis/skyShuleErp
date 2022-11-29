import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:skyconnect_starter/components/heading2.dart';
import 'package:skyconnect_starter/controllers/funcs_main.dart';
import 'package:skyconnect_starter/theme/design.theme.dart';

class AvatarUploadWDG extends StatefulWidget {
  final Function onTap;
  final String? currentImage;
  final String? name;
  final bool isLoading;
  const AvatarUploadWDG(
      {Key? key,
      required this.currentImage,
      this.name,
      required this.onTap,
      required this.isLoading})
      : super(key: key);

  @override
  State<AvatarUploadWDG> createState() => _AvatarUploadWDGState();
}

class _AvatarUploadWDGState extends State<AvatarUploadWDG> {
  bool isLoading = false;

  //display image selected from camera
  imageSelectorCamera() async {
    final cameraFile = await ImagePicker().getImage(
      source: ImageSource.camera,
      //maxHeight: 50.0,
      //maxWidth: 50.0,
    );
    print("You selected camera image : ${cameraFile!.path}");
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        widget.onTap();
      },
      child: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
                color: Colors.blueGrey[200],
                borderRadius: BorderRadius.circular(35),
                border: Border.all(
                  width: 1,
                  color: Palette().primaryColorExtraLight.withOpacity(0.3),
                )),
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(35),
              ),
              child: CircleAvatar(
                backgroundColor:
                    Palette().primaryColorExtraLight.withOpacity(0.4),
                radius: 35,
                backgroundImage: widget.currentImage == null
                    ? null
                    : Image.network(widget.currentImage!).image,
                child: widget.isLoading
                    ? const CircularProgressIndicator()
                    : widget.currentImage != null
                        ? null
                        : Heading2(
                            value: Funcs().getInitials(
                                string: widget.name!.toUpperCase(),
                                limitTo: widget.name!.contains(" ") ? 2 : null),
                            color: Colors.white.withOpacity(0.9),
                          ),
              ),
            ),
          ),
          Positioned(
            bottom: 0,
            right: 0,
            child: Container(
              height: 35,
              width: 35,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(35 / 2),
                  border: Border.all(width: 1, color: Colors.grey[300]!)),
              child: Icon(
                Icons.camera_alt_rounded,
                color: Palette().primaryColorLight,
                size: 20,
              ),
            ),
          )
        ],
      ),
    );
  }
}
