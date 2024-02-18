import 'package:flutter/material.dart';
import 'package:dosvendor/presentation/log_in_screen/log_in_screen.dart';
import 'package:dosvendor/presentation/log_in_one_screen/log_in_one_screen.dart';
import 'package:dosvendor/presentation/log_in_two_screen/log_in_two_screen.dart';
import 'package:dosvendor/presentation/sign_in_two_screen/sign_in_two_screen.dart';
import 'package:dosvendor/presentation/laptop_booking_screen/laptop_booking_screen.dart';
import 'package:dosvendor/presentation/account_created_screen/account_created_screen.dart';
import 'package:dosvendor/presentation/edit_profile_screen/edit_profile_screen.dart';
import 'package:dosvendor/presentation/my_services_screen/my_services_screen.dart';
import 'package:dosvendor/presentation/supporrt_screen/supporrt_screen.dart';
import 'package:dosvendor/presentation/about_dos_screen/about_dos_screen.dart';
import 'package:dosvendor/presentation/settings_screen/settings_screen.dart';
import 'package:dosvendor/presentation/accepted_status_screen/accepted_status_screen.dart';
import 'package:dosvendor/presentation/log_in_three_screen/log_in_three_screen.dart';
import 'package:dosvendor/presentation/sign_in_one_screen/sign_in_one_screen.dart';
import 'package:dosvendor/presentation/car_booking_screen/car_booking_screen.dart';
import 'package:dosvendor/presentation/account_created_one_screen/account_created_one_screen.dart';
import 'package:dosvendor/presentation/location_screen/location_screen.dart';
import 'package:dosvendor/presentation/change_password_screen/change_password_screen.dart';
import 'package:dosvendor/presentation/log_in_four_screen/log_in_four_screen.dart';
import 'package:dosvendor/presentation/sign_in_screen/sign_in_screen.dart';
import 'package:dosvendor/presentation/account_created_two_screen/account_created_two_screen.dart';
import 'package:dosvendor/presentation/bike_booking_screen/bike_booking_screen.dart';
import 'package:dosvendor/presentation/profile_page_screen/profile_page_screen.dart';
import 'package:dosvendor/presentation/app_navigation_screen/app_navigation_screen.dart';

class AppRoutes {
  static const String logInScreen = '/log_in_screen';

  static const String logInOneScreen = '/log_in_one_screen';

  static const String logInTwoScreen = '/log_in_two_screen';

  static const String signInTwoScreen = '/sign_in_two_screen';

  static const String laptopBookingScreen = '/laptop_booking_screen';

  static const String accountCreatedScreen = '/account_created_screen';

  static const String editProfileScreen = '/edit_profile_screen';

  static const String myServicesScreen = '/my_services_screen';

  static const String supporrtScreen = '/supporrt_screen';

  static const String aboutDosScreen = '/about_dos_screen';

  static const String settingsScreen = '/settings_screen';

  static const String acceptedStatusScreen = '/accepted_status_screen';

  static const String logInThreeScreen = '/log_in_three_screen';

  static const String signInOneScreen = '/sign_in_one_screen';

  static const String carBookingScreen = '/car_booking_screen';

  static const String accountCreatedOneScreen = '/account_created_one_screen';

  static const String locationScreen = '/location_screen';

  static const String changePasswordScreen = '/change_password_screen';

  static const String logInFourScreen = '/log_in_four_screen';

  static const String signInScreen = '/sign_in_screen';

  static const String accountCreatedTwoScreen = '/account_created_two_screen';

  static const String bikeBookingScreen = '/bike_booking_screen';

  static const String profilePageScreen = '/profile_page_screen';

  static const String appNavigationScreen = '/app_navigation_screen';

  static Map<String, WidgetBuilder> routes = {
    logInScreen: (context) => LogInScreen(),
    logInOneScreen: (context) => LogInOneScreen(),
    logInTwoScreen: (context) => LogInTwoScreen(),
    signInTwoScreen: (context) => SignInTwoScreen(),
    laptopBookingScreen: (context) => LaptopBookingScreen(),
    accountCreatedScreen: (context) => AccountCreatedScreen(),
    editProfileScreen: (context) => EditProfileScreen(),
    myServicesScreen: (context) => MyServicesScreen(),
    supporrtScreen: (context) => SupporrtScreen(),
    aboutDosScreen: (context) => AboutDosScreen(),
    settingsScreen: (context) => SettingsScreen(),
    acceptedStatusScreen: (context) => AcceptedStatusScreen(),
    logInThreeScreen: (context) => LogInThreeScreen(),
    signInOneScreen: (context) => SignInOneScreen(),
    carBookingScreen: (context) => CarBookingScreen(),
    accountCreatedOneScreen: (context) => AccountCreatedOneScreen(),
    locationScreen: (context) => LocationScreen(),
    changePasswordScreen: (context) => ChangePasswordScreen(),
    logInFourScreen: (context) => LogInFourScreen(),
    signInScreen: (context) => SignInScreen(),
    accountCreatedTwoScreen: (context) => AccountCreatedTwoScreen(),
    bikeBookingScreen: (context) => BikeBookingScreen(),
    profilePageScreen: (context) => ProfilePageScreen(),
    appNavigationScreen: (context) => AppNavigationScreen()
  };
}
