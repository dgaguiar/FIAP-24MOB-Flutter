import 'package:fiapproject/main/factory/usecases/flowers/remote_fetch_flower_factory.dart';
import 'package:fiapproject/presenter/flower/flower_presenter.dart';

FlowerPresenter makeFlowerPresenter() => FlowerPresenter(
  fetchFlowers: makeRemoteFetchFlower(),
);