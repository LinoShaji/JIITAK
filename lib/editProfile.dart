import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:jiitak/ResponsiveSizes/size.dart';
import 'package:jiitak/Reusable/Widgets.dart';

final SizeChart sizeChart = Get.put(SizeChart());

class EditProfile extends StatelessWidget {
  final List<Widget> listViewElements = [
    SizedBox(height: sizeChart.sizedBoxHeight.value + 05),
    CustomTextField(
      label: "店舗名",
      hint: "Mer キッチン",
    ),
    CustomTextField(hint: "林田　絵梨花", label: "代表担当者名"),
    CustomTextField(hint: "123 - 4567 8910", label: "店舗電話番号"),
    CustomTextField(hint: "大分県豊後高田市払田791-13", label: "店舗住所"),
    const Image(image: AssetImage("lib/Assets/Images/snazzy-image (1) 1.png")),
    const SizedBox(height: 10),
    Expanded(
      child: CustomFieldForEditPage(
        imagePath: "lib/model/DataSetImages/Frame 0.png",
        label: "店舗外観",
        subLabel: '(最大3枚まで)',
      ),
    ),
    CustomFieldForEditPage(
        subLabel: "(1枚〜3枚ずつ追加してください)",
        imagePath: "lib/model/DataSetImages/Frame 1.png",
        label: "店舗内観"),
    CustomFieldForEditPage(
        subLabel: " (1枚〜3枚ずつ追加してください) ",
        imagePath: "lib/model/DataSetImages/Frame 2.png",
        label: "料理写真"),
    CustomFieldForEditPage(
        subLabel: "（1枚〜3枚ずつ追加してください）",
        imagePath: "lib/model/DataSetImages/Frame 3.png",
        label: "メニュー写真"),
    CustomDropFieldForEditPage(
        hint2: "20 : 00", hint: "10 : 00", label: "営業時間"),
    const SizedBox(
      height: 13,
    ),
    CustomDropFieldForEditPage(
        hint2: "15 : 00", hint: "11 : 00 ", label: "ランチ時間"),
    const SizedBox(
      height: 15,
    ),
    RichText(
        text: const TextSpan(
            text: "定休日",
            style: TextStyle(color: Colors.black),
            children: [
          TextSpan(text: "*", style: TextStyle(color: Colors.red))
        ])),
    Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CustomRowCheckBoxes(
          check: false,
          label: "月",
        ),
        CustomRowCheckBoxes(label: "火", check: false),
        CustomRowCheckBoxes(label: "水", check: false),
        CustomRowCheckBoxes(label: "木", check: false)
      ],
    ),
    Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.start,children: [CustomRowCheckBoxes(label: "金", check: false),
    CustomRowCheckBoxes(label: "土", check: true),CustomRowCheckBoxes(label: "日", check: true),CustomRowCheckBoxes(label: "祝", check: true)],)
  ];

  EditProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return Obx(() {
      if (MediaQuery.of(context).size.width < 348) {
        sizeChart.updateSearchBarHint(17);
        sizeChart.updateBottomNavigationBarLabelSize(8);
        sizeChart.updateSizedBoxHeight(07);
        sizeChart.updateMainTitleFontSize(15);
        sizeChart.updateSubTitleFontSize(12);
        sizeChart.updateHeartButtonSize(18);
      }
      if (MediaQuery.of(context).size.width > 348) {
        sizeChart.updateSearchBarHint(23);
        sizeChart.updateBottomNavigationBarLabelSize(12.0);
        sizeChart.updateSizedBoxHeight(10);
        sizeChart.updateMainTitleFontSize(20);
        sizeChart.updateSubTitleFontSize(16);
        sizeChart.updateHeartButtonSize(23);
      }
      if (MediaQuery.of(context).size.width < 315) {
        sizeChart.updateSearchBarHint(14);
        sizeChart.updateBottomNavigationBarLabelSize(5);
        sizeChart.updateSizedBoxHeight(04);
        sizeChart.updateMainTitleFontSize(12);
        sizeChart.updateSubTitleFontSize(09);
        sizeChart.updateHeartButtonSize(15);
      }
      if (MediaQuery.of(context).size.width < 227) {
        sizeChart.updateSearchBarHint(11);
        sizeChart.updateBottomNavigationBarLabelSize(3);
        sizeChart.updateSizedBoxHeight(02);
        sizeChart.updateMainTitleFontSize(9);
        sizeChart.updateSubTitleFontSize(06);
        sizeChart.updateHeartButtonSize(12);
      }
      return Scaffold(
        appBar: AppBar(
            actions: const [
              TextButton(
                  onPressed: null,
                  child: Image(
                      image: AssetImage(
                          "lib/Assets/Images/notifications_icon.png")))
            ],
            elevation: 0.0,
            backgroundColor: Colors.white,
            centerTitle: true,
            title: Text(
              "店舗プロフィール編集",
              style: TextStyle(
                  color: Colors.black,
                  fontSize: sizeChart.searchBarHint.value - 3),
            ),
            leading: const TextButton(
                onPressed: null,
                child: Image(
                    image: AssetImage("lib/Assets/Images/backButton.png")))),
        body: Container(
            margin: const EdgeInsets.only(left: 10, right: 10),
            child: ListView(shrinkWrap: true, children: listViewElements)),
      );
    });
  }
}
