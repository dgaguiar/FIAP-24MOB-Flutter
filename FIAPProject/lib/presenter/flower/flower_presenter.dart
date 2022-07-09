import 'package:get/get.dart';

import '../../domain/flowers/fetch_flowers.dart';
import '../../domain/utils/domain_error.dart';
import 'flower_view_model.dart';

class FlowerPresenter extends GetxController {
  FlowerPresenter({required this.fetchFlowers});

  final FetchFlowers fetchFlowers;

  final viewModel = Rx<FlowersViewModel>(FlowersViewModel(
    flowersList: [],
    errorMessage: '',
  ));

  @override
  void onInit() async {
    super.onInit();
    try {
      viewModel.value = viewModel.value.copyWith(
        flowersList: await fetchFlowers.execute(),
      );
    } on DomainError catch (error) {
      final errorMessage = (error == DomainError.invalidCredentials)
          ? 'Credenciais inválidas'
          : 'Erro, tente novamente';

      viewModel.value = viewModel.value.copyWith(
        errorMessage: errorMessage, flowersList: [],
      );
    }
  }
}
