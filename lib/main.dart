import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tathkra_app/routes/routes.dart';
import 'config/dependancy_injection.dart';
import 'core/resources/manager_colors.dart';

void main() async {
  await initModule();
  runApp(MyApp());
}


class MyApp extends StatelessWidget {
  MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: Routes.verificationCodeView,
      onGenerateRoute: RouteGenerator.getRoute,
    );
  }
}
