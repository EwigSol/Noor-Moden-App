import 'package:flutter/material.dart';
import 'package:noor_moden/view/homescreen/subscreens/new_arrivals.dart';
import 'package:noor_moden/widgets/commons/header_widget.dart';
import 'package:noor_moden/widgets/commons/side_menu.dart';
import 'package:noor_moden/widgets/tabs/top_container.dart';

class Sals extends StatefulWidget {
  final TabController controller;
  const Sals({Key? key, required this.controller}) : super(key: key);

  @override
  _SalsState createState() => _SalsState();
}

class _SalsState extends State<Sals> {
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
                TopContainer(title: "SALS"),
                SizedBox(
                  height: 30,
                ),
                Container(height: 60, child: HeaderHomeWidget()),
                TypeProducts(
                  title: "sals",
                  type: "sals",
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
