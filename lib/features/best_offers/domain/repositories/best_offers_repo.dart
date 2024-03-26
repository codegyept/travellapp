
import '../../data/models/best_offers_model.dart';
import 'package:dartz/dartz.dart';
abstract class BestOffersRepo
{
  Future<Either<String,List<BestOffers>>>fetchBestOffers({int?startIndex = 0 , int?limit = 10});
}