import 'package:flutter/material.dart';

import '../../../models/Images_Model.dart';

class NewestArrivals extends StatefulWidget {
  final String title;
  final String imageUrl;
  final String type;
  List<ImagesModel> imageModel;
   NewestArrivals({Key? key,required this.title,required this.type,required this.imageUrl,required this.imageModel}) : super(key: key);

  @override
  _NewestArrivalsState createState() => _NewestArrivalsState();
}

class _NewestArrivalsState extends State<NewestArrivals> {

  /*List<String> images=[
    "assets/dress1.jpg",

    "assets/dress2.jpg",

    "assets/dress1.jpg",
  ];*/
  @override
  Widget build(BuildContext context) {
    var width=MediaQuery.of(context).size.width;
    return Container(
      alignment:Alignment.center,
      padding: EdgeInsets.all(10.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
         MaterialButton(
           padding: EdgeInsets.symmetric(horizontal: 25.0,vertical: 15.0),
           color: Colors.black87,
             onPressed: (){

         },

         child: Text(
      widget.title,
      style: Theme.of(context).textTheme.headline1!.copyWith(color: Colors.white),


    ),
         ),
          SizedBox(height: 20.0,),
          Container(
            height: width>800?300:width>600?250:200,
            width: double.infinity,
            child: GridView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: widget.imageModel.length ,
              itemBuilder: (context,index){


               return  Container(
                  alignment: Alignment.bottomRight,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.topRight,
                      end: Alignment.bottomLeft,
                      colors: [
                        Colors.brown.withOpacity(0.8),
                        Colors.brown.withOpacity(0.2),
                      ],
                    ),
                  ),
                  child:  Stack(
                          children: [
                            Align(
                              alignment: Alignment.center,
                              child:Image.network(widget.imageModel[index].bgImage!,
                                height:double.infinity,
                                fit: BoxFit.cover,
                                width: double.infinity,
                                // width: hover ? 280 : 230
                              ),
                            ),
                            Container(
                              height: double.infinity,
                              width: double.infinity,

                              padding: EdgeInsets.only(left: 10.0),
                              alignment: Alignment.centerLeft,
                              margin: EdgeInsets.all(12.0),
                              decoration: BoxDecoration(
                                border: Border.all(color: Colors.brown, width: 3.0),
                              ),
                              child: index==1?MaterialButton(onPressed: (){

                              },
                                color: Colors.black,
                              padding: EdgeInsets.symmetric(horizontal: 10.0,vertical: 8.0),
                                child: Text("Shop Now",style: TextStyle(color: Colors.white),),

                              ):Offstage(),
                            ),
                          ],
                        )

                );



              },
              gridDelegate:  SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 1,
                mainAxisSpacing: 8.0,
                mainAxisExtent: width*0.315,

              ),


            ),
          ),
        ],
      ),
    );
  }
}
