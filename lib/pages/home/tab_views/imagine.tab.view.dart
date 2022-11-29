// import 'dart:typed_data';
// import 'package:cloud_firestore/cloud_firestore.dart';
// import 'package:dio/dio.dart';
// import 'package:firebase_auth/firebase_auth.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_spinkit/flutter_spinkit.dart';
// import 'package:get/get.dart';
// import 'package:google_fonts/google_fonts.dart';
// import 'package:image_picker_plus/image_picker_plus.dart';
// import 'package:permission_handler/permission_handler.dart';
// import 'package:skyconnect_starter/components/heading3.dart';
// import 'package:skyconnect_starter/components/heading6.dart';
// import 'package:skyconnect_starter/controllers/funcs_main.dart';
// import 'package:skyconnect_starter/database/firestore.dart';
// import 'package:skyconnect_starter/screens/loading.scrn.dart';
// import 'package:skyconnect_starter/services/data.dart';
// import 'package:skyconnect_starter/theme/design.theme.dart';
// import 'package:path_provider/path_provider.dart' as path_provider;

// class ImagineTabView extends StatefulWidget {
//   const ImagineTabView({Key? key}) : super(key: key);

//   @override
//   State<ImagineTabView> createState() => _ImagineTabViewState();
// }

// class _ImagineTabViewState extends State<ImagineTabView> {
//   final db = FirebaseFirestore.instance;
//   User? currentUser = FirebaseAuth.instance.currentUser;

//   final _formKey = GlobalKey<FormState>();

//   List<Uint8List>? _generatedImagesBytes;
//   List<Uint8List> _selectedImageBytes = [];

//   String? _prompt;
//   String _style = AppData().generationStyles.first;
//   String _imageSize = "256x256";
//   final int _variations = 2;
//   bool _generating = false;
//   bool _posting = false;

//   @override
//   Widget build(BuildContext context) {
//     final Size size = MediaQuery.of(context).size;

//     return StreamBuilder<QuerySnapshot>(
//         stream: db.collection("appData").snapshots(),
//         builder: (context, snapshot) {
//           if (snapshot.data == null) {
//             return const LoadingScreen();
//           } else {
//             final appData = snapshot.data!.docs;
//             final pointsAppData =
//                 appData.firstWhere((element) => element.id == "points");

//             return StreamBuilder<QuerySnapshot>(
//                 stream: db.collection("users").snapshots(),
//                 builder: (context, snapshot) {
//                   if (snapshot.data == null) {
//                     return const LoadingScreen();
//                   } else {
//                     final allUsers = snapshot.data!.docs;
//                     final user = allUsers.firstWhere(
//                         (element) => element.id == currentUser!.uid);

//                     return StreamBuilder<QuerySnapshot>(
//                         stream: db.collection("followings").snapshots(),
//                         builder: (context, snapshot) {
//                           if (snapshot.data == null) {
//                             return const LoadingScreen();
//                           } else {
//                             final followings = snapshot.data!.docs;
//                             final following = followings
//                                 .firstWhere((element) => element.id == user.id);

//                             final followingIDs = following['followingIDs'];

//                             return StreamBuilder<QuerySnapshot>(
//                                 stream: db
//                                     .collection("collections")
//                                     .orderBy("dateAdded", descending: true)
//                                     .snapshots(),
//                                 builder: (context, snapshot) {
//                                   if (snapshot.data == null) {
//                                     return const LoadingScreen();
//                                   } else {
//                                     final allCollections = snapshot.data!.docs;
//                                     final collections = allCollections
//                                         .where((element) =>
//                                             element['uid'] == user.id ||
//                                             followingIDs
//                                                 .contains(element['uid']))
//                                         .toList();

