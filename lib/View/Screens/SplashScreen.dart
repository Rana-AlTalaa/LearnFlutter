import 'package:flutter/material.dart';

import '../../Controller/ThemColor.dart';
import '../Widgiets/CustomText.dart';
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
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            "assets/images/Splashicon.png",
            width: 2 * MediaQuery.of(context).size.width / 2.8,
          ),
          CustomText(
            Txt: "Flutter & Dart",
            colorTxt: WhiteColor,
            weightTxt: FontWeight.bold,
            sizeTxt: 25,
          )
        ],
      ),
    ));
  }
}
