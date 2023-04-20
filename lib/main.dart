import 'package:flutter/material.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:map/Screen/Home/view/home_screen.dart';
import 'package:map/Screen/Home/view/mmap_screen.dart';

void main()
{
  runApp(
    GetMaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/':(context) => HomeScreen(),
        'loc':(context) => LocakteScreen(),
      },
    ),
  );
}