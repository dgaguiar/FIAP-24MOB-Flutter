import 'package:fiapproject/data/flowers/remote_fetch_flowers.dart';
import 'package:fiapproject/domain/flowers/fetch_flowers.dart';
import 'package:fiapproject/main/factory/infra/http_adapter_factory.dart';

FetchFlowers makeRemoteFetchFlower() => RemoteFetchFlower(
  httpClient: makeHttpAdapter(),
);