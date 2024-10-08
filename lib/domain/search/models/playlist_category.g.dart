// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'playlist_category.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Owner _$OwnerFromJson(Map<String, dynamic> json) => Owner(
      externalUrls: json['external_urls'] == null
          ? null
          : ExternalUrls.fromJson(
              json['external_urls'] as Map<String, dynamic>),
      followers: json['followers'] == null
          ? null
          : Followers.fromJson(json['followers'] as Map<String, dynamic>),
      href: json['href'] as String?,
      id: json['id'] as String?,
      type: json['type'] as String?,
      uri: json['uri'] as String?,
      displayName: json['display_name'] as String?,
    );

Map<String, dynamic> _$OwnerToJson(Owner instance) => <String, dynamic>{
      'external_urls': instance.externalUrls,
      'followers': instance.followers,
      'href': instance.href,
      'id': instance.id,
      'type': instance.type,
      'uri': instance.uri,
      'display_name': instance.displayName,
    };

ExternalUrls _$ExternalUrlsFromJson(Map<String, dynamic> json) => ExternalUrls(
      spotify: json['spotify'] as String?,
    );

Map<String, dynamic> _$ExternalUrlsToJson(ExternalUrls instance) =>
    <String, dynamic>{
      'spotify': instance.spotify,
    };

Followers _$FollowersFromJson(Map<String, dynamic> json) => Followers(
      href: json['href'] as String?,
      total: (json['total'] as num?)?.toInt(),
    );

Map<String, dynamic> _$FollowersToJson(Followers instance) => <String, dynamic>{
      'href': instance.href,
      'total': instance.total,
    };

Tracks _$TracksFromJson(Map<String, dynamic> json) => Tracks(
      href: json['href'] as String?,
      total: (json['total'] as num?)?.toInt(),
    );

Map<String, dynamic> _$TracksToJson(Tracks instance) => <String, dynamic>{
      'href': instance.href,
      'total': instance.total,
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

PlaylistItem _$PlaylistItemFromJson(Map<String, dynamic> json) => PlaylistItem(
      collaborative: json['collaborative'] as bool?,
      description: json['description'] as String?,
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
      owner: json['owner'] == null
          ? null
          : Owner.fromJson(json['owner'] as Map<String, dynamic>),
      public: json['public'] as bool?,
      snapshotId: json['snapshot_id'] as String?,
      tracks: json['tracks'] == null
          ? null
          : Tracks.fromJson(json['tracks'] as Map<String, dynamic>),
      type: json['type'] as String?,
      uri: json['uri'] as String?,
    );

Map<String, dynamic> _$PlaylistItemToJson(PlaylistItem instance) =>
    <String, dynamic>{
      'collaborative': instance.collaborative,
      'description': instance.description,
      'external_urls': instance.externalUrls,
      'href': instance.href,
      'id': instance.id,
      'images': instance.images,
      'name': instance.name,
      'owner': instance.owner,
      'public': instance.public,
      'snapshot_id': instance.snapshotId,
      'tracks': instance.tracks,
      'type': instance.type,
      'uri': instance.uri,
    };

Playlists _$PlaylistsFromJson(Map<String, dynamic> json) => Playlists(
      href: json['href'] as String?,
      limit: (json['limit'] as num?)?.toInt(),
      next: json['next'] as String?,
      offset: (json['offset'] as num?)?.toInt(),
      previous: json['previous'] as String?,
      total: (json['total'] as num?)?.toInt(),
      items: (json['items'] as List<dynamic>?)
          ?.map((e) => PlaylistItem.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$PlaylistsToJson(Playlists instance) => <String, dynamic>{
      'href': instance.href,
      'limit': instance.limit,
      'next': instance.next,
      'offset': instance.offset,
      'previous': instance.previous,
      'total': instance.total,
      'items': instance.items,
    };

PlaylistCategory _$PlaylistCategoryFromJson(Map<String, dynamic> json) =>
    PlaylistCategory(
      message: json['message'] as String?,
      playlists: json['playlists'] == null
          ? null
          : Playlists.fromJson(json['playlists'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$PlaylistCategoryToJson(PlaylistCategory instance) =>
    <String, dynamic>{
      'message': instance.message,
      'playlists': instance.playlists,
    };
