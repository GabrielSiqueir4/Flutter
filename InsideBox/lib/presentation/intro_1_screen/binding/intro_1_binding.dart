import '../controller/intro_1_controller.dart';
import 'package:get/get.dart';

class Intro1Binding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => Intro1Controller());
  }
}
