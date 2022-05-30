import '/core/app_export.dart';
import 'package:gabriel_s_application1/presentation/buttons_screen/models/buttons_model.dart';

class ButtonsController extends GetxController with StateMixin<dynamic> {
  Rx<ButtonsModel> buttonsModelObj = ButtonsModel().obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
