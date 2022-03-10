import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:photo_view/photo_view.dart';
List<String> images=[
  "assets/model6.jpg",
  "assets/model6.1.jpg",
  "assets/model6.2.jpg",
  "assets/model6.3.jpg",
];
List<String> images2=[
  "assets/model7.png",
  "assets/model7.1.png",
  "assets/model7.2.png",
  "assets/model7.3.png",
];
List<String> images3=[
  "assets/model8.png",
  "assets/model8.1.png",
  "assets/model8.2.png",
  "assets/model8.3.png",

];
List<String> images4=[
  "assets/model9.png",
  "assets/model9.1.png",
  "assets/model9.2.png",
  "assets/model9.3.png",

];
Map<String,dynamic> imageMap={
  "red":images,
  "blue":images2,
  "brown":images3,
  "green":images4,
};
List colors=[
 Color(0xff0C1132),
 Color(0xff346B79),
   Color(0xffA08487),
   Color(0xff933845)
];
List sizes=[
  "45",
  "46",
  '42'
];
class ProductDetailsWidget extends StatefulWidget {
  ProductDetailsWidget({Key? key}) : super(key: key);

  @override
  State<ProductDetailsWidget> createState() => _ProductDetailsWidgetState();
}

class _ProductDetailsWidgetState extends State<ProductDetailsWidget> {

  int selectedIndex=1;
  String selectedColor="red";
  late String selectedImage;
  int quantity=0;

  @override
  Widget build(BuildContext context) {
    selectedImage= imageMap[selectedColor][selectedIndex];
    var width=MediaQuery.of(context).size.width;
    var height=MediaQuery.of(context).size.height;
    return SingleChildScrollView(
      child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              margin: EdgeInsets.only(left: 10.0),
              padding: EdgeInsets.all(15.0),
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey.shade700,width: 1)
              ),
              child: Row(

                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: List.generate(imageMap[selectedColor].length, (index) {
                      return Container(
                        margin: EdgeInsets.symmetric(vertical:5,horizontal: 5.0 ),
                        child: InkWell(
                          onTap: (){
                            setState(() {
                              selectedIndex=index;
                              selectedImage=imageMap[selectedColor][selectedIndex];
                            });

                          },

                          child: Image.asset(imageMap[selectedColor][index],height: height*0.22,fit: BoxFit.contain,),
                        ),
                      );
                    }),
                  ),
SizedBox(width: 5.0,),
                  Container(
                    height: height*0.9,
                    width: width*0.30,
                    child: InkWell(
                      onTap:(){
                        showAlertDialog(context, selectedImage, height, width

                        );
                      },
                      child: Container(
                        height: height*0.9,
                        width: width*0.30,
                        child: Image.asset(selectedImage,width: width*0.30,fit: BoxFit.cover,),
                      ),
                    ),
                  )
                ],
              ),
            ),
            SizedBox(width: 40.0,),
            Container(
              width: width*0.45,
                child:Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                     Text("Refined cocktail Dress with 1/2 Arms",style: Theme.of(context).textTheme.headline1,) ,
                    SizedBox(height: 20.0),
                    Text("Product Code:   2015kh",) ,
                    SizedBox(height: 10.0),
                    Text("Availability:         Out Of Stock",) ,
                    SizedBox(height: 10.0),
                    Text("Please login to view price and shop online",style: TextStyle(
                      color: Colors.blue,
                      fontWeight: FontWeight.w600
                    ),) ,
                    SizedBox(height: 10.0),
                    Text("Colors *",
                    ) ,
                    SizedBox(height: 5.0),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: List.generate(colors.length, (index) {
                        return InkWell(
                            onTap: (){
                              setState(() {
                                selectedIndex=0;
                                selectedColor=imageMap.keys.elementAt(index);

                              });

                            },
                            child: Padding(
                              padding: EdgeInsets.symmetric(horizontal: 10.0),
                              child:Container(

                                height: 25,
                                width: 25,
                                decoration: BoxDecoration(
                                    color: colors[index],
                                    shape: BoxShape.circle
                                ),
                              ),
                              // Text("${imageMap.keys.elementAt(index).toString()}")),
                            ));
                      }
                      ) ,
                    ),
                    SizedBox(height: 15.0),
                    Text("Size *",
                    ) ,
                    SizedBox(height: 10.0),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: List.generate(sizes.length, (index) {
                        return InkWell(
                            onTap: (){
                              setState(() {
                                // selectedIndex=0;
                                // selectedColor=imageMap.keys.elementAt(index);

                              });

                            },
                            child: Padding(
                              padding: EdgeInsets.symmetric(horizontal: 10.0),
                              child:Text(sizes[index])
                              // Text("${imageMap.keys.elementAt(index).toString()}")),
                            ));
                      }
                      ) ,
                    ),

                    SizedBox(height: 20.0,),
                    Row(
                      children: [
                        Container(
                          width: 40,
                          height: 40,
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.grey.shade700)
                          ),
                          child: InkWell(
                            onTap: (){
                              setState(() {
                                if(quantity>1) {
                                  quantity--;
                                }
                              });
                            },
                            child: Icon(Icons.remove,color: Colors.grey.shade600,),
                          ),
                        ),
                        Container(
                          width: 70,
                          height: 40,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.grey.shade600)
                          ),
                       child: Text(
                         quantity.toString(),
                       ),
                        ),
                        Container(
                          width: 40,
                          height: 40,
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.grey.shade600)
                          ),
                          child: InkWell(
                            onTap: (){
                              setState(() {
                                if(quantity<10) {
                                  quantity++;
                                }
                              });
                            },
                            child: Icon(Icons.add,color: Colors.grey.shade800,),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 15.0,),
                    Text("PRODUCT DESCRIPTION",style: Theme.of(context).textTheme.headline1,) ,
                    SizedBox(height: 15.0,),
                    Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit, "
                        "sed do eiusmod tempor incididunt ut labore et dolore magna "
                        "aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco "
                        "laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit "
                        "in voluptate velit esse cillum dolore eu fugiat nulla pariatur."
                        " Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",) ,

                    SizedBox(height: 15.0,),
                    Text("PRODUCT DETAILS",style: Theme.of(context).textTheme.headline1,) ,
                    SizedBox(height: 15.0,),

                  ],
                )

            ),
          ] ),
    );
  }
  showAlertDialog(BuildContext context,imagePath,height,width) {


    // set up the AlertDialog
    AlertDialog alert =

    AlertDialog(
      backgroundColor: Colors.white,
      content: Stack(
        children: [
          Container(
            height: height*0.7,
            width: width*0.5,
            child: PhotoView(
              backgroundDecoration: BoxDecoration(
                  color: Colors.white
              ),
              imageProvider: AssetImage(imagePath),
              customSize: Size(width*0.5,height*0.7),
              enableRotation: true,
              gaplessPlayback: true,

            ),
          ),
        ],
      ),
    );
    showDialog(
        context: context,
           builder: (BuildContext context){
          return alert;
           }

    );
  }
}