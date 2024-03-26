import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../profile/data/models/client_model.dart';

part 'review_model.freezed.dart';
part 'review_model.g.dart';

@freezed
class Review with _$Review
{
 const factory Review({
   final int? id,
   final String? name,
   final int? starsNumber,
   final String? description,
   final String? imagePath,
   final Client? client,
})=_Review;

factory Review.fromJson(Map<String, dynamic> json) =>
_$ReviewFromJson(json);
}