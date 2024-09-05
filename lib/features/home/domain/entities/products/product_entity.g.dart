// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_entity.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class ProductEntityAdapter extends TypeAdapter<ProductEntity> {
  @override
  final int typeId = 2;

  @override
  ProductEntity read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return ProductEntity(
      productId: fields[0] as int,
      productPrice: fields[1] as num,
      productOldPrice: fields[2] as num,
      productImage: fields[3] as String,
      productname: fields[4] as String,
      productDescription: fields[5] as String,
      productDiscount: fields[6] as int,
      productSmImage: (fields[7] as List).cast<dynamic>(),
      productInCart: fields[8] as bool,
      productInfavorite: fields[9] as bool,
    );
  }

  @override
  void write(BinaryWriter writer, ProductEntity obj) {
    writer
      ..writeByte(10)
      ..writeByte(0)
      ..write(obj.productId)
      ..writeByte(1)
      ..write(obj.productPrice)
      ..writeByte(2)
      ..write(obj.productOldPrice)
      ..writeByte(3)
      ..write(obj.productImage)
      ..writeByte(4)
      ..write(obj.productname)
      ..writeByte(5)
      ..write(obj.productDescription)
      ..writeByte(6)
      ..write(obj.productDiscount)
      ..writeByte(7)
      ..write(obj.productSmImage)
      ..writeByte(8)
      ..write(obj.productInCart)
      ..writeByte(9)
      ..write(obj.productInfavorite);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ProductEntityAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
