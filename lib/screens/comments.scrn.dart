// import 'package:cloud_firestore/cloud_firestore.dart';
// import 'package:firebase_auth/firebase_auth.dart';
// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// //import 'package:skyconnect_starter/components/appbar_screen.comp.dart';
// import 'package:skyconnect_starter/components/notfound.wdg.dart';
// import 'package:skyconnect_starter/controllers/funcs_main.dart';
// import 'package:skyconnect_starter/database/firestore.dart';
// import 'package:skyconnect_starter/screens/loading.scrn.dart';
// import 'package:skyconnect_starter/theme/design.theme.dart';

// class CommentsScreen extends StatefulWidget {
//   final String colID;
//   const CommentsScreen({
//     Key? key,
//     required this.colID,
//   }) : super(key: key);

//   @override
//   State<CommentsScreen> createState() => _CommentsScreenState();
// }

// class _CommentsScreenState extends State<CommentsScreen> {
//   final db = FirebaseFirestore.instance;
//   User? currentUser = FirebaseAuth.instance.currentUser;

//   final _formKey = GlobalKey<FormState>();

//   String? _comment;

//   bool notifyCleared = false;

//   @override
//   Widget build(BuildContext context) {
//     final Size size = MediaQuery.of(context).size;

//     return StreamBuilder<QuerySnapshot>(
//         stream: db.collection("users").snapshots(),
//         builder: (context, snapshot) {
//           if (snapshot.data == null) {
//             return Container();
//             //  return const LoadingScreen();
//           } else {
//             final users = snapshot.data!.docs;
//             final user = users.firstWhere(
//                 (element) => element["email"] == currentUser!.email);

//             return StreamBuilder<QuerySnapshot>(
//                 stream: db.collection("collections").snapshots(),
//                 builder: (context, snapshot) {
//                   if (snapshot.data == null) {
//                     return Container();
//                     //   return const LoadingScreen();
//                   } else {
//                     final allCollections = snapshot.data!.docs;
//                     final collection = allCollections
//                         .firstWhere((element) => element.id == widget.colID);

//                     return StreamBuilder<QuerySnapshot>(
//                         stream: db.collection("comments").snapshots(),
//                         builder: (context, snapshot) {
//                           if (snapshot.data == null) {
//                             return Container();
//                             //    return const LoadingScreen();
//                           } else {
//                             final allComments = snapshot.data!.docs;
//                             final comments = allComments
//                                 .where((element) =>
//                                     element['colID'] == collection.id)
//                                 .toList();

//                             return Scaffold(
//                               body: SafeArea(
//                                 child: Stack(
//                                   children: [
//                                     Container(
//                                       padding: EdgeInsets.all(Insets().appGap),
//                                       margin: EdgeInsets.only(
//                                           top: Insets().appBarHeight),
//                                       height: size.height,
//                                       child: comments.isEmpty
//                                           ? NotFoundWDG(
//                                               value: "No Comments!".tr)
//                                           : ListView(
//                                               children: [
//                                                 ...List.generate(
//                                                     comments.length > 15
//                                                         ? comments.length
//                                                         : comments.length,
//                                                     (index) {
//                                                   var commenter = users
//                                                       .firstWhere((element) =>
//                                                           element.id ==
//                                                           comments[index]
//                                                               ['uid']);

//                                                   return Container(
//                                                     width: size.width,
//                                                     margin: EdgeInsets.only(
//                                                         bottom:
//                                                             Insets().appGap),
//                                                     child: ListTile(
//                                                       leading: CircleAvatar(
//                                                         backgroundImage: Image
//                                                                 .network(commenter[
//                                                                     'avatarURL'])
//                                                             .image,
//                                                       ),
//                                                       title: Text(commenter[
//                                                           'username']),
//                                                       subtitle: Text(
//                                                         comments[index]
//                                                             ['content'],
//                                                       ),
//                                                     ),
//                                                   );
//                                                 })
//                                               ],
//                                             ),
//                                     ),
//                                     // const Positioned(
//                                     //   child: ScreenAppBar(
//                                     //     title: "Comments",
//                                     //     actions: [

