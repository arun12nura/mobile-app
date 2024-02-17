import 'package:dos/core/app_export.dart';import 'package:dos/presentation/previous_bookings_screen/models/previous_bookings_model.dart';/// A controller class for the PreviousBookingsScreen.
///
/// This class manages the state of the PreviousBookingsScreen, including the
/// current previousBookingsModelObj
class PreviousBookingsController extends GetxController {Rx<PreviousBookingsModel> previousBookingsModelObj = PreviousBookingsModel().obs;

 }
