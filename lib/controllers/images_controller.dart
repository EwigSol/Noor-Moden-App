import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:get/get.dart';
import 'package:noor_moden/models/Images_Model.dart';

class ImagesController extends GetxController {

  late List<ImagesModel> bannerImagesList;
  late List<ImagesModel> feautreImagesList;
  late List<ImagesModel> newArrivalImagesList;
  var isDataLoading = false.obs;
  @override
  void onInit() {
    super.onInit();
    getImages();
  }

  getImages() async {
    isDataLoading.value = true;
    FirebaseFirestore.instance.collection('images').get().then((value) {
      bannerImagesList = [];
      feautreImagesList = [];
      newArrivalImagesList = [];
      for (var element in value.docs) {
        ImagesModel imagesModel = ImagesModel.fromJson(element.data());
         if(imagesModel.imageCat == 'banner'){
           bannerImagesList.add(imagesModel);
         }else if(imagesModel.imageCat == 'feature'){
           feautreImagesList.add(imagesModel);
         }else {
           newArrivalImagesList.add(imagesModel);
         }

   //  print(bannerImagesList[0].title);
     print(feautreImagesList);
     print(newArrivalImagesList);

      }
      isDataLoading.value = false;
    });
  }

}