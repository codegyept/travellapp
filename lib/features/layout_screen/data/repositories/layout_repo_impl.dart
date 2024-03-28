import 'package:dartz/dartz.dart';
import 'package:rehlatyuae/core/api/api_consumer.dart';

import 'package:rehlatyuae/features/layout_screen/data/models/layout_model.dart';

import '../../../../core/api/end_points.dart';
import '../../../../core/errors/exceptions.dart';
import '../../domian/repositories/layout_repo.dart';


class LayoutRepoImpl implements LayoutRepository
{
  final ApiConsumer apiConsumer;
  LayoutRepoImpl({required this.apiConsumer,});
  @override
  Future<Either<String, LayOutModel>> fetchLayoutData() async
  {
      try {
        var layoutData = await apiConsumer.get(
          EndPoints.layoutEndPoint,
        );

        var layoutModel = LayOutModel.fromJson(layoutData["data"]);
        return right(layoutModel);
      }on ServerExceptions catch (error)
      {
        return Left(error.errorModel.message);
      }
    }
  }