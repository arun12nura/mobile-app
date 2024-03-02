import 'package:dosvendor/presentation/profile_lap_bottomsheet/profile_lap_bottomsheet.dart';
import 'package:flutter/material.dart';
import 'package:dosvendor/presentation/log_in_lap_screen/log_in_lap_screen.dart';
import 'package:dosvendor/presentation/create_account_lap_screen/create_account_lap_screen.dart';
import 'package:dosvendor/presentation/laptop_booking_screen/laptop_booking_screen.dart';
import 'package:dosvendor/presentation/account_created_lap_screen/account_created_lap_screen.dart';
import 'package:dosvendor/presentation/accepted_status_lap_screen/accepted_status_lap_screen.dart';
import 'package:dosvendor/presentation/edit_profile_screen/edit_profile_screen.dart';
import 'package:dosvendor/presentation/my_services_screen/my_services_screen.dart';
import 'package:dosvendor/presentation/supporrt_screen/supporrt_screen.dart';
import 'package:dosvendor/presentation/about_dos_screen/about_dos_screen.dart';
import 'package:dosvendor/presentation/settings_screen/settings_screen.dart';
import 'package:dosvendor/presentation/start_screen/start_screen.dart';
import 'package:dosvendor/presentation/services_screen/services_screen.dart';
import 'package:dosvendor/presentation/log_in_car_screen/log_in_car_screen.dart';
import 'package:dosvendor/presentation/create_account_car_screen/create_account_car_screen.dart';
import 'package:dosvendor/presentation/car_booking_screen/car_booking_screen.dart';
import 'package:dosvendor/presentation/qr_code_screen/qr_code_screen.dart';
import 'package:dosvendor/presentation/account_created_car_screen/account_created_car_screen.dart';
import 'package:dosvendor/presentation/accepted_status_car_screen/accepted_status_car_screen.dart';
import 'package:dosvendor/presentation/location_screen/location_screen.dart';
import 'package:dosvendor/presentation/log_in_bike_screen/log_in_bike_screen.dart';
import 'package:dosvendor/presentation/verification_change_pass_screen/verification_change_pass_screen.dart';
import 'package:dosvendor/presentation/create_account_bike_screen/create_account_bike_screen.dart';
import 'package:dosvendor/presentation/account_created_bike_screen/account_created_bike_screen.dart';
import 'package:dosvendor/presentation/bike_booking_screen/bike_booking_screen.dart';
import 'package:dosvendor/presentation/accepted_status_bike_screen/accepted_status_bike_screen.dart';
import 'package:dosvendor/presentation/app_navigation_screen/app_navigation_screen.dart';

class AppRoutes {
  static const String logInLapScreen = '/log_in_lap_screen';

  static const String createAccountLapScreen = '/create_account_lap_screen';

  static const String laptopBookingScreen = '/laptop_booking_screen';

  static const String accountCreatedLapScreen = '/account_created_lap_screen';

  static const String acceptedStatusLapScreen = '/accepted_status_lap_screen';

  static const String editProfileScreen = '/edit_profile_screen';

  static const String myServicesScreen = '/my_services_screen';

  static const String supporrtScreen = '/supporrt_screen';

  static const String aboutDosScreen = '/about_dos_screen';

  static const String settingsScreen = '/settings_screen';

  static const String startScreen = '/start_screen';

  static const String servicesScreen = '/services_screen';

  static const String logInCarScreen = '/log_in_car_screen';

  static const String createAccountCarScreen = '/create_account_car_screen';

  static const String carBookingScreen = '/car_booking_screen';

  static const String qrCodeScreen = '/qr_code_screen';

  static const String accountCreatedCarScreen = '/account_created_car_screen';

  static const String acceptedStatusCarScreen = '/accepted_status_car_screen';

  static const String locationScreen = '/location_screen';

  static const String logInBikeScreen = '/log_in_bike_screen';

  static const String verificationChangePassScreen =
      '/verification_change_pass_screen';

  static const String createAccountBikeScreen = '/create_account_bike_screen';

  static const String accountCreatedBikeScreen = '/account_created_bike_screen';

  static const String bikeBookingScreen = '/bike_booking_screen';

  static const String acceptedStatusBikeScreen = '/accepted_status_bike_screen';

  static const String appNavigationScreen = '/app_navigation_screen';

  static const String profileLapBottomsheet = '/profile_lap_bottomsheet';

  static Map<String, WidgetBuilder> routes = {
    logInLapScreen: (context) => LogInLapScreen(),
    createAccountLapScreen: (context) => CreateAccountLapScreen(),
    laptopBookingScreen: (context) => LaptopBookingScreen(),
    accountCreatedLapScreen: (context) => AccountCreatedLapScreen(),
    acceptedStatusLapScreen: (context) => AcceptedStatusLapScreen(),
    editProfileScreen: (context) => EditProfileScreen(),
    myServicesScreen: (context) => MyServicesScreen(),
    supporrtScreen: (context) => SupporrtScreen(),
    aboutDosScreen: (context) => AboutDosScreen(),
    settingsScreen: (context) => SettingsScreen(),
    startScreen: (context) => StartScreen(),
    servicesScreen: (context) => ServicesScreen(),
    logInCarScreen: (context) => LogInCarScreen(),
    createAccountCarScreen: (context) => CreateAccountCarScreen(),
    carBookingScreen: (context) => CarBookingScreen(),
    qrCodeScreen: (context) => QrCodeScreen(),
    accountCreatedCarScreen: (context) => AccountCreatedCarScreen(),
    acceptedStatusCarScreen: (context) => AcceptedStatusCarScreen(),
    locationScreen: (context) => LocationScreen(),
    logInBikeScreen: (context) => LogInBikeScreen(),
    verificationChangePassScreen: (context) => VerificationChangePassScreen(),
    createAccountBikeScreen: (context) => CreateAccountBikeScreen(),
    accountCreatedBikeScreen: (context) => AccountCreatedBikeScreen(),
    bikeBookingScreen: (context) => BikeBookingScreen(),
    acceptedStatusBikeScreen: (context) => AcceptedStatusBikeScreen(),
    appNavigationScreen: (context) => AppNavigationScreen(),
    profileLapBottomsheet: (context) => ProfileLapBottomsheet()
  };
}
