import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:skyconnect_starter/theme/design.theme.dart';

class PostEdit extends StatefulWidget {
  final String? colID;
  final String username;
  final String imageSize;
  final String prompt;
  final String style;
  final List<Uint8List> selectedImageBytes;
  const PostEdit(
      {Key? key,
      this.colID,
      required this.username,
      required this.imageSize,
      required this.prompt,
      required this.style,
      required this.selectedImageBytes})
      : super(key: key);

  @override
  State<PostEdit> createState() => _PostEditState();
}

class _PostEditState extends State<PostEdit> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: SizedBox(
          height: Insets().inputSize,
          child: TextFormField(
            decoration: InputDecoration(
                hintText: "What is on your imagination today?",
                suffixIcon: IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.refresh),
                )),
            validator: (val) => val!.isEmpty ? "Really :(".tr : null,
            onChanged: (val) {
              setState(() {});
            },
          ),
        ),
      ),
      body: Container(),
    );
  }
}
