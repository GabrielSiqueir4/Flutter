import '../controller/colors_controller.dart';
import 'package:get/get.dart';

class ColorsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ColorsController());
  }
}
