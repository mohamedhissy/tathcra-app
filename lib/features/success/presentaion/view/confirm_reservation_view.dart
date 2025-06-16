import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import '../../../../core/resources/manager_colors.dart';
import '../../../../core/resources/manager_font_sizes.dart';
import '../../../../core/resources/manager_font_weight.dart';
import '../../../../core/resources/manager_height.dart';
import '../../../../core/resources/manager_raduis.dart';
import '../../../../core/resources/manager_strings.dart';
import '../../../../core/resources/manager_width.dart';

class ConfirmReservationView extends StatelessWidget {
  const ConfirmReservationView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 460,
              child: Stack(
                children: [
                  Container(
                    width: double.infinity,
                    height: ManagerHeight.h370,
                    decoration: BoxDecoration(
                      color: ManagerColors.primaryColor,
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(50),
                        bottomRight: Radius.circular(50),
                      ),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Column(
                          children: [
                            SizedBox(height: ManagerHeight.h108),
                            Container(
                              width: ManagerWidth.w367,
                              height: ManagerHeight.h190,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius:
                                    BorderRadius.circular(ManagerRadius.r25),
                              ),
                              child: Column(
                                children: [
                                  Padding(
                                    padding: EdgeInsets.only(
                                      top: ManagerHeight.h20,
                                      left: ManagerWidth.w30,
                                      right: ManagerWidth.w30,
                                    ),
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      children: [
                                        Text(
                                          '09:15',
                                          style: TextStyle(
                                            fontSize: ManagerFontSizes.s32,
                                            fontWeight: ManagerFontWeight.w600,
                                            color: ManagerColors.black,
                                          ),
                                        ),
                                        SizedBox(width: ManagerWidth.w4),
                                        Icon(
                                          Icons.timer_outlined,
                                          color: ManagerColors.primaryColor,
                                          size: 32,
                                        ),
                                        SizedBox(width: ManagerWidth.w72),
                                        Text(
                                          ManagerStrings.fullName,
                                          style: TextStyle(
                                            fontSize: 20,
                                            fontWeight: ManagerFontWeight.bold,
                                            color: ManagerColors.black,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Text(
                                    ManagerStrings.remainingTime,
                                    style: TextStyle(
                                      fontSize: ManagerFontSizes.s14,
                                      fontWeight: ManagerFontWeight.w400,
                                      color: ManagerColors.grey,
                                    ),
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        'دمشق كراج ',
                                        style: TextStyle(
                                          fontSize: ManagerFontSizes.s16,
                                          fontWeight: ManagerFontWeight.regular,
                                          color: ManagerColors.black,
                                        ),
                                      ),
                                      SizedBox(width: ManagerWidth.w6),
                                      Container(
                                        padding: EdgeInsets.all(2),
                                        decoration: BoxDecoration(
                                          shape: BoxShape.rectangle,
                                          borderRadius:
                                              BorderRadius.circular(4),
                                          border: Border.all(
                                            color: ManagerColors.primaryColor,
                                          ),
                                        ),
                                        child: Icon(
                                          Icons.arrow_back,
                                          color: ManagerColors.primaryColor,
                                          size: 10,
                                        ),
                                      ),
                                      SizedBox(width: ManagerWidth.w6),
                                      Text(
                                        'كراج ادلب',
                                        style: TextStyle(
                                          fontSize: ManagerFontSizes.s16,
                                          fontWeight: ManagerFontWeight.regular,
                                          color: ManagerColors.black,
                                        ),
                                      ),
                                    ],
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        'ل.س',
                                        style: TextStyle(
                                          fontSize: ManagerFontSizes.s20,
                                          fontWeight: ManagerFontWeight.regular,
                                          color: ManagerColors.black,
                                        ),
                                      ),
                                      SizedBox(width: ManagerWidth.w8),
                                      Text(
                                        '100.000',
                                        style: TextStyle(
                                          fontSize: ManagerFontSizes.s32,
                                          fontWeight: ManagerFontWeight.w600,
                                          color: ManagerColors.black,
                                        ),
                                      ),
                                      SizedBox(width: ManagerWidth.w75),
                                      Text(
                                        'عدد المقاعد',
                                        style: TextStyle(
                                          fontSize: ManagerFontSizes.s20,
                                          fontWeight: ManagerFontWeight.regular,
                                          color: ManagerColors.black,
                                        ),
                                      ),
                                      SizedBox(width: ManagerWidth.w8),
                                      Text(
                                        '1',
                                        style: TextStyle(
                                          fontSize: ManagerFontSizes.s20,
                                          fontWeight: ManagerFontWeight.regular,
                                          color: ManagerColors.black,
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(height: ManagerHeight.h20),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Positioned(
                    top: 320,
                    left: 140,
                    right: 140,
                    child: Container(
                      width: 110,
                      height: 110,
                      decoration: BoxDecoration(
                        color: Colors.green,
                        borderRadius: BorderRadius.circular(35),
                      ),
                      child: Icon(
                        Icons.check_rounded,
                        color: ManagerColors.white,
                        size: 100,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Text(
              'تمت العملية بنجاح',
              style: TextStyle(
                fontWeight: ManagerFontWeight.bold,
                fontSize: ManagerFontSizes.s36,
                color: ManagerColors.primaryColor,
              ),
            ),
            SizedBox(
              height: ManagerHeight.h6,
            ),
            Text(
              'نرجوا منكم تحويل قيمة الحجز',
              style: TextStyle(
                fontWeight: ManagerFontWeight.regular,
                fontSize: ManagerFontSizes.s24,
                color: ManagerColors.black,
              ),
            ),
            Text(
              'ليتم تثبيت الحجز والبالغ قدره',
              style: TextStyle(
                fontWeight: ManagerFontWeight.regular,
                fontSize: ManagerFontSizes.s24,
                color: ManagerColors.black,
              ),
            ),
            SizedBox(
              height: ManagerHeight.h10,
            ),
            Container(
              width: ManagerWidth.w270,
              height: ManagerHeight.h70,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  border: Border.all(
                    color: ManagerColors.primaryColor,
                    width: 1,
                  )),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'ل.س',
                    style: TextStyle(
                      fontWeight: ManagerFontWeight.regular,
                      fontSize: ManagerFontSizes.s14,
                      color: ManagerColors.black,
                    ),
                  ),
                  SizedBox(
                    width: ManagerWidth.w8,
                  ),
                  Text(
                    '100.000',
                    style: TextStyle(
                      fontWeight: ManagerFontWeight.regular,
                      fontSize: ManagerFontSizes.s36,
                      color: ManagerColors.black,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: ManagerHeight.h10,
            ),
            Text(
              ': عبر تطبيق شام كاش، على الرابط التالي',
              style: TextStyle(
                fontSize: ManagerFontSizes.s20,
                color: ManagerColors.black,
              ),
            ),
            SizedBox(
              height: ManagerHeight.h10,
            ),
            Text(
              'www.shamcash.com',
              style: TextStyle(
                fontSize: ManagerFontSizes.s20,
                fontWeight: ManagerFontWeight.bold,
                color: ManagerColors.black,
              ),
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                minimumSize: Size(ManagerWidth.w100, ManagerHeight.h40),
                backgroundColor: ManagerColors.primaryColor,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
                elevation: 0,
                // (اختياري) لتقليل الظل
                padding: EdgeInsets.zero, // مهم لإلغاء المسافات داخل الزر
              ),
              onPressed: () {
                Clipboard.setData(ClipboardData(text: "https://www.shamcash.com"));
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: Text("تم نسخ الرابط"),
                    duration: Duration(seconds: 1),
                  ),
                );
              },
              child: Container(
                width: ManagerWidth.w100,
                height: ManagerHeight.h40,
                child: Center(
                  child: Text(
                    ManagerStrings.copyLink,
                    style: TextStyle(
                      fontSize: ManagerFontSizes.s16,
                      color: ManagerColors.white,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
