import 'package:hive/hive.dart';
part 'category_entity.g.dart';
@HiveType(typeId: 1)
class CategoryEntity {
  @HiveField(0)
  final int categoryId;
  @HiveField(1)
  final String categoryImage;
  @HiveField(2)
  final String categoryTitle;

  CategoryEntity(
      {required this.categoryId,
      required this.categoryImage,
      required this.categoryTitle});
}
