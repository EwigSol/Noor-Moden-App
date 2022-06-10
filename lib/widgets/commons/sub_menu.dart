import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:noor_moden/controllers/sub_menu_controller.dart';

class SubMenu extends StatefulWidget {
   SubMenu({Key? key}) : super(key: key);

  @override
  State<SubMenu> createState() => _SubMenuState();
}

class _SubMenuState extends State<SubMenu> {
  var subMenuController=Get.put(SubMenuController());
 bool showOptions=false;
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var activeColor = Theme.of(context).primaryColor;
    return Container(
      padding: EdgeInsets.symmetric(horizontal: width>1200?100:50),
      child: Obx((){
          return Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              InkWell(
          onHover: (value){
            subMenuController.sideIndex.value=0;

          },
                  onTap: (){
                    subMenuController.sideIndex.value=0;

                  },
          child: Container(
              padding: EdgeInsets.all(4.0),
              color:subMenuController.sideIndex.value==0?activeColor:Colors.transparent,
              child: Text("NEW ARRIVALS",style:Theme.of(context).textTheme.headline2,))),

              InkWell(
                  onHover: (value){
                    subMenuController.sideIndex.value=1;

                  },
                  onTap: (){
                    subMenuController.sideIndex.value=1;

                  },
                  child: Container(

                      padding: EdgeInsets.all(4.0),
                      color:subMenuController.sideIndex.value==1?activeColor:Colors.transparent,
                      child: Text("EVENINGDRESSES",style:Theme.of(context).textTheme.headline2 ,))),
              InkWell(
                  onHover: (value){
                    subMenuController.sideIndex.value=2;

                  },
                  onTap: (){
                    subMenuController.sideIndex.value=2;

                  },

                  child: Container(
                      padding: EdgeInsets.all(4.0),
                      color:subMenuController.sideIndex.value==2?activeColor:Colors.transparent,
                      child: Text("COCKTAILDRESSES",style:Theme.of(context).textTheme.headline2 ,))),

              InkWell(
                  onHover: (value){
                    subMenuController.sideIndex.value=3;

                  },
                  onTap: (){
                    subMenuController.sideIndex.value=3;
                  },
                  child:
                      Container(

                          padding: EdgeInsets.all(4.0),
                          color:subMenuController.sideIndex.value==3?activeColor:Colors.transparent,
                          child: Text("WEDDING",style:Theme.of(context).textTheme.headline2 ,)),

              ),
              Column(
                children: [
                  InkWell(
                      onHover: (value){
                        subMenuController.sideIndex.value=4;

                      },
                      onTap: (){
                        subMenuController.sideIndex.value=4;

                      },
                      onFocusChange: (value){
                        subMenuController.sideIndex.value=0;

                      },
                      child: Container(
                          padding: EdgeInsets.all(4.0),
                          color:subMenuController.sideIndex.value==4?activeColor:Colors.transparent,

                          child: Text("BIG SIZES",style:Theme.of(context).textTheme.headline2 ,))),
                ],
              ),
              Column(
                children: [
                  InkWell(
                    onHover: (value){
                      subMenuController.sideIndex.value=5;
                          setState(() {
                            showOptions=true;
                          });
                    },
                    onTap: (){
                      subMenuController.sideIndex.value=5;
                      setState(() {
                        showOptions=true;
                      });
                    },
                    onFocusChange: (value){
                      subMenuController.sideIndex.value=0;
                      setState(() {
                        showOptions=false;
                      });
                    },
                    child: showOptions?Offstage():Container(
                      padding: EdgeInsets.all(4.0),
                      color:subMenuController.sideIndex.value==5?activeColor:Colors.transparent,
                      child: Text("ACCESSOIRES",style:Theme.of(context).textTheme.headline2 ,
                      ),
                    ),
                  ),
                  showOptions?showDropDown(context):Offstage()
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  InkWell(
                    onHover: (value){

                      subMenuController.sideIndex.value=6;

                    },
                    onTap: (){
                      subMenuController.sideIndex.value=6;
                    },
                    child: Container(
                      padding: EdgeInsets.all(4.0),
                      color:subMenuController.sideIndex.value==6?activeColor:Colors.transparent,
                      child: Text("SALE %",style: Theme.of(context).textTheme.headline2!.copyWith(
                          color: Colors.red

                      ),),
                    ),
                  ),

                ],
              ),

            ],
          );
        }
      ),
    );
  }

  myDivider(){
   return Container(
      height: 2,
      color: Colors.cyan,
    );
  }

  _displayDialog(BuildContext context) async {
    return showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            // alignment: Alignment.topRight,+
            title: Text('TextField AlertDemo'),
            content:Column(
              children: [
                Text("Boleros"),
                Text("Handbags"),
                Text("stole/scarft"),
                Text("bras"),
                Text("Hoop Skirts "),
                Text("Tops"),
                Text("Ties and Bow Ties"),
              ],
            )

          );
        });
  }

  showDropDown(context){
    String? selectedValue;
    List<String> items = [
      'Item1',
      'Item2',
      'Item3',
      'Item4',
    ];
    return DropdownButtonHideUnderline(
      child: DropdownButton2(
        focusColor: Colors.transparent,
        hint: Text(
      "ACCESSORIES",
          style: Theme.of(context).textTheme.headline2
        ),
        items: items
            .map((item) =>
            DropdownMenuItem<String>(
              value: item,
              child: Text(
                item,
                style: const TextStyle(
                  fontSize: 14,
                ),
              ),
            ))
            .toList(),
        value: selectedValue,
        onChanged: (value) {
          setState(() {
            selectedValue = value as String;
          });
        },
        buttonHeight: 40,
        buttonWidth: 140,
        itemHeight: 40,
      ),
    );
  }
}
