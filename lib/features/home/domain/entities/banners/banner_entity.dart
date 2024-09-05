import 'package:hive/hive.dart';
part 'banner_entity.g.dart';

@HiveType(typeId: 0)
class BannerEntity {
  @HiveField(0)
  final String image;
  @HiveField(1)
  final int id;

  BannerEntity({required this.image, required this.id});
}
