import 'package:flutter/material.dart';
import 'package:noor_moden/view/homescreen/subscreens/new_arrivals.dart';
import 'package:noor_moden/widgets/commons/header_widget.dart';
import 'package:noor_moden/widgets/tabs/top_container.dart';

import '../../../widgets/commons/side_menu.dart';

class EveningDresses extends StatefulWidget {
  final TabController controller;
  const EveningDresses({Key? key, required this.controller}) : super(key: key);

  @override
  _EveningDressesState createState() => _EveningDressesState();
}

class _EveningDressesState extends State<EveningDresses> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: [
          SideMenu(controller: widget.controller),
          SizedBox(
            width: 10,
          ),
          Expanded(
            child: Column(
              children: [
                TopContainer(title: "EVENINGDRESSES"),
                SizedBox(
                  height: 30,
                ),
                Container(height: 60, child: HeaderHomeWidget()),
                TypeProducts(
                    title: "evening dresses",
                    type: "evening",
                    isShowBanner: false,
                    itemCount: 8)
              ],
            ),
          ),
        ],
      ),
    );
  }
}
