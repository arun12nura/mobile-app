import 'package:dos/core/app_export.dart';import 'package:dos/presentation/my_booking_screen/models/my_booking_model.dart';/// A controller class for the MyBookingScreen.
///
/// This class manages the state of the MyBookingScreen, including the
/// current myBookingModelObj
class MyBookingController extends GetxController {Rx<MyBookingModel> myBookingModelObj = MyBookingModel().obs;

 }