//                                     return DefaultTabController(
//                                       length: AppData().generationStyles.length,
//                                       child: Container(
//                                         height: size.height,
//                                         width: size.width,
//                                         padding:
//                                             EdgeInsets.all(Insets().appGap),
//                                         child: Form(
//                                           key: _formKey,
//                                           child: SingleChildScrollView(
//                                             child: Column(
//                                               crossAxisAlignment:
//                                                   CrossAxisAlignment.start,
//                                               children: [
//                                                 Container(
//                                                   height: Insets().inputSize,
//                                                   child: TabBar(
//                                                     onTap: (index) {
//                                                       setState(() {
//                                                         _style = AppData()
//                                                                 .generationStyles[
//                                                             index];
//                                                       });
//                                                     },
//                                                     isScrollable: true,
//                                                     tabs: [
//                                                       ...List.generate(
//                                                         AppData()
//                                                             .generationStyles
//                                                             .length,
//                                                         (index) => Tab(
//                                                             text: AppData()
//                                                                     .generationStyles[
//                                                                 index]),
//                                                       ),
//                                                     ],
//                                                   ),
//                                                 ),
//                                                 SizedBox(
//                                                   height: Insets().appGap,
//                                                 ),
//                                                 SizedBox(
//                                                   height: Insets().inputSize,
//                                                   child: TextFormField(
//                                                     decoration: InputDecoration(
//                                                         hintText:
//                                                             "What is on your imagination today?",
//                                                         suffixIcon: IconButton(
//                                                           onPressed: () {},
//                                                           icon: const Icon(
//                                                               Icons.refresh),
//                                                         )),
//                                                     validator: (val) =>
//                                                         val!.isEmpty
//                                                             ? "Really :(".tr
//                                                             : null,
//                                                     onChanged: (val) {
//                                                       setState(() {
//                                                         _prompt = val;
//                                                       });
//                                                     },
//                                                   ),
//                                                 ),
//                                                 SizedBox(
//                                                   height: Insets().appGap,
//                                                 ),
//                                                 Row(
//                                                   children: [
//                                                     Expanded(
//                                                       child: SizedBox(
//                                                         height:
//                                                             Insets().inputSize,
//                                                         child:
//                                                             DropdownButtonFormField<
//                                                                 String>(
//                                                           decoration:
//                                                               InputDecoration(
//                                                             hintText:
//                                                                 "Select Size"
//                                                                     .tr,
//                                                           ),
//                                                           value: [
//                                                             '256PX',
//                                                             '512PX',
//                                                             '1280PX'
//                                                           ].first,
//                                                           items: [
//                                                             ...List.generate(
//                                                                 [
//                                                                   '256PX',
//                                                                   '512PX',
//                                                                   '1280PX'
//                                                                 ].length,
//                                                                 (index) =>
//                                                                     DropdownMenuItem<
//                                                                         String>(
//                                                                       value: [
//                                                                         '256PX',
//                                                                         '512PX',
//                                                                         '1280PX'
//                                                                       ][index],
//                                                                       child:
//                                                                           Text([
//                                                                         '256PX',
//                                                                         '512PX',
//                                                                         '1280PX'
//                                                                       ][index]),
//                                                                     ))
//                                                           ],
//                                                           onChanged:
//                                                               (String? val) {
//                                                             setState(() {
//                                                               if (val != null) {
//                                                                 if (val ==
//                                                                     "256PX") {
//                                                                   _imageSize =
//                                                                       "256x256";
//                                                                 }
//                                                                 if (val ==
//                                                                     "512PX") {
//                                                                   _imageSize =
//                                                                       "512x512";
//                                                                 }
//                                                                 if (val ==
//                                                                     "1024x1024PX") {
//                                                                   _imageSize =
//                                                                       "1024x1024";
//                                                                 }
//                                                               }
//                                                             });
//                                                           },
//                                                         ),
//                                                       ),
//                                                     ),
//                                                     SizedBox(
//                                                       width: Insets().appGap,
//                                                     ),
//                                                     Expanded(
//                                                       child: SizedBox(
//                                                         height:
//                                                             Insets().inputSize,
//                                                         child: ElevatedButton(
//                                                             onPressed:
//                                                                 _generating
//                                                                     ? null
//                                                                     : () async {
//                                                                         if (_formKey
//                                                                             .currentState!
//                                                                             .validate()) {
//                                                                           setState(
//                                                                               () {
//                                                                             _generating =
//                                                                                 true;
//                                                                           });
//                                                                           List<Uint8List>? generatedImagesBytes = await Funcs()
//                                                                               .generateImages(
//                                                                             prompt:
//                                                                                 _prompt!,
//                                                                             imageSize:
//                                                                                 _imageSize,
//                                                                             variations:
//                                                                                 _variations,
//                                                                             style:
//                                                                                 _style,
//                                                                           )
//                                                                               .whenComplete(() {
//                                                                             setState(() {
//                                                                               _generating = false;
//                                                                             });
//                                                                           });

