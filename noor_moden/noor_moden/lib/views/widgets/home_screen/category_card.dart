// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
//
// class CategoryCard extends StatefulWidget {
//   String?  imageUrl;
//   String?  title;
//   String? bgImageUrl;
//    CategoryCard({Key? key,this.imageUrl,this.title,this.bgImageUrl}) : super(key: key);
//
//   @override
//   State<CategoryCard> createState() => _CategoryCardState();
// }
//
// class _CategoryCardState extends State<CategoryCard> {
//   bool isHover=false;
//   double elevation = 4.0;
//   double scale = 1.0;
//   Offset translate = Offset(0,0);
//   @override
//   Widget build(BuildContext context) {
//     return Card(
//       margin: EdgeInsets.all(10.0),
//           child: Stack(
//             children: [
//             InkWell(
//               onHover: (value){
//                 print(value);
//                 if(value){
//                   setState((){
//                     elevation = 20.0;
//                     scale = 2.0;
//                     translate = Offset(20,20);
//                   });
//                 }else{
//                   setState((){
//                     elevation = 4.0;
//                     scale = 1.0;
//                     translate = Offset(0,0);
//                   });
//                 }
//               },
//               child: Transform.translate(
//               offset: translate ,
//               child: Transform.scale(
//                 scale: scale,
//                 child: Material(
//                   elevation: elevation,
//                   child: Image.asset(
//                     widget.imageUrl!,
//                     // fit: BoxFit.fill,
//                   ),
//                 ),
//               ),
//               ),
//             ),
//               Align(
//                 alignment: Alignment.centerLeft,
//                 child: Padding(
//                   padding: EdgeInsets.only(left: 8.0),
//                   child: Text(
//                     widget.title!,
//                     style: Theme.of(context).textTheme.headline1!.copyWith(color: Colors.white),
//                   ),
//                 ),
//               ),
//             ],
//           ),
//     );
//   }
// }
