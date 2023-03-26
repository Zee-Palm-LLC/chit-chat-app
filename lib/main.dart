import 'package:chit_chat/app/data/constants/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

import 'app/modules/views/landingPage/landing_page.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(defaultOverlay);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
        title: 'Chit-Chat',
        debugShowCheckedModeBanner: false,
        scrollBehavior: ScrollBehavior().copyWith(overscroll: false),
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: const LandingPage());
  }
}
