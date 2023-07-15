import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:jiitak/model/controller.dart';
import '../ResponsiveSizes/size.dart';

class CustomFieldForEditPage extends StatelessWidget {
  String label;
  String imagePath;
  String subLabel;

  CustomFieldForEditPage(
      {required this.subLabel,
      required this.imagePath,
      required this.label,
      super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        RichText(
            text: TextSpan(
                text: label,
                style: const TextStyle(color: Colors.black),
                children: [
              const TextSpan(text: "*", style: TextStyle(color: Colors.red)),
              TextSpan(
                  text: subLabel, style: const TextStyle(color: Colors.grey))
            ])),
        const SizedBox(
          height: 02,
        ), Image(image: AssetImage(imagePath)),
        const SizedBox(
          height: 10,
        )
      ],
    );
  }
}

class CustomTextField extends StatelessWidget {
  String label;
  String hint;

  CustomTextField({required this.hint, required this.label, super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        RichText(
            text: TextSpan(
                text: label,
                style: const TextStyle(color: Colors.black),
                children: const [
              TextSpan(text: "*", style: TextStyle(color: Colors.red))
            ])),
        const SizedBox(
          height: 02,
        ),
        TextField(
          decoration: InputDecoration(
            hintText: hint,
            border: const OutlineInputBorder(),
            enabled: true,
          ),
        ),
        const SizedBox(
          height: 10,
        )
      ],
    );
  }
}

class ListTileContainer extends StatelessWidget {
  final DataSet dataSet = Get.put(DataSet());
  final SizeChart sizeChart = Get.put(SizeChart());
  String imagePath;
  String jobTitle;
  String typeOfCare;
  String payment;
  String careProvidersName;
  String transportationExpenses;
  String address;
  String dayOFTheWeek;
  double sizedBoxHeight;
  double mainTitleFontSizes;
  double subTitleFontSizes;
  double heartButtonHeight;

  ListTileContainer(
      {required this.subTitleFontSizes,
      required this.heartButtonHeight,
      required this.mainTitleFontSizes,
      required this.sizedBoxHeight,
      required this.dayOFTheWeek,
      required this.transportationExpenses,
      required this.careProvidersName,
      required this.address,
      required this.payment,
      required this.typeOfCare,
      required this.jobTitle,
      required this.imagePath,
      super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: 13, left: 13, bottom: 13),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: Colors.white,
          boxShadow: const [BoxShadow(spreadRadius: -1, blurRadius: 2)]),
      child: Column(crossAxisAlignment: CrossAxisAlignment.stretch, children: [
        Image(fit: BoxFit.fitWidth, image: AssetImage(imagePath)),
        SizedBox(height: sizedBoxHeight),
        Container(
          margin: const EdgeInsets.only(left: 20, right: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(jobTitle,
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: mainTitleFontSizes)),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                      color: Colors.grey.shade100,
                      child: Text(typeOfCare,
                          style: TextStyle(
                              color: Colors.amberAccent,
                              fontSize: subTitleFontSizes),
                          selectionColor: Colors.amber)),
                  Text(
                    payment,
                    style: TextStyle(
                        fontSize: mainTitleFontSizes,
                        fontWeight: FontWeight.bold),
                  )
                ],
              ),
              SizedBox(
                height: sizedBoxHeight,
              ),
              Text(dayOFTheWeek, style: TextStyle(fontSize: subTitleFontSizes)),
              SizedBox(
                height: sizedBoxHeight,
              ),
              Text(address, style: TextStyle(fontSize: subTitleFontSizes)),
              SizedBox(
                height: sizedBoxHeight,
              ),
              Text(transportationExpenses,
                  style: TextStyle(fontSize: subTitleFontSizes)),
              SizedBox(
                height: sizedBoxHeight,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(careProvidersName,
                      style: TextStyle(
                          color: Colors.grey,
                          fontSize: subTitleFontSizes - 2.8)),
                  TextButton(
                      onPressed: null,
                      child: Image(
                        height: heartButtonHeight,
                        image: const AssetImage("lib/Assets/Images/heart.png"),
                        color: Colors.black,
                      ))
                ],
              )
            ],
          ),
        ),
      ]),
    );
  }
}

class CustomDropFieldForEditPage extends StatelessWidget {
  String label;
  String hint;
  String hint2;

  CustomDropFieldForEditPage(
      {required this.hint2,
      required this.hint,
      required this.label,
      super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        RichText(
            text: TextSpan(
                text: label,
                style: const TextStyle(color: Colors.black),
                children: const [
              TextSpan(text: "*", style: TextStyle(color: Colors.red)),
            ])),
        const SizedBox(
          height: 8,
        ),
        Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                flex: 2,
                child: Container(
                  alignment: Alignment.center,
                  height: 33,
                  child: TextField(
                    minLines: 1,
                    maxLines: 1,
                    decoration: InputDecoration(
                        contentPadding: const EdgeInsets.only(
                            top: 03, bottom: 03, left: 03),
                        border: const OutlineInputBorder(),
                        hintText: hint,
                        suffixIcon: const Image(
                          image:
                              AssetImage("lib/Assets/Images/dropDownIcon.png"),
                          color: Colors.grey,
                        )),
                  ),
                ),
              ),
              const Expanded(
                  flex: 1,
                  child: Text(
                    "~",
                    textAlign: TextAlign.center,
                  )),
              Expanded(
                flex: 2,
                child: Container(
                  alignment: Alignment.center,
                  height: 33,
                  child: TextField(
                    decoration: InputDecoration(
                        contentPadding: const EdgeInsets.only(
                            top: 03, bottom: 03, left: 03),
                        border: const OutlineInputBorder(),
                        hintText: hint2,
                        suffixIcon: const Image(
                          image:
                              AssetImage("lib/Assets/Images/dropDownIcon.png"),
                          color: Colors.grey,
                        )),
                  ),
                ),
              )
            ]),
      ],
    );
  }
}

class CustomRowCheckBoxes extends StatelessWidget {
  bool check;
  String label;

  CustomRowCheckBoxes({required this.label, required this.check, super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Checkbox(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(2.0),
          ),
          side: MaterialStateBorderSide.resolveWith(
            (states) => const BorderSide(width: 1.0, color: Colors.grey),
          ),
          checkColor: Colors.white,
          fillColor: MaterialStateProperty.all(
            const Color(0xffEE7D42),
          ),
          value: check,
          onChanged: null,
        ),
        const Text("月")
      ],
    );
  }
}
