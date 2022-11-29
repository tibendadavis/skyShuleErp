import 'dart:convert';
import 'package:flutter/services.dart';
import 'package:http/http.dart' as http;

class JsonService {

  String filename;
  JsonService({required this.filename});
  //
  Future readJsonLocal() async {
    final String response = await rootBundle
        .loadString("assets/json/$filename.json");
    final data = await json.decode(response);
    return await data;
  }

  Future readJson() async {
    const String url = "https://api.npoint.io/775da7dd1ab0cd3cb0ca";

    final response = await http
        .get(Uri.parse(url));

    if (response.statusCode == 200) {
      final data = await json.decode(response.body);
      return data[filename];

    } else {
      throw Exception('Failed to load $filename');
    }
  }
}