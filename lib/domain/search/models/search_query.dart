import 'package:json_annotation/json_annotation.dart';

part 'search_query.g.dart';

// @JsonSerializable()
// class Shows {
//   String? href;
//   int? limit;
//   String? next;
//   int? offset;
//   dynamic previous;
//   int? total;
//   List<SearchItem>? items;

//   Shows({
//     this.href,
//     this.limit,
//     this.next,
//     this.offset,
//     this.previous,
//     this.total,
//     this.items,
//   });

//   factory Shows.fromJson(Map<String, dynamic> json) => _$ShowsFromJson(json);

//   Map<String, dynamic> toJson() => _$ShowsToJson(this);
// }

@JsonSerializable()
class ResumePoint {
  @JsonKey(name: 'fully_played')
  bool? fullyPlayed;
  @JsonKey(name: 'resume_position_ms')
  int? resumePositionMs;

  ResumePoint({this.fullyPlayed, this.resumePositionMs});

  factory ResumePoint.fromJson(Map<String, dynamic> json) {
    return _$ResumePointFromJson(json);
  }

  Map<String, dynamic> toJson() => _$ResumePointToJson(this);
}

@JsonSerializable()
class SearchQueryPlaylists {
  String? href;
  int? limit;
  String? next;
  int? offset;
  dynamic previous;
  int? total;
  List<SearchItem>? items;

  SearchQueryPlaylists({
    this.href,
    this.limit,
    this.next,
    this.offset,
    this.previous,
    this.total,
    this.items,
  });

  factory SearchQueryPlaylists.fromJson(Map<String, dynamic> json) {
    return _$SearchQueryPlaylistsFromJson(json);
  }

  Map<String, dynamic> toJson() => _$SearchQueryPlaylistsToJson(this);
}

@JsonSerializable()
class Owner {
  @JsonKey(name: 'external_urls')
  ExternalUrls? externalUrls;
  String? href;
  String? id;
  String? type;
  String? uri;
  @JsonKey(name: 'display_name')
  String? displayName;

