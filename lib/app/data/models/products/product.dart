import 'package:freezed_annotation/freezed_annotation.dart';

part 'product.freezed.dart';

@freezed
class Product with _$Product {

  factory Product({
    required String name,
    required String imageUrl,
    required String weight,
    required int price,
  }) = _Product;
}