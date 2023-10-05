import 'package:flutter/material.dart';

import '../../Controller/ThemColor.dart';
import 'HomeScreen.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Future.delayed(
        const Duration(
          seconds: 2,
        ), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => const HomeScreen(),
        ),
      );
    });
    return Scaffold(
        body: Container(
      color: BaseColor,
      alignment: Alignment.center,
      child: Image.asset("assets/images/Splashicon.jpeg"),
    ));
  }
}
