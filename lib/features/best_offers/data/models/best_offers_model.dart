import 'package:freezed_annotation/freezed_annotation.dart';

import 'address_model.dart';
import 'images_model.dart';


part 'best_offers_model.freezed.dart';
part 'best_offers_model.g.dart';

@freezed
class BestOffers with _$BestOffers
{
 const factory BestOffers({
   required final int id,
   required final String name,
   required final String address,
   required final String description,
   required final int oldPrice,
   required final int childPrice,
   required final String imagePath,
   required final List<AddressModel> addresses,
   required final List<ImagesModel> images,
   required final bool isFavourite,
})= _BestOffers;
 factory BestOffers.fromJson(Map<String, dynamic> json) =>
     _$BestOffersFromJson(json);
}