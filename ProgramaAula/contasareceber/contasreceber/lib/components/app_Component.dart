import 'package:contasreceber/page/app_page.dart';
import 'package:flutter/material.dart';

AppBar appComponent(String s) {
  return AppBar(
    actions: [
      IconButton(
        alignment: Alignment.center,
        icon: const Icon(Icons.lightbulb),
        onPressed: () {
          AppController.instance.changeThema();
        },
      )
    ],
    centerTitle: true,
    title: Text(s),
  );
}
