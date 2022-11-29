// import 'package:cloud_firestore/cloud_firestore.dart';
// import 'package:firebase_auth/firebase_auth.dart';
// import 'package:flutter/material.dart';
// import 'package:skyconnect_starter/components/notfound.wdg.dart';
// import 'package:skyconnect_starter/screens/image_view.srcn.dart';
// import 'package:skyconnect_starter/screens/loading.scrn.dart';
// import 'package:skyconnect_starter/services/data.dart';
// import 'package:skyconnect_starter/theme/design.theme.dart';
// import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

// class DiscoverTabView extends StatefulWidget {
//   const DiscoverTabView({Key? key}) : super(key: key);

//   @override
//   State<DiscoverTabView> createState() => _DiscoverTabViewState();
// }

// class _DiscoverTabViewState extends State<DiscoverTabView> {
//   final db = FirebaseFirestore.instance;
//   User? currentUser = FirebaseAuth.instance.currentUser;

//   @override
//   void initState() {
//     super.initState();
//   }

//   @override
//   Widget build(BuildContext context) {
//     final Size size = MediaQuery.of(context).size;

//     return StreamBuilder<QuerySnapshot>(
//         stream: db.collection("users").snapshots(),
//         builder: (context, snapshot) {
//           if (snapshot.data == null) {
//             return const LoadingScreen();
//           } else {
//             final allUsers = snapshot.data!.docs;
//             final user = allUsers
//                 .firstWhere((element) => element.id == currentUser!.uid);

//             return StreamBuilder<QuerySnapshot>(
//                 stream: db.collection("collections").snapshots(),
//                 builder: (context, snapshot) {
//                   if (snapshot.data == null) {
//                     return const LoadingScreen();
//                   } else {
//                     final collections = snapshot.data!.docs;

//                     return DefaultTabController(
//                       length: AppData().generationStyles.length,
//                       child: SingleChildScrollView(
//                         child: Container(
//                           height: size.height,
//                           width: size.width,
//                           padding: EdgeInsets.all(Insets().appGap),
//                           child: Column(
//                             crossAxisAlignment: CrossAxisAlignment.start,
//                             children: [
//                               Container(
//                                 height: Insets().inputSize,
//                                 child: TabBar(
//                                   isScrollable: true,
//                                   tabs: [
//                                     ...List.generate(
//                                         AppData().generationStyles.length,
//                                         (index) => Tab(
//                                             text: AppData()
//                                                 .generationStyles[index])),
//                                   ],
//                                 ),
//                               ),
//                               SizedBox(
//                                 height: Insets().appPadding,
//                               ),
//                               collections.isEmpty
//                                   ? const NotFoundWDG()
//                                   : Expanded(
//                                       child: MasonryGridView.count(
//                                         physics:
//                                             const NeverScrollableScrollPhysics(),
//                                         shrinkWrap: true,
//                                         crossAxisCount: 2,
//                                         mainAxisSpacing: Insets().appGap,
//                                         crossAxisSpacing: Insets().appGap,
//                                         itemCount: collections.length,
//                                         itemBuilder: (context, index) {
//                                           final cardUser = allUsers.firstWhere(
//                                               (el) =>
//                                                   el.id ==
//                                                   collections[index]['uid']);

//                                           return DiscoverCard(
//                                             onTap: () {
//                                               Navigator.push(context,
//                                                   MaterialPageRoute(
//                                                       builder: (context) {
//                                                 return ImageViewScreen(
//                                                   avatarURL:
//                                                       cardUser['avatarURL'],
//                                                   colID: collections[index].id,
//                                                   username:
//                                                       cardUser['username'],
//                                                 );
//                                               }));
//                                             },
//                                             colID: collections[index].id,
//                                             imageURL: collections[index]
//                                                 ['imageURLs'][0],
//                                             prompt: collections[index]
//                                                 ['prompt'],
//                                           );
//                                         },
//                                       ),
//                                     )
//                             ],
//                           ),
//                         ),
//                       ),
//                     );
//                   }
//                 });
//           }
//         });
//   }
// }
