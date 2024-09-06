import 'package:json_annotation/json_annotation.dart';

part 'fake_history.g.dart';

@JsonSerializable()
class Tracks {
  String? href;
  int? limit;
  dynamic next;
  int? offset;
  dynamic previous;
  int? total;
  List<TrackItem>? items;

  Tracks({
    this.href,
    this.limit,
    this.next,
    this.offset,
    this.previous,
    this.total,
    this.items,
  });

  factory Tracks.fromJson(Map<String, dynamic> json) {
    return _$TracksFromJson(json);
  }

  Map<String, dynamic> toJson() => _$TracksToJson(this);
}

@JsonSerializable()
class TrackItem {
  List<FakeArtist>? artists;
  @JsonKey(name: 'available_markets')
  List<String>? availableMarkets;
  @JsonKey(name: 'disc_number')
  int? discNumber;
  @JsonKey(name: 'duration_ms')
  int? durationMs;
  bool? explicit;
  @JsonKey(name: 'external_urls')
  ExternalUrls? externalUrls;
  String? href;
  String? id;
  String? name;
  @JsonKey(name: 'preview_url')
  String? previewUrl;
  @JsonKey(name: 'track_number')
  int? trackNumber;
  String? type;
  String? uri;
  @JsonKey(name: 'is_local')
  bool? isLocal;

  TrackItem({
    this.artists,
    this.availableMarkets,
    this.discNumber,
    this.durationMs,
    this.explicit,
    this.externalUrls,
    this.href,
    this.id,
    this.name,
    this.previewUrl,
    this.trackNumber,
    this.type,
    this.uri,
    this.isLocal,
  });

  factory TrackItem.fromJson(Map<String, dynamic> json) =>
      _$TrackItemFromJson(json);

  Map<String, dynamic> toJson() => _$TrackItemToJson(this);
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
class ExternalIds {
  String? upc;

  ExternalIds({this.upc});

  factory ExternalIds.fromJson(Map<String, dynamic> json) {
    return _$ExternalIdsFromJson(json);
  }

  Map<String, dynamic> toJson() => _$ExternalIdsToJson(this);
}

@JsonSerializable()
class FakeArtist {
  @JsonKey(name: 'external_urls')
  ExternalUrls? externalUrls;
  String? href;
  String? id;
  String? name;
  String? type;
  String? uri;

  FakeArtist({
    this.externalUrls,
    this.href,
    this.id,
    this.name,
    this.type,
    this.uri,
  });

  factory FakeArtist.fromJson(Map<String, dynamic> json) {
    return _$FakeArtistFromJson(json);
  }

  Map<String, dynamic> toJson() => _$FakeArtistToJson(this);
}

@JsonSerializable()
class FakeAlbum {
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
  String? type;
  String? uri;
  List<FakeArtist>? artists;
  Tracks? tracks;
  @JsonKey(name: 'external_ids')
  ExternalIds? externalIds;
  List<dynamic>? genres;
  String? label;
  int? popularity;

  FakeAlbum({
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
    this.type,
    this.uri,
    this.artists,
    this.tracks,
    this.externalIds,
    this.genres,
    this.label,
    this.popularity,
  });

  factory FakeAlbum.fromJson(Map<String, dynamic> json) =>
      _$FakeAlbumFromJson(json);

  Map<String, dynamic> toJson() => _$FakeAlbumToJson(this);
}

@JsonSerializable()
class FakeHistory {
  List<FakeAlbum>? albums;

  FakeHistory({this.albums});

  factory FakeHistory.fromJson(Map<String, dynamic> json) {
    return _$FakeHistoryFromJson(json);
  }

  Map<String, dynamic> toJson() => _$FakeHistoryToJson(this);
}