//                                                                           setState(
//                                                                               () {
//                                                                             _generatedImagesBytes =
//                                                                                 generatedImagesBytes;
//                                                                           });
//                                                                           print(
//                                                                               _generatedImagesBytes);
//                                                                         }
//                                                                       },
//                                                             child: _generating
//                                                                 ? const SizedBox(
//                                                                     height: 16,
//                                                                     child:
//                                                                         SpinKitWave(
//                                                                       color: Colors
//                                                                           .white,
//                                                                     ),
//                                                                   )
//                                                                 : Text("Submit",
//                                                                     style: GoogleFonts
//                                                                         .questrial(
//                                                                             textStyle:
//                                                                                 TextStyle(
//                                                                       fontSize:
//                                                                           Insets()
//                                                                               .appFontSize,
//                                                                       fontWeight:
//                                                                           FontWeight
//                                                                               .w300,
//                                                                     )))),
//                                                       ),
//                                                     ),
//                                                   ],
//                                                 ),
//                                                 SizedBox(
//                                                   height: Insets().appGap,
//                                                 ),
//                                                 if (_generatedImagesBytes !=
//                                                     null)
//                                                   Container(
//                                                     height: size.width / 2 -
//                                                         (Insets().appGap),
//                                                     width: size.width,
//                                                     child: GridView.count(
//                                                       primary: false,
//                                                       crossAxisSpacing:
//                                                           Insets().appGap,
//                                                       mainAxisSpacing:
//                                                           Insets().appGap,
//                                                       crossAxisCount: 2,
//                                                       children: <Widget>[
//                                                         ...List.generate(
//                                                           _generatedImagesBytes!
//                                                               .length,
//                                                           (index) =>
//                                                               ImageBytesCard(
//                                                             imgBytes:
//                                                                 _generatedImagesBytes![
//                                                                     index],
//                                                             onSelect: (val) {
//                                                               var tempSelectedImageBytes =
//                                                                   _selectedImageBytes;
//                                                               if (_selectedImageBytes
//                                                                   .contains(
//                                                                       val)) {
//                                                                 tempSelectedImageBytes
//                                                                     .remove(
//                                                                         val);
//                                                               } else {
//                                                                 tempSelectedImageBytes
//                                                                     .add(val);
//                                                               }
//                                                               setState(() {
//                                                                 _selectedImageBytes =
//                                                                     tempSelectedImageBytes;
//                                                               });
//                                                             },
//                                                             selected: _selectedImageBytes
//                                                                     .contains(
//                                                                         _generatedImagesBytes![
//                                                                             index])
//                                                                 ? true
//                                                                 : false,
//                                                           ),
//                                                         ),
//                                                       ],
//                                                     ),
//                                                   ),
//                                                 SizedBox(
//                                                   height: Insets().appGap,
//                                                 ),
//                                                 if (_selectedImageBytes
//                                                     .isNotEmpty)
//                                                   SizedBox(
//                                                     height: Insets().appGap,
//                                                   ),
//                                                 if (_selectedImageBytes
//                                                     .isNotEmpty)
//                                                   SizedBox(
//                                                     height: Insets().inputSize,
//                                                     child: ElevatedButton(
//                                                         onPressed: _posting
//                                                             ? null
//                                                             : () async {
//                                                                 setState(() {
//                                                                   _posting =
//                                                                       true;
//                                                                 });

