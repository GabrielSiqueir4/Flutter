import 'package:contasreceber/page/app_page.dart';
import 'package:flutter/material.dart';

AppBar appComponent(String s) {
  return AppBar(
    actions: [
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          IconButton(
            icon: const Icon(Icons.lightbulb),
            onPressed: () {
              AppController.instance.changeThema();
            },
          ),
        ],
      )
    ],
    centerTitle: true,
    title: Text(s),
  );
}
