import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:noor_moden/controllers/sub_menu_controller.dart';

import '../../../widgets/commons/product_card.dart';

class TypeProducts extends StatefulWidget {
  final String title;
  final String type;
  final int itemCount;
  final bool isShowBanner;
  const TypeProducts({Key? key,required this.title,required this.type,required this.itemCount,required this.isShowBanner}) : super(key: key);

  @override
  _TypeProductsState createState() => _TypeProductsState();
}

class _TypeProductsState extends State<TypeProducts> {
  @override
  Widget build(BuildContext context) {
    var width=MediaQuery.of(context).size.width;
    return Container(
      padding: EdgeInsets.all(10.0),
      child: Column(
        children: [
          widget.isShowBanner?Row(
            children: [
              Expanded(child
                  : Divider(height: 1.0,color: Colors.grey.shade700,)),
              SizedBox(width: 10.0,),
              Text(
                widget.title,
                style: Theme.of(context).textTheme.headline1,


              ),
              SizedBox(width: 10.0,),
              Expanded(child: Divider(height: 1.0,color: Colors.grey.shade700,)),

            ],
          ):Offstage(),
          SizedBox(height: 20.0,),
          Container(
            height: width>800?620:width>600?860:740,
            width: double.infinity,
            child: GridView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: widget.itemCount,
              itemBuilder: (context,index ){
                return Container(
                  margin: EdgeInsets.only(left: 5.0),
                  child: ProductCard(
                    height: width>800?580:width>600?300:230,
                  ),
                  // child: Card(color: Colors.green,),
                );


              },
              gridDelegate:  SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: width>1000?1:2,
                mainAxisSpacing: 0.0,
                mainAxisExtent: width>800?width*0.24:width*0.46,

              ),


            ),
          ),
        ],
      ),
    );
  }
}
