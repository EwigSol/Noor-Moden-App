import 'package:flutter/material.dart';

class TopContainer extends StatelessWidget {
  final String title;
  const TopContainer({Key? key,required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
        alignment: Alignment.center,
        child:  Stack(
          children: [
            Align(
              alignment: Alignment.center,
              child:Image.asset("assets/dress1.jpg",
                height:double.infinity,
                fit: BoxFit.cover,
                width: double.infinity,
                // width: hover ? 280 : 230
              ),
            ),
            Container(
              height: double.infinity,
              width: double.infinity,

              padding: EdgeInsets.only(left: 10.0),
              alignment: Alignment.center,
              margin: EdgeInsets.all(12.0),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.brown, width: 3.0),
              ),
              child:Text(title,style: Theme.of(context).textTheme.headline1!.copyWith(color: Colors.white),),
            ),
          ],
        )

    );
  }
}
