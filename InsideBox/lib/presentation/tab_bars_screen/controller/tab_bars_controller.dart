import '/core/app_export.dart';
import 'package:gabriel_s_application1/presentation/tab_bars_screen/models/tab_bars_model.dart';

class TabBarsController extends GetxController with StateMixin<dynamic> {
  Rx<TabBarsModel> tabBarsModelObj = TabBarsModel().obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
