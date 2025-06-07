import 'package:flutter/material.dart';
import '../../../../core/resources/manager_assets.dart';
import '../../../../core/resources/manager_font_sizes.dart';
import '../../../../core/resources/manager_font_weight.dart';
import '../../../../core/resources/manager_height.dart';
import '../../../../core/resources/manager_strings.dart';
import '../../../../core/resources/manager_width.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        automaticallyImplyLeading: false,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              ManagerStrings.appName,
              style: TextStyle(
                fontSize: ManagerFontSizes.s36,
                fontWeight: ManagerFontWeight.bold,
              ),
            ),
            SizedBox(
              width: ManagerWidth.w8,
            ),
            Container(
              width: ManagerWidth.w48,
              height: ManagerHeight.h48,
              decoration: BoxDecoration(
                image: DecorationImage(
                  // alignment: Alignment.center,
                  image: AssetImage(ManagerAssets.outBoarding1),
                ),
              ),
            ),
          ],
        ),
      ),
      body: Container(),
    );
  }
}
