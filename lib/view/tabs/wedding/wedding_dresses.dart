import 'package:flutter/material.dart';
import 'package:noor_moden/view/homescreen/subscreens/new_arrivals.dart';
import 'package:noor_moden/widgets/commons/header_widget.dart';
import 'package:noor_moden/widgets/commons/side_menu.dart';
import 'package:noor_moden/widgets/tabs/top_container.dart';

class WeddingDresses extends StatefulWidget {
  final TabController controller;
  const WeddingDresses({Key? key, required this.controller}) : super(key: key);

  @override
  _WeddingDressesState createState() => _WeddingDressesState();
}

class _WeddingDressesState extends State<WeddingDresses> {
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
                TopContainer(title: "WEDDING"),
                SizedBox(
                  height: 30,
                ),
                Container(height: 60, child: HeaderHomeWidget()),
                TypeProducts(
                  title: "wedding",
                  type: "wedding",
                  isShowBanner: false,
                  itemCount: 8,
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
