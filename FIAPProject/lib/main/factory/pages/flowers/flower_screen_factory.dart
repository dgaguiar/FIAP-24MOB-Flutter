import 'package:fiapproject/main/factory/pages/flowers/flower_presenter_factory.dart';
import 'package:fiapproject/presenter/flower/flower_presenter.dart';
import 'package:fiapproject/ui/flower/flower_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

Widget makeFlowerScreen() {
  final presenter = Get.put<FlowerPresenter>(makeFlowerPresenter());
  return FlowersScreen(
    presenter: presenter,
  );
}