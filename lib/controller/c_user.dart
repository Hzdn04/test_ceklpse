import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../config/theme.dart';
import '../fetch/fetch_user.dart';
import '../model/user.dart';

class CUser extends GetxController {
  final _dataUser = User().obs;
  User get dataUser => _dataUser.value;

  getData(BuildContext context) async {
    // get user profile
    User? mapUser = await FetchUser.account(context);

    try {
      _dataUser.value = mapUser ?? User();
      update();

      return _dataUser.value;
    } catch (e) {
      return Get.defaultDialog(
          title: "Gagal",
          middleText: "Sepertinya ada ganggungan dari pusat\n"
              "Pastikan juga jaringan anda dalam keadaan stabil\n"
              "$e",
          backgroundColor: kPrimaryColor,
          titleStyle: whiteTextStyle.copyWith(
              fontSize: 15, fontWeight: FontWeight.w700),
          middleTextStyle: whiteTextStyle.copyWith(
              fontSize: 11, fontWeight: FontWeight.w500),
          radius: 20);
    }
  }
}
