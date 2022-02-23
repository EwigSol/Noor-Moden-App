import 'package:flutter/material.dart';
import 'package:noor_moden/helper/on_hover_affect.dart';

class CustomDrawer extends StatefulWidget {
  const CustomDrawer({Key? key}) : super(key: key);

  @override
  CustomDrawerState createState() => CustomDrawerState();
}

class CustomDrawerState extends State<CustomDrawer> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      color: Colors.white,
      width: MediaQuery.of(context).size.width*0.6,
      child: Drawer(
        child: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.only(top: 50.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  alignment: Alignment.center,
                  padding: EdgeInsets.symmetric(vertical: 10.0,horizontal: 10.0),
                  child: Image.asset(
                    "assets/logo.png",
                    width: 60,
                    height: 60,

                  ),
                  decoration: BoxDecoration(
                      border: Border(
                          bottom: BorderSide(color: Colors.grey.shade400,width: 1)
                      )
                  ),
                ),
                getMenuContainer(text: "NEW ARRIVALS "),
                getMenuContainer(text: "EVENINGDRESSES"),
                getMenuContainer(text: "COCKTAILDRESSES"),
                getMenuContainer(text: "WEDDING"),
                getMenuContainer(text: "BIG SIZES"),
                getMenuContainer(text: "ACCESSORIES"),
                getMenuContainer(text: "SALE %"),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 15.0,vertical: 10.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                       children: [
                         getGridChild(icon: Icons.call,txt: "CALL"),
                         getGridChild(icon: Icons.email,txt: "EMAIL"),
                       ],
                      ),
                      SizedBox(height:20.0),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          getGridChild(icon: Icons.person,txt: "ENGLISH"),

                          getGridChild(icon: Icons.multiline_chart,txt: "DEUTSCH"),
                        ],
                      )
                    ],
                  ),
                  decoration: BoxDecoration(
                      border: Border(
                          bottom: BorderSide(color: Colors.grey.shade400,width: 1)
                      )
                  ),
                ),

                Container(
                  padding: EdgeInsets.symmetric(horizontal: 15.0,vertical: 14.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                     Text("Language"),
                      SizedBox(height:20.0),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          getGridChild(icon: Icons.person,txt: "ACCOUNT"),

                          getGridChild(icon: Icons.multiline_chart,txt: "WISH LIST"),
                        ],
                      )
                    ],
                  ),
                  decoration: BoxDecoration(
                      border: Border(
                          bottom: BorderSide(color: Colors.grey.shade400,width: 1)
                      )
                  ),
                )



              ],
            ),
          ),
        ),
      ),
    );
  }

  getMenuContainer({text}){

    return OnHover(
      isProduct: false,
        isDrawer: true,
      val: -4,
      builder: (val) {
        return Container(
          width: double.infinity,
          padding: EdgeInsets.only(left: 10.0,top: 17.0,bottom: 17),
          decoration: BoxDecoration(
              border: Border(
                  bottom: BorderSide(color: Colors.grey.shade300,width: 1)
              )
          ),
          child: Text(
            text,
            style: TextStyle(
                fontSize: 14.0,
                fontWeight: FontWeight.w600,
                color: val?Theme.of(context).primaryColor:Colors.grey.shade900
            ),
          ),
        );
      }
    );

  }

  getGridChild({txt,icon}){
    return Row(
      children: [
        Icon(
          icon,
          size: 18,
          color: Colors.grey.shade900,
        ),
        SizedBox(width: 10.0,),
        Text(txt,style: TextStyle(color: Colors.grey.shade700,fontSize: 12),
        )
      ],
    );
  }
}