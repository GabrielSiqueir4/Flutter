import 'package:aula01/features/domain/repositories/space_media_repository.dart';
import 'package:aula01/features/domain/usecases/get_space_media_usecase.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

class MockSpaceMediaRepository extends Mock implements ISpaceMediaRepository {}

void main() {
  late GetSpaceMediaUsecase usecase;
  late ISpaceMediaRepository repository;
  setUp(() {
    repository = MockSpaceMediaRepository();
    usecase = GetSpaceMediaUsecase(repository);
  });

final TSpaceMedia


  test('should get space media entity for a given date from the repository',
      () {
    when(repository)
        .calls(#getSpaceMediaFromDate)
        .thenAnswer((_) async => (tSpaceMedia));
  });
}
