import 'package:get/get.dart';
import '../../../../core/storage/local/database/shared_preferences/app_settings_shared_preferences.dart';

class ReservationsController extends GetxController {
  AppSettingsSharedPreferences appSettingsSharedPreferences =
  AppSettingsSharedPreferences();

  final containerHeight = 200.0.obs;
  RxInt seatCount = 0.obs;


  void toggleHeight() {
    containerHeight.value =
    containerHeight.value == 200.0 ? 400.0 : 200.0;
  }

  void incrementSeats() {
    seatCount++;
  }

  void decrementSeats() {
    if (seatCount > 0) seatCount--;
  }


}
