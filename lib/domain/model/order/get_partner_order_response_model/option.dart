import 'package:json_annotation/json_annotation.dart';

part 'option.g.dart';

@JsonSerializable()
class Option {
  String? heading;
  String? description;
  bool? value;
  String? type;

  Option({this.heading, this.description, this.value, this.type});

  factory Option.fromJson(Map<String, dynamic> json) {
    return _$OptionFromJson(json);
  }

  Map<String, dynamic> toJson() => _$OptionToJson(this);

  Option copyWith({
    String? heading,
    String? description,
    bool? value,
    String? type,
  }) {
    return Option(
      heading: heading ?? this.heading,
      description: description ?? this.description,
      value: value ?? this.value,
      type: type ?? this.type,
    );
  }
}
