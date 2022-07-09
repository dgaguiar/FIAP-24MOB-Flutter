import '../entity/flower_entity.dart';

abstract class FetchFlowers {
  Future<List<FlowerEntity>> execute();
}