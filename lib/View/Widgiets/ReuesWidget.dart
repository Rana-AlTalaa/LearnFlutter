import 'package:flutter/material.dart';
import 'package:project1/Controller/ThemColor.dart';

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
      margin: EdgeInsets.symmetric(vertical: 15, horizontal: 20),
      padding: EdgeInsets.all(5),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(5),
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
        leading: Image.asset(img),
        subtitle: Text(SupTitle.toString()),
        title: Text(
          "${Title}",
          textScaleFactor: 1.3,
        ),
        trailing: Icon(
          Icons.arrow_circle_right,
          color: BaseColor,
        ),
        onTap: () {},
      ),
    );
  }
}
