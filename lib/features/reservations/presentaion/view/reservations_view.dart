import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tathkra_app/core/resources/manager_colors.dart';
import 'package:tathkra_app/core/resources/manager_font_sizes.dart';
import 'package:tathkra_app/core/resources/manager_font_weight.dart';
import 'package:tathkra_app/core/resources/manager_height.dart';
import 'package:tathkra_app/core/resources/manager_strings.dart';
import 'package:tathkra_app/core/resources/manager_width.dart';
import '../../../../routes/routes.dart';
import '../controller/reservations_controller.dart';

class ReservationsView extends StatelessWidget {
  const ReservationsView({super.key});

  @override
  Widget build(BuildContext context) {

    final ReservationsController controller = Get.put(ReservationsController());

    return Scaffold(
      body: Column(
        children: [
          Container(
            width: double.infinity,
            height: ManagerHeight.h175,
            decoration: BoxDecoration(
              color: ManagerColors.primaryColor,
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(25),
                  bottomRight: Radius.circular(25)),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(height: ManagerHeight.h30,),
                Row(
                  children: [
                    SizedBox(width: 90,),
                    Row(
                      children: [
                        Text('ادلب',style: TextStyle(
                          fontSize: ManagerFontSizes.s22,
                          fontWeight: ManagerFontWeight.bold,
                          color: ManagerColors.white,
                        ),),
                        SizedBox(width: ManagerWidth.w8,),
                        Text('الى',style: TextStyle(
                          fontSize: ManagerFontSizes.s22,
                          fontWeight: ManagerFontWeight.bold,
                          color: ManagerColors.white,
                        ),),
                      ],
                    ),
                    SizedBox(width: 12,),
                    Container(
                      width: ManagerWidth.w30,
                      height: ManagerHeight.h30,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(
                          color: ManagerColors.white,
                        ),
                      ),
                      child: Icon(
                        Icons.arrow_back_sharp,
                        color: ManagerColors.white,
                        size: 20,
                      ),
                    ),
                    SizedBox(width: 12,),
                    Row(
                      children: [
                        Text('ادلب',style: TextStyle(
                          fontSize: ManagerFontSizes.s22,
                          fontWeight: ManagerFontWeight.bold,
                          color: ManagerColors.white,
                        ),),
                        SizedBox(width: ManagerWidth.w8,),
                        Text('من',style: TextStyle(
                          fontSize: ManagerFontSizes.s22,
                          fontWeight: ManagerFontWeight.bold,
                          color: ManagerColors.white,
                        ),),
                      ],
                    ),
                    SizedBox(width: 28,),
                    Container(
                        width: ManagerWidth.w40,
                        height: ManagerHeight.h40,
                        decoration: BoxDecoration(
                          color: ManagerColors.white,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Icon(
                          Icons.arrow_forward,
                          color: ManagerColors.primaryColor,
                          size: 30,
                        )),
                  ],
                ),
                SizedBox(height: ManagerHeight.h14,),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: ManagerWidth.w20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        width: ManagerWidth.w72,
                        height: ManagerHeight.h35,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          border: Border.all(
                            color: ManagerColors.white,
                          ),
                        ),
                        child: Center(
                          child: Text(ManagerStrings.tomorrow,style: TextStyle(
                            fontSize: ManagerFontSizes.s18,
                            color: ManagerColors.white,
                          ),),
                        ),
                      ),
                      Container(
                        width: ManagerWidth.w180,
                        height: ManagerHeight.h35,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          border: Border.all(
                            color: ManagerColors.white,
                          ),
                        ),
                        child: Center(
                          child: Text('data',style: TextStyle(
                            fontSize: ManagerFontSizes.s18,
                            color: ManagerColors.white,
                          ),),
                        ),
                      ),
                      Container(
                        width: ManagerWidth.w72,
                        height: ManagerHeight.h35,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          border: Border.all(
                            color: ManagerColors.white,
                          ),
                        ),
                        child: Center(
                          child: Text(ManagerStrings.yesterday,style: TextStyle(
                            fontSize: ManagerFontSizes.s18,
                            color: ManagerColors.white,
                          ),),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: ManagerHeight.h30,),
          Obx(() {
              return GestureDetector(
                onTap: controller.toggleHeight,
                child: Container(
                  margin: EdgeInsets.symmetric(horizontal: ManagerWidth.w30),
                  width: double.infinity,
                  height: controller.containerHeight.value,
                  decoration: BoxDecoration(
                    color: ManagerColors.bgColorTextField,
                    borderRadius: BorderRadius.circular(34),
                    border: Border.all(
                      color: ManagerColors.bgColorTextTrips,
                      width: 1,
                      // style: BorderStyle.solid,
                    ),
                  ),
                  child: Column(
                    children: [
                      SizedBox(height: ManagerHeight.h20,),
                      Container(
                        margin: EdgeInsets.symmetric(horizontal: ManagerWidth.w30),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Text('09:15',style: TextStyle(
                                  fontSize: ManagerFontSizes.s24,
                                  fontWeight: ManagerFontWeight.w800,
                                ),),
                                Icon(Icons.timer_sharp,color: ManagerColors.primaryColor,size: 32,),
                              ],
                            ),
                            Text('الشركة الأولى',style: TextStyle(
                              fontSize: ManagerFontSizes.s24,
                              fontWeight: ManagerFontWeight.w800,
                            ),),
                          ],
                        ),
                      ),
                      SizedBox(height: ManagerHeight.h4,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text('ساعات',style: TextStyle(
                            fontWeight: ManagerFontWeight.regular,
                            fontSize: ManagerFontSizes.s16,
                            color: ManagerColors.grey,
                          ),),
                          SizedBox(width: ManagerWidth.w6,),
                          Text('5',style: TextStyle(
                            fontWeight: ManagerFontWeight.regular,
                            fontSize: ManagerFontSizes.s16,
                            color: ManagerColors.grey,
                          ),),
                          SizedBox(width: ManagerWidth.w6,),
                          Text('المدة المتوقعة',style: TextStyle(
                            fontWeight: ManagerFontWeight.regular,
                            fontSize: ManagerFontSizes.s16,
                            color: ManagerColors.grey,
                          ),),
                        ],
                      ),
                      SizedBox(height: ManagerHeight.h14,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'دمشق كراج ',
                            style: TextStyle(
                              fontSize: ManagerFontSizes.s18,
                              fontWeight: ManagerFontWeight.bold,
                              color: ManagerColors.black,
                            ),
                          ),
                          SizedBox(width: ManagerWidth.w6),
                          Container(
                            padding: EdgeInsets.all(2),
                            decoration: BoxDecoration(
                              shape: BoxShape.rectangle,
                              borderRadius: BorderRadius.circular(6),
                              border: Border.all(
                                color: ManagerColors.primaryColor,
                              ),
                            ),
                            child: Icon(
                              Icons.arrow_back,
                              color: ManagerColors.primaryColor,
                              size: 14,
                            ),
                          ),
                          SizedBox(width: ManagerWidth.w6),
                          Text(
                            'كراج ادلب',
                            style: TextStyle(
                              fontSize: ManagerFontSizes.s18,
                              fontWeight: ManagerFontWeight.bold,
                              color: ManagerColors.black,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: ManagerHeight.h20,),
                      Container(
                        margin: EdgeInsets.symmetric(horizontal: ManagerWidth.w20),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Text('ل.س',style: TextStyle(
                                  fontWeight: ManagerFontWeight.regular,
                                  fontSize: ManagerFontSizes.s16,
                                  color: ManagerColors.black,
                                ),),
                                SizedBox(width: ManagerWidth.w8,),
                                Text('50.000',style: TextStyle(
                                  fontWeight: ManagerFontWeight.bold,
                                  fontSize: ManagerFontSizes.s20,
                                  color: ManagerColors.black,
                                ),),
                              ],
                            ),
                            SizedBox(width: ManagerWidth.w30,),
                            Row(
                              children: [
                                Text('متاح',style: TextStyle(
                                  fontWeight: ManagerFontWeight.regular,
                                  fontSize: ManagerFontSizes.s18,
                                  color: ManagerColors.black,
                                ),),
                                SizedBox(width: ManagerWidth.w8,),
                                Text('15',style: TextStyle(
                                  fontWeight: ManagerFontWeight.bold,
                                  fontSize: ManagerFontSizes.s20,
                                  color: ManagerColors.black,
                                ),),
                                SizedBox(width: ManagerWidth.w8,),
                                Icon(Icons.chair_outlined,color: ManagerColors.primaryColor,),
                              ],
                            ),
                          ],
                        ),
                      ),
                      if (controller.containerHeight.value > 200)
                        Column(
                          children: [
                            SizedBox(height: ManagerHeight.h20),
                            Text(
                              ManagerStrings.numberOfSeats,
                              style: TextStyle(
                                fontSize: ManagerFontSizes.s18,
                                fontWeight: ManagerFontWeight.regular,
                                color: ManagerColors.black,
                              ),
                            ),
                            SizedBox(height: ManagerHeight.h12),
                            Container(
                              width: 140,
                              height: 52,
                              decoration: BoxDecoration(
                                color: ManagerColors.bgColorCounter,
                                borderRadius: BorderRadius.circular(15),
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  GestureDetector(
                                    onTap: controller.decrementSeats,
                                    child: Icon(Icons.remove, color: ManagerColors.primaryColor,size: 28,),
                                  ),
                                  SizedBox(width: 12),
                                  Obx(() => Text(
                                    controller.seatCount.toString(),
                                    style: TextStyle(
                                      fontSize: ManagerFontSizes.s24,
                                      color: Colors.black,
                                    ),
                                  )),
                                  SizedBox(width: 12),
                                  GestureDetector(
                                    onTap: controller.incrementSeats,
                                    child: Icon(Icons.add, color: ManagerColors.primaryColor,size: 28,),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(height: ManagerHeight.h20),
                            ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                minimumSize: Size(ManagerWidth.w200, ManagerHeight.h50),
                                backgroundColor: ManagerColors.primaryColor,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(15),
                                ),
                                elevation: 0, // (اختياري) لتقليل الظل
                                padding: EdgeInsets.zero, // مهم لإلغاء المسافات داخل الزر
                              ),
                              onPressed: (){
                                Navigator.pushReplacementNamed(context, Routes.chooseYourSeatView);
                              },
                                child: Container(
                                  width: ManagerWidth.w200,
                                  height: ManagerHeight.h50,
                                  child: Center(
                                    child: Text(
                                      ManagerStrings.chooseYourSeat,style: TextStyle(
                                      fontWeight: ManagerFontWeight.w600,
                                      fontSize: ManagerFontSizes.s20,
                                      color: ManagerColors.white,
                                    ),
                                    ),
                                  ),
                                ),
                            ),
                          ],
                        ),
                    ],
                  ),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
