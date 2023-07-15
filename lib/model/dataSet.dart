import 'package:get/get.dart';

class Jobs extends GetxController {
  int id;
  String jobTitle;
  String typeOfCare;
  String payment;
  String informationImage;
  String careProvidersName;
  String transportationExpenses;
  String address;
  String dayOFTheWeek;
  Jobs(
      {
        required this.id,
      required this.jobTitle,
      required this.typeOfCare,
      required this.payment,
      required this.informationImage,
      required this.address,
      required this.careProvidersName,
      required this.transportationExpenses,
      required this.dayOFTheWeek});

  void handleLike(){}
}
