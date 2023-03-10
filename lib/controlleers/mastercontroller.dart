import 'package:get/get.dart';

class MasterController extends GetxController {
  var tabIndex = 0.obs;
  var feedIndex = 0.obs;

  void changefeedindex(int index) {
    tabIndex.value = index;
  }

  void changeTabindex(int index) {
    tabIndex.value = index;
  }

  void changetoindex(int index) {
    tabIndex.value = index;
  }

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
  }
}
