// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'popular_experiences_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PopularExperiencesImpl _$$PopularExperiencesImplFromJson(
        Map<String, dynamic> json) =>
    _$PopularExperiencesImpl(
      id: json['id'] as int,
      name: json['name'] as String,
      address: json['address'] as String,
      description: json['description'] as String?,
      adultPrice: json['oldPrice'] as int?,
      childPrice: json['childPrice'] as int?,
      imagePath: json['imagePath'] as String?,
      addresses: (json['addresses'] as List<dynamic>?)
          ?.map((e) => AddressModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      images: (json['images'] as List<dynamic>?)
          ?.map((e) => ImagesModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      isFavourite: json['isFavourite'] as bool?,
      offers: (json['offers'] as List<dynamic>?)
          ?.map((e) => Trips.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$PopularExperiencesImplToJson(
        _$PopularExperiencesImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'address': instance.address,
      'description': instance.description,
      'oldPrice': instance.adultPrice,
      'childPrice': instance.childPrice,
      'imagePath': instance.imagePath,
      'addresses': instance.addresses,
      'images': instance.images,
      'isFavourite': instance.isFavourite,
      'offers': instance.offers,
    };
