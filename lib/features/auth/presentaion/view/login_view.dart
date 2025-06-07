import 'package:flutter/material.dart';
import 'package:tathkra_app/core/resources/manager_colors.dart';

import '../../../../core/resources/manager_assets.dart';
import '../../../../core/resources/manager_font_sizes.dart';
import '../../../../core/resources/manager_font_weight.dart';
import '../../../../core/resources/manager_height.dart';
import '../../../../core/resources/manager_raduis.dart';
import '../../../../core/resources/manager_strings.dart';
import '../../../../core/resources/manager_width.dart';
import '../../../../core/widgets/base_button.dart';
import '../../../../routes/routes.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: ManagerHeight.h160,
            ),
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
                      image: AssetImage(ManagerAssets.outBoarding1),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: ManagerHeight.h14,
            ),
            Text(
              ManagerStrings.enterYourEmailAndPassword,
              style: TextStyle(
                color: ManagerColors.bgColorOutBoardingButton,
                fontSize: ManagerFontSizes.s20,
                fontWeight: ManagerFontWeight.regular,
              ),
            ),
            SizedBox(
              height: ManagerHeight.h20,
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: ManagerWidth.w30),
              child: TextField(
                textAlign: TextAlign.center,
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
                  hintText: ManagerStrings.email,
                  hintStyle: TextStyle(
                      color: ManagerColors.bgColorOutBoardingButton,
                      fontSize: ManagerFontSizes.s18),
                  filled: true,
                  fillColor: ManagerColors.bgColorTextField,
                ),
              ),
            ),
            SizedBox(
              height: ManagerHeight.h20,
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: ManagerWidth.w30),
              child: TextField(
                textAlign: TextAlign.center,
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
                  hintText: ManagerStrings.password,
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
              width: ManagerWidth.w214,
              height: ManagerHeight.h75,
              onPressed: () {},
              title: ManagerStrings.login,
            ),
            SizedBox(
              height: ManagerHeight.h40,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  ManagerStrings.forgotYourPassword,
                  style: TextStyle(
                      color: ManagerColors.black,
                      fontSize: ManagerFontSizes.s16,
                      fontWeight: ManagerFontWeight.w400),
                ),
                SizedBox(
                  width: ManagerWidth.w40,
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.pushReplacementNamed(context, Routes.registerView);
                  },
                  child: Text(
                    ManagerStrings.signUp,
                    style: TextStyle(
                      fontWeight: ManagerFontWeight.regular,
                      fontSize: ManagerFontSizes.s16,
                      color: ManagerColors.primaryColor,
                    ),
                  ),
                ),
                SizedBox(
                  width: ManagerWidth.w8,
                ),
                Text(
                  ManagerStrings.dontHaveAnAccount,
                  style: TextStyle(
                      color: ManagerColors.black,
                      fontSize: ManagerFontSizes.s16,
                      fontWeight: ManagerFontWeight.w400),
                ),
              ],
            ),
            SizedBox(
              height: ManagerHeight.h60,
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: ManagerWidth.w30),
              child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: ManagerColors.red,
                    elevation: 0,
                    minimumSize: Size(
                      ManagerWidth.w120,
                      ManagerHeight.h40,
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(ManagerRadius.r25),
                    ),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        ManagerStrings.g,
                        style: TextStyle(
                          color: ManagerColors.white,
                          fontWeight: ManagerFontWeight.bold,
                          fontSize: ManagerFontSizes.s20,
                        ),
                      ),
                      SizedBox(width: ManagerWidth.w20,),
                      Text(
                        ManagerStrings.signInWithGoogle,
                        style: TextStyle(
                          color: ManagerColors.white,
                          fontWeight: ManagerFontWeight.regular,
                          fontSize: ManagerFontSizes.s16,
                        ),
                      ),
                    ],
                  )),
            ),
          ],
        ),
      ),
    );
  }
}
