import 'package:get/get.dart';

class SubMenuController extends GetxController {
  var sideIndex = 0.obs;
  var hideHome = false.obs;
  var detailsPage = false.obs;
  var endDrawerId = 0.obs;
  change(index) {
    sideIndex = index.obs;
  }

  changeEndDrawer(val) {
    endDrawerId(val).obs;
  }

  hide() {
    hideHome = true.obs;
  }

  show() {
    hideHome = false.obs;
  }

  showDetails() {
    detailsPage = true.obs;
  }

  hideDetails() {
    detailsPage = false.obs;
  }
}
