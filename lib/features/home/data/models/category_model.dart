import 'package:fashions/features/home/domain/entities/category/category_entity.dart';

class CategoryModel extends CategoryEntity {
  int id;
  String name;
  String image;

  CategoryModel({required this.id, required this.name, required this.image})
      : super(categoryId: id, categoryImage: image, categoryTitle: name);

  factory CategoryModel.fromJson(Map<String, dynamic> json) => CategoryModel(
        id: json['id'] as int,
        name: json['name'] as String,
        image: json['image'] as String,
      );

  Map<String, dynamic> toJson() => {
        'id': id,
        'name': name,
        'image': image,
      };
}
