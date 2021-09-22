import 'package:flutter/cupertino.dart';

abstract class Api {
  Future<void> get(
      {String url,
      Map<String, String> headers,
      VoidCallback callback(
          bool status, String message, Map<String, dynamic> response)});

  Future<void> post(
      {String url,
      Map<String, String> headers,
      Map<String, String> body,
      VoidCallback callback(
          bool status, String message, Map<String, dynamic> response)});

  Future<void> put(
      {String url,
      Map<String, String> headers,
      Map<String, String> body,
      VoidCallback callback(
          bool status, String message, Map<String, dynamic> response)});

  Future<void> delete(
      {String url,
      Map<String, String> headers,
      VoidCallback callback(
          bool status, String message, Map<String, dynamic> response)});
}
