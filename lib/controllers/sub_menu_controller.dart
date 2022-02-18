import 'package:get/get.dart';

class SubMenuController  extends  GetxController{
  var sideIndex=0.obs;
  change(index){
    sideIndex=index.obs;
  }


}