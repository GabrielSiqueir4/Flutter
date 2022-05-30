import '../controller/cards_controller.dart';
import 'package:get/get.dart';

class CardsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => CardsController());
  }
}
