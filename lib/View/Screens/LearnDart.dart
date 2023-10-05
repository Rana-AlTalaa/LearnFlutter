import 'package:flutter/material.dart';
import 'package:project1/View/Widgiets/ReuesWidget.dart';

import '../../Controller/ThemColor.dart';

class LearnDart extends StatelessWidget {
  const LearnDart({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
                alignment: Alignment.center,
                padding: EdgeInsets.only(top: 35, left: 25, right: 5),
                height: 300,
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
                          width: MediaQuery.sizeOf(context).width / 2.3,
                          child: Text(
                            "Learn Dart Tutorial",
                            style: TextStyle(
                                color: WhiteColor,
                                fontSize: 30,
                                fontWeight: FontWeight.bold,
                                height: 1.5),
                          ),
                        ),
                        SizedBox(
                          width: MediaQuery.sizeOf(context).width / 2.3,
                          child: Text(
                            "Let's learn Dart Programing tutorial Complete",
                            style: TextStyle(color: WhiteColor, height: 1.5),
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
            const ListTile(
              leading: Image.asset(
                "assets/images/images.jpeg",
                fit: BoxFit.cover,
                width: 20,
              ),
              title: Text(
                ' Dart Introduction',
                textScaleFactor: 1.5,
              ),
              subtitle: Text('Start Of basic knowledg of dart tecnology'),
            ),
            const Divider(),
            ListView.builder(
              physics: NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemCount: 4,
              itemBuilder: (context, index) {
                return ReuesWidget(
                    img: "assets/images/images.jpeg",
                    Title: "Dart introuduction",
                    SupTitle: "letsstart",
                    RoutName: "");
              },
            )
          ],
        ),
      ),
    );
  }
}
