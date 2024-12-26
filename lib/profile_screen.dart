import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_counter/home_screen.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});
  static const  String name = '/profile';
  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profile'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
                onPressed: () {
                  /*
                  Navigator.pushAndRemoveUntil(
                      context,
                      MaterialPageRoute(
                        builder: (context) => HomeScreen(),
                      ),
                          (_) => false);

                   */
                  Get.offAll(HomeScreen());
                },
                child: Text('Back'))
          ],
        ),
      ),
    );
  }
}
