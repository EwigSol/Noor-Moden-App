import 'package:carousel_slider/carousel_options.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
final List<String> imgList = [
  "assets/model1.jpg",
  "assets/model2.jpg",
  "assets/model3.jpg",
  "assets/model4.jpg",
  "assets/model5.jpg",
  ];
class CustomSlider extends StatelessWidget {
   CustomSlider({Key? key}) : super(key: key);
   final List<Widget> imageSliders = imgList
       .map((item) => Container(
         // margin: EdgeInsets.all(5.0),
         child: ClipRRect(
             child: Stack(
               children: <Widget>[
                 Image.asset(item, fit: BoxFit.cover, width: double.infinity,height: 520,),
                 Positioned(
                   bottom: 0.0,
                   left: 0.0,
                   right: 0.0,
                   child: Container(
                     decoration: const BoxDecoration(
                       gradient: LinearGradient(
                         colors: [
                           Color.fromARGB(200, 0, 0, 0),
                           Color.fromARGB(0, 0, 0, 0)
                         ],
                         begin: Alignment.bottomCenter,
                         end: Alignment.topCenter,
                       ),
                     ),
                     padding: const  EdgeInsets.symmetric(
                         vertical: 10.0,horizontal: 20),
                     child: Text(
                       'No. ${imgList.indexOf(item)} image',
                       style:const  TextStyle(
                         color: Colors.white,
                         fontSize: 20.0,
                         fontWeight: FontWeight.bold,
                       ),
                     ),
                   ),
                 ),
               ],
             )),
       ))
       .toList();
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 500,
child: CarouselSlider(
  options: CarouselOptions(
    autoPlay: true,
    enlargeCenterPage: true,

    height: 500,
    aspectRatio: 2.0,

    viewportFraction: 0.999,
    initialPage: 0,
    disableCenter: true,
    enableInfiniteScroll: true,
    reverse: false,
    autoPlayInterval: Duration(seconds: 2),
    autoPlayAnimationDuration: Duration(milliseconds: 700),
    autoPlayCurve: Curves.fastOutSlowIn,
    // onPageChanged: callbackFunction,
    scrollDirection: Axis.horizontal,

  ),
  items: imageSliders,
),
    );
  }
}
