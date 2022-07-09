import '../../../domain/entity/flower_entity.dart';

class FlowerModel {
  FlowerModel({
    required this.title,
    required this.description,
    required this.posterPath,
    required this.rating,
  });

  String title;
  String description;
  String posterPath;
  String rating;

  factory FlowerModel.fromJson(Map json) => FlowerModel(
    posterPath: json['poster_path'],
    title: json['title'],
    description: json['overview'],
    rating: json['vote_average'].toString(),
  );

  FlowerEntity toEntity() => FlowerEntity(
    name: title,
    description: description,
    image: posterPath,
    rating: rating,
  );
}
