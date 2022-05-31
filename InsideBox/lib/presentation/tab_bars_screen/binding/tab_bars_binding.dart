import '../controller/tab_bars_controller.dart';
import 'package:get/get.dart';

class TabBarsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => TabBarsController());
  }
}