//                                                                 int usedPoints =
//                                                                     pointsAppData[
//                                                                             'pointsPerPost'] *
//                                                                         _selectedImageBytes
//                                                                             .length;

//                                                                 List<String>
//                                                                     returnedImageURLs =
//                                                                     [];
//                                                                 await Future.wait(
//                                                                     _selectedImageBytes
//                                                                         .map(
//                                                                             (element) async {
//                                                                   var imageID =
//                                                                       "${Funcs().getRandomString(10)}${_selectedImageBytes.indexOf(element)}";
//                                                                   String?
//                                                                       result =
//                                                                       await Funcs()
//                                                                           .uploadBytesToFirebaseAndGetURL(
//                                                                     imageID,
//                                                                     element,
//                                                                     user[
//                                                                         'username'],
//                                                                   );
//                                                                   if (result !=
//                                                                       null) {
//                                                                     returnedImageURLs
//                                                                         .add(
//                                                                             result);
//                                                                   } else {
//                                                                     setState(
//                                                                         () {
//                                                                       _posting =
//                                                                           false;
//                                                                     });
//                                                                     Funcs().showSnackBar(
//                                                                         context,
//                                                                         "Image upload failed!",
//                                                                         "Okay",
//                                                                         () {},
//                                                                         "Success");
//                                                                   }
//                                                                 }));
//                                                                 print(
//                                                                     returnedImageURLs);

//                                                                 var imageURLs =
//                                                                     returnedImageURLs;

//                                                                 DBService()
//                                                                     .updateCollection(
//                                                                   Funcs()
//                                                                       .getRandomID(),
//                                                                   user.id,
//                                                                   _prompt,
//                                                                   _style,
//                                                                   imageURLs,
//                                                                   _imageSize,
//                                                                   usedPoints,
//                                                                   false,
//                                                                   "Active",
//                                                                   DateTime
//                                                                       .now(),
//                                                                 )
//                                                                     .whenComplete(
//                                                                         () {
//                                                                   Funcs().showSnackBar(
//                                                                       context,
//                                                                       "Generations posted successfully",
//                                                                       "Okay",
//                                                                       () {},
//                                                                       "Success");
//                                                                   setState(() {
//                                                                     _selectedImageBytes =
//                                                                         [];
//                                                                     _generatedImagesBytes =
//                                                                         null;

//                                                                     _posting =
//                                                                         false;
//                                                                   });
//                                                                 });
//                                                               },
//                                                         child: Text(
//                                                           "Post".tr,
//                                                           style: GoogleFonts
//                                                               .questrial(
//                                                                   textStyle:
//                                                                       TextStyle(
//                                                             fontSize: Insets()
//                                                                 .appFontSize,
//                                                             fontWeight:
//                                                                 FontWeight.w300,
//                                                           )),
//                                                         )),
//                                                   ),
//                                                 const Divider(),
//                                                 Column(
//                                                   children: [
//                                                     if (collections.isEmpty)
//                                                       Container(
//                                                         padding: EdgeInsets.all(
//                                                             Insets().appPadding *
//                                                                 2),
//                                                         child: Center(
//                                                           child: Column(
//                                                             crossAxisAlignment:
//                                                                 CrossAxisAlignment
//                                                                     .center,
//                                                             mainAxisAlignment:
//                                                                 MainAxisAlignment
//                                                                     .center,
//                                                             children: [
//                                                               const Heading3(
//                                                                   value:
//                                                                       "Welcome to the future!"),
//                                                               SizedBox(
//                                                                 height: Insets()
//                                                                     .appPadding,
//                                                               ),
//                                                               const Heading6(
//                                                                 value:
//                                                                     "Follow other digital artists to start seeing imaginations they share.",
//                                                                 align: TextAlign
//                                                                     .center,
//                                                               ),
//                                                             ],
//                                                           ),
//                                                         ),
//                                                       ),
//                                                     ...List.generate(
//                                                         collections.length,
//                                                         (index) {
//                                                       return ImageView(
//                                                           colID:
//                                                               collections[index]
//                                                                   .id);
//                                                     })
//                                                   ],
//                                                 )
//                                               ],
//                                             ),
//                                           ),
//                                         ),
//                                       ),
//                                     );
//                                   }
//                                 });
//                           }
//                         });
//                   }
//                 });
//           }
//         });
//   }

