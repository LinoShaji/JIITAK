import 'package:get/get.dart';
import 'package:jiitak/model/dataSet.dart';

class DataSet extends GetxController {
  final List<Jobs> _items = [
    Jobs(
        id: 1,
        jobTitle: "介護有料老人ホームひまわり倶楽部の介護職／ヘルパー求人（パート／バイト）",
        typeOfCare: "介護付き有料老人ホーム",
        payment: "¥ 6,000",
        informationImage: "lib/model/DataSetImages/1.png",
        address: "北海道札幌市東雲町3丁目916番地17号",
        careProvidersName: "住宅型有料老人ホームひまわり倶楽部",
        transportationExpenses: "交通費 300円",
        dayOFTheWeek: "5月 31日（水）08 : 00 ~ 17 : 00"),
    Jobs(
        id: 2,
        jobTitle: "介護有料老人ホームひまわり倶楽部の介護職／ヘルパー求人（パート／バイト）",
        typeOfCare: "介護付き有料老人ホーム",
        payment: "6,000円 ",
        informationImage: "lib/model/DataSetImages/2.png",
        careProvidersName: "住宅型有料老人ホームひまわり倶楽部",
        address: "北海道札幌市東雲町3丁目916番地17号",
        transportationExpenses: "交通費 300円",
        dayOFTheWeek: "5月 31日（水）00 : 00 ~ 00 : 00 （休憩60分）"),
    Jobs(
        id: 3,
        jobTitle: "介護有料老人ホームひまわり倶楽部の介護職／ヘルパー求人（パート／バイト）",
        typeOfCare: "介護付き有料老人ホーム",
        payment: "6,000円 ",
        informationImage: "lib/model/DataSetImages/3.png",
        address: "北海道札幌市東雲町3丁目916番地17号",
        careProvidersName: "住宅型有料老人ホームひまわり倶楽部",
        transportationExpenses: "交通費 300円",
        dayOFTheWeek: "5月 31日（水）00 : 00 ~ 00 : 00 （休憩60分）"),
    Jobs(
        id: 4,
        jobTitle: "介護有料老人ホームひまわり倶楽部の介護職／ヘルパー求人（パート／バイト）",
        typeOfCare: "介護付き有料老人ホーム",
        payment: "6,000円 ",
        informationImage: "lib/model/DataSetImages/4.png",
        address: "北海道札幌市東雲町3丁目916番地17号",
        careProvidersName: "住宅型有料老人ホームひまわり倶楽部",
        transportationExpenses: "交通費 300円",
        dayOFTheWeek: "5月 31日（水）00 : 00 ~ 00 : 00 （休憩60分）"),
    Jobs(
        id: 5,
        jobTitle: "介護有料老人ホームひまわり倶楽部の介護職／ヘルパー求人（パート／バイト）",
        typeOfCare: "介護付き有料老人ホーム",
        payment: "6,000円 ",
        informationImage: "lib/model/DataSetImages/5.png",
        address: "北海道札幌市東雲町3丁目916番地17号",
        careProvidersName: "住宅型有料老人ホームひまわり倶楽部",
        transportationExpenses: "交通費 300円",
        dayOFTheWeek: "5月 31日（水）00 : 00 ~ 00 : 00 （休憩60分）"),
    Jobs(
        id: 6,
        jobTitle: "介護有料老人ホームひまわり倶楽部の介護職／ヘルパー求人（パート／バイト）",
        typeOfCare: "介護付き有料老人ホーム",
        payment: "6,000円 ",
        informationImage: "lib/model/DataSetImages/6.png",
        address: "北海道札幌市東雲町3丁目916番地17号",
        careProvidersName: "住宅型有料老人ホームひまわり倶楽部",
        transportationExpenses: "交通費 300円",
        dayOFTheWeek: "5月 31日（水）00 : 00 ~ 00 : 00 （休憩60分）",
         )
  ];

  List<Jobs> get data {
    return _items;
  }

  int getCount() {
    return DataSet()._items.length;
  }
}
