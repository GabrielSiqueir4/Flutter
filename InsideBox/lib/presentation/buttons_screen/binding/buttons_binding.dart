import '../controller/buttons_controller.dart';
import 'package:get/get.dart';

class ButtonsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ButtonsController());
  }
}
