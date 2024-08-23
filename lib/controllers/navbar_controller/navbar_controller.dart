import 'package:get/get.dart';

class NavbarController extends GetxController{
  var selectedIndex = 0.obs;
  void onTapped(int index)
  {
    selectedIndex.value = index;
  }

}