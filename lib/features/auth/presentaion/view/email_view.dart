import 'package:flutter/material.dart';

import '../../../../core/resources/manager_assets.dart';
import '../../../../core/resources/manager_colors.dart';
import '../../../../core/resources/manager_font_sizes.dart';
import '../../../../core/resources/manager_font_weight.dart';
import '../../../../core/resources/manager_height.dart';
import '../../../../core/resources/manager_raduis.dart';
import '../../../../core/resources/manager_strings.dart';
import '../../../../core/resources/manager_width.dart';
import '../../../../core/widgets/base_button.dart';

class EmailView extends StatelessWidget {
  const EmailView({super.key});

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
                ManagerStrings.appName,
                style: TextStyle(
                  fontSize: ManagerFontSizes.s48,
                  fontWeight: ManagerFontWeight.w800,
                ),
              ),
              SizedBox(
                width: ManagerWidth.w8,
              ),
              Container(
                width: ManagerWidth.w68,
                height: ManagerHeight.h68,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    // alignment: Alignment.center,
                    image: AssetImage(ManagerAssets.outBoarding1),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: ManagerHeight.h100,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                margin: EdgeInsets.symmetric(horizontal: ManagerWidth.w20),
                child: Text(
                  ManagerStrings.enterYourEmail1,
                  style: TextStyle(
                    color: ManagerColors.black,
                    fontSize: ManagerFontSizes.s24,
                    fontWeight: ManagerFontWeight.regular,
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: ManagerHeight.h12,
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: ManagerWidth.w20),
            child: TextField(
              textAlign: TextAlign.end,
              decoration: InputDecoration(
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
                hintText: ManagerStrings.enterYourEmail,
                hintStyle: TextStyle(
                    color: ManagerColors.bgColorOutBoardingButton,
                    fontSize: ManagerFontSizes.s18),
                filled: true,
                fillColor: ManagerColors.bgColorTextField,
              ),
            ),
          ),
          SizedBox(
            height: ManagerHeight.h40,
          ),
          BaseButton(
            height: ManagerHeight.h56,
            onPressed: (){},
            title: ManagerStrings.sendVerificationCode,
          ),
        ],
      ),
    );
  }
}
