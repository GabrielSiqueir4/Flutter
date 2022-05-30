import '../controller/text_styles_controller.dart';
import 'package:get/get.dart';

class TextStylesBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => TextStylesController());
  }
}
