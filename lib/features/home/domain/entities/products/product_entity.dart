import 'package:hive/hive.dart';
part 'product_entity.g.dart';

@HiveType(typeId: 2)
class ProductEntity {
  @HiveField(0)
  final num productId;
  @HiveField(1)
  final num productPrice;
  @HiveField(2)
  final num productOldPrice;
  @HiveField(3)
  final String productImage;
  @HiveField(4)
  final String productname;
  @HiveField(5)
  final String productDescription;
  @HiveField(6)
  final num productDiscount;
  @HiveField(7)
  final List<dynamic> productSmImage;
  @HiveField(8)
  final bool productInCart;
  @HiveField(9)
  final bool productInfavorite;

  ProductEntity(
      {required this.productId,
      required this.productPrice,
      required this.productOldPrice,
      required this.productImage,
      required this.productname,
      required this.productDescription,
      required this.productDiscount,
      required this.productSmImage,
      required this.productInCart,
      required this.productInfavorite});
}
