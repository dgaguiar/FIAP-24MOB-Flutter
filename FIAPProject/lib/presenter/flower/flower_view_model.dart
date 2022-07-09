import '../../domain/entity/flower_entity.dart';

class FlowersViewModel {
  FlowersViewModel({
    required this.flowersList,
    required this.errorMessage,
  });

  FlowersViewModel copyWith({
    List<FlowerEntity>? moviesList,
    String? errorMessage, required List<FlowerEntity> flowersList,
  }) =>
      FlowersViewModel(
        flowersList: moviesList ?? flowersList,
        errorMessage: errorMessage ?? this.errorMessage,
      );

  List<FlowerEntity> flowersList;
  String errorMessage;
}
