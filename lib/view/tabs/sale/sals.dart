import 'package:flutter/material.dart';
import 'package:noor_moden/view/homescreen/subscreens/new_arrivals.dart';
import 'package:noor_moden/widgets/tabs/top_container.dart';

class Sals extends StatefulWidget {
  const Sals({Key? key}) : super(key: key);

  @override
  _SalsState createState() => _SalsState();
}

class _SalsState extends State<Sals> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          TopContainer(title: "SALS"),
          SizedBox(height: 30,),
          TypeProducts(title: "sals", type: "sals",isShowBanner: false,itemCount: 8,)
        ],
      ),
    );
  }
}
