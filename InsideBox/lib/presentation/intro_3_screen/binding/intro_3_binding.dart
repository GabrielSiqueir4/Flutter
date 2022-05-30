import '../controller/intro_3_controller.dart';
import 'package:get/get.dart';

class Intro3Binding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => Intro3Controller());
  }
}
