import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tathkra_app/core/resources/manager_colors.dart';
import '../../../../core/storage/local/database/shared_preferences/app_settings_shared_preferences.dart';

class HomeController extends GetxController {
  AppSettingsSharedPreferences appSettingsSharedPreferences =
  AppSettingsSharedPreferences();


  String? fromRegion;
  String? toRegion;
  DateTime? selectedDate;


  void setFromRegion(String value) {
    fromRegion = value;
    update();
  }

  void setToRegion(String value) {
    toRegion = value;
    update();
  }

  void selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime.now(),
      lastDate: DateTime(2100),
      locale: const Locale('ar', ''), // لعرض بالعربية
      builder: (context, child) {
        return Theme(
          data: Theme.of(context).copyWith(
            colorScheme: ColorScheme.light(
              primary: ManagerColors.primaryColor, // لون العنوان والسنة
              onPrimary: ManagerColors.white, // لون نص العنوان
              onSurface: ManagerColors.black, // لون النصوص العامة
            ),
            textButtonTheme: TextButtonThemeData(
              style: TextButton.styleFrom(
                foregroundColor: ManagerColors.blue, // لون زر "موافق" و"إلغاء"
              ),
            ),
          ),
          child: child!,
        );
      },
    );

    if (picked != null) {
      selectedDate = picked;
      update();
    }
  }



}
