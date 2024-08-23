import 'package:get/get.dart';

class FloatingController extends GetxController{
  RxBool isFloating = false.obs;
  void onFloating()
  {
    isFloating.value = !isFloating.value;
  }
}