import 'package:flutter/material.dart';
import 'package:tathkra_app/core/resources/manager_height.dart';

import '../../../../core/resources/manager_colors.dart';
import '../../../../core/resources/manager_font_sizes.dart';
import '../../../../core/resources/manager_font_weight.dart';
import '../../../../core/resources/manager_raduis.dart';
import '../../../../core/resources/manager_strings.dart';
import '../../../../core/resources/manager_width.dart';
import '../../../../core/widgets/base_button.dart';

class VerificationCodeView extends StatelessWidget {
  const VerificationCodeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                ManagerStrings.enterTheVerificationCode,
                style: TextStyle(
                  color: ManagerColors.black,
                  fontSize: ManagerFontSizes.s32,
                  fontWeight: ManagerFontWeight.bold,
                ),
              ),
            ],
          ),
          SizedBox(height: ManagerHeight.h6,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                ManagerStrings.weSentADigitCodeTo,
                style: TextStyle(
                  color: ManagerColors.bgColorOutBoardingButton,
                  fontSize: ManagerFontSizes.s20,
                  fontWeight: ManagerFontWeight.regular,
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'mhmd@gmail.com',
                style: TextStyle(
                  color: ManagerColors.bgColorOutBoardingButton,
                  fontSize: ManagerFontSizes.s20,
                  fontWeight: ManagerFontWeight.regular,
                ),
              ),
            ],
          ),
          SizedBox(height: ManagerHeight.h14,),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 110),
            child: TextField(
              textAlign: TextAlign.center,
              decoration: InputDecoration(
                contentPadding: const EdgeInsets.symmetric(vertical: 26),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(ManagerRadius.r25),
                  ),
                  borderSide: BorderSide(
                    color: ManagerColors.bgColorOutBoardingButton,
                  ),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius:
                  BorderRadius.all(Radius.circular(ManagerRadius.r25)),
                  borderSide: BorderSide(
                    color: ManagerColors.bgColorOutBoardingButton,
                  ),
                ),
                filled: true,
                fillColor: ManagerColors.bgColorTextField,
              ),
              style: TextStyle(
                fontSize: ManagerFontSizes.s28,
              ),
            ),
          ),
          SizedBox(height: ManagerHeight.h18,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                ManagerStrings.sendAgain,
                style: TextStyle(
                  color: ManagerColors.primaryColor,
                  fontSize: ManagerFontSizes.s20,
                  fontWeight: ManagerFontWeight.regular,
                ),
              ),
            ],
          ),
          SizedBox(height: ManagerHeight.h18,),
          BaseButton(
            width: ManagerWidth.w200,
            height: ManagerHeight.h64,
            onPressed: () {},
            title: ManagerStrings.verification,
          ),
        ],
      ),
    );
  }
}
