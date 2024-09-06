import 'package:json_annotation/json_annotation.dart';

part 'album_model.g.dart';

@JsonSerializable()
class Restrictions {
  String? reason;

  Restrictions({this.reason});

  factory Restrictions.fromJson(Map<String, dynamic> json) {
    return _$RestrictionsFromJson(json);
  }

  Map<String, dynamic> toJson() => _$RestrictionsToJson(this);
}

@JsonSerializable()
class Image {
  String? url;
  int? height;
  int? width;

  Image({this.url, this.height, this.width});

  factory Image.fromJson(Map<String, dynamic> json) => _$ImageFromJson(json);

  Map<String, dynamic> toJson() => _$ImageToJson(this);
}

@JsonSerializable()
class ExternalUrls {
  String? spotify;

  ExternalUrls({this.spotify});

  factory ExternalUrls.fromJson(Map<String, dynamic> json) {
    return _$ExternalUrlsFromJson(json);
  }

  Map<String, dynamic> toJson() => _$ExternalUrlsToJson(this);
}

@JsonSerializable()
class AlbumArtist {
  @JsonKey(name: 'external_urls')
  ExternalUrls? externalUrls;
  String? href;
  String? id;
  String? name;
  String? type;
  String? uri;

  AlbumArtist({
    this.externalUrls,
    this.href,
    this.id,
    this.name,
    this.type,
    this.uri,
  });

  factory AlbumArtist.fromJson(Map<String, dynamic> json) {
    return _$AlbumArtistFromJson(json);
  }

  Map<String, dynamic> toJson() => _$AlbumArtistToJson(this);
}

@JsonSerializable()
class AlbumItem {
  @JsonKey(name: 'album_type')
  String? albumType;
  @JsonKey(name: 'total_tracks')
  int? totalTracks;
  @JsonKey(name: 'available_markets')
  List<String>? availableMarkets;
  @JsonKey(name: 'external_urls')
  ExternalUrls? externalUrls;
  String? href;
  String? id;
  List<Image>? images;
  String? name;
  @JsonKey(name: 'release_date')
  String? releaseDate;
  @JsonKey(name: 'release_date_precision')
  String? releaseDatePrecision;
  Restrictions? restrictions;
  String? type;
  String? uri;
  List<AlbumArtist>? artists;

  AlbumItem({
    this.albumType,
    this.totalTracks,
    this.availableMarkets,
    this.externalUrls,
    this.href,
    this.id,
    this.images,
    this.name,
    this.releaseDate,
    this.releaseDatePrecision,
    this.restrictions,
    this.type,
    this.uri,
    this.artists,
  });

  factory AlbumItem.fromJson(Map<String, dynamic> json) =>
      _$AlbumItemFromJson(json);

  Map<String, dynamic> toJson() => _$AlbumItemToJson(this);
}

@JsonSerializable()
class Albums {
  String? href;
  int? limit;
  String? next;
  int? offset;
  String? previous;
  int? total;
  List<AlbumItem>? items;

  Albums({
    this.href,
    this.limit,
    this.next,
    this.offset,
    this.previous,
    this.total,
    this.items,
  });

  factory Albums.fromJson(Map<String, dynamic> json) {
    return _$AlbumsFromJson(json);
  }

  Map<String, dynamic> toJson() => _$AlbumsToJson(this);
}

@JsonSerializable()
class AlbumModel {
  @JsonKey(name: 'albums')
  Albums? albums;

  AlbumModel({this.albums});

  factory AlbumModel.fromJson(Map<String, dynamic> json) =>
      _$AlbumModelFromJson(json);

  Map<String, dynamic> toJson() => _$AlbumModelToJson(this);
}
