import 'package:flutter/material.dart';
import 'package:noor_moden/view/homescreen/subscreens/new_arrivals.dart';
import 'package:noor_moden/widgets/tabs/top_container.dart';

class EveningDresses extends StatefulWidget {
  const EveningDresses({Key? key}) : super(key: key);

  @override
  _EveningDressesState createState() => _EveningDressesState();
}

class _EveningDressesState extends State<EveningDresses> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          TopContainer(title: "EVENINGDRESSES"),
          SizedBox(height: 30,),
          TypeProducts(title: "evening dresses", type: "evening",isShowBanner: false,itemCount: 8
          )
        ],
      ),
    );
  }
}
