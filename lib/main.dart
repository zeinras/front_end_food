import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:front_end_food/pages/Home/main_food_page.dart';
import 'package:front_end_food/pages/food/popular_food_details.dart';
import 'package:get/get.dart';
void main() {
  debugPaintSizeEnabled = false;
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
      home: const PopularFoodDetail(),

    );
  }
}