// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'best_trips_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

BestTrips _$BestTripsFromJson(Map<String, dynamic> json) {
  return _BestTrips.fromJson(json);
}

/// @nodoc
mixin _$BestTrips {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get address => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  @JsonKey(name: "oldPrice")
  int? get adultPrice => throw _privateConstructorUsedError;
  int? get childPrice => throw _privateConstructorUsedError;
  String? get imagePath => throw _privateConstructorUsedError;
  List<AddressModel>? get addresses => throw _privateConstructorUsedError;
  List<ImagesModel>? get images => throw _privateConstructorUsedError;
  bool? get isFavourite => throw _privateConstructorUsedError;
  List<Trips>? get offers => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BestTripsCopyWith<BestTrips> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BestTripsCopyWith<$Res> {
  factory $BestTripsCopyWith(BestTrips value, $Res Function(BestTrips) then) =
      _$BestTripsCopyWithImpl<$Res, BestTrips>;
  @useResult
  $Res call(
      {int id,
      String name,
      String address,
      String? description,
      @JsonKey(name: "oldPrice") int? adultPrice,
      int? childPrice,
      String? imagePath,
      List<AddressModel>? addresses,
      List<ImagesModel>? images,
      bool? isFavourite,
      List<Trips>? offers});
}

/// @nodoc
class _$BestTripsCopyWithImpl<$Res, $Val extends BestTrips>
    implements $BestTripsCopyWith<$Res> {
  _$BestTripsCopyWithImpl(this._value, this._then);

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
    Object? description = freezed,
    Object? adultPrice = freezed,
    Object? childPrice = freezed,
    Object? imagePath = freezed,
    Object? addresses = freezed,
    Object? images = freezed,
    Object? isFavourite = freezed,
    Object? offers = freezed,
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
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      adultPrice: freezed == adultPrice
          ? _value.adultPrice
          : adultPrice // ignore: cast_nullable_to_non_nullable
              as int?,
      childPrice: freezed == childPrice
          ? _value.childPrice
          : childPrice // ignore: cast_nullable_to_non_nullable
              as int?,
      imagePath: freezed == imagePath
          ? _value.imagePath
          : imagePath // ignore: cast_nullable_to_non_nullable
              as String?,
      addresses: freezed == addresses
          ? _value.addresses
          : addresses // ignore: cast_nullable_to_non_nullable
              as List<AddressModel>?,
      images: freezed == images
          ? _value.images
          : images // ignore: cast_nullable_to_non_nullable
              as List<ImagesModel>?,
      isFavourite: freezed == isFavourite
          ? _value.isFavourite
          : isFavourite // ignore: cast_nullable_to_non_nullable
              as bool?,
      offers: freezed == offers
          ? _value.offers
          : offers // ignore: cast_nullable_to_non_nullable
              as List<Trips>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BestTripsImplCopyWith<$Res>
    implements $BestTripsCopyWith<$Res> {
  factory _$$BestTripsImplCopyWith(
          _$BestTripsImpl value, $Res Function(_$BestTripsImpl) then) =
      __$$BestTripsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String name,
      String address,
      String? description,
      @JsonKey(name: "oldPrice") int? adultPrice,
      int? childPrice,
      String? imagePath,
      List<AddressModel>? addresses,
      List<ImagesModel>? images,
      bool? isFavourite,
      List<Trips>? offers});
}

