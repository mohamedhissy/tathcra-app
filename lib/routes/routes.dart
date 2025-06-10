import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tathkra_app/features/auth/presentaion/view/email_view.dart';
import 'package:tathkra_app/features/auth/presentaion/view/login_view.dart';
import 'package:tathkra_app/features/home/presentaion/view/home_view.dart';
import '../config/dependancy_injection.dart';
import '../core/resources/manager_strings.dart';
import '../features/auth/presentaion/view/register_view.dart';
import '../features/auth/presentaion/view/reset_password_view.dart';
import '../features/auth/presentaion/view/verification_code_view.dart';
import '../features/out_boarding/presentaion/view/out_boarding_view.dart';
import '../features/reservations/presentaion/view/reservations_view.dart';

class Routes {
  static const String outBoardingView = '/out_boarding_view';
  static const String loginView = '/login_view';
  static const String registerView = '/register_view';
  static const String homeView = '/home_view';
  static const String profileView = '/profile_view';
  static const String detailsView = '/view_details';
  static const String settingView = '/setting_view';
  static const String cartView = '/cart_view';
  static const String brandView = '/view_details';
  static const String verificationCodeView = '/verification_code_view';
  static const String emailView = '/email_view';
  static const String resetPasswordView = '/reset_password_view';
  static const String reservationsView = '/reservations_view';

}

class RouteGenerator {
  static Route<dynamic> getRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.outBoardingView:
        initOutBoardingView();
        return MaterialPageRoute(builder: (_) => const OutBoardingView());
      case Routes.loginView:
        return MaterialPageRoute(builder: (_) => const LoginView());
      case Routes.registerView:
        return MaterialPageRoute(builder: (_) => const RegisterView());
      case Routes.verificationCodeView:
        return MaterialPageRoute(builder: (_) => const VerificationCodeView());
      case Routes.emailView:
        return MaterialPageRoute(builder: (_) => const EmailView());
      case Routes.resetPasswordView:
        return MaterialPageRoute(builder: (_) => const ResetPasswordView());
      case Routes.homeView:
        initHome();
        return MaterialPageRoute(builder: (_) => const HomeView());
      case Routes.reservationsView:
        initReservations();
        return MaterialPageRoute(builder: (_) => const ReservationsView());
      default:
        return unDefineRoute();
    }
  }

  static Route<dynamic> unDefineRoute() {
    return MaterialPageRoute(
      builder: (_) => Scaffold(
        appBar: AppBar(),
        body: Center(
          child: Text(ManagerStrings.notFoundRoute),
        ),
      ),
    );
  }
}

