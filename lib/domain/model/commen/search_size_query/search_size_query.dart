import 'package:json_annotation/json_annotation.dart';

part 'search_size_query.g.dart';

@JsonSerializable()
class SearchSizeQuery {
  int? page;
  int? pageSize;
  String? search;

  SearchSizeQuery({this.page, this.pageSize, this.search});

  factory SearchSizeQuery.fromJson(Map<String, dynamic> json) {
    return _$SearchSizeQueryFromJson(json);
  }

  Map<String, dynamic> toJson() => _$SearchSizeQueryToJson(this);
}
