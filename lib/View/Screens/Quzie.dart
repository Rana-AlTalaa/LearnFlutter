import 'package:flutter/material.dart';
import 'package:learn_flutter/View/Widgiets/CustomText.dart';
import 'package:learn_flutter/View/Widgiets/ReuesWidget.dart';

import '../../Controller/ThemColor.dart';

class Quzi extends StatelessWidget {
  const Quzi({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
              alignment: Alignment.center,
              padding: EdgeInsets.only(top: 15, left: 25, right: 5),
              height: 250,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(
                    "assets/images/Carve.png",
                  ),
                  fit: BoxFit.cover,
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Column(
                    children: [
                      SizedBox(
                        width: MediaQuery.sizeOf(context).width / 2.37,
                        child: CustomText(
                          Txt: "Coding Quiz",
                          colorTxt: WhiteColor,
                          sizeTxt: 30,
                          weightTxt: FontWeight.bold,
                        ),
                      ),
                      SizedBox(
                        width: MediaQuery.sizeOf(context).width / 2.4,
                        child: CustomText(
                          Txt: "Let's Play Quiz Togathor",
                          colorTxt: WhiteColor,
                          sizeTxt: 13,
                        ),
                      ),
                    ],
                  ),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(40),
                    child: Image.asset(
                      "assets/images/OnlineTest.gif",
                      fit: BoxFit.cover,
                      width: MediaQuery.sizeOf(context).width / 2,
                    ),
                  ),
                ],
              )),
          SizedBox(
            height: 15,
          ),
          ListTile(
            leading: Image.asset(
              "assets/images/question.png",
              fit: BoxFit.cover,
            ),
            title: Text(
              'Quiz:',
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
              textScaleFactor: 1.6,
            ),
          ),
          const Divider(),
          ReuesWidget(
            Title: "Flutter and Dart ",
            img: "assets/images/FlutterIcon.png",
            SupTitle: "Let's Start",
            RoutName: "",
          ),
        ],
      ),
    );
  }
}
