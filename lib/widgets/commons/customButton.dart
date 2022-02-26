import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final Function () onpress;
  final String  text;
  final textColor;
  final buttonColor;

  const CustomButton({Key? key,required this.onpress,required this.text,required this.textColor,required this.buttonColor}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
onPressed:onpress ,

color: buttonColor,
padding: EdgeInsets.symmetric(vertical: 10.0,horizontal: 10.0),
child: Text(
  text,
  style: TextStyle(
    color: textColor,
    fontWeight: FontWeight.w600,
    fontSize: 13
  ),
),
    );
  }
}
