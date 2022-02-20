import 'package:flutter/material.dart';

import '../../helper/on_hover_affect.dart';

class CustomeCard extends StatefulWidget {
  final String imagePath;
  final String title;
  final double height;


  CustomeCard({Key? key,required this.imagePath,required this.title, required this.height}) : super(key: key);
  @override
  State<CustomeCard> createState() => _CustomeCardState();
}

class _CustomeCardState extends State<CustomeCard> {
  double height = 280.0;
  bool ishover = false;
  @override
  Widget build(BuildContext context) {
      return Container(
        alignment: Alignment.bottomRight,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topRight,
            end: Alignment.bottomLeft,
            colors: [
              Colors.brown.withOpacity(0.8),
              Colors.brown.withOpacity(0.2),
            ],
          ),
        ),
        child: OnHover(
            val: 0.0,
            isProduct: false,
            duraton: Duration(milliseconds: 600),
            builder: (hover) {
              return Stack(
                children: [
                  Align(
                    alignment: Alignment.bottomRight,
                    child: Image.asset(widget.imagePath,
                        height: hover ? height : height-(height*0.2),
                      // height: height-10,
                        fit: BoxFit.fill,
                        // width: hover ? 280 : 230
                    ),
                  ),
                  Container(
                    height: double.infinity,
                    width: double.infinity,
                    padding: EdgeInsets.only(left: 10.0),
                    alignment: Alignment.centerLeft,
                    // margin: EdgeInsets.all(hover ? 7.0 : 14.0),
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.brown, width: 3.0),
                    ),
                    child:Text(
                      widget.title,
                      style: Theme.of(context).textTheme.headline1,
                    ) ,
                  ),
                ],
              );
            }),
      );
  }
}
