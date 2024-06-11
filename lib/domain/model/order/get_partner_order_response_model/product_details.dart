import 'package:bechdu_partner/domain/core/api_endpoints/api_endpoints.dart';
import 'package:json_annotation/json_annotation.dart';

import 'option.dart';

part 'product_details.g.dart';

@JsonSerializable()
class ProductDetails {
  String? name;
  String? slug;
  String? image;
  String? price;
  String? category;
  List<Option>? options;

  ProductDetails(
      {this.name,
      this.slug,
      this.image,
      this.price,
      this.options,
      this.category}) {
    image = ApiEndPoints.baseUrlImage + image!.replaceAll(' ', '%20');
    print(image);
  }

  factory ProductDetails.fromJson(Map<String, dynamic> json) {
    return _$ProductDetailsFromJson(json);
  }

  Map<String, dynamic> toJson() => _$ProductDetailsToJson(this);

  ProductDetails copyWith({
    String? name,
    String? slug,
    String? image,
    String? price,
    String? category,
    List<Option>? options,
  }) {
    return ProductDetails(
      name: name ?? this.name,
      slug: slug ?? this.slug,
      image: image ?? this.image,
      price: price ?? this.price,
      options: options ?? this.options,
      category: category ?? this.category,
    );
  }
}
