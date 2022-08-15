import 'package:aula01/core/usecase/errors/failures.dart';
import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';



abstract class UseCase<output, input> {
  Future<Either<Failure, output>> call(
      input params); //retorna sempre um left e um right
}

class NoParams extends Equatable{
  @override
  // TODO: implement props
  List<Object?> get props => [];

}