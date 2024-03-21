import 'package:freezed_annotation/freezed_annotation.dart';

part 'address_model.freezed.dart';
part 'address_model.g.dart';


@freezed
class AddressModel with _$AddressModel
{
  const factory AddressModel({
    required  final int id,
    required final String name,
    required final String description,
  }) = _AddressModel;

  factory AddressModel.fromJson(Map<String, dynamic> json) =>
      _$AddressModelFromJson(json);
}

