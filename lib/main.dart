import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_counter/counter_controller.dart';
import 'package:getx_counter/home_screen.dart';
import 'package:getx_counter/profile_screen.dart';
import 'package:getx_counter/settings_screen.dart';
void main() {
  runApp(const CounterApp());
}

class CounterApp extends StatelessWidget {
  const CounterApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      home: const HomeScreen(),
      title: 'Counter App',
      initialBinding: ControllerBinding(),
      initialRoute: 'home',
      routes: {
        HomeScreen.name : (context) => HomeScreen(),
        ProfileScreen.name : (context) => ProfileScreen(),
        SettingsScreen.name: (context) => SettingsScreen(),
      },
    );
  }
}
class ControllerBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(CounterController());
  }

}