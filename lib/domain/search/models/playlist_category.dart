import 'package:json_annotation/json_annotation.dart';

part 'playlist_category.g.dart';

@JsonSerializable()
class Owner {
  @JsonKey(name: 'external_urls')
  ExternalUrls? externalUrls;
  Followers? followers;
  String? href;
  String? id;
  String? type;
  String? uri;
  @JsonKey(name: 'display_name')
  String? displayName;

  Owner({
    this.externalUrls,
    this.followers,
    this.href,
    this.id,
    this.type,
    this.uri,
    this.displayName,
  });

  factory Owner.fromJson(Map<String, dynamic> json) => _$OwnerFromJson(json);

  Map<String, dynamic> toJson() => _$OwnerToJson(this);
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
  String? href;
  int? total;

  Followers({this.href, this.total});

  factory Followers.fromJson(Map<String, dynamic> json) {
    return _$FollowersFromJson(json);
  }

  Map<String, dynamic> toJson() => _$FollowersToJson(this);
}

@JsonSerializable()
class Tracks {
  String? href;
  int? total;

  Tracks({this.href, this.total});

  factory Tracks.fromJson(Map<String, dynamic> json) {
    return _$TracksFromJson(json);
  }

  Map<String, dynamic> toJson() => _$TracksToJson(this);
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
class PlaylistItem {
  bool? collaborative;
  String? description;
  @JsonKey(name: 'external_urls')
  ExternalUrls? externalUrls;
  String? href;
  String? id;
  List<Image>? images;
  String? name;
  Owner? owner;
  bool? public;
  @JsonKey(name: 'snapshot_id')
  String? snapshotId;
  Tracks? tracks;
  String? type;
  String? uri;

  PlaylistItem({
    this.collaborative,
    this.description,
    this.externalUrls,
    this.href,
    this.id,
    this.images,
    this.name,
    this.owner,
    this.public,
    this.snapshotId,
    this.tracks,
    this.type,
    this.uri,
  });

  factory PlaylistItem.fromJson(Map<String, dynamic> json) =>
      _$PlaylistItemFromJson(json);

  Map<String, dynamic> toJson() => _$PlaylistItemToJson(this);
}

@JsonSerializable()
class Playlists {
  String? href;
  int? limit;
  String? next;
  int? offset;
  String? previous;
  int? total;
  List<PlaylistItem>? items;

  Playlists({
    this.href,
    this.limit,
    this.next,
    this.offset,
    this.previous,
    this.total,
    this.items,
  });

  factory Playlists.fromJson(Map<String, dynamic> json) {
    return _$PlaylistsFromJson(json);
  }

  Map<String, dynamic> toJson() => _$PlaylistsToJson(this);
}

@JsonSerializable()
class PlaylistCategory {
  String? message;
  Playlists? playlists;

  PlaylistCategory({this.message, this.playlists});

  factory PlaylistCategory.fromJson(Map<String, dynamic> json) {
    return _$PlaylistCategoryFromJson(json);
  }

  Map<String, dynamic> toJson() => _$PlaylistCategoryToJson(this);
}
