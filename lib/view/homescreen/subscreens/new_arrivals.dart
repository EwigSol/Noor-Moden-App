import 'package:flutter/material.dart';

import '../../../widgets/commons/product_card.dart';

class TypeProducts extends StatefulWidget {
  final String title;
  final String type;
  const TypeProducts({Key? key,required this.title,required this.type}) : super(key: key);

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
          Row(
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
          ),
          SizedBox(height: 20.0,),
          Container(
            height: width>800?620:width>600?860:740,
            width: double.infinity,
            child: GridView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: 4,
              itemBuilder: (context,index){
                return Container(
                  margin: EdgeInsets.only(left: 5.0),
                  child: ProductCard(
                    height: width>800?580:width>600?300:230,
                  ),
                  // child: Card(color: Colors.green,),
                );


              },
              gridDelegate:  SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: width>800?1:2,
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
