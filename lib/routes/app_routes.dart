import 'package:dos/presentation/st_page_screen/st_page_screen.dart';
import 'package:dos/presentation/st_page_screen/binding/st_page_binding.dart';
import 'package:dos/presentation/log_in_screen/log_in_screen.dart';
import 'package:dos/presentation/log_in_screen/binding/log_in_binding.dart';
import 'package:dos/presentation/sign_in_screen/sign_in_screen.dart';
import 'package:dos/presentation/sign_in_screen/binding/sign_in_binding.dart';
import 'package:dos/presentation/created_account_screen/created_account_screen.dart';
import 'package:dos/presentation/created_account_screen/binding/created_account_binding.dart';
import 'package:dos/presentation/home_page_screen/home_page_screen.dart';
import 'package:dos/presentation/home_page_screen/binding/home_page_binding.dart';
import 'package:dos/presentation/edit_profile_page_screen/edit_profile_page_screen.dart';
import 'package:dos/presentation/edit_profile_page_screen/binding/edit_profile_page_binding.dart';
import 'package:dos/presentation/my_booking_screen/my_booking_screen.dart';
import 'package:dos/presentation/my_booking_screen/binding/my_booking_binding.dart';
import 'package:dos/presentation/referal_page_screen/referal_page_screen.dart';
import 'package:dos/presentation/referal_page_screen/binding/referal_page_binding.dart';
import 'package:dos/presentation/settings_page_screen/settings_page_screen.dart';
import 'package:dos/presentation/settings_page_screen/binding/settings_page_binding.dart';
import 'package:dos/presentation/previous_bookings_screen/previous_bookings_screen.dart';
import 'package:dos/presentation/previous_bookings_screen/binding/previous_bookings_binding.dart';
import 'package:dos/presentation/profile_page_screen/profile_page_screen.dart';
import 'package:dos/presentation/profile_page_screen/binding/profile_page_binding.dart';
import 'package:dos/presentation/change_locatoin_page_screen/change_locatoin_page_screen.dart';
import 'package:dos/presentation/change_locatoin_page_screen/binding/change_locatoin_page_binding.dart';
import 'package:dos/presentation/forgot_password_screen/forgot_password_screen.dart';
import 'package:dos/presentation/forgot_password_screen/binding/forgot_password_binding.dart';
import 'package:dos/presentation/accepted_status_screen/accepted_status_screen.dart';
import 'package:dos/presentation/accepted_status_screen/binding/accepted_status_binding.dart';
import 'package:dos/presentation/rejected_status_screen/rejected_status_screen.dart';
import 'package:dos/presentation/rejected_status_screen/binding/rejected_status_binding.dart';
import 'package:dos/presentation/support_page_screen/support_page_screen.dart';
import 'package:dos/presentation/support_page_screen/binding/support_page_binding.dart';
import 'package:dos/presentation/n_car_vendor_details_screen/n_car_vendor_details_screen.dart';
import 'package:dos/presentation/n_car_vendor_details_screen/binding/n_car_vendor_details_binding.dart';
import 'package:dos/presentation/ev_car_vendor_details_screen/ev_car_vendor_details_screen.dart';
import 'package:dos/presentation/ev_car_vendor_details_screen/binding/ev_car_vendor_details_binding.dart';
import 'package:dos/presentation/n_bike_vendor_details_screen/n_bike_vendor_details_screen.dart';
import 'package:dos/presentation/n_bike_vendor_details_screen/binding/n_bike_vendor_details_binding.dart';
import 'package:dos/presentation/ev_bike_vendor_detailse_page_screen/ev_bike_vendor_detailse_page_screen.dart';
import 'package:dos/presentation/ev_bike_vendor_detailse_page_screen/binding/ev_bike_vendor_detailse_page_binding.dart';
import 'package:dos/presentation/laptop_vendor_details_screen/laptop_vendor_details_screen.dart';
import 'package:dos/presentation/laptop_vendor_details_screen/binding/laptop_vendor_details_binding.dart';
import 'package:dos/presentation/computer_vendor_details_screen/computer_vendor_details_screen.dart';
import 'package:dos/presentation/computer_vendor_details_screen/binding/computer_vendor_details_binding.dart';
import 'package:dos/presentation/n_car_requested_page_screen/n_car_requested_page_screen.dart';
import 'package:dos/presentation/n_car_requested_page_screen/binding/n_car_requested_page_binding.dart';
import 'package:dos/presentation/ev_car_requested_page_screen/ev_car_requested_page_screen.dart';
import 'package:dos/presentation/ev_car_requested_page_screen/binding/ev_car_requested_page_binding.dart';
import 'package:dos/presentation/requested_page_nbike_screen/requested_page_nbike_screen.dart';
import 'package:dos/presentation/requested_page_nbike_screen/binding/requested_page_nbike_binding.dart';
import 'package:dos/presentation/ev_bike_requested_page_screen/ev_bike_requested_page_screen.dart';
import 'package:dos/presentation/ev_bike_requested_page_screen/binding/ev_bike_requested_page_binding.dart';
import 'package:dos/presentation/about_us_screen/about_us_screen.dart';
import 'package:dos/presentation/about_us_screen/binding/about_us_binding.dart';
import 'package:dos/presentation/laptop_requested_page_screen/laptop_requested_page_screen.dart';
import 'package:dos/presentation/laptop_requested_page_screen/binding/laptop_requested_page_binding.dart';
import 'package:dos/presentation/computer_requested_page_screen/computer_requested_page_screen.dart';
import 'package:dos/presentation/computer_requested_page_screen/binding/computer_requested_page_binding.dart';
import 'package:dos/presentation/app_navigation_screen/app_navigation_screen.dart';
import 'package:dos/presentation/app_navigation_screen/binding/app_navigation_binding.dart';
import 'package:get/get.dart';

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

  static const String initialRoute = '/initialRoute';

  static List<GetPage> pages = [
    GetPage(
      name: stPageScreen,
      page: () => StPageScreen(),
      bindings: [
        StPageBinding(),
      ],
    ),
    GetPage(
      name: logInScreen,
      page: () => LogInScreen(),
      bindings: [
        LogInBinding(),
      ],
    ),
    GetPage(
      name: signInScreen,
      page: () => SignInScreen(),
      bindings: [
        SignInBinding(),
      ],
    ),
    GetPage(
      name: createdAccountScreen,
      page: () => CreatedAccountScreen(),
      bindings: [
        CreatedAccountBinding(),
      ],
    ),
    GetPage(
      name: homePageScreen,
      page: () => HomePageScreen(),
      bindings: [
        HomePageBinding(),
      ],
    ),
    GetPage(
      name: editProfilePageScreen,
      page: () => EditProfilePageScreen(),
      bindings: [
        EditProfilePageBinding(),
      ],
    ),
    GetPage(
      name: myBookingScreen,
      page: () => MyBookingScreen(),
      bindings: [
        MyBookingBinding(),
      ],
    ),
    GetPage(
      name: referalPageScreen,
      page: () => ReferalPageScreen(),
      bindings: [
        ReferalPageBinding(),
      ],
    ),
    GetPage(
      name: settingsPageScreen,
      page: () => SettingsPageScreen(),
      bindings: [
        SettingsPageBinding(),
      ],
    ),
    GetPage(
      name: previousBookingsScreen,
      page: () => PreviousBookingsScreen(),
      bindings: [
        PreviousBookingsBinding(),
      ],
    ),
    GetPage(
      name: profilePageScreen,
      page: () => ProfilePageScreen(),
      bindings: [
        ProfilePageBinding(),
      ],
    ),
    GetPage(
      name: changeLocatoinPageScreen,
      page: () => ChangeLocatoinPageScreen(),
      bindings: [
        ChangeLocatoinPageBinding(),
      ],
    ),
    GetPage(
      name: forgotPasswordScreen,
      page: () => ForgotPasswordScreen(),
      bindings: [
        ForgotPasswordBinding(),
      ],
    ),
    GetPage(
      name: acceptedStatusScreen,
      page: () => AcceptedStatusScreen(),
      bindings: [
        AcceptedStatusBinding(),
      ],
    ),
    GetPage(
      name: rejectedStatusScreen,
      page: () => RejectedStatusScreen(),
      bindings: [
        RejectedStatusBinding(),
      ],
    ),
    GetPage(
      name: supportPageScreen,
      page: () => SupportPageScreen(),
      bindings: [
        SupportPageBinding(),
      ],
    ),
    GetPage(
      name: nCarVendorDetailsScreen,
      page: () => NCarVendorDetailsScreen(),
      bindings: [
        NCarVendorDetailsBinding(),
      ],
    ),
    GetPage(
      name: evCarVendorDetailsScreen,
      page: () => EvCarVendorDetailsScreen(),
      bindings: [
        EvCarVendorDetailsBinding(),
      ],
    ),
    GetPage(
      name: nBikeVendorDetailsScreen,
      page: () => NBikeVendorDetailsScreen(),
      bindings: [
        NBikeVendorDetailsBinding(),
      ],
    ),
    GetPage(
      name: evBikeVendorDetailsePageScreen,
      page: () => EvBikeVendorDetailsePageScreen(),
      bindings: [
        EvBikeVendorDetailsePageBinding(),
      ],
    ),
    GetPage(
      name: laptopVendorDetailsScreen,
      page: () => LaptopVendorDetailsScreen(),
      bindings: [
        LaptopVendorDetailsBinding(),
      ],
    ),
    GetPage(
      name: computerVendorDetailsScreen,
      page: () => ComputerVendorDetailsScreen(),
      bindings: [
        ComputerVendorDetailsBinding(),
      ],
    ),
    GetPage(
      name: nCarRequestedPageScreen,
      page: () => NCarRequestedPageScreen(),
      bindings: [
        NCarRequestedPageBinding(),
      ],
    ),
    GetPage(
      name: evCarRequestedPageScreen,
      page: () => EvCarRequestedPageScreen(),
      bindings: [
        EvCarRequestedPageBinding(),
      ],
    ),
    GetPage(
      name: requestedPageNbikeScreen,
      page: () => RequestedPageNbikeScreen(),
      bindings: [
        RequestedPageNbikeBinding(),
      ],
    ),
    GetPage(
      name: evBikeRequestedPageScreen,
      page: () => EvBikeRequestedPageScreen(),
      bindings: [
        EvBikeRequestedPageBinding(),
      ],
    ),
    GetPage(
      name: aboutUsScreen,
      page: () => AboutUsScreen(),
      bindings: [
        AboutUsBinding(),
      ],
    ),
    GetPage(
      name: laptopRequestedPageScreen,
      page: () => LaptopRequestedPageScreen(),
      bindings: [
        LaptopRequestedPageBinding(),
      ],
    ),
    GetPage(
      name: computerRequestedPageScreen,
      page: () => ComputerRequestedPageScreen(),
      bindings: [
        ComputerRequestedPageBinding(),
      ],
    ),
    GetPage(
      name: appNavigationScreen,
      page: () => AppNavigationScreen(),
      bindings: [
        AppNavigationBinding(),
      ],
    ),
    GetPage(
      name: initialRoute,
      page: () => StPageScreen(),
      bindings: [
        StPageBinding(),
      ],
    )
  ];
}
