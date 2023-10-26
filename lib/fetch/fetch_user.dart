import 'package:d_info/d_info.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:test_ceklpse/config/api.dart';
import 'package:test_ceklpse/config/app_request.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../config/session.dart';
import '../controller/c_home.dart';
import '../model/user.dart';

final cHome = Get.put(CHome());

class FetchUser {
  static String tokenAccess = "";

  static Future<bool?> login(
      String username, String password, BuildContext context) async {
    String url = '${Api.user}login';

    Map? responseBody =
        await AppRequest.post(url, {'email': username, 'password': password});

    if (responseBody == null) return false;

    try {
      if (responseBody['message'] == 'User not found') {
        DInfo.dialogError(context, 'Akun tidak ditemukan');
        DInfo.closeDialog(context);
        return false;
      } else if (responseBody['message'] == 'Invalid credential') {
        DInfo.dialogError(context, 'Password salah');
        DInfo.closeDialog(context);
        return false;
      } else {
        var token = responseBody['access_token'];
        SharedPreferences prefs = await SharedPreferences.getInstance();
        prefs.setString('token', token);
        return true;
      }
    } catch (e) {
      print(e);
      return false;
    }
  }

  static Future<User?> account(BuildContext context) async {
    String url = '${Api.user}account';

    Session.getToken().then((value) {
      tokenAccess = value!;
    });

    Map? responseBody = await AppRequest.get(url,
        headers: {'Accept': 'application/json', 'access_token': tokenAccess});

    if (responseBody == null) return null;

    try {
      if (responseBody['message'] == 'Token not authenticated!') {
        DInfo.dialogError(context, 'Koneksi anda sedang bermasalah');
        DInfo.closeDialog(context);
        return User();
      } else {
        var e = responseBody['data'];
        return User.fromJson(e);
      }
    } catch (e) {
      print(e);
      return User();
    }
  }
}
