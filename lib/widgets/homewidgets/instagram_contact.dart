import 'package:flutter/material.dart';
import 'package:noor_moden/widgets/commons/customButton.dart';

class InstaContact extends StatelessWidget {
  const InstaContact({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
       padding: EdgeInsets.symmetric(vertical: 20.0),
      width: MediaQuery.of(context).size.width,
    color: Theme.of(context).primaryColor,
      alignment: Alignment.center,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Icon(
                Icons.insert_link,
                size: 35,
              ),
                SizedBox(width: 10.0,),
              Text(
                "#NOOR MODEN ON INSTAGRAM",
                style: TextStyle(
                  color: Colors.grey.shade900,
                  fontSize: 18.0,
                  fontWeight:FontWeight.w700
                ),
              ),
            ],
          ),
          SizedBox(height: 10.0,),
          Text(
              "Follow Us to be the first one to see our latest arrivals and see explicit content"
          ),
          Spacer(),
          Container(
            width:180,
            child
                : CustomButton(onpress: (){

            }, text: "VIEW INSTAGRAM", textColor:Colors.white, buttonColor: Colors.black),
          )

        ],
      ),

    );
  }
}
