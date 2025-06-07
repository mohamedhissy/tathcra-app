import 'package:flutter/material.dart';
import 'package:tathkra_app/core/resources/manager_colors.dart';
import 'package:tathkra_app/core/resources/manager_font_sizes.dart';
import 'package:tathkra_app/core/resources/manager_font_weight.dart';
import 'package:tathkra_app/core/resources/manager_height.dart';
import 'package:tathkra_app/core/resources/manager_strings.dart';
import 'package:tathkra_app/core/resources/manager_width.dart';
import 'package:tathkra_app/core/widgets/base_button.dart';

import '../../../../core/resources/manager_assets.dart';
import '../../../../core/resources/manager_raduis.dart';

class OutBoardingView extends StatelessWidget {
  const OutBoardingView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
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
              height: ManagerHeight.h20,
            ),
            Container(
              width: ManagerWidth.w120,
              height: ManagerHeight.h128,
              decoration: BoxDecoration(
                image: DecorationImage(
                  // alignment: Alignment.center,
                  image: AssetImage(ManagerAssets.outBoarding2),
                ),
              ),
            ),
            SizedBox(
              height: ManagerHeight.h20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  ManagerStrings.appName,
                  style: TextStyle(
                      fontSize: ManagerFontSizes.s36,
                      fontWeight: ManagerFontWeight.bold,
                      color: ManagerColors.primaryColor),
                ),
                Text(
                  ManagerStrings.welcomeTo,
                  style: TextStyle(
                    fontSize: ManagerFontSizes.s34,
                    fontWeight: ManagerFontWeight.bold,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: ManagerHeight.h20,
            ),
            BaseButton(
              width: 255,
              height: 64,
              onPressed: () {},
              title: ManagerStrings.guestLogin,
            ),
            SizedBox(
              height: ManagerHeight.h20,
            ),
            ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: ManagerColors.transparent,
                  elevation: 0,
                  minimumSize: Size(
                    ManagerWidth.w255,
                    ManagerHeight.h64,
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(ManagerRadius.r25),
                    side: BorderSide(
                        color: ManagerColors.bgColorOutBoardingButton,
                        width: ManagerWidth.w1),
                  ),
                ),
                child: Text(
                  ManagerStrings.login,
                  style: TextStyle(
                    color: ManagerColors.bgColorOutBoardingButton,
                    fontWeight: ManagerFontWeight.regular,
                    fontSize: ManagerFontSizes.s26,
                  ),
                )),
            SizedBox(
              height: ManagerHeight.h40,
            ),
            Text(
              ManagerStrings.createANewAccount,
              style: TextStyle(
                color: ManagerColors.bgColorOutBoardingButton,
                fontSize: ManagerFontSizes.s24,
                fontWeight: ManagerFontWeight.regular,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
