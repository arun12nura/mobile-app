import 'package:dos/core/app_export.dart';import 'package:dos/presentation/created_account_screen/models/created_account_model.dart';/// A controller class for the CreatedAccountScreen.
///
/// This class manages the state of the CreatedAccountScreen, including the
/// current createdAccountModelObj
class CreatedAccountController extends GetxController {Rx<CreatedAccountModel> createdAccountModelObj = CreatedAccountModel().obs;

 }
