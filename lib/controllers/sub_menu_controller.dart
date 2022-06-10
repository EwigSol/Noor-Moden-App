import 'package:get/get.dart';

class SubMenuController  extends  GetxController{
  var sideIndex=0.obs;
  var hideHome=false.obs;
  change(index){
    sideIndex=index.obs;
  }
 hide(){
    hideHome=true.obs;
 }
 show(){
    hideHome=false.obs;
 }



}