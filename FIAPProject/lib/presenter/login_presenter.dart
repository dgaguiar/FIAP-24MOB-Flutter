
import 'package:get/get.dart';

import '../domain/usecases/login_with_email.dart';
import '../domain/usecases/register_with_email.dart';
import '../ui/cadastro/cadastro_screen.dart';
import '../ui/flower/flower_screen.dart';

class LoginPresenter extends GetxController {
  LoginPresenter({
    required this.loginWithEmail,
    required this.registerWithEmail,
  });

  LoginWithEmail loginWithEmail;
  RegisterWithEmail registerWithEmail;

  RxString errorMessage = RxString('');

  var userEmail = '';
  var userPassword = '';

  void onUserEmailUpdate(String email) {
    userEmail = email;
  }

  void onPasswordUpdate(String password) {
    userPassword = password;
  }

  void onLoginButtonPressed() async {
    var user = await loginWithEmail.execute(userEmail, userPassword);
    user ??= await registerWithEmail.execute(userEmail, userPassword);
    if (user == null) {
      errorMessage.value = 'Não foi possível logar';
    } else {
      Get.offNamed(FlowersScreen.id);
    }
  }

  void onCadastroButtonPressed() async {
    Get.offNamed(CadastroScreen.id);
  }
}