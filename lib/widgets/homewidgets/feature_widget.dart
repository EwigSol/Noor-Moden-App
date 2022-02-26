import 'package:flutter/material.dart';

import '../../../../helper/on_hover_affect.dart';

class Featured extends StatefulWidget {
  final String imagePath;
  final String title;
  final double height;


  Featured({Key? key,required this.imagePath,required this.title, required this.height}) : super(key: key);
  @override
  State<Featured> createState() => _FeaturedState();
}

class _FeaturedState extends State<Featured> {

  bool ishover = false;
  @override
  Widget build(BuildContext context) {
    double height = widget.height;
    return Column(
      children: [
        Container(
          alignment: Alignment.center,
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
              isDrawer: false,
              val: 0.0,
              isProduct: false,
              duraton: Duration(milliseconds: 1400),
              builder: (hover) {
                return Container(
                  height:height*0.75,
                  width: double.infinity,
                  padding: EdgeInsets.only(left: 10.0),
                  alignment: Alignment.center,
                  // margin: EdgeInsets.all(hover ? height*0.03 : height*0.06),
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.brown, width: 3.0),
                  ),
                  child:Align(
                    alignment: Alignment.center,
                    child: Image.asset(widget.imagePath,
                      fit: BoxFit.cover,
                      // height: height*0.75,
                      // width: hover ? 280 : 230
                    ),
                  ),
                );
              }),
        ),
        SizedBox(height: height*0.03,),
        Container(
          height: height*0.15,
          child: Text(
            widget.title,
            style: Theme.of(context).textTheme.headline1,
          ),
        ) ,
      ],
    );
  }
}
