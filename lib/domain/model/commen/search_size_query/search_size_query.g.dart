// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'search_size_query.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SearchSizeQuery _$SearchSizeQueryFromJson(Map<String, dynamic> json) =>
    SearchSizeQuery(
      page: json['page'] as int?,
      pageSize: json['pageSize'] as int?,
      search: json['search'] as String?,
    );

Map<String, dynamic> _$SearchSizeQueryToJson(SearchSizeQuery instance) =>
    <String, dynamic>{
      'page': instance.page,
      'pageSize': instance.pageSize,
      'search': instance.search,
    };
