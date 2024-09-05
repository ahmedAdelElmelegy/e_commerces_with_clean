import 'package:fashions/features/home/domain/entities/banners/banner_entity.dart';

class BannerModel extends BannerEntity {
  final int id;

  final String image;
  final dynamic category;
  final dynamic product;

  BannerModel({
    required this.id,
    required this.image,
    this.category,
    this.product,
  }) : super(id: id, image: image);

  factory BannerModel.fromJson(Map<String, dynamic> json) => BannerModel(
        id: json['id'] as int,
        image: json['image'] as String? ?? '',
        category: json['category'],
        product: json['product'],
      );

  Map<String, dynamic> toJson() => {
        'id': id,
        'image': image,
        'category': category,
        'product': product,
      };
}