/// @nodoc
class __$$BestTripsImplCopyWithImpl<$Res>
    extends _$BestTripsCopyWithImpl<$Res, _$BestTripsImpl>
    implements _$$BestTripsImplCopyWith<$Res> {
  __$$BestTripsImplCopyWithImpl(
      _$BestTripsImpl _value, $Res Function(_$BestTripsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? address = null,
    Object? description = freezed,
    Object? adultPrice = freezed,
    Object? childPrice = freezed,
    Object? imagePath = freezed,
    Object? addresses = freezed,
    Object? images = freezed,
    Object? isFavourite = freezed,
    Object? offers = freezed,
  }) {
    return _then(_$BestTripsImpl(
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
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      adultPrice: freezed == adultPrice
          ? _value.adultPrice
          : adultPrice // ignore: cast_nullable_to_non_nullable
              as int?,
      childPrice: freezed == childPrice
          ? _value.childPrice
          : childPrice // ignore: cast_nullable_to_non_nullable
              as int?,
      imagePath: freezed == imagePath
          ? _value.imagePath
          : imagePath // ignore: cast_nullable_to_non_nullable
              as String?,
      addresses: freezed == addresses
          ? _value._addresses
          : addresses // ignore: cast_nullable_to_non_nullable
              as List<AddressModel>?,
      images: freezed == images
          ? _value._images
          : images // ignore: cast_nullable_to_non_nullable
              as List<ImagesModel>?,
      isFavourite: freezed == isFavourite
          ? _value.isFavourite
          : isFavourite // ignore: cast_nullable_to_non_nullable
              as bool?,
      offers: freezed == offers
          ? _value._offers
          : offers // ignore: cast_nullable_to_non_nullable
              as List<Trips>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BestTripsImpl implements _BestTrips {
  const _$BestTripsImpl(
      {required this.id,
      required this.name,
      required this.address,
      required this.description,
      @JsonKey(name: "oldPrice") required this.adultPrice,
      required this.childPrice,
      required this.imagePath,
      required final List<AddressModel>? addresses,
      required final List<ImagesModel>? images,
      required this.isFavourite,
      required final List<Trips>? offers})
      : _addresses = addresses,
        _images = images,
        _offers = offers;

  factory _$BestTripsImpl.fromJson(Map<String, dynamic> json) =>
      _$$BestTripsImplFromJson(json);

  @override
  final int id;
  @override
  final String name;
  @override
  final String address;
  @override
  final String? description;
  @override
  @JsonKey(name: "oldPrice")
  final int? adultPrice;
  @override
  final int? childPrice;
  @override
  final String? imagePath;
  final List<AddressModel>? _addresses;
  @override
  List<AddressModel>? get addresses {
    final value = _addresses;
    if (value == null) return null;
    if (_addresses is EqualUnmodifiableListView) return _addresses;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<ImagesModel>? _images;
  @override
  List<ImagesModel>? get images {
    final value = _images;
    if (value == null) return null;
    if (_images is EqualUnmodifiableListView) return _images;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final bool? isFavourite;
  final List<Trips>? _offers;
  @override
  List<Trips>? get offers {
    final value = _offers;
    if (value == null) return null;
    if (_offers is EqualUnmodifiableListView) return _offers;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'BestTrips(id: $id, name: $name, address: $address, description: $description, adultPrice: $adultPrice, childPrice: $childPrice, imagePath: $imagePath, addresses: $addresses, images: $images, isFavourite: $isFavourite, offers: $offers)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BestTripsImpl &&
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
                other.isFavourite == isFavourite) &&
            const DeepCollectionEquality().equals(other._offers, _offers));
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
      isFavourite,
      const DeepCollectionEquality().hash(_offers));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BestTripsImplCopyWith<_$BestTripsImpl> get copyWith =>
      __$$BestTripsImplCopyWithImpl<_$BestTripsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BestTripsImplToJson(
      this,
    );
  }
}

abstract class _BestTrips implements BestTrips {
  const factory _BestTrips(
      {required final int id,
      required final String name,
      required final String address,
      required final String? description,
      @JsonKey(name: "oldPrice") required final int? adultPrice,
      required final int? childPrice,
      required final String? imagePath,
      required final List<AddressModel>? addresses,
      required final List<ImagesModel>? images,
      required final bool? isFavourite,
      required final List<Trips>? offers}) = _$BestTripsImpl;

  factory _BestTrips.fromJson(Map<String, dynamic> json) =
      _$BestTripsImpl.fromJson;

  @override
  int get id;
  @override
  String get name;
  @override
  String get address;
  @override
  String? get description;
  @override
  @JsonKey(name: "oldPrice")
  int? get adultPrice;
  @override
  int? get childPrice;
  @override
  String? get imagePath;
  @override
  List<AddressModel>? get addresses;
  @override
  List<ImagesModel>? get images;
  @override
  bool? get isFavourite;
  @override
  List<Trips>? get offers;
  @override
  @JsonKey(ignore: true)
  _$$BestTripsImplCopyWith<_$BestTripsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
