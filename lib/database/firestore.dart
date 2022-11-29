import 'package:cloud_firestore/cloud_firestore.dart';

class DBService {
  // user collection
  final appDataCollection = FirebaseFirestore.instance.collection("appData");
  final userCollection = FirebaseFirestore.instance.collection("users");
  final collectionCollection =
      FirebaseFirestore.instance.collection("collections");
  final saveCollection = FirebaseFirestore.instance.collection("saves");
  final caseCollection = FirebaseFirestore.instance.collection("cases");
  final likesCollection = FirebaseFirestore.instance.collection("likes");
  final commentsCollection = FirebaseFirestore.instance.collection("comments");
  final reviewerFacilityCollection =
      FirebaseFirestore.instance.collection("reviewerFacilities");
  final notificationCollection =
      FirebaseFirestore.instance.collection("notifications");
  final appointmentCollection =
      FirebaseFirestore.instance.collection("appointments");
  final treatmentCollection =
      FirebaseFirestore.instance.collection("treatments");
  final followersCollection =
      FirebaseFirestore.instance.collection("followers");
  final followingCollection =
      FirebaseFirestore.instance.collection("followings");

  //update single field of any collection {
  updateSingleField(String id, data, String col) {
    FirebaseFirestore.instance
        .collection(col)
        .doc(id)
        .update(data) // <-- Updated data
        .then((_) => print('Success'))
        .catchError((error) => print('Failed: $error'));
  }

  // update app data
  Future updateAppData(
      String id,
      String? appName,
      String? shortDescription,
      String? appDescription,
      String? email,
      String? location,
      String? phoneNumber,
      String? company,
      String? website,
      String? appLogo,
      List? tags,
      String? termsInfo,
      String? privacyInfo,
      DateTime? releaseDate,
      String? version,
      String? updateText,
      String? updateURL,
      DateTime dateAdded) {
    final data = <String, dynamic>{
      "appName": appName,
      "shortDescription": shortDescription,
      "appDescription": appDescription,
      "email": email,
      "location": location,
      "company": company,
      "phoneNumber": phoneNumber,
      "website": website,
      "appLogo": appLogo,
      "tags": tags,
      "termsInfo": termsInfo,
      "privacyInfo": privacyInfo,
      "releaseDate": releaseDate,
      "version": version,
      "updateText": updateText,
      "updateURL": updateURL,
      "dateAdded": dateAdded,
    };

    return appDataCollection
        .doc(id)
        .set(data, SetOptions(merge: true))
        .then((value) => print('App data updated'));
  }

  // update an existing user
  Future updateUser(
      String uid,
      String? notifToken,
      String? username,
      String? role,
      String? email,
      String? fullName,
      String? phoneNumber,
      String? avatarURL,
      DateTime? birthDate,
      String? location,
      double points,
      bool isDeleted,
      String? status,
      DateTime dateAdded) {
    final _data = <String, dynamic>{
      "uid": uid,
      "notifToken": notifToken,
      "username": username,
      "role": role,
      "email": email,
      "fullName": fullName,
      "phoneNumber": phoneNumber,
      "avatarURL": avatarURL,
      "birthDate": birthDate,
      "location": location,
      "points": points,
      "isDeleted": isDeleted,
      "status": status,
      "dateAdded": dateAdded,
    };
    return userCollection
        .doc(uid)
        .set(_data, SetOptions(merge: true))
        .then((value) => print('User data updated'));
  }

  // update an existing collection
  Future updateCollection(
      String id,
      String uid,
      String? prompt,
      String? category,
      List? imageURLs,
      String? imageSize,
      int points,
      bool isDeleted,
      String? status,
      DateTime dateAdded) {
    final _data = <String, dynamic>{
      "uid": uid,
      "prompt": prompt,
      "category": category,
      "imageURLs": imageURLs,
      "imageSize": imageSize,
      "points": points,
      "isDeleted": isDeleted,
      "status": status,
      "dateAdded": dateAdded,
    };

    return collectionCollection
        .doc(id)
        .set(_data, SetOptions(merge: true))
        .then((value) => print('Collection data updated'));
  }

  // update saves
  Future updateSaves(String uid, List colIDs, DateTime dateAdded) {
    final _data = <String, dynamic>{
      "colIDs": colIDs,
      "dateAdded": dateAdded,
    };

    return saveCollection
        .doc(uid)
        .set(_data, SetOptions(merge: true))
        .then((value) => print('save updated!'));
  }

  //clear saves
  Future deleteSaves(String? id) {
    return saveCollection.doc(id).delete().then((value) {
      print("saves deleted/cleared");
    });
  }

  // update followers
  Future updateFollowers(String uid, List followersIDs, DateTime dateAdded) {
    final _data = <String, dynamic>{
      "followersIDs": followersIDs,
      "dateAdded": dateAdded,
    };

    return followersCollection
        .doc(uid)
        .set(_data, SetOptions(merge: true))
        .then((value) => print('followers updated!'));
  }

  //clear followers
  Future deleteFollowers(String? id) {
    return followersCollection.doc(id).delete().then((value) {
      print("followers deleted/cleared");
    });
  }

  // update following
  Future updateFollowing(String uid, List followingIDs, DateTime dateAdded) {
    final _data = <String, dynamic>{
      "followingIDs": followingIDs,
      "dateAdded": dateAdded,
    };

    return followingCollection
        .doc(uid)
        .set(_data, SetOptions(merge: true))
        .then((value) => print('following updated!'));
  }

  //clear followers
  Future deleteFollowing(String? id) {
    return followingCollection.doc(id).delete().then((value) {
      print("following deleted/cleared");
    });
  }

  // update notifications
  Future updateNotifications(String uid, List notifs, DateTime dateAdded) {
    final _data = <String, dynamic>{
      "uid": uid,
      "notifs": notifs,
      "dateAdded": dateAdded,
    };

    return notificationCollection
        .doc(uid)
        .set(_data, SetOptions(merge: true))
        .then((value) => print('notification updated!'));
  }

  //clear Notifications
  Future deleteNotifications(String? id) {
    return notificationCollection.doc(id).delete().then((value) {
      print("Notifications deleted/cleared");
    });
  }

  // update likes
  Future updateLikes(String uid, List colIDs, DateTime dateAdded) {
    final _data = <String, dynamic>{
      "colIDs": colIDs,
      "dateAdded": dateAdded,
    };

    return likesCollection
        .doc(uid)
        .set(_data, SetOptions(merge: true))
        .then((value) => print('likes updated!'));
  }

  //clear likes
  Future deleteLikes(String? id) {
    return likesCollection.doc(id).delete().then((value) {
      print("likes deleted/cleared");
    });
  }

  // update likes
  Future updateComments(String id, String colID, String uid, String content,
      List<Map> reactions, DateTime dateAdded) {
    final _data = <String, dynamic>{
      "uid": uid,
      "colID": colID,
      "content": content,
      "reactions": reactions,
      "dateAdded": dateAdded,
    };

    return commentsCollection
        .doc(id)
        .set(_data, SetOptions(merge: true))
        .then((value) => print('comments updated!'));
  }

  //clear likes
  Future deleteComments(String? id) {
    return commentsCollection.doc(id).delete().then((value) {
      print("comments deleted/cleared");
    });
  }
}
