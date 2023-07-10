import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class Api {
  Future<dynamic> get({required String url, @required String? token}) async {
    Map<String, String> headeres = {};
    if (token != null) {
      headeres.addAll({"Authorization": "Bearer $token"});
    }
    http.Response response = await http.get(Uri.parse(url), headers: headeres);

    List<dynamic> data = jsonDecode(response.body);
    if (response.statusCode == 200) {
      return data;
    } else {
      throw Exception(
          "there is a problem with status code${response.statusCode}");
    }
  }

  Future<dynamic> post(
      {required String url,
      @required dynamic body,
      @required String? token}) async {
    Map<String, String> headeres = {};
    if (token != null) {
      headeres.addAll({"Authorization": "Bearer $token"});
    }

    http.Response response =
        await http.post(Uri.parse(url), body: body, headers: headeres);
    if (response.statusCode == 200) {
      Map<String, dynamic> data = jsonDecode(response.body);
      return data;
    } else {
      throw Exception(
          "there is a problem with status code${response.statusCode} with body ${response.body}");
    }
  }

  Future<dynamic> put(
      {required String url,
      @required dynamic body,
      @required String? token}) async {
    Map<String, dynamic> headeres = {};
    headeres.addAll({"Content-Type": "application/x-www-form-urlencoded"});
    if (token != null) {
      headeres.addAll({"Authorization": "Bearer $token"});
    }
    http.Response response = await http.put(Uri.parse(url), body: body);
    if (response.statusCode == 200) {
      Map<String, dynamic> data = jsonDecode(response.body);
      return data;
    } else {
      throw Exception(
          "there is a problem with status code${response.statusCode} with body ${response.body}");
    }
  }
}
