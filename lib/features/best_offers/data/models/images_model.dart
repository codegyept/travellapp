import 'package:freezed_annotation/freezed_annotation.dart';

part 'images_model.freezed.dart';
part 'images_model.g.dart';


@freezed
class ImagesModel with _$ImagesModel
{
  const factory ImagesModel({
    required  final int id,
    required final String imagePath,

  }) = _ImagesModel;

  factory ImagesModel.fromJson(Map<String, dynamic> json) =>
      _$ImagesModelFromJson(json);
}

