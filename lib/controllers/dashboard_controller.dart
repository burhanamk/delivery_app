import 'package:get/get.dart';


class DashboardController extends GetxController{
  static DashboardController instance = Get.find();

  Rx<bool> loading = false.obs;
  var versionName = ''.obs;
  Rx<int> selectedIndex = 0.obs;



  void onItemTapped(int index) {
    selectedIndex(index);
  }


}