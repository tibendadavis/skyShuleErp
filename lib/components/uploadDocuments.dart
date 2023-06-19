import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:skyconnect_starter/components/heading6.dart';
import 'package:skyconnect_starter/components/heading_text.dart';
import 'package:skyconnect_starter/controllers/responsive.dart';
import 'package:skyconnect_starter/theme/design.theme.dart';

class uploadDocuments extends StatefulWidget {
  const uploadDocuments({super.key});

  @override
  State<uploadDocuments> createState() => _uploadDocumentsState();
}

class _uploadDocumentsState extends State<uploadDocuments> {
  @override
  Widget build(BuildContext context) {
    var picked;
    return Container(
      padding: EdgeInsets.only(
        top: Insets().appPadding,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: EdgeInsets.all(15),
            decoration: BoxDecoration(
                border: Border.all(width: 1, color: Colors.grey),
                borderRadius: BorderRadius.circular(Insets().appRadius)),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Flex(
                  direction: Responsive.isDesktop(context)
                      ? Axis.horizontal
                      : Axis.vertical,
                  crossAxisAlignment: Responsive.isDesktop(context)
                      ? CrossAxisAlignment.center
                      : CrossAxisAlignment.start,
                  children: [
                    Flex(
                      direction: Responsive.isDesktop(context)
                          ? Axis.horizontal
                          : Axis.vertical,
                      mainAxisAlignment: Responsive.isDesktop(context)
                          ? MainAxisAlignment.spaceBetween
                          : MainAxisAlignment.start,
                      crossAxisAlignment: Responsive.isDesktop(context)
                          ? CrossAxisAlignment.center
                          : CrossAxisAlignment.start,
                      children: [
                        HeadingText(
                            size: Responsive.isDesktop(context) ? 18 : 14,
                            value: "Document Name"),
                        SizedBox(width: Responsive.isDesktop(context) ? 5 : 0),
                        SizedBox(
                          width: 220,
                          height: Responsive.isDesktop(context) ? 50 : 40,
                          child: Container(
                            alignment: Alignment.centerLeft,
                            padding: EdgeInsets.only(
                              left: Insets().appPadding / 2,
                              right: Insets().appPadding / 2,
                            ),
                            decoration: BoxDecoration(
                                color: Colors.white,
                                border:
                                    Border.all(width: 1.5, color: Colors.grey),
                                borderRadius: BorderRadius.circular(
                                    Insets().appPadding / 1.5)),
                            child: TextFormField(
                                textAlignVertical: TextAlignVertical.center,
                                decoration: const InputDecoration(
                                  border: InputBorder.none,
                                  hintText: "Write the name of the type of doc",
                                )),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: Responsive.isDesktop(context) ? 10 : 15,
                      width: Responsive.isDesktop(context) ? 20 : 0,
                    ),
                    Flex(
                      direction: Responsive.isDesktop(context)
                          ? Axis.horizontal
                          : Axis.vertical,
                      mainAxisAlignment: Responsive.isDesktop(context)
                          ? MainAxisAlignment.spaceBetween
                          : MainAxisAlignment.start,
                      crossAxisAlignment: Responsive.isDesktop(context)
                          ? CrossAxisAlignment.center
                          : CrossAxisAlignment.start,
                      children: [
                        HeadingText(
                            size: Responsive.isDesktop(context) ? 18 : 14,
                            value: "Upload File"),
                        SizedBox(width: Responsive.isDesktop(context) ? 5 : 0),
                        SizedBox(
                          width: Responsive.isDesktop(context) ? 250 : 220,
                          height: Responsive.isDesktop(context) ? 50 : 40,
                          child: Container(
                            alignment: Alignment.centerLeft,
                            padding: EdgeInsets.only(
                              left: Insets().appPadding / 2,
                              right: Responsive.isDesktop(context) ? 5 : 4,
                            ),
                            decoration: BoxDecoration(
                                color: Colors.white,
                                border:
                                    Border.all(width: 1.5, color: Colors.grey),
                                borderRadius: BorderRadius.circular(
                                    Insets().appPadding / 1.5)),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                HeadingText(
                                    size:
                                        Responsive.isDesktop(context) ? 15 : 13,
                                    // ignore: unnecessary_null_comparison
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
                                        bottom: Responsive.isDesktop(context)
                                            ? 17
                                            : 14,
                                        left: Insets().appPadding / 2,
                                        right: Insets().appPadding / 2,
                                        top: Responsive.isDesktop(context)
                                            ? 17
                                            : 14,
                                      ),
                                      shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(10))),
                                  child: HeadingText(
                                      size: Responsive.isDesktop(context)
                                          ? 15
                                          : 13,
                                      value: "Upload File"),
                                )
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                InkWell(
                  onTap: () {},
                  child: Icon(Icons.clear),
                )
              ],
            ),
          ),
          SizedBox(
            height: Responsive.isDesktop(context) ? 30 : 20,
          ),
          SizedBox(
            width: 150,
            child: OutlinedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                    backgroundColor: Palette().primaryColor,
                    shape: RoundedRectangleBorder(
                        borderRadius:
                            BorderRadius.circular(Insets().appRadiusMin + 4)),
                    padding: EdgeInsets.only(
                        left: Insets().appPadding / 1.5,
                        right: Insets().appPadding / 1.5,
                        top: Insets().appPadding,
                        bottom: Insets().appPadding)),
                child: Heading6(
                  value: "Add More",
                  color: Colors.white,
                )),
          ),
        ],
      ),
    );
  }
}