//                                     //     ],
//                                     //   ),
//                                     // ),
//                                     Positioned(
//                                       bottom: 0,
//                                       child: StreamBuilder<QuerySnapshot>(
//                                           stream: db
//                                               .collection("comments")
//                                               .snapshots(),
//                                           builder: (context, snapshot) {
//                                             if (snapshot.data == null) {
//                                               return Container();
//                                               //    return const LoadingScreen();
//                                             } else {
//                                               final allComments =
//                                                   snapshot.data!.docs;
//                                               final comments = allComments
//                                                   .where((element) =>
//                                                       element['colID'] ==
//                                                       collection.id)
//                                                   .toList();

//                                               return Container(
//                                                 padding: EdgeInsets.all(
//                                                     Insets().appGap),
//                                                 width: size.width,
//                                                 decoration: BoxDecoration(
//                                                   color: Colors.grey[200],
//                                                   borderRadius:
//                                                       BorderRadius.only(
//                                                     topLeft: Radius.circular(
//                                                         Insets().appRadiusMid),
//                                                     topRight: Radius.circular(
//                                                         Insets().appRadiusMid),
//                                                   ),
//                                                   boxShadow: [
//                                                     BoxShadow(
//                                                       color: Colors.grey
//                                                           .withOpacity(0.5),
//                                                       spreadRadius: 2,
//                                                       blurRadius: 5,
//                                                       offset: const Offset(0,
//                                                           3), // changes position of shadow
//                                                     ),
//                                                   ],
//                                                 ),
//                                                 child: Form(
//                                                   key: _formKey,
//                                                   child: TextFormField(
//                                                     decoration: InputDecoration(
//                                                       hintText: "Comment",
//                                                       suffixIcon: IconButton(
//                                                         icon: const Icon(
//                                                             Icons.send),
//                                                         onPressed: () {
//                                                           if (_formKey
//                                                               .currentState!
//                                                               .validate()) {
//                                                             DBService()
//                                                                 .updateComments(
//                                                                     Funcs()
//                                                                         .getRandomID(),
//                                                                     collection
//                                                                         .id,
//                                                                     currentUser!
//                                                                         .uid,
//                                                                     _comment!,
//                                                                     [],
//                                                                     DateTime
//                                                                         .now());
//                                                           }
//                                                         },
//                                                       ),
//                                                       enabledBorder:
//                                                           UnderlineInputBorder(
//                                                         borderSide: BorderSide(
//                                                             color: Colors
//                                                                 .grey[200]!,
//                                                             width: 1.0),
//                                                         borderRadius:
//                                                             BorderRadius.all(
//                                                           Radius.circular(
//                                                               Insets()
//                                                                   .appRadiusMid),
//                                                         ),
//                                                       ),
//                                                       focusedBorder:
//                                                           UnderlineInputBorder(
//                                                         borderRadius:
//                                                             BorderRadius.all(
//                                                           Radius.circular(
//                                                               Insets()
//                                                                   .appRadiusMid),
//                                                         ),
//                                                         borderSide: BorderSide(
//                                                             color: Colors
//                                                                 .grey[200]!,
//                                                             width: 1.0),
//                                                       ),
//                                                       errorBorder:
//                                                           UnderlineInputBorder(
//                                                         borderRadius:
//                                                             BorderRadius.all(
//                                                           Radius.circular(
//                                                               Insets()
//                                                                   .appRadiusMid),
//                                                         ),
//                                                         borderSide:
//                                                             const BorderSide(
//                                                                 color:
//                                                                     Colors.red,
//                                                                 width: 1.0),
//                                                       ),
//                                                     ),
//                                                     onChanged: (val) {
//                                                       _comment = val;
//                                                     },
//                                                   ),
//                                                 ),
//                                               );
//                                             }
//                                           }),
//                                     )
//                                   ],
//                                 ),
//                               ),
//                             );
//                           }
//                         });
//                   }
//                 });
//           }
//         });
//   }
// }
