import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:noor_moden/widgets/commons/customButton.dart';
import 'package:photo_view/photo_view.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../widgets/commons/product_card.dart';

List<String> images = [
  "assets/model6.jpg",
  "assets/model6.1.jpg",
  "assets/model6.2.jpg",
  "assets/model6.3.jpg",
];
List<String> images2 = [
  "assets/model7.png",
  "assets/model7.1.png",
  "assets/model7.2.png",
  "assets/model7.3.png",
];
List<String> images3 = [
  "assets/model8.png",
  "assets/model8.1.png",
  "assets/model8.2.png",
  "assets/model8.3.png",
];
List<String> images4 = [
  "assets/model9.png",
  "assets/model9.1.png",
  "assets/model9.2.png",
  "assets/model9.3.png",
];
Map<String, dynamic> imageMap = {
  "red": images,
  "blue": images2,
  "brown": images3,
  "green": images4,
};
List colors = [
  Color(0xff0C1132),
  Color(0xff346B79),
  Color(0xffA08487),
  Color(0xff933845)
];
List sizes = ["45", "46", '42'];

class ProductDetailsWidget extends StatefulWidget {
  ProductDetailsWidget({Key? key}) : super(key: key);

  @override
  State<ProductDetailsWidget> createState() => _ProductDetailsWidgetState();
}

class _ProductDetailsWidgetState extends State<ProductDetailsWidget> {
  int selectedIndex = 1;
  String selectedColor = "red";
  late String selectedImage;
  int quantity = 0;
  bool isLogin = false;
  getUserStatus() async {
    print(" in get user state ");
    SharedPreferences preferences = await SharedPreferences.getInstance();
    print("login value: ${preferences.getString("name")!}");
    setState(() {
      isLogin = preferences.getBool("logedIn")!;
    });
  }

  @override
  void initState() {
    // TODO: implement initState

    super.initState();
    getUserStatus();
  }

