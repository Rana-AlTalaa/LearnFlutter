import 'package:flutter/material.dart';
import 'package:learn_flutter/View/Widgiets/CustomText.dart';
import 'package:learn_flutter/View/Widgiets/ReuesWidget.dart';

import '../../Controller/ThemColor.dart';

class LearnFlutter extends StatelessWidget {
  const LearnFlutter({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
              alignment: Alignment.center,
              padding: EdgeInsets.only(top: 15, left: 25, right: 5),
              height: 230,
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
                        width: MediaQuery.sizeOf(context).width / 2.25,
                        child: CustomText(
                          Txt: "Learn Flutter Complete Giude",
                          colorTxt: WhiteColor,
                          sizeTxt: 30,
                          weightTxt: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                  Image.asset(
                    "assets/images/Splashicon.png",
                    fit: BoxFit.cover,
                    width: MediaQuery.sizeOf(context).width / 2.1,
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
              'Introduction',
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
              textScaleFactor: 1.4,
            ),
            subtitle: Text(
              'Start from basic knowledge of Flutter tecnology',
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
