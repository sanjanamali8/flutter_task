import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_task/controller/app_controller.dart';
import 'package:flutter_task/data.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Flask App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MainScreen(),
    );
  }
}

class MainScreen extends StatelessWidget {
  MainScreen({super.key});
  final AppController controller = Get.put(AppController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Obx(
        () {
          log(controller.state.toString());
          if (controller.isInitial) {
            return Center(
              child: ElevatedButton(
                onPressed: () => controller.getData(),
                child: const Text('Fetch Data'),
              ),
            );
          } else if (controller.isLoading) {
            return const Center(child: CircularProgressIndicator());
          } else if (controller.isLoaded) {
               WidgetsBinding.instance.addPostFrameCallback((_) {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => DataScreen()),
                );
                controller.resetState();
              });
              return Center(
                child: ElevatedButton(
                  onPressed: () async {},
                  child: const Text('Fetch Data'),
                ),
              );
            } else {
            return const Center(
              child: Text("Something went wrong."),
            );
          }
        },
      ),
    );
  }
}
