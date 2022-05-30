import '../controller/fields_controller.dart';
import 'package:get/get.dart';

class FieldsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => FieldsController());
  }
}
