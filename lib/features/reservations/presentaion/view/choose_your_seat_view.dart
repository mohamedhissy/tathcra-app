import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../../core/resources/manager_assets.dart';
import '../../../../core/resources/manager_colors.dart';
import '../../../../core/resources/manager_font_sizes.dart';
import '../../../../core/resources/manager_font_weight.dart';
import '../../../../core/resources/manager_height.dart';
import '../../../../core/resources/manager_strings.dart';
import '../../../../core/resources/manager_width.dart';

class ChooseYourSeatView extends StatefulWidget {
  const ChooseYourSeatView({super.key});

  @override
  State<ChooseYourSeatView> createState() => _ChooseYourSeatViewState();
}

class _ChooseYourSeatViewState extends State<ChooseYourSeatView> {
  // المقاعد المحجوزة والمختارة (مثال)
  List<int> bookedSeats = [];
  List<int> selectedRedSeats = [];
  List<int> selectedBlueSeats = [];

  // توزيع المقاعد حسب الصورة مع تعديل موقع 54 بين 53 و55
  final List<List<int?>> seatRows = [
    [52, 48, 43, 38, 34, 29, 25, 21, 17, 13, 9, 5, 1],
    [53, 49, 44, 39, 35, 30, 26, 22, 18, 14, 10, 6, 2],
    [54, null, null, null, null, null, null, null, null],
    [55, 50, 46, 40, 36, 32, 27, 23, 19, 15, 11, 7, 3],
    [56, 51, 47, 42, 37, 33, 28, 24, 20, 16, 12, 8, 4],
  ];

  // المقاعد التي يجب أن تكون حمراء (الصفين العلويين)
  final Set<int> explicitRedSeats = {
    1, 2, 5, 6, 9, 10, 13, 14, 17, 18, 21, 22, 25, 26, 29, 30, 34, 35, 38, 39, 43, 44, 48, 49, 52, 53,
    // الصفين العلويين بالكامل
    3, 4, 7, 8, 11, 12, 15, 16, 19, 20, 23, 24, 27, 28, 31, 32, 36, 37, 40, 41, 45, 46, 50, 51
  };
  // المقاعد التي يجب أن تكون زرقاء (الصفين السفليين + 54)
  final Set<int> explicitBlueSeats = {
    54, 55, 56, 23, 24, 27, 28, 32, 33, 36, 37, 40, 41, 46, 47, 50, 51, 3, 4, 7, 8, 11, 12, 15, 16, 19, 20
  };
  // لكن سنحسبهم ديناميكياً من seatRows
  Set<int> get redSeats {
    // الصف الأول والثاني بالكامل مع استثناء 52 و53
    final allRed = {
      ...seatRows[0].whereType<int>(),
      ...seatRows[1].whereType<int>(),
    };
    allRed.remove(52);
    allRed.remove(53);
    return allRed;
  }
  Set<int> get blueSeats {
    // الصف الثالث والرابع والخامس بالكامل + 52 و53
    return {
      ...seatRows[2].whereType<int>(),
      ...seatRows[3].whereType<int>(),
      ...seatRows[4].whereType<int>(),
      52, 53,
    };
  }

