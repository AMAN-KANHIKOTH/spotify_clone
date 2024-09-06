// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'fake_history.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Tracks _$TracksFromJson(Map<String, dynamic> json) => Tracks(
      href: json['href'] as String?,
      limit: (json['limit'] as num?)?.toInt(),
      next: json['next'],
      offset: (json['offset'] as num?)?.toInt(),
      previous: json['previous'],
      total: (json['total'] as num?)?.toInt(),
      items: (json['items'] as List<dynamic>?)
          ?.map((e) => TrackItem.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$TracksToJson(Tracks instance) => <String, dynamic>{
      'href': instance.href,
      'limit': instance.limit,
      'next': instance.next,
      'offset': instance.offset,
      'previous': instance.previous,
      'total': instance.total,
      'items': instance.items,
    };

TrackItem _$TrackItemFromJson(Map<String, dynamic> json) => TrackItem(
      artists: (json['artists'] as List<dynamic>?)
          ?.map((e) => FakeArtist.fromJson(e as Map<String, dynamic>))
          .toList(),
      availableMarkets: (json['available_markets'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      discNumber: (json['disc_number'] as num?)?.toInt(),
      durationMs: (json['duration_ms'] as num?)?.toInt(),
      explicit: json['explicit'] as bool?,
      externalUrls: json['external_urls'] == null
          ? null
          : ExternalUrls.fromJson(
              json['external_urls'] as Map<String, dynamic>),
      href: json['href'] as String?,
      id: json['id'] as String?,
      name: json['name'] as String?,
      previewUrl: json['preview_url'] as String?,
      trackNumber: (json['track_number'] as num?)?.toInt(),
      type: json['type'] as String?,
      uri: json['uri'] as String?,
      isLocal: json['is_local'] as bool?,
    );

Map<String, dynamic> _$TrackItemToJson(TrackItem instance) => <String, dynamic>{
      'artists': instance.artists,
      'available_markets': instance.availableMarkets,
      'disc_number': instance.discNumber,
      'duration_ms': instance.durationMs,
      'explicit': instance.explicit,
      'external_urls': instance.externalUrls,
      'href': instance.href,
      'id': instance.id,
      'name': instance.name,
      'preview_url': instance.previewUrl,
      'track_number': instance.trackNumber,
      'type': instance.type,
      'uri': instance.uri,
      'is_local': instance.isLocal,
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

ExternalUrls _$ExternalUrlsFromJson(Map<String, dynamic> json) => ExternalUrls(
      spotify: json['spotify'] as String?,
    );

Map<String, dynamic> _$ExternalUrlsToJson(ExternalUrls instance) =>
    <String, dynamic>{
      'spotify': instance.spotify,
    };

ExternalIds _$ExternalIdsFromJson(Map<String, dynamic> json) => ExternalIds(
      upc: json['upc'] as String?,
    );

Map<String, dynamic> _$ExternalIdsToJson(ExternalIds instance) =>
    <String, dynamic>{
      'upc': instance.upc,
    };

FakeArtist _$FakeArtistFromJson(Map<String, dynamic> json) => FakeArtist(
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

Map<String, dynamic> _$FakeArtistToJson(FakeArtist instance) =>
    <String, dynamic>{
      'external_urls': instance.externalUrls,
      'href': instance.href,
      'id': instance.id,
      'name': instance.name,
      'type': instance.type,
      'uri': instance.uri,
    };

FakeAlbum _$FakeAlbumFromJson(Map<String, dynamic> json) => FakeAlbum(
      albumType: json['album_type'] as String?,
      totalTracks: (json['total_tracks'] as num?)?.toInt(),
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
          ?.map((e) => FakeArtist.fromJson(e as Map<String, dynamic>))
          .toList(),
      tracks: json['tracks'] == null
          ? null
          : Tracks.fromJson(json['tracks'] as Map<String, dynamic>),
      externalIds: json['external_ids'] == null
          ? null
          : ExternalIds.fromJson(json['external_ids'] as Map<String, dynamic>),
      genres: json['genres'] as List<dynamic>?,
      label: json['label'] as String?,
      popularity: (json['popularity'] as num?)?.toInt(),
    );

Map<String, dynamic> _$FakeAlbumToJson(FakeAlbum instance) => <String, dynamic>{
      'album_type': instance.albumType,
      'total_tracks': instance.totalTracks,
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
      'tracks': instance.tracks,
      'external_ids': instance.externalIds,
      'genres': instance.genres,
      'label': instance.label,
      'popularity': instance.popularity,
    };

FakeHistory _$FakeHistoryFromJson(Map<String, dynamic> json) => FakeHistory(
      albums: (json['albums'] as List<dynamic>?)
          ?.map((e) => FakeAlbum.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$FakeHistoryToJson(FakeHistory instance) =>
    <String, dynamic>{
      'albums': instance.albums,
    };
