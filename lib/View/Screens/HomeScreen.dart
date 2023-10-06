import 'package:flutter/material.dart';

import '../../Controller/ThemColor.dart';
import 'LearnDart.dart';
import 'LearnFlutter.dart';
import 'Quzie.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  PageController pageController = PageController();

  int index = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: BaseColor,
        currentIndex: index,
        onTap: (i) {
          index = i;
          setState(() {});

          pageController.animateToPage(i,
              duration: Duration(seconds: 1), curve: Curves.linear);
        },
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.flutter_dash),
            label: " ",
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.flutter_dash_rounded), label: " "),
          BottomNavigationBarItem(icon: Icon(Icons.quiz), label: " "),
        ],
      ),
      appBar: AppBar(
        backgroundColor: BaseColor,
        title: Text(" "),
        elevation: 0,
      ),
      drawer: Drawer(
          child: Container(
        color: BaseColor,
      )),
      body: PageView(
          controller: pageController,
          children: [LearnDart(), LearnFlutter(), Quzi()]),
    );
  }
}
