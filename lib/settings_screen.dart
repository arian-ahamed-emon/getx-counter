import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_counter/home_screen.dart';
import 'package:getx_counter/profile_screen.dart';

class SettingsScreen extends StatefulWidget {
  const SettingsScreen({super.key});
  static const  String name = '/setting';
  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Settings'),
      ),
      body: Center(child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ElevatedButton(onPressed: (){
            Get.off(ProfileScreen());
          }, child: Text('Profile'),),
          ElevatedButton(onPressed: (){
            //Navigator.pop(context);
            Get.off(HomeScreen());
          }, child: Text('Back'),),
        ],
      )),
    );
  }
}
