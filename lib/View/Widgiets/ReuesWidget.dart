import 'package:flutter/material.dart';
import 'package:learn_flutter/Controller/ThemColor.dart';
import 'package:learn_flutter/View/Widgiets/CustomText.dart';

class ReuesWidget extends StatelessWidget {
  final String img;
  final String Title;
  final String SupTitle;
  final String RoutName;
  const ReuesWidget(
      {super.key,
      required this.img,
      required this.Title,
      required this.SupTitle,
      required this.RoutName});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
      padding: EdgeInsets.all(5),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 5,
            blurRadius: 7,
            offset: Offset(0, 3), // changes position of shadow
          ),
        ],
      ),
      child: ListTile(
        minVerticalPadding: 18,
        leading: Image.asset(img),
        subtitle: Text(SupTitle.toString()),
        title: CustomText(
          Txt: Title,
          sizeTxt: 20,
          weightTxt: FontWeight.bold,
        ),
        trailing: Icon(
          Icons.arrow_circle_right,
          color: BaseColor,
          size: 30,
        ),
        onTap: () {},
      ),
    );
  }
}
