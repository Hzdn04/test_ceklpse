import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:test_ceklpse/widgets/custom_bottom.dart';

import '../config/session.dart';
import '../config/theme.dart';
import '../controller/c_user.dart';
import 'login_page.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  final cUser = Get.put(CUser());

  void initState() {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      cUser.getData(context);
    });

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 40, horizontal: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              padding: const EdgeInsets.all(20),
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.blue[50],
                borderRadius: BorderRadius.circular(20),
                boxShadow: [
                  BoxShadow(
                      color: Colors.black.withOpacity(0.2),
                      blurRadius: 9,
                      spreadRadius: 0,
                      offset: const Offset(0, 7)),
                ],
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 100,
                    width: 125,
                    child: Stack(
                      alignment: Alignment.center,
                      children: [
                        Container(
                          alignment: Alignment.center,
                          height: 100,
                          width: 100,
                          decoration: BoxDecoration(
                              border:
                                  Border.all(color: Colors.white24, width: 3),
                              borderRadius: BorderRadius.circular(95),
                              image: DecorationImage(
                                  image: NetworkImage(
                                    cUser.dataUser.image ??
                                        'https://via.placeholder.com/100',
                                  ),
                                  fit: BoxFit.cover)),
                        ),
                        Container(
                          margin: const EdgeInsets.only(left: 65),
                          alignment: Alignment.bottomRight,
                          child: IconButton(
                              onPressed: () {
                                Get.dialog(
                                  AlertDialog(
                                    title: const Text('Update Foto Profile'),
                                    content: const Text(
                                        'Fitur ini masih belum bisa digunakan'),
                                    backgroundColor: Colors.white,
                                    actionsAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10.0),
                                    ),
                                  ),
                                  barrierColor: Colors.black.withOpacity(0.5),
                                  transitionDuration:
                                      const Duration(milliseconds: 500),
                                );
                              },
                              icon: Container(
                                  padding: const EdgeInsets.all(4),
                                  decoration: BoxDecoration(
                                      color: Colors.blueAccent,
                                      borderRadius: BorderRadius.circular(23)),
                                  child: const Icon(
                                    Icons.photo_camera_rounded,
                                    color: Colors.white,
                                    size: 16,
                                  ))),
                        )
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    cUser.dataUser.name ?? 'Anonim',
                    style: blackTextStyle.copyWith(
                        fontWeight: FontWeight.w700, fontSize: 16),
                    maxLines: 1,
                  ),
                  const SizedBox(
                    height: 7,
                  ),
                  Text(
                    cUser.dataUser.email ?? 'user@gmail.com',
                    style: blackTextStyle.copyWith(
                        fontWeight: FontWeight.w400, fontSize: 13),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            CustomBottom(
              title: 'Log Out',
              onPressed: () {
                Get.dialog(
                  AlertDialog(
                    title: const Text('Logout'),
                    content: const Text('Are you sure you want to logout?'),
                    backgroundColor: Colors.white,
                    actionsAlignment: MainAxisAlignment.spaceBetween,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    actions: [
                      TextButton(
                        child: const Text('Cancel'),
                        onPressed: () => Get.back(),
                      ),
                      TextButton(
                        child: const Text(
                          'Logout',
                          style: TextStyle(color: Colors.red),
                        ),
                        onPressed: () {
                          Session.clearToken();
                          Get.offAll(const LoginPage());
                        },
                      ),
                    ],
                  ),
                  barrierColor: Colors.black.withOpacity(0.5),
                  transitionDuration: const Duration(milliseconds: 500),
                );
              },
            )
          ],
        ),
      ),
    );
  }
}
