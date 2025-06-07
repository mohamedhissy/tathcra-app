import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tathkra_app/features/out_boarding/presentaion/controller/out_boarding_controller.dart';
import '../core/storage/local/database/shared_preferences/app_settings_shared_preferences.dart';

initModule() async{
  WidgetsFlutterBinding.ensureInitialized();
  await AppSettingsSharedPreferences().initPreferences();
}

initOutBoardingView() {
  Get.put<OutBoardingController>(OutBoardingController());
}

disposeSplash() {
  Get.delete<OutBoardingController>();
}




