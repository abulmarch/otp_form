import 'package:flutter/material.dart';

class RectangularButton extends StatelessWidget {
  const RectangularButton({
    super.key,
      required this.bgcolor, required this.textcolor, required this.bordercolor, required this.text,   required this.ontap
  });

  final Color bgcolor;
  final Color textcolor;
  final Color bordercolor;
  final String text;
  final Function() ontap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: ontap,
      child: Container(
          width: 150,
          height: 40,
          decoration: BoxDecoration(
              color: bgcolor, border: Border.all(color: bordercolor, width: 1),
              borderRadius: BorderRadius.circular(10)),
          child: Center(
              child: Text(
            text,
            style:  TextStyle(
              color: textcolor,
              fontWeight: FontWeight.w600,
              fontSize: 15
            )
          ))),
    );
  }
}