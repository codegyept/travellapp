// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'best_offers_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

BestOffers _$BestOffersFromJson(Map<String, dynamic> json) {
  return _BestOffers.fromJson(json);
}

/// @nodoc
mixin _$BestOffers {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get address => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  @JsonKey(name: "oldPrice")
  int get adultPrice => throw _privateConstructorUsedError;
  int get childPrice => throw _privateConstructorUsedError;
  String get imagePath => throw _privateConstructorUsedError;
  List<AddressModel> get addresses => throw _privateConstructorUsedError;
  List<ImagesModel> get images => throw _privateConstructorUsedError;
  bool get isFavourite => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BestOffersCopyWith<BestOffers> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BestOffersCopyWith<$Res> {
  factory $BestOffersCopyWith(
          BestOffers value, $Res Function(BestOffers) then) =
      _$BestOffersCopyWithImpl<$Res, BestOffers>;
  @useResult
  $Res call(
      {int id,
      String name,
      String address,
      String description,
      @JsonKey(name: "oldPrice") int adultPrice,
      int childPrice,
      String imagePath,
      List<AddressModel> addresses,
      List<ImagesModel> images,
      bool isFavourite});
}

/// @nodoc
class _$BestOffersCopyWithImpl<$Res, $Val extends BestOffers>
    implements $BestOffersCopyWith<$Res> {
  _$BestOffersCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? address = null,
    Object? description = null,
    Object? adultPrice = null,
    Object? childPrice = null,
    Object? imagePath = null,
    Object? addresses = null,
    Object? images = null,
    Object? isFavourite = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      address: null == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      adultPrice: null == adultPrice
          ? _value.adultPrice
          : adultPrice // ignore: cast_nullable_to_non_nullable
              as int,
      childPrice: null == childPrice
          ? _value.childPrice
          : childPrice // ignore: cast_nullable_to_non_nullable
              as int,
      imagePath: null == imagePath
          ? _value.imagePath
          : imagePath // ignore: cast_nullable_to_non_nullable
              as String,
      addresses: null == addresses
          ? _value.addresses
          : addresses // ignore: cast_nullable_to_non_nullable
              as List<AddressModel>,
      images: null == images
          ? _value.images
          : images // ignore: cast_nullable_to_non_nullable
              as List<ImagesModel>,
      isFavourite: null == isFavourite
          ? _value.isFavourite
          : isFavourite // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BestOffersImplCopyWith<$Res>
    implements $BestOffersCopyWith<$Res> {
  factory _$$BestOffersImplCopyWith(
          _$BestOffersImpl value, $Res Function(_$BestOffersImpl) then) =
      __$$BestOffersImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String name,
      String address,
      String description,
      @JsonKey(name: "oldPrice") int adultPrice,
      int childPrice,
      String imagePath,
      List<AddressModel> addresses,
      List<ImagesModel> images,
      bool isFavourite});
}

