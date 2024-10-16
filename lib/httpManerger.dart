import 'dart:collection';
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:riverpod_http/Common/common.dart';

class HttpManager {
  HttpManager(this.callback);

  final Function(HttpManagerResult) callback;
  final String baseUrl = Common.apiBaseUrl;

  Future<void> get(String endpoint, {Map<String, dynamic>? parameters}) async {
    var uri = Uri.https(baseUrl, endpoint, parameters);
    try {
      final response = await http.get(uri);
      if (response.statusCode != 404) {
        var decodedData = json.decode(response.body);
        callback(HttpManagerResult(
            isSuccess: true, data: decodedData['items'] as List<dynamic>));
      } else {
        callback(HttpManagerResult(
            isSuccess: false, data: null, statusCode: response.statusCode));
      }
    } catch (error) {
      print(error);
      callback(HttpManagerResult(isSuccess: false, data: null));
    }
  }
}

class HttpManagerResult {
  final bool isSuccess;
  final List<dynamic>? data;
  final int statusCode;

  HttpManagerResult({required this.isSuccess, this.data, this.statusCode = 0});
}
