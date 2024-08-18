import 'package:json_annotation/json_annotation.dart';

part 'artist_model.g.dart';

@JsonSerializable()
class Artist {
  @JsonKey(name: 'external_urls')
  ExternalUrls? externalUrls;
  Followers? followers;
  List<String>? genres;
  String? href;
  String? id;
  List<Image>? images;
  String? name;
  int? popularity;
  String? type;
  String? uri;

  Artist({
    this.externalUrls,
    this.followers,
    this.genres,
    this.href,
    this.id,
    this.images,
    this.name,
    this.popularity,
    this.type,
    this.uri,
  });

  factory Artist.fromJson(Map<String, dynamic> json) {
    return _$ArtistFromJson(json);
  }

  Map<String, dynamic> toJson() => _$ArtistToJson(this);
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
class Followers {
  dynamic href;
  int? total;

  Followers({this.href, this.total});

  factory Followers.fromJson(Map<String, dynamic> json) {
    return _$FollowersFromJson(json);
  }

  Map<String, dynamic> toJson() => _$FollowersToJson(this);
}

@JsonSerializable()
class Image {
  int? height;
  String? url;
  int? width;

  Image({this.height, this.url, this.width});

  factory Image.fromJson(Map<String, dynamic> json) => _$ImageFromJson(json);

  Map<String, dynamic> toJson() => _$ImageToJson(this);
}

@JsonSerializable()
class ArtistModel {
  List<Artist>? artists;

  ArtistModel({this.artists});

  factory ArtistModel.fromJson(Map<String, dynamic> json) {
    return _$ArtistModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$ArtistModelToJson(this);
}
