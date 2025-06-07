import 'package:flutter/material.dart';
import 'package:tathkra_app/core/widgets/base_button.dart';

import '../../../../core/resources/manager_colors.dart';
import '../../../../core/resources/manager_font_sizes.dart';
import '../../../../core/resources/manager_font_weight.dart';
import '../../../../core/resources/manager_height.dart';
import '../../../../core/resources/manager_raduis.dart';
import '../../../../core/resources/manager_strings.dart';
import '../../../../core/resources/manager_width.dart';
import '../../../../routes/routes.dart';

class RegisterView extends StatelessWidget {
  const RegisterView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                margin: EdgeInsets.symmetric(horizontal: ManagerWidth.w20),
                child: Text(
                  ManagerStrings.createANewAccount,
                  style: TextStyle(
                    color: ManagerColors.primaryColor,
                    fontSize: ManagerFontSizes.s36,
                    fontWeight: ManagerFontWeight.bold,
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: ManagerHeight.h20,),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                margin:
                EdgeInsets.symmetric(horizontal: ManagerWidth.w20),
                child: Container(
                  child: Text(
                    ManagerStrings.name,
                    style: TextStyle(
                      fontSize: ManagerFontSizes.s20,
                      fontWeight: ManagerFontWeight.bold,
                    ),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: ManagerHeight.h10,),
          Container(
            height: 50,
            margin: EdgeInsets.symmetric(horizontal: ManagerWidth.w20),
            child: TextField(
              textAlign: TextAlign.end,
              decoration: InputDecoration(
                contentPadding: const EdgeInsets.symmetric(vertical: 14, horizontal: 16), // 🔸 التعديل هنا
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(ManagerRadius.r20),
                  ),
                  borderSide: BorderSide(
                    color: ManagerColors.bgColorOutBoardingButton,
                  ),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(ManagerRadius.r20),
                  ),
                  borderSide: BorderSide(
                    color: ManagerColors.bgColorOutBoardingButton,
                  ),
                ),
                hintText: ManagerStrings.fullName,
                hintStyle: TextStyle(
                  color: ManagerColors.bgColorOutBoardingButton,
                  fontSize: ManagerFontSizes.s20,
                ),
                filled: true,
                fillColor: ManagerColors.bgColorTextField,
              ),
            ),
          ),
          SizedBox(height: ManagerHeight.h16,),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                margin:
                EdgeInsets.symmetric(horizontal: ManagerWidth.w20),
                child: Container(
                  child: Text(
                    ManagerStrings.phone,
                    style: TextStyle(
                      fontSize: ManagerFontSizes.s20,
                      fontWeight: ManagerFontWeight.bold,
                    ),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: ManagerHeight.h10,),
          Container(
            height: 50,
            margin: EdgeInsets.symmetric(horizontal: ManagerWidth.w20),
            child: TextField(
              textAlign: TextAlign.end,
              decoration: InputDecoration(
                contentPadding: const EdgeInsets.symmetric(vertical: 14, horizontal: 16), // 🔸 التعديل هنا
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(ManagerRadius.r20),
                  ),
                  borderSide: BorderSide(
                    color: ManagerColors.bgColorOutBoardingButton,
                  ),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(ManagerRadius.r20),
                  ),
                  borderSide: BorderSide(
                    color: ManagerColors.bgColorOutBoardingButton,
                  ),
                ),
                hintText: ManagerStrings.enterYourPhone,
                hintStyle: TextStyle(
                  color: ManagerColors.bgColorOutBoardingButton,
                  fontSize: ManagerFontSizes.s20,
                ),
                filled: true,
                fillColor: ManagerColors.bgColorTextField,
              ),
            ),
          ),
          SizedBox(height: ManagerHeight.h16,),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                margin:
                EdgeInsets.symmetric(horizontal: ManagerWidth.w20),
                child: Container(
                  child: Text(
                    ManagerStrings.email,
                    style: TextStyle(
                      fontSize: ManagerFontSizes.s20,
                      fontWeight: ManagerFontWeight.bold,
                    ),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: ManagerHeight.h10,),
          Container(
            height: 50,
            margin: EdgeInsets.symmetric(horizontal: ManagerWidth.w20),
            child: TextField(
              textAlign: TextAlign.end,
              decoration: InputDecoration(
                contentPadding: const EdgeInsets.symmetric(vertical: 14, horizontal: 16), // 🔸 التعديل هنا
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(ManagerRadius.r20),
                  ),
                  borderSide: BorderSide(
                    color: ManagerColors.bgColorOutBoardingButton,
                  ),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(ManagerRadius.r20),
                  ),
                  borderSide: BorderSide(
                    color: ManagerColors.bgColorOutBoardingButton,
                  ),
                ),
                hintText: ManagerStrings.enterYourEmail,
                hintStyle: TextStyle(
                  color: ManagerColors.bgColorOutBoardingButton,
                  fontSize: ManagerFontSizes.s20,
                ),
                filled: true,
                fillColor: ManagerColors.bgColorTextField,
              ),
            ),
          ),
          SizedBox(height: ManagerHeight.h16,),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                margin:
                EdgeInsets.symmetric(horizontal: ManagerWidth.w20),
                child: Container(
                  child: Text(
                    ManagerStrings.password,
                    style: TextStyle(
                      fontSize: ManagerFontSizes.s20,
                      fontWeight: ManagerFontWeight.bold,
                    ),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: ManagerHeight.h10,),
          Container(
            height: 50,
            margin: EdgeInsets.symmetric(horizontal: ManagerWidth.w20),
            child: TextField(
              textAlign: TextAlign.end,
              decoration: InputDecoration(
                contentPadding: const EdgeInsets.symmetric(vertical: 14, horizontal: 16), // 🔸 التعديل هنا
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(ManagerRadius.r20),
                  ),
                  borderSide: BorderSide(
                    color: ManagerColors.bgColorOutBoardingButton,
                  ),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(ManagerRadius.r20),
                  ),
                  borderSide: BorderSide(
                    color: ManagerColors.bgColorOutBoardingButton,
                  ),
                ),
                hintText: ManagerStrings.enterThePassword,
                hintStyle: TextStyle(
                  color: ManagerColors.bgColorOutBoardingButton,
                  fontSize: ManagerFontSizes.s20,
                ),
                filled: true,
                fillColor: ManagerColors.bgColorTextField,
              ),
            ),
          ),
          SizedBox(height: ManagerHeight.h40,),
          BaseButton(
            height: ManagerHeight.h56,
              onPressed: (){},
            title: ManagerStrings.createANewAccount,
          ),
          SizedBox(height: ManagerHeight.h30,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              GestureDetector(
                onTap: (){
                  Navigator.pushReplacementNamed(context, Routes.loginView);
                },
                child: Text(ManagerStrings.signIn,
                  style: TextStyle(
                    fontWeight: ManagerFontWeight.regular,
                    fontSize: ManagerFontSizes.s16,
                    color: ManagerColors.primaryColor,
                  ),),
              ),
              SizedBox(width: ManagerWidth.w12,),
              Text(
                ManagerStrings.haveAnAccount,
                style: TextStyle(
                    color: ManagerColors.black,
                    fontSize: ManagerFontSizes.s16,
                    fontWeight: ManagerFontWeight.w400),
              ),
            ],
          )
        ],
      ),
    );
  }
}
