import 'package:flutter/material.dart';

class CustomText extends StatelessWidget {
  final String Txt;
  final Color colorTxt;
  final double sizeTxt;
  final FontWeight weightTxt;
  final double HeigtTxt;
  const CustomText({
    Key? key,
    required this.Txt,
    this.colorTxt = Colors.black,
    this.sizeTxt = 15,
    this.weightTxt = FontWeight.normal,
    this.HeigtTxt = 1.5,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      Txt,
      style: TextStyle(
          color: colorTxt,
          fontSize: sizeTxt,
          fontWeight: weightTxt,
          height: HeigtTxt),
    );
  }
}
