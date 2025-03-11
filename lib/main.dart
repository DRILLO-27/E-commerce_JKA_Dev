import 'package:flutter/material.dart';
import 'package:flutter_application_1/home/main_food_page.dart';
import 'package:flutter_application_1/pages/food/food_popular_detail.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import '';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: PopularDetail(),
    );
  }
}
