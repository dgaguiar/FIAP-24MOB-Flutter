
import 'package:fiapproject/main/factory/usecases/auth/remote_login_with_email_factory.dart';
import 'package:fiapproject/main/factory/usecases/auth/remote_register_with_email_factory.dart';
import 'package:fiapproject/presenter/login_presenter.dart';

LoginPresenter makeLoginPresenter() => LoginPresenter(
  loginWithEmail: makeRemoteLoginWithEmail(),
  registerWithEmail: makeRemoteRegisterWithEmail(),
);
