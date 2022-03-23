import 'package:flutter/material.dart';
import 'package:noor_moden/view/homescreen/subscreens/new_arrivals.dart';
import 'package:noor_moden/widgets/commons/header_widget.dart';
import 'package:noor_moden/widgets/commons/side_menu.dart';
import 'package:noor_moden/widgets/tabs/top_container.dart';

class BigSize extends StatefulWidget {
  final TabController controller;
  const BigSize({Key? key, required this.controller}) : super(key: key);

  @override
  _BigSizeState createState() => _BigSizeState();
}

class _BigSizeState extends State<BigSize> {
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
                TopContainer(title: "BIGSIZE"),
                SizedBox(
                  height: 30,
                ),
                Container(height: 60, child: HeaderHomeWidget()),
                TypeProducts(
                  title: "bigsize",
                  type: "big",
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