  @override
  Widget build(BuildContext context) {
    List<List<int?>> paddedSeatRows = seatRows.map((row) {
      List<int?> padded = List<int?>.from(row);
      while (padded.length < 13) {
        padded.add(null);
      }
      return padded;
    }).toList();

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
                        ))
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
          Container(
            margin: EdgeInsets.symmetric(horizontal: ManagerWidth.w30),
            width: double.infinity,
            height: 600,
            decoration: BoxDecoration(
              color: ManagerColors.bgColorTextField,
              borderRadius: BorderRadius.circular(34),
              border: Border.all(
                color: Colors.grey,
                width: 1.5,
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.all(16.0),
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
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
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
                  SizedBox(height: ManagerHeight.h14,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Row(
                        children: [
                          Text('محجوز-أنثى',style: TextStyle(
                            fontSize: ManagerFontSizes.s14,
                          ),),
                          SizedBox(width: ManagerWidth.w4,),
                          Container(
                            width: ManagerWidth.w16,
                            height: ManagerHeight.h16,
                            decoration: BoxDecoration(
                              color: ManagerColors.secondaryColor,
                              borderRadius: BorderRadius.circular(5),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(width: ManagerWidth.w12,),
                      Row(
                        children: [
                          Text('محجوز-ذكر',style: TextStyle(
                            fontSize: ManagerFontSizes.s14,
                          ),),
                          SizedBox(width: ManagerWidth.w4,),
                          Container(
                            width: ManagerWidth.w16,
                            height: ManagerHeight.h16,
                            decoration: BoxDecoration(
                              color: ManagerColors.primaryColor,
                              borderRadius: BorderRadius.circular(5),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(width: ManagerWidth.w12,),
                      Row(
                        children: [
                          Text('مقعد متاح',style: TextStyle(
                            fontSize: ManagerFontSizes.s14,
                          ),),
                          SizedBox(width: ManagerWidth.w4,),
                          Container(
                            width: ManagerWidth.w16,
                            height: ManagerHeight.h16,
                            decoration: BoxDecoration(
                              color: ManagerColors.white,
                              borderRadius: BorderRadius.circular(5),
                              border: Border.all(
                                color: ManagerColors.bgColorOutBoardingButton,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 14.0),
                      child: buildSeatsWithPadding(paddedSeatRows),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget buildSeatsWithPadding(List<List<int?>> paddedRows) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20,vertical: 15),
      decoration: BoxDecoration(
        color: ManagerColors.bgColorTextField,
        borderRadius: BorderRadius.circular(25),
        border: Border.all(
          color: Colors.grey,
          width: 1.5,
        ),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // المقاعد كلها في عمود
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // الصف الأول
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  for (int col = 0; col < paddedRows[0].length; col++)
                    if (paddedRows[0][col] != null)
                      Padding(
                        padding: const EdgeInsets.all(3.0),
                        child: SeatWidget(
                          seat: Seat(
                            number: paddedRows[0][col]!,
                            status: bookedSeats.contains(paddedRows[0][col])
                                ? SeatStatus.booked
                                : selectedRedSeats.contains(paddedRows[0][col])
                                    ? SeatStatus.selectedRed
                                    : selectedBlueSeats.contains(paddedRows[0][col])
                                        ? SeatStatus.selectedBlue
                                        : SeatStatus.available,
                          ),
                          onTap: () {
                            int seatNum = paddedRows[0][col]!;
                            if (!bookedSeats.contains(seatNum)) {
                              _showGenderDialog(seatNum);
                            }
                          },
                        ),
                      )
                    else
                      const SizedBox(width: 41, height: 35),
                ],
              ),
              // الصف الثاني
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  for (int col = 0; col < paddedRows[1].length; col++)
                    if (paddedRows[1][col] != null)
                      Padding(
                        padding: const EdgeInsets.all(3.0),
                        child: SeatWidget(
                          seat: Seat(
                            number: paddedRows[1][col]!,
                            status: bookedSeats.contains(paddedRows[1][col])
                                ? SeatStatus.booked
                                : selectedRedSeats.contains(paddedRows[1][col])
                                    ? SeatStatus.selectedRed
                                    : selectedBlueSeats.contains(paddedRows[1][col])
                                        ? SeatStatus.selectedBlue
                                        : SeatStatus.available,
                          ),
                          onTap: () {
                            int seatNum = paddedRows[1][col]!;
                            if (!bookedSeats.contains(seatNum)) {
                              _showGenderDialog(seatNum);
                            }
                          },
                        ),
                      )
                    else
                      const SizedBox(width: 41, height: 35),
                ],
              ),
              // الصف الثالث
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  for (int col = 0; col < paddedRows[2].length; col++)
                    if (paddedRows[2][col] != null)
                      Padding(
                        padding: const EdgeInsets.all(3.0),
                        child: SeatWidget(
                          seat: Seat(
                            number: paddedRows[2][col]!,
                            status: bookedSeats.contains(paddedRows[2][col])
                                ? SeatStatus.booked
                                : selectedRedSeats.contains(paddedRows[2][col])
                                    ? SeatStatus.selectedRed
                                    : selectedBlueSeats.contains(paddedRows[2][col])
                                        ? SeatStatus.selectedBlue
                                        : SeatStatus.available,
                          ),
                          onTap: () {
                            int seatNum = paddedRows[2][col]!;
                            if (!bookedSeats.contains(seatNum)) {
                              _showGenderDialog(seatNum);
                            }
                          },
                        ),
                      )
                    else
                      const SizedBox(width: 41, height: 35),
                ],
              ),
              // الصف الرابع
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  for (int col = 0; col < paddedRows[3].length; col++)
                    if (paddedRows[3][col] != null)
                      Padding(
                        padding: const EdgeInsets.all(3.0),
                        child: SeatWidget(
                          seat: Seat(
                            number: paddedRows[3][col]!,
                            status: bookedSeats.contains(paddedRows[3][col])
                                ? SeatStatus.booked
                                : selectedRedSeats.contains(paddedRows[3][col])
                                    ? SeatStatus.selectedRed
                                    : selectedBlueSeats.contains(paddedRows[3][col])
                                        ? SeatStatus.selectedBlue
                                        : SeatStatus.available,
                          ),
                          onTap: () {
                            int seatNum = paddedRows[3][col]!;
                            if (!bookedSeats.contains(seatNum)) {
                              _showGenderDialog(seatNum);
                            }
                          },
                        ),
                      )
                    else
                      const SizedBox(width: 41, height: 35),
                ],
              ),
              // الصف الخامس
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  for (int col = 0; col < paddedRows[4].length; col++)
                    if (paddedRows[4][col] != null)
                      Padding(
                        padding: const EdgeInsets.all(3.0),
                        child: SeatWidget(
                          seat: Seat(
                            number: paddedRows[4][col]!,
                            status: bookedSeats.contains(paddedRows[4][col])
                                ? SeatStatus.booked
                                : selectedRedSeats.contains(paddedRows[4][col])
                                    ? SeatStatus.selectedRed
                                    : selectedBlueSeats.contains(paddedRows[4][col])
                                        ? SeatStatus.selectedBlue
                                        : SeatStatus.available,
                          ),
                          onTap: () {
                            int seatNum = paddedRows[4][col]!;
                            if (!bookedSeats.contains(seatNum)) {
                              _showGenderDialog(seatNum);
                            }
                          },
                        ),
                      )
                    else
                      const SizedBox(width: 41, height: 35),
                ],
              ),
            ],
          ),
          // المقود على يمين الصفين العلويين فقط
          SizedBox(width: 12),
          Column(
            children: [
              Container(
                width: 70,
                height: 80, // ارتفاع صفين
                decoration: BoxDecoration(
                  color: Colors.blueAccent,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Container(
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(ManagerAssets.reservations),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Future<void> _showGenderDialog(int seatNum) async {
    await showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Text('اختر الجنس'),
          actions: [
            TextButton(
              onPressed: () {
                setState(() {
                  selectedBlueSeats.add(seatNum);
                  selectedRedSeats.remove(seatNum);
                });
                Navigator.of(context).pop();
              },
              child: Text('ذكر'),
            ),
            TextButton(
              onPressed: () {
                setState(() {
                  selectedRedSeats.add(seatNum);
                  selectedBlueSeats.remove(seatNum);
                });
                Navigator.of(context).pop();
              },
              child: Text('أنثى'),
            ),
          ],
        );
      },
    );
  }
}

enum SeatStatus { available, booked, selectedRed, selectedBlue }

class Seat {
  final int number;
  final SeatStatus status;

  Seat({required this.number, required this.status});
}

class SeatWidget extends StatelessWidget {
  final Seat seat;
  final VoidCallback onTap;

  const SeatWidget({required this.seat, required this.onTap});

  @override
  Widget build(BuildContext context) {
    Color color;
    switch (seat.status) {
      case SeatStatus.available:
        color = Colors.white;
        break;
      case SeatStatus.booked:
        color = Colors.red;
        break;
      case SeatStatus.selectedRed:
        color = Colors.red;
        break;
      case SeatStatus.selectedBlue:
        color = Colors.blue;
        break;
    }

    return GestureDetector(
      onTap: seat.status == SeatStatus.booked ? null : onTap,
      child: Container(
        width: 35,
        height: 35,
        decoration: BoxDecoration(
          color: color,
          border: Border.all(color: Colors.black),
          borderRadius: BorderRadius.circular(6),
        ),
        child: Center(
          child: Text('${seat.number}', style: const TextStyle(fontSize: 12)),
        ),
      ),
    );
  }
}