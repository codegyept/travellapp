part of 'best_offers_cubit.dart';

@freezed
class BestOffersState with _$BestOffersState {
  const factory BestOffersState.initial() = _Initial;
  const factory BestOffersState.loading() = _Loading;
  const factory BestOffersState.loaded(List<BestOffers> bestOffers) = _Loaded;
  const factory BestOffersState.error(String message) = _Error;
}