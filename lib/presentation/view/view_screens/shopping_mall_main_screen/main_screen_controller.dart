import 'package:get/get.dart';

class  ReactiveDistanceController extends GetxController {

  RxBool isSearchBarState = false.obs;

  void focusOn() {
    isSearchBarState.value=true;
  }

  void focusOut(){
    isSearchBarState.value=false;
  }

}