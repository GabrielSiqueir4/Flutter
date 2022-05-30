import '/core/app_export.dart';
import 'package:gabriel_s_application1/presentation/fields_screen/models/fields_model.dart';
import 'package:flutter/material.dart';

class FieldsController extends GetxController with StateMixin<dynamic> {
  TextEditingController loginController = TextEditingController();

  TextEditingController passwordController = TextEditingController();

  Rx<FieldsModel> fieldsModelObj = FieldsModel().obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
    loginController.dispose();
    passwordController.dispose();
  }
}
