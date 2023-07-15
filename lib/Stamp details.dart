import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:jiitak/ResponsiveSizes/size.dart';

class StampDetails extends StatelessWidget {
  const StampDetails({super.key});

  @override
  Widget build(BuildContext context) {
    final SizeChart sizeChart = Get.put(SizeChart());
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
            elevation: 0,
            centerTitle: true,
            title: Text("スタンプカード詳細",
                style: TextStyle(fontSize: sizeChart.searchBarHint.value)),
            actions: const [
              TextButton(
                  onPressed: null,
                  child: Image(
                      image: AssetImage("lib/Assets/Images/minus-circle.png")))
            ],
            leading: const TextButton(
                onPressed: null,
                child: Image(
                    color: Colors.white,
                    image: AssetImage("lib/Assets/Images/backButton.png"))),
            backgroundColor: const Color(0xffA8B1FF)),
        body: Container(
          decoration: const BoxDecoration(color: Color(0xffA8B1FF)),
          child: Column(children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  "Mer キッチン",
                  style: TextStyle(color: Colors.white),
                ),
                RichText(
                    text: const TextSpan(
                        style: TextStyle(color: Colors.white),
                        text: "現在の獲得数",
                        children: [
                      TextSpan(
                        text: "30",
                        style: TextStyle(color: Colors.white, fontSize: 25),
                      ),
                      TextSpan(
                        text: "個",
                        style: TextStyle(color: Colors.white),
                      )
                    ]))
              ],
            ),
            Expanded(
              child: Container(
                decoration: const BoxDecoration(color: Colors.white),
                child: Text(""),
              ),
            )
          ]),
        ),
      );
    });
  }
}
