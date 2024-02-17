import 'package:flutter/material.dart';
import 'package:dos/presentation/st_page_screen/st_page_screen.dart';
import 'package:dos/presentation/log_in_screen/log_in_screen.dart';
import 'package:dos/presentation/sign_in_screen/sign_in_screen.dart';
import 'package:dos/presentation/created_account_screen/created_account_screen.dart';
import 'package:dos/presentation/home_page_screen/home_page_screen.dart';
import 'package:dos/presentation/edit_profile_page_screen/edit_profile_page_screen.dart';
import 'package:dos/presentation/my_booking_screen/my_booking_screen.dart';
import 'package:dos/presentation/referal_page_screen/referal_page_screen.dart';
import 'package:dos/presentation/settings_page_screen/settings_page_screen.dart';
import 'package:dos/presentation/previous_bookings_screen/previous_bookings_screen.dart';
import 'package:dos/presentation/profile_page_screen/profile_page_screen.dart';
import 'package:dos/presentation/change_locatoin_page_screen/change_locatoin_page_screen.dart';
import 'package:dos/presentation/forgot_password_screen/forgot_password_screen.dart';
import 'package:dos/presentation/accepted_status_screen/accepted_status_screen.dart';
import 'package:dos/presentation/rejected_status_screen/rejected_status_screen.dart';
import 'package:dos/presentation/support_page_screen/support_page_screen.dart';
import 'package:dos/presentation/n_car_vendor_details_screen/n_car_vendor_details_screen.dart';
import 'package:dos/presentation/ev_car_vendor_details_screen/ev_car_vendor_details_screen.dart';
import 'package:dos/presentation/n_bike_vendor_details_screen/n_bike_vendor_details_screen.dart';
import 'package:dos/presentation/ev_bike_vendor_detailse_page_screen/ev_bike_vendor_detailse_page_screen.dart';
import 'package:dos/presentation/laptop_vendor_details_screen/laptop_vendor_details_screen.dart';
import 'package:dos/presentation/computer_vendor_details_screen/computer_vendor_details_screen.dart';
import 'package:dos/presentation/n_car_requested_page_screen/n_car_requested_page_screen.dart';
import 'package:dos/presentation/ev_car_requested_page_screen/ev_car_requested_page_screen.dart';
import 'package:dos/presentation/requested_page_nbike_screen/requested_page_nbike_screen.dart';
import 'package:dos/presentation/ev_bike_requested_page_screen/ev_bike_requested_page_screen.dart';
import 'package:dos/presentation/about_us_screen/about_us_screen.dart';
import 'package:dos/presentation/laptop_requested_page_screen/laptop_requested_page_screen.dart';
import 'package:dos/presentation/computer_requested_page_screen/computer_requested_page_screen.dart';
import 'package:dos/presentation/app_navigation_screen/app_navigation_screen.dart';

class AppRoutes {
  static const String stPageScreen = '/st_page_screen';

  static const String logInScreen = '/log_in_screen';

  static const String signInScreen = '/sign_in_screen';

  static const String createdAccountScreen = '/created_account_screen';

  static const String homePageScreen = '/home_page_screen';

  static const String editProfilePageScreen = '/edit_profile_page_screen';

  static const String myBookingScreen = '/my_booking_screen';

  static const String referalPageScreen = '/referal_page_screen';

  static const String settingsPageScreen = '/settings_page_screen';

  static const String previousBookingsScreen = '/previous_bookings_screen';

  static const String profilePageScreen = '/profile_page_screen';

  static const String changeLocatoinPageScreen = '/change_locatoin_page_screen';

  static const String forgotPasswordScreen = '/forgot_password_screen';

  static const String acceptedStatusScreen = '/accepted_status_screen';

  static const String rejectedStatusScreen = '/rejected_status_screen';

  static const String supportPageScreen = '/support_page_screen';

  static const String nCarVendorDetailsScreen = '/n_car_vendor_details_screen';

  static const String evCarVendorDetailsScreen =
      '/ev_car_vendor_details_screen';

  static const String nBikeVendorDetailsScreen =
      '/n_bike_vendor_details_screen';

  static const String evBikeVendorDetailsePageScreen =
      '/ev_bike_vendor_detailse_page_screen';

  static const String laptopVendorDetailsScreen =
      '/laptop_vendor_details_screen';

  static const String computerVendorDetailsScreen =
      '/computer_vendor_details_screen';

  static const String nCarRequestedPageScreen = '/n_car_requested_page_screen';

  static const String evCarRequestedPageScreen =
      '/ev_car_requested_page_screen';

  static const String requestedPageNbikeScreen = '/requested_page_nbike_screen';

  static const String evBikeRequestedPageScreen =
      '/ev_bike_requested_page_screen';

  static const String aboutUsScreen = '/about_us_screen';

  static const String laptopRequestedPageScreen =
      '/laptop_requested_page_screen';

  static const String computerRequestedPageScreen =
      '/computer_requested_page_screen';

  static const String appNavigationScreen = '/app_navigation_screen';

  static Map<String, WidgetBuilder> routes = {
    stPageScreen: (context) => StPageScreen(),
    logInScreen: (context) => LogInScreen(),
    signInScreen: (context) => SignInScreen(),
    createdAccountScreen: (context) => CreatedAccountScreen(),
    homePageScreen: (context) => HomePageScreen(),
    editProfilePageScreen: (context) => EditProfilePageScreen(),
    myBookingScreen: (context) => MyBookingScreen(),
    referalPageScreen: (context) => ReferalPageScreen(),
    settingsPageScreen: (context) => SettingsPageScreen(),
    previousBookingsScreen: (context) => PreviousBookingsScreen(),
    profilePageScreen: (context) => ProfilePageScreen(),
    changeLocatoinPageScreen: (context) => ChangeLocatoinPageScreen(),
    forgotPasswordScreen: (context) => ForgotPasswordScreen(),
    acceptedStatusScreen: (context) => AcceptedStatusScreen(),
    rejectedStatusScreen: (context) => RejectedStatusScreen(),
    supportPageScreen: (context) => SupportPageScreen(),
    nCarVendorDetailsScreen: (context) => NCarVendorDetailsScreen(),
    evCarVendorDetailsScreen: (context) => EvCarVendorDetailsScreen(),
    nBikeVendorDetailsScreen: (context) => NBikeVendorDetailsScreen(),
    evBikeVendorDetailsePageScreen: (context) =>
        EvBikeVendorDetailsePageScreen(),
    laptopVendorDetailsScreen: (context) => LaptopVendorDetailsScreen(),
    computerVendorDetailsScreen: (context) => ComputerVendorDetailsScreen(),
    nCarRequestedPageScreen: (context) => NCarRequestedPageScreen(),
    evCarRequestedPageScreen: (context) => EvCarRequestedPageScreen(),
    requestedPageNbikeScreen: (context) => RequestedPageNbikeScreen(),
    evBikeRequestedPageScreen: (context) => EvBikeRequestedPageScreen(),
    aboutUsScreen: (context) => AboutUsScreen(),
    laptopRequestedPageScreen: (context) => LaptopRequestedPageScreen(),
    computerRequestedPageScreen: (context) => ComputerRequestedPageScreen(),
    appNavigationScreen: (context) => AppNavigationScreen()
  };
}