/// @nodoc
class __$$BestOffersImplCopyWithImpl<$Res>
    extends _$BestOffersCopyWithImpl<$Res, _$BestOffersImpl>
    implements _$$BestOffersImplCopyWith<$Res> {
  __$$BestOffersImplCopyWithImpl(
      _$BestOffersImpl _value, $Res Function(_$BestOffersImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? address = null,
    Object? description = null,
    Object? adultPrice = null,
    Object? childPrice = null,
    Object? imagePath = null,
    Object? addresses = null,
    Object? images = null,
    Object? isFavourite = null,
  }) {
    return _then(_$BestOffersImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      address: null == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      adultPrice: null == adultPrice
          ? _value.adultPrice
          : adultPrice // ignore: cast_nullable_to_non_nullable
              as int,
      childPrice: null == childPrice
          ? _value.childPrice
          : childPrice // ignore: cast_nullable_to_non_nullable
              as int,
      imagePath: null == imagePath
          ? _value.imagePath
          : imagePath // ignore: cast_nullable_to_non_nullable
              as String,
      addresses: null == addresses
          ? _value._addresses
          : addresses // ignore: cast_nullable_to_non_nullable
              as List<AddressModel>,
      images: null == images
          ? _value._images
          : images // ignore: cast_nullable_to_non_nullable
              as List<ImagesModel>,
      isFavourite: null == isFavourite
          ? _value.isFavourite
          : isFavourite // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BestOffersImpl implements _BestOffers {
  const _$BestOffersImpl(
      {required this.id,
      required this.name,
      required this.address,
      required this.description,
      @JsonKey(name: "oldPrice") required this.adultPrice,
      required this.childPrice,
      required this.imagePath,
      required final List<AddressModel> addresses,
      required final List<ImagesModel> images,
      required this.isFavourite})
      : _addresses = addresses,
        _images = images;

  factory _$BestOffersImpl.fromJson(Map<String, dynamic> json) =>
      _$$BestOffersImplFromJson(json);

  @override
  final int id;
  @override
  final String name;
  @override
  final String address;
  @override
  final String description;
  @override
  @JsonKey(name: "oldPrice")
  final int adultPrice;
  @override
  final int childPrice;
  @override
  final String imagePath;
  final List<AddressModel> _addresses;
  @override
  List<AddressModel> get addresses {
    if (_addresses is EqualUnmodifiableListView) return _addresses;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_addresses);
  }

  final List<ImagesModel> _images;
  @override
  List<ImagesModel> get images {
    if (_images is EqualUnmodifiableListView) return _images;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_images);
  }

  @override
  final bool isFavourite;

  @override
  String toString() {
    return 'BestOffers(id: $id, name: $name, address: $address, description: $description, adultPrice: $adultPrice, childPrice: $childPrice, imagePath: $imagePath, addresses: $addresses, images: $images, isFavourite: $isFavourite)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BestOffersImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.address, address) || other.address == address) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.adultPrice, adultPrice) ||
                other.adultPrice == adultPrice) &&
            (identical(other.childPrice, childPrice) ||
                other.childPrice == childPrice) &&
            (identical(other.imagePath, imagePath) ||
                other.imagePath == imagePath) &&
            const DeepCollectionEquality()
                .equals(other._addresses, _addresses) &&
            const DeepCollectionEquality().equals(other._images, _images) &&
            (identical(other.isFavourite, isFavourite) ||
                other.isFavourite == isFavourite));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      name,
      address,
      description,
      adultPrice,
      childPrice,
      imagePath,
      const DeepCollectionEquality().hash(_addresses),
      const DeepCollectionEquality().hash(_images),
      isFavourite);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BestOffersImplCopyWith<_$BestOffersImpl> get copyWith =>
      __$$BestOffersImplCopyWithImpl<_$BestOffersImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BestOffersImplToJson(
      this,
    );
  }
}

abstract class _BestOffers implements BestOffers {
  const factory _BestOffers(
      {required final int id,
      required final String name,
      required final String address,
      required final String description,
      @JsonKey(name: "oldPrice") required final int adultPrice,
      required final int childPrice,
      required final String imagePath,
      required final List<AddressModel> addresses,
      required final List<ImagesModel> images,
      required final bool isFavourite}) = _$BestOffersImpl;

  factory _BestOffers.fromJson(Map<String, dynamic> json) =
      _$BestOffersImpl.fromJson;

  @override
  int get id;
  @override
  String get name;
  @override
  String get address;
  @override
  String get description;
  @override
  @JsonKey(name: "oldPrice")
  int get adultPrice;
  @override
  int get childPrice;
  @override
  String get imagePath;
  @override
  List<AddressModel> get addresses;
  @override
  List<ImagesModel> get images;
  @override
  bool get isFavourite;
  @override
  @JsonKey(ignore: true)
  _$$BestOffersImplCopyWith<_$BestOffersImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
