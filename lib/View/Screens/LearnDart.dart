import 'package:flutter/material.dart';
import 'package:learn_flutter/View/Widgiets/CustomText.dart';
import 'package:learn_flutter/View/Widgiets/ReuesWidget.dart';

import '../../Controller/ThemColor.dart';

class LearnDart extends StatelessWidget {
  const LearnDart({super.key});

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
                        width: MediaQuery.sizeOf(context).width / 2.2,
                        child: CustomText(
                          Txt: "Learn Dart Tutorial",
                          colorTxt: WhiteColor,
                          sizeTxt: 30,
                          weightTxt: FontWeight.bold,
                        ),
                      ),
                      SizedBox(
                        width: MediaQuery.sizeOf(context).width / 2.3,
                        child: CustomText(
                          Txt: "Let's learn Dart Programing tutorial Complete",
                          colorTxt: WhiteColor,
                          sizeTxt: 13,
                        ),
                      ),
                    ],
                  ),
                  Image.asset(
                    "assets/images/image.png",
                    fit: BoxFit.cover,
                    width: MediaQuery.sizeOf(context).width / 2.3,
                  ),
                ],
              )),
          SizedBox(
            height: 15,
          ),
          ListTile(
            leading: Image.asset(
              "assets/images/images.jpeg",
              fit: BoxFit.cover,
            ),
            title: Text(
              ' Dart Introduction',
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
              textScaleFactor: 1.4,
            ),
            subtitle: Text(
              'Start from basic knowledge of Dart tecnology',
              textScaleFactor: 1.08,
            ),
          ),
          const Divider(),
          ListView.builder(
            physics: NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            itemCount: 4,
            itemBuilder: (context, index) {
              return ReuesWidget(
                  img: "assets/images/img.png",
                  Title: "Dart introuduction",
                  SupTitle: "Lets start",
                  RoutName: "");
            },
          )
        ],
      ),
    );
  }
}
