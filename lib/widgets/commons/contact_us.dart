import 'package:flutter/material.dart';
import 'package:noor_moden/widgets/commons/customButton.dart';
import 'package:noor_moden/widgets/commons/custom_filed.dart';
var emailController=TextEditingController();
class ContactUs extends StatelessWidget {

  final List<String> shopList;
  final List<String> customersurvices ;
  final List<String> information;

  const ContactUs({Key? key,required this.shopList,required this.customersurvices,required this.information}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
child:Row(
  mainAxisAlignment: MainAxisAlignment.spaceBetween,
  crossAxisAlignment: CrossAxisAlignment.start,
  children: [
    Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
            children:List.generate(shopList.length, (index) => getColumnText(shopList[index])),
    ),
    Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children:List.generate(customersurvices.length, (index) => getColumnText(customersurvices[index])),
    ),
    Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children:List.generate(information.length, (index) => getColumnText(information[index])),
    ),

    bottomColumn(),

  ],
),
    );
  }
}


getColumnText(String text){
  return Padding(
    padding: EdgeInsets.symmetric(vertical: 4.0,horizontal: 2.0),
    child: Text(
      text,
      style: TextStyle(
        color: Colors.white60,
        fontWeight: FontWeight.w400
      ),
    ),
  );
}

class ContactUsMobile extends StatelessWidget {
  final List<String> shopList;
  final List<String> customersurvices ;
  final List<String> information;
  const ContactUsMobile({Key? key,required this.shopList,required this.customersurvices, required this.information}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ExpansionTile(
            expandedAlignment: Alignment.topLeft,
          iconColor: Colors.white60,
          collapsedIconColor: Colors.white60,
          title: getTitle("SHOP"),
          children:List.generate(shopList.length, (index) => getColumnText(shopList[index])),
        ),
        ExpansionTile(
          title: getTitle("CUSTOMER SERVICE"),
          collapsedIconColor: Colors.white60,
          expandedAlignment: Alignment.topLeft,
          iconColor: Colors.white60,
          children:List.generate(customersurvices.length, (index) => getColumnText(customersurvices[index])),
        ),
        ExpansionTile(
          title: getTitle("INFORMATION"),
          expandedAlignment: Alignment.topLeft,
          collapsedIconColor: Colors.white60,
          iconColor: Colors.white60,
          children:List.generate(information.length, (index) => getColumnText(information[index])),
        ),
        SizedBox(height: 25,),
        bottomColumn(),


      ],

    );
  }
  getTitle(String title){
    return Text(
      title,
      style: TextStyle(
      fontWeight: FontWeight.w600,
        fontSize: 14.0,
        color: Colors.white

    )
    );
  }
}

bottomColumn(){
  var style=TextStyle(color: Colors.white60,fontWeight: FontWeight.w600,fontSize: 14);
 return  Column(
   mainAxisAlignment: MainAxisAlignment.start,
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Text("CONNECT WITH US ",style: style,),
      SizedBox(height: 12.0,),
      Row(
        children: [
          Icon(
            Icons.facebook,
            color: Colors.white60,

          ),
          SizedBox(width:15.0),
          Text("Follow Us On Instagram",style: style.copyWith(fontWeight: FontWeight.w400),),
          SizedBox(height: 12.0,),




        ],
      ),
      SizedBox(height: 20.0,),
      Text("SIGN UP FOR OUR FREE NEWSLETTER",style: style,),
      SizedBox(height: 12.0,),
      Row(
        children: [
          CustomField(
            hint: "enter your email address",
            padding: EdgeInsets.symmetric(horizontal: 10.0,vertical: 10.0),
            maxLins: 1,
            controller: emailController,

          ),
          SizedBox(width: 8.0,),
          CustomButton(onpress: (){

          }, text: "SUBMIT", textColor: Colors.white, buttonColor: Colors.grey.shade800)
        ],
      ),
      SizedBox(height: 15.0,),
      Text("WE SHIP WITH:",style: style,),
      SizedBox(height: 10.0,),

      Image.asset("assets/logo.png",width: 30.0,height: 30.0,),
    ],
  );

}