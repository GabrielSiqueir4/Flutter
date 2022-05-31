import '/core/app_export.dart';
import 'package:gabriel_s_application1/presentation/text_styles_screen/models/text_styles_model.dart';

class TextStylesController extends GetxController with StateMixin<dynamic> {
  Rx<TextStylesModel> textStylesModelObj = TextStylesModel().obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
