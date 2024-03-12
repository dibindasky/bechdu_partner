import 'package:json_annotation/json_annotation.dart';

part 'option.g.dart';

@JsonSerializable()
class Option {
  String? description;
  String? type;
  String? image;
  String? heading;
  bool? value;
  Option({this.description, this.type, this.image, this.heading, this.value}) {
    image = image?.replaceFirst(RegExp(r'data:image/[^;]+;base64,'), '');
  }

  factory Option.fromJson(Map<String, dynamic> json) {
    return _$OptionFromJson(json);
  }

  Map<String, dynamic> toJson() => _$OptionToJson(this);
}
