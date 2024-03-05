import 'package:json_annotation/json_annotation.dart';

part 'user.g.dart';

@JsonSerializable()
class User {
  String? name;
  String? email;
  String? phone;
  String? addPhone;
  String? address;
  String? orderpincode;

  User({
    this.name,
    this.email,
    this.phone,
    this.addPhone,
    this.address,
    this.orderpincode,
  });

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);

  Map<String, dynamic> toJson() => _$UserToJson(this);

  User copyWith({
    String? name,
    String? email,
    String? phone,
    String? addPhone,
    String? address,
    String? orderpincode,
  }) {
    return User(
      name: name ?? this.name,
      email: email ?? this.email,
      phone: phone ?? this.phone,
      addPhone: addPhone ?? this.addPhone,
      address: address ?? this.address,
      orderpincode: orderpincode ?? this.orderpincode,
    );
  }
}
