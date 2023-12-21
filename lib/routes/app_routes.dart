import 'package:flutter/material.dart';
import 'package:madlyn_s_application1/presentation/onboard_screen/onboard_screen.dart';
import 'package:madlyn_s_application1/presentation/register_screen/register_screen.dart';
import 'package:madlyn_s_application1/presentation/login_screen/login_screen.dart';
import 'package:madlyn_s_application1/presentation/otp_screen/otp_screen.dart';
import 'package:madlyn_s_application1/presentation/favorite_screen/favorite_screen.dart';
import 'package:madlyn_s_application1/presentation/home_container_screen/home_container_screen.dart';
import 'package:madlyn_s_application1/presentation/search_screen/search_screen.dart';
import 'package:madlyn_s_application1/presentation/about_screen/about_screen.dart';
import 'package:madlyn_s_application1/presentation/list_destination_screen/list_destination_screen.dart';
import 'package:madlyn_s_application1/presentation/detail_destination_screen/detail_destination_screen.dart';
import 'package:madlyn_s_application1/presentation/message_one_screen/message_one_screen.dart';
import 'package:madlyn_s_application1/presentation/message_screen/message_screen.dart';
import 'package:madlyn_s_application1/presentation/payment_method_screen/payment_method_screen.dart';
import 'package:madlyn_s_application1/presentation/app_navigation_screen/app_navigation_screen.dart';

class AppRoutes {
  static const String onboardScreen = '/onboard_screen';

  static const String registerScreen = '/register_screen';

  static const String loginScreen = '/login_screen';

  static const String otpScreen = '/otp_screen';

  static const String favoriteScreen = '/favorite_screen';

  static const String homePage = '/home_page';

  static const String homeTabContainerPage = '/home_tab_container_page';

  static const String homeContainerScreen = '/home_container_screen';

  static const String searchScreen = '/search_screen';

  static const String notificationPage = '/notification_page';

  static const String notificationTabContainerPage =
      '/notification_tab_container_page';

  static const String profilePage = '/profile_page';

  static const String aboutScreen = '/about_screen';

  static const String listDestinationScreen = '/list_destination_screen';

  static const String detailDestinationScreen = '/detail_destination_screen';

  static const String messageOneScreen = '/message_one_screen';

  static const String messageScreen = '/message_screen';

  static const String paymentMethodScreen = '/payment_method_screen';

  static const String appNavigationScreen = '/app_navigation_screen';

  static Map<String, WidgetBuilder> routes = {
    onboardScreen: (context) => OnboardScreen(),
    registerScreen: (context) => RegisterScreen(),
    loginScreen: (context) => LoginScreen(),
    otpScreen: (context) => OtpScreen(),
    favoriteScreen: (context) => FavoriteScreen(),
    homeContainerScreen: (context) => HomeContainerScreen(),
    searchScreen: (context) => SearchScreen(),
    aboutScreen: (context) => AboutScreen(),
    listDestinationScreen: (context) => ListDestinationScreen(),
    detailDestinationScreen: (context) => DetailDestinationScreen(),
    messageOneScreen: (context) => MessageOneScreen(),
    messageScreen: (context) => MessageScreen(),
    paymentMethodScreen: (context) => PaymentMethodScreen(),
    appNavigationScreen: (context) => AppNavigationScreen()
  };
}
