import 'package:get/get.dart';

class SizeChart extends GetxController {
  RxDouble searchBarHint = 23.0.obs;
  RxDouble bottomNavigationBarLabelSize = 12.0.obs;
  RxDouble sizedBoxHeight = 10.0.obs;
  RxDouble mainTitleFontSize = 18.0.obs;
  RxDouble subTitleFontSize = 15.0.obs;
  RxDouble heartButtonHeight = 24.0.obs;


  void updateSearchBarHint(double value){
    searchBarHint.value = value;
  }
  void updateBottomNavigationBarLabelSize (double value){
    bottomNavigationBarLabelSize.value = value;
  }
  void updateSizedBoxHeight(double value){
    sizedBoxHeight.value = value;
  }
  void updateMainTitleFontSize(double value){
    mainTitleFontSize.value = value;
  }
  void updateSubTitleFontSize(double value){
    subTitleFontSize.value = value;
  }
  void updateHeartButtonSize(double value){
    heartButtonHeight.value = value;
  }
}
