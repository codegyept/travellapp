import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:rehlatyuae/core/api/api_consumer.dart';
import 'package:rehlatyuae/core/api/dio_consumer.dart';
import 'package:rehlatyuae/features/best_offers/data/repositories/best_offers_repo_impl.dart';

import '../../features/best_offers/domain/repositories/best_offers_repo.dart';

final GetIt getIt = GetIt.instance;

void setupInjector() {
  getIt.registerLazySingleton<ApiConsumer>(
        () => DioConsumer(
      dio: Dio(),
    ),
  );
  getIt.registerLazySingleton<BestOffersRepo>(
        () => BestOffersRepoImpl(apiConsumer: getIt.get<ApiConsumer>()),
  );
}
