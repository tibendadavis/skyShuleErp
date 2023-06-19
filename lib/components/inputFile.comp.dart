import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:skyconnect_starter/components/heading_text.dart';
import 'package:skyconnect_starter/controllers/responsive.dart';
import 'package:skyconnect_starter/theme/design.theme.dart';

class inputFile extends StatefulWidget {
  final String heading;

  const inputFile({super.key, required this.heading});

  @override
  State<inputFile> createState() => _inputFileState();
}

class _inputFileState extends State<inputFile> {
  var picked;

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
      child: Flex(
        direction:
            Responsive.isDesktop(context) ? Axis.horizontal : Axis.vertical,
        mainAxisAlignment: Responsive.isDesktop(context)
            ? MainAxisAlignment.spaceBetween
            : MainAxisAlignment.start,
        crossAxisAlignment: Responsive.isDesktop(context)
            ? CrossAxisAlignment.center
            : CrossAxisAlignment.start,
        children: [
          HeadingText(
              size: Responsive.isDesktop(context) ? 15 : 14,
              value: widget.heading),
          SizedBox(
            width: Responsive.isDesktop(context) ? 400 : size.width,
            height: Responsive.isDesktop(context) ? 45 : 40,
            child: Container(
              alignment: Alignment.centerLeft,
              padding: EdgeInsets.only(
                left: Insets().appPadding / 2,
                right: Responsive.isDesktop(context) ? 5 : 4,
              ),
              decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(width: 1, color: Colors.grey),
                  borderRadius: BorderRadius.circular(Insets().appPadding / 2)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  HeadingText(
                      size: Responsive.isDesktop(context) ? 14 : 13,
                      value: picked != null
                          ? picked.files.first.name.toString()
                          : "No File Choosen"),
                  ElevatedButton(
                    onPressed: () async {
                      setState(() async {
                        picked = await FilePicker.platform
                            .pickFiles(allowMultiple: false);
                      });
                      if (picked != null) {
                        print(picked.files.first.name);
                      }
                    },
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Palette().primaryColor,
                        padding: EdgeInsets.only(
                          bottom: Responsive.isDesktop(context) ? 17 : 14,
                          left: Insets().appPadding / 2,
                          right: Insets().appPadding / 2,
                          top: Responsive.isDesktop(context) ? 17 : 14,
                        ),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(7))),
                    child: HeadingText(
                        size: Responsive.isDesktop(context) ? 14 : 13,
                        value: "Upload File"),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
