import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:jiitak/ResponsiveSizes/size.dart';
import 'package:jiitak/Reusable/Widgets.dart';
import 'package:jiitak/model/controller.dart';
import 'package:jiitak/model/dataSet.dart';

class HomePage extends StatelessWidget {
  final isSmallScreen = false.obs;

  HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final SizeChart sizeChart = Get.put(SizeChart());
    final DataSet dataSet = Get.put(DataSet());
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
          bottomNavigationBar: BottomNavigationBar(
              showUnselectedLabels: true,
              unselectedItemColor: Colors.black,
              selectedItemColor: Colors.black,
              unselectedLabelStyle: TextStyle(
                  color: Colors.black,
                  fontSize: sizeChart.bottomNavigationBarLabelSize.value),
              backgroundColor: Colors.white,
              items: [
                const BottomNavigationBarItem(
                    label: "さがす",
                    icon: Image(
                        image: AssetImage("lib/Assets/Images/search.png"))),
                const BottomNavigationBarItem(
                    label: "お仕事",
                    icon: Image(
                        image: AssetImage(
                            "lib/Assets/Images/Business-office bag.png"))),
                BottomNavigationBarItem(
                  label: "打刻する",
                  icon: Container(
                    alignment: Alignment.topCenter,
                    child: const Image(
                        height: 70,
                        image: AssetImage("lib/Assets/Images/Group 536.png")),
                  ),
                ),
                const BottomNavigationBarItem(
                    icon: Image(
                        image: AssetImage("lib/Assets/Images/Chat-Vector.png")),
                    label: "チャット"),
                const BottomNavigationBarItem(
                    icon: Image(
                        image: AssetImage('lib/Assets/Images/account.png')),
                    label: "マイページ")
              ]),
          appBar: AppBar(
              elevation: 0,
              title: Transform.scale(
                  scaleX: 1,
                  scaleY: 0.7,
                  child: SearchBar(
                    hintText: '北海道, 札幌市',
                    hintStyle: MaterialStateProperty.all(
                        TextStyle(fontSize: sizeChart.searchBarHint.value)),
                    shape: MaterialStateProperty.all(ContinuousRectangleBorder(
                        borderRadius: BorderRadius.circular(20))),
                    backgroundColor:
                        MaterialStateProperty.all(const Color(0xffF3EFEF)),
                    elevation: MaterialStateProperty.all(0),
                  )),
              backgroundColor: Colors.white,
              actions: [
                TextButton(
                    onPressed: () {
                    },
                    child: const Image(
                        image:
                            AssetImage("lib/Assets/Images/Filter_icon.png"))),
                const TextButton(
                    onPressed: null,
                    child: Image(
                        image: AssetImage("lib/Assets/Images/heart.png"))),
              ]),
          body: GetBuilder<DataSet>(
            builder: (controller) {
              final List<Jobs> jobs = dataSet.data;
              return ListView.builder(
                  itemCount: jobs.length,
                  itemBuilder: (context, int index) {
                    final job = jobs[index];
                    return ListTileContainer(
                      heartButtonHeight: sizeChart.heartButtonHeight.value,
                      subTitleFontSizes: sizeChart.subTitleFontSize.value,
                      mainTitleFontSizes: sizeChart.mainTitleFontSize.value,
                      sizedBoxHeight: sizeChart.sizedBoxHeight.value,
                      dayOFTheWeek: job.dayOFTheWeek,
                      transportationExpenses: job.transportationExpenses,
                      careProvidersName: job.careProvidersName,
                      address: job.address,
                      payment: job.payment,
                      typeOfCare: job.typeOfCare,
                      jobTitle: job.jobTitle,
                      imagePath: job.informationImage,
                    );
                  });
            },
          ));
    });
  }
}