//   pickSingleImageFunc(BuildContext context) async {
//     ImagePickerPlus picker = ImagePickerPlus(context);
//     SelectedImagesDetails? details = await picker.pickImage(
//       // source: ImageSource.both,
//       source: ImageSource.both,

//       /// On long tap, it will be available.
//       // multiSelection: true,

//       galleryDisplaySettings:
//           GalleryDisplaySettings(cropImage: true, showImagePreview: true),
//     );
//     if (details != null) {
//       // await displayDetails(details);
//       print(details.selectedFiles.first.selectedFile.path);
//       // Navigator.push(context, MaterialPageRoute(builder: (context) {
//       //   return ;
//       // }));
//     }
//   }

//   downloadImage(String downloadLink, String title) async {
//     Dio dio;
//     if (await Permission.storage.request().isGranted) {
//       final downloadPath = await path_provider.getExternalStorageDirectory();
//       var filePath = '${downloadPath!.path}/$title.png';

//       dio = Dio();
//       await dio.download(downloadLink, filePath).then((value) {
//         print("Download was a successfully!");
//         dio.close();
//       }).catchError((Object e) {
//         print("Download failed with error: $e!");
//         return null;
//       });

//       return filePath;
//     } else {
//       return null;
//     }
//   }

//   // processGenerations(String prompt, String style, String? size, int? variations, String uid, String sharedID, double remainingCreds, username) async {
//   //
//   //   final uri = Uri.parse("https://api.openai.com/v1/images/generations");
//   //   final modifiedPrompt = "$prompt ${_style == "All" ? "" : ", $_style"}";
//   //   var requestBody = jsonEncode({
//   //     "prompt": modifiedPrompt,
//   //     "n": _variations,
//   //     "size": _imageSize,
//   //   });
//   //
//   //   http.Response response = await http.post(uri,
//   //     headers: <String, String>{
//   //       'Content-Type': 'application/json',
//   //       'Authorization': 'Bearer ${OpenAIKey().teminaliKey}',
//   //     },
//   //     body: requestBody,
//   //   );
//   //
//   //   if (response.statusCode == 200) {
//   //
//   //     var responseJson = json.decode(response.body);
//   //     print('Status code success.. Image generated successfully!');
//   //
//   //     List returnedImages = responseJson['data'];
//   //
//   //     var fileName = "$_prompt${returnedImages.indexOf(element)}";
//   //     var imagePath = await downloadImage(element['url'], fileName);
//   //     var imageFBURL = await Funcs().uploadToFirebaseAndGetURL(fileName, imagePath, username);
//   //
//   //     DBService().updateCollection(
//   //       Funcs().getRandomID(),
//   //       sharedID,
//   //       uid,
//   //       _prompt!,
//   //       style,
//   //       imageFBURLs,
//   //       _imageSize,
//   //       remainingCreds,
//   //       false,
//   //       "Active",
//   //       DateTime.now(),
//   //     ).whenComplete(() {
//   //       DBService().updateSingleField(
//   //         uid,
//   //         {"credits": remainingCreds},
//   //         "users",
//   //       );
//   //       DBService().updateSingleField(
//   //         uid,
//   //         {"lastColSharedID": sharedID},
//   //         "users",
//   //       );
//   //     });
//   //
//   //     print('Images processed successfully!');
//   //
//   //   } else {
//   //     print('Status code error.. Check your API method or URL..!');
//   //   }
//   //
//   // }
// }
