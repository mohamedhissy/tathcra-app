import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:tathkra_app/features/home/presentaion/controller/home_controller.dart';

import '../../../../core/resources/manager_assets.dart';
import '../../../../core/resources/manager_colors.dart';
import '../../../../core/resources/manager_font_sizes.dart';
import '../../../../core/resources/manager_font_weight.dart';
import '../../../../core/resources/manager_height.dart';
import '../../../../core/resources/manager_strings.dart';
import '../../../../core/resources/manager_width.dart';
import '../../../../core/widgets/base_button.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    final regions = [
      'إدلب',
      'دمشق',
      'حلب',
      'حمص',
      'طرطوس',
      'اللاذقية',
      'درعا',
      'الحسكة',
      'القنيطرة'
    ];

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        automaticallyImplyLeading: false,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              ManagerStrings.appName,
              style: TextStyle(
                fontSize: ManagerFontSizes.s36,
                fontWeight: ManagerFontWeight.bold,
              ),
            ),
            SizedBox(
              width: ManagerWidth.w8,
            ),
            Container(
              width: ManagerWidth.w48,
              height: ManagerHeight.h48,
              decoration: BoxDecoration(
                image: DecorationImage(
                  // alignment: Alignment.center,
                  image: AssetImage(ManagerAssets.outBoarding1),
                ),
              ),
            ),
          ],
        ),
      ),
      body: Column(
        children: [
          SizedBox(
            height: ManagerHeight.h50,
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: ManagerWidth.w30),
            width: 352,
            height: 280,
            decoration: BoxDecoration(
              color: ManagerColors.white,
              borderRadius: BorderRadius.circular(34),
              border: Border.all(
                color: ManagerColors.bgBorderColorTextField,
                width: 1,
                // style: BorderStyle.solid,
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Container(
                  margin: EdgeInsets.symmetric(
                      horizontal: ManagerWidth.w20,
                      vertical: ManagerHeight.h10),
                  child: Text(
                    ManagerStrings.fromTheRegion,
                    style: TextStyle(
                      fontWeight: ManagerFontWeight.bold,
                      fontSize: ManagerFontSizes.s24,
                      color: ManagerColors.primaryColor,
                    ),
                  ),
                ),
                GetBuilder<HomeController>(builder: (controller) {
                  return GestureDetector(
                    onTap: () {
                      showModalBottomSheet(
                        context: context,
                        isScrollControlled: true,
                        // يسمح بالتحكم في الحجم لتجنب overflow
                        shape: const RoundedRectangleBorder(
                          borderRadius:
                              BorderRadius.vertical(top: Radius.circular(30)),
                        ),
                        builder: (context) {
                          return SafeArea(
                            child: SingleChildScrollView(
                              child: Padding(
                                padding: const EdgeInsets.symmetric(
                                    vertical: 16, horizontal: 20),
                                child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Container(
                                            width: 30,
                                            height: 30,
                                            decoration: BoxDecoration(
                                              color: ManagerColors.bgColorClose,
                                              borderRadius:
                                                  BorderRadius.circular(60),
                                            ),
                                            child: Icon(
                                              Icons.close,
                                              color: ManagerColors.primaryColor,
                                            )),
                                        Text(
                                          ManagerStrings.chooseYourStartingArea,
                                          style: TextStyle(
                                            fontSize: ManagerFontSizes.s24,
                                            fontWeight: ManagerFontWeight.bold,
                                            color: ManagerColors.primaryColor,
                                          ),
                                        ),
                                      ],
                                    ),
                                    SizedBox(height: 16),
                                    ...regions.map((region) => Padding(
                                          padding:
                                              const EdgeInsets.only(bottom: 10),
                                          child: GestureDetector(
                                            onTap: () {
                                              controller.setFromRegion(region);
                                              Navigator.pop(
                                                  context); // ← إغلاق bottom sheet
                                            },
                                            child: Container(
                                              decoration: BoxDecoration(
                                                border: Border.all(
                                                    color: ManagerColors
                                                        .bgColorOutBoardingButton),
                                                borderRadius:
                                                    BorderRadius.circular(20),
                                              ),
                                              child: Container(
                                                width: 310,
                                                height: 60,
                                                margin: EdgeInsets.symmetric(
                                                    horizontal:
                                                        ManagerWidth.w20),
                                                child: Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.end,
                                                  children: [
                                                    Text(
                                                      region,
                                                      style: TextStyle(
                                                        fontSize:
                                                            ManagerFontSizes
                                                                .s24,
                                                        fontWeight:
                                                            ManagerFontWeight
                                                                .regular,
                                                      ),
                                                    ),
                                                    SizedBox(
                                                      width: ManagerWidth.w12,
                                                    ),
                                                    Icon(
                                                      Icons
                                                          .my_location_outlined,
                                                      color: ManagerColors
                                                          .bgColorOutBoardingButton,
                                                      size: 24,
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ),
                                          ),
                                        )),
                                  ],
                                ),
                              ),
                            ),
                          );
                        },
                      );
                    },
                    child: Container(
                      margin:
                          EdgeInsets.symmetric(horizontal: ManagerWidth.w20),
                      width: 310,
                      height: 65,
                      decoration: BoxDecoration(
                        color: ManagerColors.bgColorTextField,
                        borderRadius: BorderRadius.circular(20),
                        border: Border.all(
                          color: ManagerColors.bgBorderColorTextField,
                          width: 1,
                        ),
                      ),
                      child: Padding(
                        padding:
                            EdgeInsets.symmetric(horizontal: ManagerWidth.w12),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Icon(Icons.arrow_drop_down_outlined, size: 40),
                            Row(
                              children: [
                                Text(
                                  controller.fromRegion ??
                                      ManagerStrings.selectTheRegion,
                                  style:
                                      TextStyle(fontSize: ManagerFontSizes.s20),
                                ),
                                SizedBox(width: ManagerWidth.w8),
                                Icon(Icons.my_location,
                                    color: ManagerColors.primaryColor),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  );
                }),
                SizedBox(
                  height: ManagerHeight.h8,
                ),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: ManagerWidth.w20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Icon(
                        Icons.swap_vertical_circle_sharp,
                        color: ManagerColors.primaryColor,
                        size: 40,
                      ),
                      Text(
                        ManagerStrings.toTheArea,
                        style: TextStyle(
                          fontWeight: ManagerFontWeight.bold,
                          fontSize: ManagerFontSizes.s24,
                          color: ManagerColors.primaryColor,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: ManagerHeight.h8,
                ),
                GetBuilder<HomeController>(builder: (controller) {
                  return GestureDetector(
                    onTap: () {
                      showModalBottomSheet(
                        context: context,
                        isScrollControlled: true,
                        // يسمح بالتحكم في الحجم لتجنب overflow
                        shape: const RoundedRectangleBorder(
                          borderRadius:
                              BorderRadius.vertical(top: Radius.circular(30)),
                        ),
                        builder: (context) {
                          return SafeArea(
                            child: SingleChildScrollView(
                              child: Padding(
                                padding: const EdgeInsets.symmetric(
                                    vertical: 16, horizontal: 20),
                                child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Container(
                                            width: 30,
                                            height: 30,
                                            decoration: BoxDecoration(
                                              color: ManagerColors.bgColorClose,
                                              borderRadius:
                                                  BorderRadius.circular(60),
                                            ),
                                            child: Icon(
                                              Icons.close,
                                              color: ManagerColors.primaryColor,
                                            )),
                                        Text(
                                          ManagerStrings.chooseYourStartingArea,
                                          style: TextStyle(
                                            fontSize: ManagerFontSizes.s24,
                                            fontWeight: ManagerFontWeight.bold,
                                            color: ManagerColors.primaryColor,
                                          ),
                                        ),
                                      ],
                                    ),
                                    SizedBox(height: 16),
                                    ...regions.map((region) => Padding(
                                          padding:
                                              const EdgeInsets.only(bottom: 10),
                                          child: GestureDetector(
                                            onTap: () {
                                              controller.setToRegion(
                                                  region); // ← حفظ القيمة
                                              Navigator.pop(
                                                  context); // ← إغلاق bottom sheet
                                            },
                                            child: Container(
                                              decoration: BoxDecoration(
                                                border: Border.all(
                                                    color: ManagerColors
                                                        .bgColorOutBoardingButton),
                                                borderRadius:
                                                    BorderRadius.circular(20),
                                              ),
                                              child: Container(
                                                width: 310,
                                                height: 60,
                                                margin: EdgeInsets.symmetric(
                                                    horizontal:
                                                        ManagerWidth.w20),
                                                child: Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.end,
                                                  children: [
                                                    Text(
                                                      region,
                                                      style: TextStyle(
                                                        fontSize:
                                                            ManagerFontSizes
                                                                .s24,
                                                        fontWeight:
                                                            ManagerFontWeight
                                                                .regular,
                                                      ),
                                                    ),
                                                    SizedBox(
                                                      width: ManagerWidth.w12,
                                                    ),
                                                    Icon(
                                                      Icons
                                                          .my_location_outlined,
                                                      color: ManagerColors
                                                          .bgColorOutBoardingButton,
                                                      size: 24,
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ),
                                          ),
                                        )),
                                  ],
                                ),
                              ),
                            ),
                          );
                        },
                      );
                    },
                    child: Container(
                      margin:
                          EdgeInsets.symmetric(horizontal: ManagerWidth.w20),
                      width: 310,
                      height: 65,
                      decoration: BoxDecoration(
                        color: ManagerColors.bgColorTextField,
                        borderRadius: BorderRadius.circular(20),
                        border: Border.all(
                          color: ManagerColors.bgBorderColorTextField,
                          width: 1,
                          // style: BorderStyle.solid,
                        ),
                      ),
                      child: Container(
                        margin:
                            EdgeInsets.symmetric(horizontal: ManagerWidth.w12),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Icon(
                              Icons.arrow_drop_down_outlined,
                              size: 40,
                            ),
                            Row(
                              children: [
                                Text(
                                  controller.toRegion ??
                                      ManagerStrings.selectTheRegion,
                                  style:
                                      TextStyle(fontSize: ManagerFontSizes.s20),
                                ),
                                SizedBox(
                                  width: ManagerWidth.w8,
                                ),
                                Icon(
                                  Icons.location_on,
                                  color: ManagerColors.primaryColor,
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  );
                }),
              ],
            ),
          ),
          SizedBox(
            height: ManagerHeight.h20,
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: ManagerWidth.w30),
            width: 352,
            height: 170,
            decoration: BoxDecoration(
              color: ManagerColors.white,
              borderRadius: BorderRadius.circular(34),
              border: Border.all(
                color: ManagerColors.bgBorderColorTextField,
                width: 1,
                // style: BorderStyle.solid,
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Container(
                  margin: EdgeInsets.symmetric(
                      horizontal: ManagerWidth.w20,
                      vertical: ManagerHeight.h10),
                  child: Text(
                    ManagerStrings.tripHistory,
                    style: TextStyle(
                      fontWeight: ManagerFontWeight.bold,
                      fontSize: ManagerFontSizes.s24,
                      color: ManagerColors.primaryColor,
                    ),
                  ),
                ),
                GetBuilder<HomeController>(
                  builder: (controller) {
                    return GestureDetector(
                      onTap: () => controller.selectDate(context),
                      child: Container(
                        margin: EdgeInsets.symmetric(horizontal: ManagerWidth.w20),
                        width: 310,
                        height: 65,
                        decoration: BoxDecoration(
                          color: ManagerColors.bgColorTextField,
                          borderRadius: BorderRadius.circular(20),
                          border: Border.all(
                            color: ManagerColors.bgBorderColorTextField,
                            width: 1,
                            // style: BorderStyle.solid,
                          ),
                        ),
                        child: Container(
                          margin: EdgeInsets.symmetric(horizontal: ManagerWidth.w12),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Icon(
                                Icons.arrow_drop_down_outlined,
                                size: 40,
                              ),
                              Row(
                                children: [
                                  Text(
                                    controller.selectedDate != null
                                        ? DateFormat('yyyy/MM/dd').format(controller.selectedDate!)
                                        : ManagerStrings.selectADate,
                                    style: TextStyle(
                                      fontSize: ManagerFontSizes.s20,
                                    ),
                                  ),
                                  SizedBox(
                                    width: ManagerWidth.w8,
                                  ),
                                  Icon(
                                    Icons.calendar_today,
                                    color: ManagerColors.primaryColor,
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    );
                  }
                ),
              ],
            ),
          ),
          SizedBox(
            height: ManagerHeight.h20,
          ),
          BaseButton(
            width: ManagerWidth.w250,
            height: ManagerHeight.h56,
            onPressed: (){},
            title: ManagerStrings.findATrip,
          ),
        ],
      ),
    );
  }
}
