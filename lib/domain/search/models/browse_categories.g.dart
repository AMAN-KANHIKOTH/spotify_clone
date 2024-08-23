// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'browse_categories.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Icon _$IconFromJson(Map<String, dynamic> json) => Icon(
      url: json['url'] as String?,
      height: (json['height'] as num?)?.toInt(),
      width: (json['width'] as num?)?.toInt(),
    );

Map<String, dynamic> _$IconToJson(Icon instance) => <String, dynamic>{
      'url': instance.url,
      'height': instance.height,
      'width': instance.width,
    };

BrowseCategoryItem _$BrowseCategoryItemFromJson(Map<String, dynamic> json) =>
    BrowseCategoryItem(
      href: json['href'] as String?,
      icons: (json['icons'] as List<dynamic>?)
          ?.map((e) => Icon.fromJson(e as Map<String, dynamic>))
          .toList(),
      id: json['id'] as String?,
      name: json['name'] as String?,
    );

Map<String, dynamic> _$BrowseCategoryItemToJson(BrowseCategoryItem instance) =>
    <String, dynamic>{
      'href': instance.href,
      'icons': instance.icons,
      'id': instance.id,
      'name': instance.name,
    };

Categories _$CategoriesFromJson(Map<String, dynamic> json) => Categories(
      href: json['href'] as String?,
      limit: (json['limit'] as num?)?.toInt(),
      next: json['next'] as String?,
      offset: (json['offset'] as num?)?.toInt(),
      previous: json['previous'] as String?,
      total: (json['total'] as num?)?.toInt(),
      items: (json['items'] as List<dynamic>?)
          ?.map((e) => BrowseCategoryItem.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$CategoriesToJson(Categories instance) =>
    <String, dynamic>{
      'href': instance.href,
      'limit': instance.limit,
      'next': instance.next,
      'offset': instance.offset,
      'previous': instance.previous,
      'total': instance.total,
      'items': instance.items,
    };

BrowseCategories _$BrowseCategoriesFromJson(Map<String, dynamic> json) =>
    BrowseCategories(
      categories: json['categories'] == null
          ? null
          : Categories.fromJson(json['categories'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$BrowseCategoriesToJson(BrowseCategories instance) =>
    <String, dynamic>{
      'categories': instance.categories,
    };
