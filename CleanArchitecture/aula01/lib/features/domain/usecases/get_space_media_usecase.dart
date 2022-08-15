import 'package:aula01/core/usecase/errors/failures.dart';
import 'package:aula01/core/usecase/usecase.dart';
import 'package:aula01/features/domain/entities/space_media_entity.dart';
import 'package:aula01/features/domain/repositories/space_media_repository.dart';
import 'package:dartz/dartz.dart';

class GetSpaceMediaUsecase implements UseCase<SpaceMediaEntity, NoParams> {
  final ISpaceMediaRepository repository;

  GetSpaceMediaUsecase(this.repository);

  @override
  Future<Either<Failure, SpaceMediaEntity>> call(NoParams params) {
    // TODO: implement call
    throw UnimplementedError();
  }
}
