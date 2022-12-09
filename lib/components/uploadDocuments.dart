import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:skyconnect_starter/components/heading5.dart';
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
    return Container(
      // width: !Responsive.isDesktop(context)
      //     ? MediaQuery.of(context).size.width
      //     : MediaQuery.of(context).size.width / 1.8,
      padding: EdgeInsets.only(
        top: Insets().appPadding,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 300,
            child: Expanded(
              child: ListView(
                children: [
                  DataTable(horizontalMargin: 0, columnSpacing: 10, columns: [
                    DataColumn(
                        label: Expanded(
                      child: HeadingText(
                        size: 14,
                        value: "Document Name",
                        fontWeight: FontWeight.w700,
                      ),
                    )),
                    DataColumn(
                        label: Expanded(
                      child: HeadingText(
                        size: 14,
                        value: "Upload File",
                        fontWeight: FontWeight.w700,
                      ),
                    )),
                    DataColumn(
                        label: Expanded(
                      child: HeadingText(
                        size: 14,
                        value: "File Name",
                        fontWeight: FontWeight.w700,
                      ),
                    )),
                    DataColumn(
                        label: Expanded(
                      child: HeadingText(
                        size: 14,
                        value: "",
                        fontWeight: FontWeight.w700,
                      ),
                    )),
                  ], rows: [
                    DataRow(cells: [
                      DataCell(
                        SizedBox(
                          width: 350,
                          height: 45,
                          child: Container(
                            alignment: Alignment.centerLeft,
                            padding: EdgeInsets.only(
                              left: Insets().appPadding / 2,
                              right: Insets().appPadding / 2,
                            ),
                            decoration: BoxDecoration(
                                border:
                                    Border.all(width: 1.5, color: Colors.grey),
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(
                                    Insets().appPadding / 1.5)),
                            child: TextFormField(
                                decoration: const InputDecoration(
                              border: InputBorder.none,
                              hintText: "Write the name of the type of doc",
                            )),
                          ),
                        ),
                      ),
                      DataCell(
                        SizedBox(
                          width: 350,
                          height: 45,
                          child: Container(
                            alignment: Alignment.centerLeft,
                            padding: EdgeInsets.only(
                              left: Insets().appPadding / 2,
                              right: Insets().appPadding / 2,
                            ),
                            decoration: BoxDecoration(
                                border:
                                    Border.all(width: 1.5, color: Colors.grey),
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(
                                    Insets().appPadding / 1.5)),
                            child: TextFormField(
                                decoration: const InputDecoration(
                              border: InputBorder.none,
                              hintText: "No file choosen",
                            )),
                          ),
                        ),
                      ),
                      DataCell(HeadingText(
                        size: 14,
                        value: " ",
                      )),
                      DataCell(InkWell(
                        onTap: () {},
                        child: Icon(Icons.clear),
                      )),
                    ]),
                  ]),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 10,
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
