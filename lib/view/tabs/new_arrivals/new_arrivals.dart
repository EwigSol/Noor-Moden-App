import 'package:flutter/material.dart';
import 'package:noor_moden/view/homescreen/subscreens/new_arrivals.dart';
import 'package:noor_moden/widgets/commons/header_widget.dart';
import 'package:noor_moden/widgets/commons/side_menu.dart';
import 'package:noor_moden/widgets/tabs/top_container.dart';

class NewArrivals extends StatefulWidget {
  final TabController controller;
  const NewArrivals({Key? key, required this.controller}) : super(key: key);

  @override
  _NewArrivalsState createState() => _NewArrivalsState();
}

class _NewArrivalsState extends State<NewArrivals> {
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
                TopContainer(title: "NEWARRIVALS"),
                SizedBox(
                  height: 30,
                ),
                Container(height: 60, child: HeaderHomeWidget()),
                TypeProducts(
                  title: "NEW ARRIVALS",
                  type: "new",
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
