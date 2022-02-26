import 'package:flutter/material.dart';
import 'package:noor_moden/constants.dart';
import 'package:noor_moden/helper/on_hover_affect.dart';

class ProductCard extends StatefulWidget {
final double height;
  const ProductCard({Key? key,required this.height}) : super(key: key);

  @override
  ProductCardState createState() => ProductCardState();
}

class ProductCardState extends State<ProductCard> {
  List allColors=[Colors.brown,Colors.blue,Colors.amber];
  int selectedColor=0;
  @override
  Widget build(BuildContext context) {
    return singleItem(Images,"Noor Moden","beautiful evening dress made of tulle",1,widget.height);

  }
  Widget singleItem(List<String> bgImg,String headingText,String normalText, int colorIndex,double height){
    return  OnHover(
      val: -8.0,
      isProduct: true,
        isDrawer: false,
      builder: (ishover) {
        return Card(
          elevation: ishover?6.0:3.0,
          child: Container(
            height: height,
            padding: EdgeInsets.all(5),
            alignment: Alignment.center,

            decoration: const BoxDecoration(
                color: Colors.white,
            ),
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
            Container(
            height: height*0.7,
            decoration: BoxDecoration(
                image: DecorationImage(image: AssetImage(
                  bgImg[selectedColor],
                ),
                    fit: BoxFit.cover)
            ),
            child:    Column(
              children: [
                Container(
                  margin: EdgeInsets.only(left: 13,right: 13,top: 13),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      button2("New"),
                      Icon(
                        Icons.favorite_border,
                        size: 25,
                        color: Colors.black38,
                      )
                    ],
                  ),
                ),
                Expanded(
                  child:Container(
                    alignment: Alignment.bottomLeft,
                    margin: EdgeInsets.only(left: 30,right: 30,bottom: 30),
                    child: Container(
                      // margin: EdgeInsets.only(left: 13,right: 13,top: 13),
                      width: 30,
                      height: 30,
                      decoration:  const BoxDecoration(
                          image: DecorationImage(image: AssetImage("assets/logo.png"),
                              fit: BoxFit.fill)
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
          color: Colors.black,
          width:double.infinity,
          height: 30,
          child: Icon(Icons.play_circle_fill,color: Colors.red,),
          ),
          SizedBox(
          height: 5,
          ),
          Text(headingText,style: TextStyle(
          fontSize: 15,
          fontWeight: FontWeight.bold
          ),),
          SizedBox(
          height: 5,
          ),
          Container(
          margin: EdgeInsets.only(left: 10,right: 10),
          child: Text(normalText,
          textAlign: TextAlign.center,
          style: TextStyle(
          fontSize: 13,
          fontWeight: FontWeight.normal
          ),),
          ),
          Container(
          alignment: Alignment.center,
          height: 40,
          child: ListView.separated(
          shrinkWrap: true,
          scrollDirection: Axis.horizontal,
          itemBuilder: (_,index)=>singleColor(allColors[index],index),
          separatorBuilder: (_,index)=> SizedBox(width: 4,),
          itemCount: allColors.length),
          ),
          SizedBox(
          height: 5,
          ),
          button("Select Options")
          ],
          ),
          ),
        );
      }
    );
  }


  Widget button(String text){
    return Container(
      height: 30,
      // width: 100,
      child: OutlinedButton(onPressed: (){

      },
        style: OutlinedButton.styleFrom(
            side: BorderSide(color:Colors.black)
        ),
        child: Text(text,style: TextStyle(
            fontSize: 11,
            fontFamily: 'Montserrat-Regular',
            color:Colors.grey
        ),
        ),
      ),
    );
  }

  Widget singleColor(allColor, int index){
    return  InkWell(
      onTap: (){
        setState(() {
          selectedColor=index;
        });
      },
      child: Container(
        alignment: Alignment.center,
        // margin: EdgeInsets.only(left: 13,right: 13,top: 13),
        width: 26,
        height: 26,
        decoration:   BoxDecoration(
            color: allColor,
            shape: BoxShape.circle,
            border: Border.all(color:selectedColor==index?Colors.redAccent :Colors.black,
                width: selectedColor==index?2:1)
        ),
      ),
    );
  }
  Widget button2(String text){
    return SizedBox(
      height: 25,
      // width: 100,
      child: RaisedButton(onPressed: (){

      },
        color: Colors.blue,
        child: Text(text,style: TextStyle(
            fontSize: 11,
            fontFamily: 'Montserrat-Regular',
            color:Colors.white
        ),
        ),
      ),
    );
  }
}