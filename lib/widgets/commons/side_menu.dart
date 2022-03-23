import 'dart:html';

import 'package:flutter/material.dart';
import 'package:noor_moden/helper/on_hover_affect.dart';

class SideMenu extends StatefulWidget {
  final TabController controller;
  const SideMenu({Key? key, required this.controller}) : super(key: key);

  @override
  _SideMenuState createState() => _SideMenuState();
}

class _SideMenuState extends State<SideMenu> {
  bool isSelected = false;
  List<String> sizes = [
    "34",
    "36",
    "38",
    "40",
    "42",
    "44",
  ];
  List<String> length = [
    "short",
    "maxi",
    "long",
  ];
  List<String> materials = ["Chiffon", "Satin", "Lace", "Tulle", "Other"];
  List<String> EMBROIDERED = ["yes", 'no'];
  List<String> style = [
    "V-Neck",
    "Rounded Neck",
    "Strapless",
    "Straps",
    "With Arms"
  ];

  List<String> colors = [
    "848282",
    "0D62B2",
    "FBFF04",
    "FEACD6",
    "000000",
    "FFFFFF",
    "F77C28",
    "D72902",
    "0D62B1",
    "6E3C02"
  ];
  List<String> accessories = [
    "Boleros",
    "Handbags",
    " Stole/ Scarfs",
    "Bras",
    "Hoop Skirts",
    "Tops",
    "Ties & Bow Ties"
  ];
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        padding: EdgeInsets.only(top: 20.0, left: 20.0),
        width: MediaQuery.of(context).size.width * 0.16,
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Text(
            "CATEGORIES",
            style: Theme.of(context).textTheme.headline2,
          ),
          getItem("HOME"),
          InkWell(
            onTap: () {
              widget.controller
                  .animateTo(1, duration: Duration(milliseconds: 400));
            },
            child: getItem("EVENINGDRESSES"),
          ),
          getItem("COCKTAILDRESSES"),
          getItem("WEDDING"),
          getItem("BIG SIZE"),
          ExpansionTile(
              expandedAlignment: Alignment.centerLeft,
              childrenPadding: EdgeInsets.only(left: 15.0, top: 5.0),
              title: Text("ACCESSORIES"),
              textColor: Colors.grey.shade800,
              iconColor: Colors.grey.shade800,
              collapsedTextColor: Colors.grey.shade800,
              children: List.generate(
                  accessories.length, (index) => getItem(accessories[index]))),
          getItem('SALE %'),
          SizedBox(
            height: 20.0,
          ),
          Text(
            "SIZE",
            style: Theme.of(context).textTheme.headline2,
          ),
          Divider(
            color: Colors.grey.shade500,
          ),
          Container(
            height: 40,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: List.generate(sizes.length, (index) {
                return getSizeWidget(sizes[index]);
              }),
            ),
          ),
          SizedBox(
            height: 20.0,
          ),
          Text(
            "COLORS",
            style: Theme.of(context).textTheme.headline2,
          ),
          Divider(
            color: Colors.grey.shade500,
          ),
          Container(
            height: 100,
            child: GridView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: colors.length,
              itemBuilder: (context, index) {
                return InkWell(
                  child: Container(
                    margin: EdgeInsets.only(left: 6.0),
                    height: 30,
                    width: 30,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Color(int.parse(("0xff${colors[index]}")))),
                    // child: Card(color: Colors.green,),
                  ),
                );
              },
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2, mainAxisSpacing: 0.0, mainAxisExtent: 40),
            ),
          ),
          SizedBox(
            height: 20.0,
          ),
          Text(
            "LENGTH",
            style: Theme.of(context).textTheme.headline2,
          ),
          Divider(
            color: Colors.grey.shade500,
          ),
          Column(
            children: List.generate(
                length.length, (index) => getSizeWidget(length[index])),
          ),
          SizedBox(
            height: 20.0,
          ),
          ExpansionTile(
            expandedAlignment: Alignment.centerLeft,
            initiallyExpanded: true,
            childrenPadding: EdgeInsets.only(left: 15.0, top: 5.0),
            title: Text("MATERIAL"),
            textColor: Colors.grey.shade800,
            iconColor: Colors.grey.shade800,
            collapsedTextColor: Colors.grey.shade800,
            children: List.generate(
                materials.length, (index) => getSizeWidget(materials[index])),
          ),
          SizedBox(
            height: 20,
          ),
          ExpansionTile(
            expandedAlignment: Alignment.centerLeft,
            initiallyExpanded: true,
            childrenPadding: EdgeInsets.only(left: 15.0, top: 5.0),
            title: Text("EMBROIDERED"),
            textColor: Colors.grey.shade800,
            iconColor: Colors.grey.shade800,
            collapsedTextColor: Colors.grey.shade800,
            children: List.generate(EMBROIDERED.length,
                (index) => getSizeWidget(EMBROIDERED[index])),
          ),
          SizedBox(
            height: 20,
          ),
          ExpansionTile(
            expandedAlignment: Alignment.centerLeft,
            initiallyExpanded: true,
            childrenPadding: EdgeInsets.only(left: 15.0, top: 5.0),
            title: Text("STYLE"),
            textColor: Colors.grey.shade800,
            iconColor: Colors.grey.shade800,
            collapsedTextColor: Colors.grey.shade800,
            children: List.generate(
                style.length, (index) => getSizeWidget(style[index])),
          )
        ]),
      ),
    );
  }

  getItem(String title) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 5.0),
      child: OnHover(
          builder: ((isHovered) {
            return Row(
              children: [
                isHovered
                    ? Icon(
                        Icons.arrow_forward_ios,
                        size: 15,
                        color: Colors.grey.shade700,
                      )
                    : Offstage(),
                SizedBox(
                  width: 8.0,
                ),
                Text(title),
              ],
            );
          }),
          val: -0.1,
          isProduct: false,
          isDrawer: false),
    );
  }

  getSizeWidget(title) {
    return Padding(
      padding: EdgeInsets.only(left: 5.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Checkbox(
            value: isSelected,
            onChanged: (val) {
              setState(() {
                isSelected = val!;
              });
            },
          ),
          Text(title),
        ],
      ),
    );
  }
}
