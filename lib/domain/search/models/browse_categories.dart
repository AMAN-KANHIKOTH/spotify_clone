import 'package:json_annotation/json_annotation.dart';

part 'browse_categories.g.dart';

@JsonSerializable()
class Icon {
  String? url;
  int? height;
  int? width;

  Icon({this.url, this.height, this.width});

  factory Icon.fromJson(Map<String, dynamic> json) => _$IconFromJson(json);

  Map<String, dynamic> toJson() => _$IconToJson(this);
}

@JsonSerializable()
class BrowseCategoryItem {
  String? href;
  List<Icon>? icons;
  String? id;
  String? name;

  BrowseCategoryItem({this.href, this.icons, this.id, this.name});

  factory BrowseCategoryItem.fromJson(Map<String, dynamic> json) =>
      _$BrowseCategoryItemFromJson(json);

  Map<String, dynamic> toJson() => _$BrowseCategoryItemToJson(this);
}

@JsonSerializable()
class Categories {
  String? href;
  int? limit;
  String? next;
  int? offset;
  String? previous;
  int? total;
  List<BrowseCategoryItem>? items;

  Categories({
    this.href,
    this.limit,
    this.next,
    this.offset,
    this.previous,
    this.total,
    this.items,
  });

  factory Categories.fromJson(Map<String, dynamic> json) {
    return _$CategoriesFromJson(json);
  }

  Map<String, dynamic> toJson() => _$CategoriesToJson(this);
}

@JsonSerializable()
class BrowseCategories {
  Categories? categories;

  BrowseCategories({this.categories});

  factory BrowseCategories.fromJson(Map<String, dynamic> json) {
    return _$BrowseCategoriesFromJson(json);
  }

  Map<String, dynamic> toJson() => _$BrowseCategoriesToJson(this);
}
