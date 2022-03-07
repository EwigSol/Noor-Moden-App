import 'package:get/get.dart';

class SubMenuController  extends  GetxController{
  var sideIndex=0.obs;
  var hideHome=false.obs;
  var detailsPage=false.obs;
  change(index){
    sideIndex=index.obs;
  }
 hide(){
    hideHome=true.obs;
 }
 show(){
    hideHome=false.obs;
 }

showDetails(){
    detailsPage=true.obs;
}
hideDetails(){
    detailsPage=false.obs;
}
}