  @override
  Widget build(BuildContext context) {
    selectedImage = imageMap[selectedColor][selectedIndex];
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return SingleChildScrollView(
      child: Column(
        children: [
          width > 800
              ? Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                      Container(
                        margin: EdgeInsets.only(left: 10.0),
                        // padding: EdgeInsets.all(15.0),
                        decoration: BoxDecoration(
                            border: Border.all(
                                color: Colors.grey.shade700, width: 1)),
                        child: Row(
                          children: [
                            Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: List.generate(
                                  imageMap[selectedColor].length, (index) {
                                return Container(
                                  // margin:
                                  //     EdgeInsets.symmetric(vertical: 5, horizontal: 5.0),
                                  child: InkWell(
                                    onTap: () {
                                      setState(() {
                                        selectedIndex = index;
                                        selectedImage = imageMap[selectedColor]
                                            [selectedIndex];
                                      });
                                    },
                                    child: Image.asset(
                                      imageMap[selectedColor][index],
                                      height: height * 0.225,
                                      fit: BoxFit.contain,
                                    ),
                                  ),
                                );
                              }),
                            ),
                            // SizedBox(
                            //   width: 5.0,
                            // ),
                            Container(
                              // color: Colors.red,
                              height: height * 0.9,
                              width: width > 800 ? width * 0.30 : width * 0.5,
                              child: InkWell(
                                onTap: () {
                                  showAlertDialog(
                                      context, selectedImage, height, width);
                                },
                                child: Container(
                                  color: Colors.transparent,
                                  height: height * 0.9,
                                  width:
                                      width > 800 ? width * 0.30 : width * 0.5,
                                  child: Image.asset(
                                    selectedImage,
                                    width: width * 0.30,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                      SizedBox(
                        width: width * 0.05,
                      ),
                      Container(
                          width: width * 0.42,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Refined cocktail Dress with 1/2 Arms",
                                style: Theme.of(context).textTheme.headline1,
                              ),
                              SizedBox(height: 20.0),
                              Text(
                                "Product Code:   2015kh",
                              ),
                              SizedBox(height: 10.0),
                              Text(
                                "Availability:         In  Stock",
                              ),
                              SizedBox(height: 10.0),
                              Text(
                                "Please login to view price and shop online",
                                style: TextStyle(
                                    color: Colors.blue,
                                    fontWeight: FontWeight.w600),
                              ),
                              SizedBox(height: 10.0),
                              Text(
                                "Colors *",
                              ),
                              SizedBox(height: 5.0),
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: List.generate(colors.length, (index) {
                                  return InkWell(
                                      onTap: () {
                                        setState(() {
                                          selectedIndex = 0;
                                          selectedColor =
                                              imageMap.keys.elementAt(index);
                                        });
                                      },
                                      child: Padding(
                                        padding: EdgeInsets.symmetric(
                                            horizontal: 10.0),
                                        child: Container(
                                          height: 25,
                                          width: 25,
                                          decoration: BoxDecoration(
                                              color: colors[index],
                                              shape: BoxShape.circle),
                                        ),
                                        // Text("${imageMap.keys.elementAt(index).toString()}")),
                                      ));
                                }),
                              ),
                              SizedBox(height: 15.0),
                              Text(
                                "Size *",
                              ),
                              SizedBox(height: 10.0),
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: List.generate(sizes.length, (index) {
                                  return InkWell(
                                      onTap: () {
                                        setState(() {
                                          // selectedIndex=0;
                                          // selectedColor=imageMap.keys.elementAt(index);
                                        });
                                      },
                                      child: Padding(
                                          padding: EdgeInsets.symmetric(
                                              horizontal: 10.0),
                                          child: Text(sizes[index])
                                          // Text("${imageMap.keys.elementAt(index).toString()}")),
                                          ));
                                }),
                              ),
                              SizedBox(
                                height: 20.0,
                              ),
                              Row(
                                children: [
                                  Container(
                                    width: 40,
                                    height: 40,
                                    decoration: BoxDecoration(
                                        border: Border.all(
                                            color: Colors.grey.shade700)),
                                    child: InkWell(
                                      onTap: () {
                                        setState(() {
                                          if (quantity > 1) {
                                            quantity--;
                                          }
                                        });
                                      },
                                      child: Icon(
                                        Icons.remove,
                                        color: Colors.grey.shade600,
                                      ),
                                    ),
                                  ),
                                  Container(
                                    width: 70,
                                    height: 40,
                                    alignment: Alignment.center,
                                    decoration: BoxDecoration(
                                        border: Border.all(
                                            color: Colors.grey.shade600)),
                                    child: Text(
                                      quantity.toString(),
                                    ),
                                  ),
                                  Container(
                                    width: 40,
                                    height: 40,
                                    decoration: BoxDecoration(
                                        border: Border.all(
                                            color: Colors.grey.shade600)),
                                    child: InkWell(
                                      onTap: () {
                                        setState(() {
                                          if (quantity < 10) {
                                            quantity++;
                                          }
                                        });
                                      },
                                      child: Icon(
                                        Icons.add,
                                        color: Colors.grey.shade800,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(
                                height: 15.0,
                              ),
                              !isLogin
                                  ? Container(
                                      width: 160,
                                      height: 40,
                                      child: CustomButton(
                                        textColor: Colors.white,
                                        text: "Add To Cart",
                                        buttonColor: Colors.black,
                                        onpress: () {
                                          print("add to card button pressed");
                                        },
                                      ),
                                    )
                                  : Offstage(),
                              const SizedBox(
                                height: 15.0,
                              ),
                              Text(
                                "PRODUCT DESCRIPTION",
                                style: Theme.of(context).textTheme.headline1,
                              ),
                              SizedBox(
                                height: 15.0,
                              ),
                              Text(
                                  "This cocktail dress looks like a two piece piece consisting of"
                                  " a blouse and a tight skirt. The top, which is cut like a"
                                  " blouse with ½ sleeves, is made of chiffon, which is underlaid"
                                  " in the chest and back area so that it is not transparent. The "
                                  "skirt part is made of a hole point, which is underlaid with a "
                                  "satin fabric. There is a zipper on the side under the arm for"
                                  " easier on and off. The dress is made of 100% polyester. "),
                              SizedBox(
                                height: 15.0,
                              ),
                              Text(
                                "PRODUCT DETAILS",
                                style: Theme.of(context).textTheme.headline1,
                              ),
                              SizedBox(
                                height: 15.0,
                              ),
                              Text(
                                  "Satin \n\n Lace\n\n Chiffon\n\n Zipper\n\n 100% Polyester"),
                              SizedBox(
                                height: 15.0,
                              ),
                            ],
                          )),
                    ])
              : Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                      Container(
                        margin: EdgeInsets.only(left: 10.0, right: 10),
                        // padding: EdgeInsets.all(15.0),
                        decoration: BoxDecoration(
                            border: Border.all(
                                color: Colors.grey.shade700, width: 1)),
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: List.generate(
                                  imageMap[selectedColor].length, (index) {
                                return Container(
                                  width: width * 0.23,
                                  // margin:
                                  //     EdgeInsets.symmetric(vertical: 5, horizontal: 5.0),
                                  child: InkWell(
                                    onTap: () {
                                      setState(() {
                                        selectedIndex = index;
                                        selectedImage = imageMap[selectedColor]
                                            [selectedIndex];
                                      });
                                    },
                                    child: Image.asset(
                                      imageMap[selectedColor][index],
                                      // width: width * 0.225,
                                      height: 150,

                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                );
                              }),
                            ),
                            // SizedBox(
                            //   width: 5.0,
                            // ),
                            Container(
                              // color: Colors.red,
                              height: height * 0.9,
                              width: width * .92,
                              child: InkWell(
                                onTap: () {
                                  showAlertDialog(
                                      context, selectedImage, height, width);
                                },
                                child: Container(
                                  color: Colors.transparent,
                                  height: height * 0.9,
                                  width: width * 0.92,
                                  child: Image.asset(
                                    selectedImage,
                                    width: width * 0.92,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                      SizedBox(
                        height: height * 0.05,
                      ),
                      Container(
                          width: width * 0.8,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Refined cocktail Dress with 1/2 Arms",
                                style: Theme.of(context).textTheme.headline1,
                              ),
                              SizedBox(height: 20.0),
                              Text(
                                "Product Code:   2015kh",
                              ),
                              SizedBox(height: 10.0),
                              Text(
                                "Availability:         Out Of Stock",
                              ),
                              SizedBox(height: 10.0),
                              Text(
                                "Please login to view price and shop online",
                                style: TextStyle(
                                    color: Colors.blue,
                                    fontWeight: FontWeight.w600),
                              ),
                              SizedBox(height: 10.0),
                              Text(
                                "Colors *",
                              ),
                              SizedBox(height: 5.0),
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: List.generate(colors.length, (index) {
                                  return InkWell(
                                      onTap: () {
                                        setState(() {
                                          selectedIndex = 0;
                                          selectedColor =
                                              imageMap.keys.elementAt(index);
                                        });
                                      },
                                      child: Padding(
                                        padding: EdgeInsets.symmetric(
                                            horizontal: 10.0),
                                        child: Container(
                                          height: 25,
                                          width: 25,
                                          decoration: BoxDecoration(
                                              color: colors[index],
                                              shape: BoxShape.circle),
                                        ),
                                        // Text("${imageMap.keys.elementAt(index).toString()}")),
                                      ));
                                }),
                              ),
                              SizedBox(height: 15.0),
                              Text(
                                "Size *",
                              ),
                              SizedBox(height: 10.0),
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: List.generate(sizes.length, (index) {
                                  return InkWell(
                                      onTap: () {
                                        setState(() {
                                          // selectedIndex=0;
                                          // selectedColor=imageMap.keys.elementAt(index);
                                        });
                                      },
                                      child: Padding(
                                          padding: EdgeInsets.symmetric(
                                              horizontal: 10.0),
                                          child: Text(sizes[index])
                                          // Text("${imageMap.keys.elementAt(index).toString()}")),
                                          ));
                                }),
                              ),
                              SizedBox(
                                height: 20.0,
                              ),
                              Row(
                                children: [
                                  Container(
                                    width: 40,
                                    height: 40,
                                    decoration: BoxDecoration(
                                        border: Border.all(
                                            color: Colors.grey.shade700)),
                                    child: InkWell(
                                      onTap: () {
                                        setState(() {
                                          if (quantity > 1) {
                                            quantity--;
                                          }
                                        });
                                      },
                                      child: Icon(
                                        Icons.remove,
                                        color: Colors.grey.shade600,
                                      ),
                                    ),
                                  ),
                                  Container(
                                    width: 70,
                                    height: 40,
                                    alignment: Alignment.center,
                                    decoration: BoxDecoration(
                                        border: Border.all(
                                            color: Colors.grey.shade600)),
                                    child: Text(
                                      quantity.toString(),
                                    ),
                                  ),
                                  Container(
                                    width: 40,
                                    height: 40,
                                    decoration: BoxDecoration(
                                        border: Border.all(
                                            color: Colors.grey.shade600)),
                                    child: InkWell(
                                      onTap: () {
                                        setState(() {
                                          if (quantity < 10) {
                                            quantity++;
                                          }
                                        });
                                      },
                                      child: Icon(
                                        Icons.add,
                                        color: Colors.grey.shade800,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 15.0,
                              ),
                              Text(
                                "PRODUCT DESCRIPTION",
                                style: Theme.of(context).textTheme.headline1,
                              ),
                              SizedBox(
                                height: 15.0,
                              ),
                              Text(
                                  "This cocktail dress looks like a two piece piece consisting of"
                                  " a blouse and a tight skirt. The top, which is cut like a"
                                  " blouse with ½ sleeves, is made of chiffon, which is underlaid"
                                  " in the chest and back area so that it is not transparent. The "
                                  "skirt part is made of a hole point, which is underlaid with a "
                                  "satin fabric. There is a zipper on the side under the arm for"
                                  " easier on and off. The dress is made of 100% polyester. "),
                              SizedBox(
                                height: 15.0,
                              ),
                              Text(
                                "PRODUCT DETAILS",
                                style: Theme.of(context).textTheme.headline1,
                              ),
                              SizedBox(
                                height: 15.0,
                              ),
                              Text(
                                  "Satin \n\n Lace\n\n Chiffon\n\n Zipper\n\n 100% Polyester"),
                              SizedBox(
                                height: 15.0,
                              ),
                            ],
                          )),
                    ]),
          SizedBox(
            height: 10.0,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 15),
            child: Divider(
              color: Colors.grey.shade600,
            ),
          ),
          SizedBox(
            height: 25.0,
          ),
          Align(
            alignment: Alignment.topLeft,
            child: Padding(
              padding: EdgeInsets.only(left: 8.0),
              child: Text(
                "RELATED PRODUCTS",
                style: Theme.of(context).textTheme.headline1,
              ),
            ),
          ),
          SizedBox(
            height: 12.0,
          ),
          Container(
            height: width > 1000
                ? 620
                : width > 600
                    ? 860
                    : 740,
            width: double.infinity,
            child: GridView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: 8,
              itemBuilder: (context, index) {
                return Container(
                  margin: EdgeInsets.only(left: 5.0),
                  child: ProductCard(
                    height: width > 1000
                        ? 580
                        : width > 600
                            ? 300
                            : 230,
                  ),
                  // child: Card(color: Colors.green,),
                );
              },
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: width > 1000 ? 1 : 2,
                mainAxisSpacing: 0.0,
                mainAxisExtent: width > 800
                    ? width * 0.24
                    : width > 600
                        ? width * 0.35
                        : width * 0.4,
              ),
            ),
          ),
          SizedBox(
            height: 10.0,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 15),
            child: Divider(
              color: Colors.grey.shade600,
            ),
          ),
          SizedBox(
            height: 25.0,
          ),
          Align(
            alignment: Alignment.topLeft,
            child: Padding(
              padding: EdgeInsets.only(left: 8.0),
              child: Text(
                "RECENTLY VIEWED PRODUCTS",
                style: Theme.of(context).textTheme.headline1,
              ),
            ),
          ),
          SizedBox(
            height: 12.0,
          ),
          Container(
            height: width > 1000
                ? 620
                : width > 600
                    ? 860
                    : 740,
            width: double.infinity,
            child: GridView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: 3,
              itemBuilder: (context, index) {
                return Container(
                  margin: EdgeInsets.only(left: 5.0),
                  child: ProductCard(
                    height: width > 1000
                        ? 580
                        : width > 600
                            ? 300
                            : 230,
                  ),
                  // child: Card(color: Colors.green,),
                );
              },
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: width > 1000 ? 1 : 2,
                mainAxisSpacing: 0.0,
                mainAxisExtent: width > 800
                    ? width * 0.24
                    : width > 600
                        ? width * 0.35
                        : width * 0.4,
              ),
            ),
          ),
        ],
      ),
    );
  }

  showAlertDialog(BuildContext context, imagePath, height, width) {
    // set up the AlertDialog
    AlertDialog alert = AlertDialog(
      backgroundColor: Colors.white,
      content: Stack(
        children: [
          Container(
            height: height * 0.7,
            width: width * 0.5,
            child: PhotoView(
              backgroundDecoration: BoxDecoration(color: Colors.white),
              imageProvider: AssetImage(imagePath),
              customSize: Size(width * 0.5, height * 0.7),
              enableRotation: true,
              gaplessPlayback: true,
            ),
          ),
        ],
      ),
    );
    showDialog(
        context: context,
        builder: (BuildContext context) {
          return alert;
        });
  }
}
