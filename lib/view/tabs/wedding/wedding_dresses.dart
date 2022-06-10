import 'package:flutter/material.dart';
import 'package:noor_moden/view/homescreen/subscreens/new_arrivals.dart';
import 'package:noor_moden/widgets/tabs/top_container.dart';

class WeddingDresses extends StatefulWidget {
  const WeddingDresses({Key? key}) : super(key: key);

  @override
  _WeddingDressesState createState() => _WeddingDressesState();
}

class _WeddingDressesState extends State<WeddingDresses> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          TopContainer(title: "WEDDING"),
          SizedBox(height: 30,),
          TypeProducts(title: "wedding", type: "wedding",isShowBanner: false,itemCount: 8,)
        ],
      ),
    );
  }
}
