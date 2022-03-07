import 'package:flutter/material.dart';
import 'package:noor_moden/view/homescreen/subscreens/new_arrivals.dart';
import 'package:noor_moden/widgets/tabs/top_container.dart';

class BigSize extends StatefulWidget {
  const BigSize({Key? key}) : super(key: key);

  @override
  _BigSizeState createState() => _BigSizeState();
}

class _BigSizeState extends State<BigSize> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          TopContainer(title: "BIGSIZE"),
          SizedBox(height: 30,),
          TypeProducts(title: "bigsize", type: "big",isShowBanner: false,itemCount: 8,)
        ],
      ),
    );
  }
}
