import 'package:dicuciin_1/screen/home_screen.dart';
import 'package:dicuciin_1/screen/login_screen.dart';
import 'package:dicuciin_1/screen/splash_screen.dart';
import 'package:flutter/material.dart';

void main() => runApp(const Myapp());

class Myapp extends StatelessWidget {
  const Myapp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
    );
  }
}
