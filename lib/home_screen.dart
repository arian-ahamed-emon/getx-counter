import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_navigation/src/dialog/dialog_route.dart';
import 'package:getx_counter/counter_controller.dart';
import 'package:getx_counter/settings_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});
  static const  String name = '/home';

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: GetBuilder<CounterController>(builder: (counterController) {
              return Text(
                '${counterController.counter}',
                style:
                    const TextStyle(fontSize: 24, fontWeight: FontWeight.w600),
              );
            }),
          ),
          ElevatedButton(
              onPressed: () {
                /*
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => SettingsScreen(),
                    ),
                    );



                Navigator.pushNamed(context, '/setting');
                */
                //Get.to(() =>SettingsScreen());
                Get.toNamed('/setting');
              },
              child: Text('Settings')),
          ElevatedButton(
              onPressed: () {
  
            Get.showSnackbar(GetSnackBar(
              title: 'Hey',
              message: 'Hey this action is sucsess',
              duration: Duration(seconds: 2),
            ));            
              },
              child: Text('Show SnackBar')),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Get.find<CounterController>().increment();
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
