import '/core/app_export.dart';
import 'package:gabriel_s_application1/presentation/colors_screen/models/colors_model.dart';

class ColorsController extends GetxController with StateMixin<dynamic> {
  Rx<ColorsModel> colorsModelObj = ColorsModel().obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
