import '/core/app_export.dart';
import 'package:gabriel_s_application1/presentation/cards_screen/models/cards_model.dart';

class CardsController extends GetxController with StateMixin<dynamic> {
  Rx<CardsModel> cardsModelObj = CardsModel().obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
