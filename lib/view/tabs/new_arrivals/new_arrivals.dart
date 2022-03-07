import 'package:flutter/material.dart';
import 'package:noor_moden/view/homescreen/subscreens/new_arrivals.dart';
import 'package:noor_moden/widgets/tabs/top_container.dart';

class NewArrivals extends StatefulWidget {
  const NewArrivals({Key? key}) : super(key: key);

  @override
  _NewArrivalsState createState() => _NewArrivalsState();
}

class _NewArrivalsState extends State<NewArrivals> {
  @override
  Widget build(BuildContext context) {
    return Container(
           child: Column(
             children: [
               TopContainer(title: "NEWARRIVALS"),
               SizedBox(height: 30,),
               TypeProducts(title: "NEW ARRIVALS", type: "new",isShowBanner: false,itemCount: 8,

               )
             ],
           ),
    );
  }
}
