import '../../domain/entity/flower_entity.dart';
import '../../domain/flowers/fetch_flowers.dart';
import '../../domain/utils/domain_error.dart';
import '../http/http_client.dart';
import '../http/http_error.dart';
import 'models/flower_model.dart';

class RemoteFetchFlower extends FetchFlowers {
  RemoteFetchFlower({
    required this.httpClient,
  });

  final HttpClient httpClient;

  @override
  Future<List<FlowerEntity>> execute() async {
    try {
      final response =
      await httpClient.get(url: 'https://demo7206081.mockable.io/movies');

      final moviesList = response?['results']
          .map<FlowerEntity>((json) => FlowerModel.fromJson(json).toEntity())
          .toList();

      return moviesList ?? [];
    } on HttpError catch (error) {
      if (error == HttpError.forbidden || error == HttpError.unauthorized) {
        throw DomainError.invalidCredentials;
      } else {
        throw DomainError.unexpected;
      }
    }
  }
}
