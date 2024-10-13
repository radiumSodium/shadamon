import 'package:flutter/material.dart';
import 'package:sadamon/core/constraints/app_colors.dart';
import 'package:sadamon/presentation/home/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Shadamon',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: AppColors.logoOrange),
        useMaterial3: false,
      ),
      home: const HomePage(),
    );
  }
}
