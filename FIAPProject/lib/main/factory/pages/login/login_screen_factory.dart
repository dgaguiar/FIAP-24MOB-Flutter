import 'package:fiapproject/main/factory/pages/login/login_presenter_factory.dart';
import 'package:fiapproject/presenter/login_presenter.dart';
import 'package:fiapproject/ui/login/login_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

Widget makeLoginScreen() {
  Get.put(makeLoginPresenter());
  return LoginScreen(presenter: Get.find<LoginPresenter>());
}