import 'package:flutter/material.dart';
import 'package:noor_moden/view/homescreen/subscreens/new_arrivals.dart';
import 'package:noor_moden/widgets/tabs/top_container.dart';

class CooktailDresses extends StatefulWidget {
  const CooktailDresses({Key? key}) : super(key: key);

  @override
  _CooktailDressesState createState() => _CooktailDressesState();
}

class _CooktailDressesState extends State<CooktailDresses> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          TopContainer(title: "COOKTAIL DRESSES"),
          SizedBox(height: 30,),
          TypeProducts(title: "COOKTAIL DRESSES", type: "COOKTAL",isShowBanner: false,itemCount: 8,)
        ],
      ),
    );
  }
}
