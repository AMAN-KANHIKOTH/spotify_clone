// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'search_query.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ResumePoint _$ResumePointFromJson(Map<String, dynamic> json) => ResumePoint(
      fullyPlayed: json['fully_played'] as bool?,
      resumePositionMs: (json['resume_position_ms'] as num?)?.toInt(),
    );

Map<String, dynamic> _$ResumePointToJson(ResumePoint instance) =>
    <String, dynamic>{
      'fully_played': instance.fullyPlayed,
      'resume_position_ms': instance.resumePositionMs,
    };

SearchQueryPlaylists _$SearchQueryPlaylistsFromJson(
        Map<String, dynamic> json) =>
    SearchQueryPlaylists(
      href: json['href'] as String?,
      limit: (json['limit'] as num?)?.toInt(),
      next: json['next'] as String?,
      offset: (json['offset'] as num?)?.toInt(),
      previous: json['previous'],
      total: (json['total'] as num?)?.toInt(),
      items: (json['items'] as List<dynamic>?)
          ?.map((e) => SearchItem.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$SearchQueryPlaylistsToJson(
        SearchQueryPlaylists instance) =>
    <String, dynamic>{
      'href': instance.href,
      'limit': instance.limit,
      'next': instance.next,
      'offset': instance.offset,
      'previous': instance.previous,
      'total': instance.total,
      'items': instance.items,
    };

Owner _$OwnerFromJson(Map<String, dynamic> json) => Owner(
      externalUrls: json['external_urls'] == null
          ? null
          : ExternalUrls.fromJson(
              json['external_urls'] as Map<String, dynamic>),
      href: json['href'] as String?,
      id: json['id'] as String?,
      type: json['type'] as String?,
      uri: json['uri'] as String?,
      displayName: json['display_name'] as String?,
    );

Map<String, dynamic> _$OwnerToJson(Owner instance) => <String, dynamic>{
      'external_urls': instance.externalUrls,
      'href': instance.href,
      'id': instance.id,
      'type': instance.type,
      'uri': instance.uri,
      'display_name': instance.displayName,
    };

Followers _$FollowersFromJson(Map<String, dynamic> json) => Followers(
      href: json['href'],
      total: (json['total'] as num?)?.toInt(),
    );

Map<String, dynamic> _$FollowersToJson(Followers instance) => <String, dynamic>{
      'href': instance.href,
      'total': instance.total,
    };

Episodes _$EpisodesFromJson(Map<String, dynamic> json) => Episodes(
      href: json['href'] as String?,
      limit: (json['limit'] as num?)?.toInt(),
      next: json['next'] as String?,
      offset: (json['offset'] as num?)?.toInt(),
      previous: json['previous'],
      total: (json['total'] as num?)?.toInt(),
      items: (json['items'] as List<dynamic>?)
          ?.map((e) => SearchItem.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$EpisodesToJson(Episodes instance) => <String, dynamic>{
      'href': instance.href,
      'limit': instance.limit,
      'next': instance.next,
      'offset': instance.offset,
      'previous': instance.previous,
      'total': instance.total,
      'items': instance.items,
    };

Audiobooks _$AudiobooksFromJson(Map<String, dynamic> json) => Audiobooks(
      href: json['href'] as String?,
      limit: (json['limit'] as num?)?.toInt(),
      next: json['next'],
      offset: (json['offset'] as num?)?.toInt(),
      previous: json['previous'],
      total: (json['total'] as num?)?.toInt(),
      items: (json['items'] as List<dynamic>?)
          ?.map((e) => SearchItem.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$AudiobooksToJson(Audiobooks instance) =>
    <String, dynamic>{
      'href': instance.href,
      'limit': instance.limit,
      'next': instance.next,
      'offset': instance.offset,
      'previous': instance.previous,
      'total': instance.total,
      'items': instance.items,
    };

Artists _$ArtistsFromJson(Map<String, dynamic> json) => Artists(
      href: json['href'] as String?,
      limit: (json['limit'] as num?)?.toInt(),
      next: json['next'] as String?,
      offset: (json['offset'] as num?)?.toInt(),
      previous: json['previous'],
      total: (json['total'] as num?)?.toInt(),
      items: (json['items'] as List<dynamic>?)
          ?.map((e) => SearchItem.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$ArtistsToJson(Artists instance) => <String, dynamic>{
      'href': instance.href,
      'limit': instance.limit,
      'next': instance.next,
      'offset': instance.offset,
      'previous': instance.previous,
      'total': instance.total,
      'items': instance.items,
    };

Albums _$AlbumsFromJson(Map<String, dynamic> json) => Albums(
      href: json['href'] as String?,
      limit: (json['limit'] as num?)?.toInt(),
      next: json['next'] as String?,
      offset: (json['offset'] as num?)?.toInt(),
      previous: json['previous'],
      total: (json['total'] as num?)?.toInt(),
      items: (json['items'] as List<dynamic>?)
          ?.map((e) => SearchItem.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$AlbumsToJson(Albums instance) => <String, dynamic>{
      'href': instance.href,
      'limit': instance.limit,
      'next': instance.next,
      'offset': instance.offset,
      'previous': instance.previous,
      'total': instance.total,
      'items': instance.items,
    };

Image _$ImageFromJson(Map<String, dynamic> json) => Image(
      url: json['url'] as String?,
      height: (json['height'] as num?)?.toInt(),
      width: (json['width'] as num?)?.toInt(),
    );

Map<String, dynamic> _$ImageToJson(Image instance) => <String, dynamic>{
      'url': instance.url,
      'height': instance.height,
      'width': instance.width,
    };

Album _$AlbumFromJson(Map<String, dynamic> json) => Album(
      albumType: json['album_type'] as String?,
      totalSearchQueryTracks:
          (json['total_SearchQuerytracks'] as num?)?.toInt(),
      availableMarkets: (json['available_markets'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      externalUrls: json['external_urls'] == null
          ? null
          : ExternalUrls.fromJson(
              json['external_urls'] as Map<String, dynamic>),
      href: json['href'] as String?,
      id: json['id'] as String?,
      images: (json['images'] as List<dynamic>?)
          ?.map((e) => Image.fromJson(e as Map<String, dynamic>))
          .toList(),
      name: json['name'] as String?,
      releaseDate: json['release_date'] as String?,
      releaseDatePrecision: json['release_date_precision'] as String?,
      type: json['type'] as String?,
      uri: json['uri'] as String?,
      artists: (json['artists'] as List<dynamic>?)
          ?.map((e) => Artist.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$AlbumToJson(Album instance) => <String, dynamic>{
      'album_type': instance.albumType,
      'total_SearchQuerytracks': instance.totalSearchQueryTracks,
      'available_markets': instance.availableMarkets,
      'external_urls': instance.externalUrls,
      'href': instance.href,
      'id': instance.id,
      'images': instance.images,
      'name': instance.name,
      'release_date': instance.releaseDate,
      'release_date_precision': instance.releaseDatePrecision,
      'type': instance.type,
      'uri': instance.uri,
      'artists': instance.artists,
    };

Artist _$ArtistFromJson(Map<String, dynamic> json) => Artist(
      externalUrls: json['external_urls'] == null
          ? null
          : ExternalUrls.fromJson(
              json['external_urls'] as Map<String, dynamic>),
      href: json['href'] as String?,
      id: json['id'] as String?,
      name: json['name'] as String?,
      type: json['type'] as String?,
      uri: json['uri'] as String?,
    );

Map<String, dynamic> _$ArtistToJson(Artist instance) => <String, dynamic>{
      'external_urls': instance.externalUrls,
      'href': instance.href,
      'id': instance.id,
      'name': instance.name,
      'type': instance.type,
      'uri': instance.uri,
    };

ExternalIds _$ExternalIdsFromJson(Map<String, dynamic> json) => ExternalIds(
      isrc: json['isrc'] as String?,
    );

Map<String, dynamic> _$ExternalIdsToJson(ExternalIds instance) =>
    <String, dynamic>{
      'isrc': instance.isrc,
    };

ExternalUrls _$ExternalUrlsFromJson(Map<String, dynamic> json) => ExternalUrls(
      spotify: json['spotify'] as String?,
    );

Map<String, dynamic> _$ExternalUrlsToJson(ExternalUrls instance) =>
    <String, dynamic>{
      'spotify': instance.spotify,
    };

SearchItem _$SearchItemFromJson(Map<String, dynamic> json) => SearchItem(
      album: json['album'] == null
          ? null
          : Album.fromJson(json['album'] as Map<String, dynamic>),
      artists: (json['artists'] as List<dynamic>?)
          ?.map((e) => Artist.fromJson(e as Map<String, dynamic>))
          .toList(),
      availableMarkets: (json['available_markets'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      discNumber: (json['disc_number'] as num?)?.toInt(),
      durationMs: (json['duration_ms'] as num?)?.toInt(),
      explicit: json['explicit'] as bool?,
      externalIds: json['external_ids'] == null
          ? null
          : ExternalIds.fromJson(json['external_ids'] as Map<String, dynamic>),
      externalUrls: json['external_urls'] == null
          ? null
          : ExternalUrls.fromJson(
              json['external_urls'] as Map<String, dynamic>),
      href: json['href'] as String?,
      id: json['id'] as String?,
      images: (json['images'] as List<dynamic>?)
          ?.map((e) => Image.fromJson(e as Map<String, dynamic>))
          .toList(),
      name: json['name'] as String?,
      popularity: (json['popularity'] as num?)?.toInt(),
      previewUrl: json['preview_url'] as String?,
      trackNumber: (json['track_number'] as num?)?.toInt(),
      type: json['type'] as String?,
      uri: json['uri'] as String?,
      isLocal: json['is_local'] as bool?,
    );

Map<String, dynamic> _$SearchItemToJson(SearchItem instance) =>
    <String, dynamic>{
      'album': instance.album,
      'artists': instance.artists,
      'available_markets': instance.availableMarkets,
      'disc_number': instance.discNumber,
      'duration_ms': instance.durationMs,
      'explicit': instance.explicit,
      'external_ids': instance.externalIds,
      'external_urls': instance.externalUrls,
      'href': instance.href,
      'id': instance.id,
      'images': instance.images,
      'name': instance.name,
      'popularity': instance.popularity,
      'preview_url': instance.previewUrl,
      'track_number': instance.trackNumber,
      'type': instance.type,
      'uri': instance.uri,
      'is_local': instance.isLocal,
    };

SearchQueryTracks _$SearchQueryTracksFromJson(Map<String, dynamic> json) =>
    SearchQueryTracks(
      href: json['href'] as String?,
      limit: (json['limit'] as num?)?.toInt(),
      next: json['next'] as String?,
      offset: (json['offset'] as num?)?.toInt(),
      previous: json['previous'],
      total: (json['total'] as num?)?.toInt(),
      items: (json['items'] as List<dynamic>?)
          ?.map((e) => SearchItem.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$SearchQueryTracksToJson(SearchQueryTracks instance) =>
    <String, dynamic>{
      'href': instance.href,
      'limit': instance.limit,
      'next': instance.next,
      'offset': instance.offset,
      'previous': instance.previous,
      'total': instance.total,
      'items': instance.items,
    };

SearchQuery _$SearchQueryFromJson(Map<String, dynamic> json) => SearchQuery(
      searchQuerytracks: json['searchQuerytracks'] == null
          ? null
          : SearchQueryTracks.fromJson(
              json['searchQuerytracks'] as Map<String, dynamic>),
      artists: json['artists'] == null
          ? null
          : Artists.fromJson(json['artists'] as Map<String, dynamic>),
      albums: json['albums'] == null
          ? null
          : Albums.fromJson(json['albums'] as Map<String, dynamic>),
      playlists: json['playlists'] == null
          ? null
          : SearchQueryPlaylists.fromJson(
              json['playlists'] as Map<String, dynamic>),
      episodes: json['episodes'] == null
          ? null
          : Episodes.fromJson(json['episodes'] as Map<String, dynamic>),
      audiobooks: json['audiobooks'] == null
          ? null
          : Audiobooks.fromJson(json['audiobooks'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$SearchQueryToJson(SearchQuery instance) =>
    <String, dynamic>{
      'searchQuerytracks': instance.searchQuerytracks,
      'artists': instance.artists,
      'albums': instance.albums,
      'playlists': instance.playlists,
      'episodes': instance.episodes,
      'audiobooks': instance.audiobooks,
    };
