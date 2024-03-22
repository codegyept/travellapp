import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../data/models/best_offers_model.dart';
import '../../domain/repositories/best_offers_repo.dart';

part 'best_offers_state.dart';

part 'best_offers_cubit.freezed.dart';

class BestOffersCubit extends Cubit<BestOffersState> {
  final BestOffersRepo bestOffersRepo;

  BestOffersCubit({required this.bestOffersRepo})
      : super(const BestOffersState.initial());

  Future<void> fetchBestOffers({int? startIndex, int? limit}) async {
    emit(const BestOffersState.loading());
    final results = await bestOffersRepo.fetchBestOffers(
      startIndex: startIndex,
      limit: limit,
    );
    results.fold(
      (error) =>emit(BestOffersState.error(error)),
      (bestOffers) => emit(BestOffersState.loaded(bestOffers)),
    );
  }
}
