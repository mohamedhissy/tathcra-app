import 'package:get/get.dart';
import '../../../../core/storage/local/database/shared_preferences/app_settings_shared_preferences.dart';

class ReservationsController extends GetxController {
  AppSettingsSharedPreferences appSettingsSharedPreferences =
  AppSettingsSharedPreferences();

  // متغير يتحكم بالتوسعة
  var isExpanded = false.obs;

// دالة تبديل الحالة
  void toggleExpansion() {
    isExpanded.value = !isExpanded.value;
  }


}
