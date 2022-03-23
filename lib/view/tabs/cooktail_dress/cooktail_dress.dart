import 'package:flutter/material.dart';
import 'package:noor_moden/view/homescreen/subscreens/new_arrivals.dart';
import 'package:noor_moden/widgets/commons/header_widget.dart';
import 'package:noor_moden/widgets/tabs/top_container.dart';

import '../../../widgets/commons/side_menu.dart';

class CooktailDresses extends StatefulWidget {
  final TabController controller;
  const CooktailDresses({Key? key, required this.controller}) : super(key: key);

  @override
  _CooktailDressesState createState() => _CooktailDressesState();
}

class _CooktailDressesState extends State<CooktailDresses> {
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
                TopContainer(title: "COOKTAIL DRESSES"),
                SizedBox(
                  height: 30,
                ),
                Container(height: 60, child: HeaderHomeWidget()),
                TypeProducts(
                    title: "COOKTAIL DRESSES",
                    type: "COOKTAL",
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