  Owner({
    this.externalUrls,
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
class Episodes {
  String? href;
  int? limit;
  String? next;
  int? offset;
  dynamic previous;
  int? total;
  List<SearchItem>? items;

  Episodes({
    this.href,
    this.limit,
    this.next,
    this.offset,
    this.previous,
    this.total,
    this.items,
  });

  factory Episodes.fromJson(Map<String, dynamic> json) {
    return _$EpisodesFromJson(json);
  }

  Map<String, dynamic> toJson() => _$EpisodesToJson(this);
}

@JsonSerializable()
class Audiobooks {
  String? href;
  int? limit;
  dynamic next;
  int? offset;
  dynamic previous;
  int? total;
  List<SearchItem>? items;

  Audiobooks({
    this.href,
    this.limit,
    this.next,
    this.offset,
    this.previous,
    this.total,
    this.items,
  });

  factory Audiobooks.fromJson(Map<String, dynamic> json) {
    return _$AudiobooksFromJson(json);
  }

  Map<String, dynamic> toJson() => _$AudiobooksToJson(this);
}

@JsonSerializable()
class Artists {
  String? href;
  int? limit;
  String? next;
  int? offset;
  dynamic previous;
  int? total;
  List<SearchItem>? items;

  Artists({
    this.href,
    this.limit,
    this.next,
    this.offset,
    this.previous,
    this.total,
    this.items,
  });

  factory Artists.fromJson(Map<String, dynamic> json) {
    return _$ArtistsFromJson(json);
  }

  Map<String, dynamic> toJson() => _$ArtistsToJson(this);
}

@JsonSerializable()
class Albums {
  String? href;
  int? limit;
  String? next;
  int? offset;
  dynamic previous;
  int? total;
  List<SearchItem>? items;

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
class Image {
  String? url;
  int? height;
  int? width;

  Image({this.url, this.height, this.width});

  factory Image.fromJson(Map<String, dynamic> json) => _$ImageFromJson(json);

  Map<String, dynamic> toJson() => _$ImageToJson(this);
}

@JsonSerializable()
class Album {
  @JsonKey(name: 'album_type')
  String? albumType;
  @JsonKey(name: 'total_SearchQuerytracks')
  int? totalSearchQueryTracks;
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
  List<Artist>? artists;

  Album({
    this.albumType,
    this.totalSearchQueryTracks,
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
  });

  factory Album.fromJson(Map<String, dynamic> json) => _$AlbumFromJson(json);

  Map<String, dynamic> toJson() => _$AlbumToJson(this);
}

@JsonSerializable()
class Artist {
  @JsonKey(name: 'external_urls')
  ExternalUrls? externalUrls;
  String? href;
  String? id;
  String? name;
  String? type;
  String? uri;

  Artist({
    this.externalUrls,
    this.href,
    this.id,
    this.name,
    this.type,
    this.uri,
  });

  factory Artist.fromJson(Map<String, dynamic> json) {
    return _$ArtistFromJson(json);
  }

  Map<String, dynamic> toJson() => _$ArtistToJson(this);
}

@JsonSerializable()
class ExternalIds {
  String? isrc;

  ExternalIds({this.isrc});

  factory ExternalIds.fromJson(Map<String, dynamic> json) {
    return _$ExternalIdsFromJson(json);
  }

  Map<String, dynamic> toJson() => _$ExternalIdsToJson(this);
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
class SearchItem {
  Album? album;
  List<Artist>? artists;
  @JsonKey(name: 'available_markets')
  List<String>? availableMarkets;
  @JsonKey(name: 'disc_number')
  int? discNumber;
  @JsonKey(name: 'duration_ms')
  int? durationMs;
  bool? explicit;
  @JsonKey(name: 'external_ids')
  ExternalIds? externalIds;
  @JsonKey(name: 'external_urls')
  ExternalUrls? externalUrls;
  String? href;
  String? id;
  List<Image>? images;
  String? name;
  int? popularity;
  @JsonKey(name: 'preview_url')
  String? previewUrl;
  @JsonKey(name: 'track_number')
  int? trackNumber;
  String? type;
  String? uri;
  @JsonKey(name: 'is_local')
  bool? isLocal;

  SearchItem({
    this.album,
    this.artists,
    this.availableMarkets,
    this.discNumber,
    this.durationMs,
    this.explicit,
    this.externalIds,
    this.externalUrls,
    this.href,
    this.id,
    this.images,
    this.name,
    this.popularity,
    this.previewUrl,
    this.trackNumber,
    this.type,
    this.uri,
    this.isLocal,
  });

  factory SearchItem.fromJson(Map<String, dynamic> json) =>
      _$SearchItemFromJson(json);

  Map<String, dynamic> toJson() => _$SearchItemToJson(this);
}

@JsonSerializable()
class SearchQueryTracks {
  String? href;
  int? limit;
  String? next;
  int? offset;
  dynamic previous;
  int? total;
  List<SearchItem>? items;

  SearchQueryTracks({
    this.href,
    this.limit,
    this.next,
    this.offset,
    this.previous,
    this.total,
    this.items,
  });

  factory SearchQueryTracks.fromJson(Map<String, dynamic> json) {
    return _$SearchQueryTracksFromJson(json);
  }

  Map<String, dynamic> toJson() => _$SearchQueryTracksToJson(this);
}

@JsonSerializable()
class SearchQuery {
  SearchQueryTracks? searchQuerytracks;
  Artists? artists;
  Albums? albums;
  SearchQueryPlaylists? playlists;
  //Shows? shows;
  Episodes? episodes;
  Audiobooks? audiobooks;

  SearchQuery({
    this.searchQuerytracks,
    this.artists,
    this.albums,
    this.playlists,
    // this.shows,
    this.episodes,
    this.audiobooks,
  });

  factory SearchQuery.fromJson(Map<String, dynamic> json) {
    return _$SearchQueryFromJson(json);
  }

  Map<String, dynamic> toJson() => _$SearchQueryToJson(this);
}
