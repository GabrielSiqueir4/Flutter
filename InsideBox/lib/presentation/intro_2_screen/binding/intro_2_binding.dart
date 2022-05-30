import '../controller/intro_2_controller.dart';
import 'package:get/get.dart';

class Intro2Binding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => Intro2Controller());
  }
}
