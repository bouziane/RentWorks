import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:rentworks/features/realty/domain/entities/realty.dart';
import 'package:rentworks/features/realty/domain/repositories/realty_repository.dart';
import 'package:rentworks/features/realty/domain/usecases/params/realty_param.dart';
import 'package:rentworks/features/realty/domain/usecases/realty_usescase.dart';

import 'realty_usescase_test.mocks.dart';

@GenerateMocks([RealtyRepository])
void main() {
  late RealtyUseCases realtyUseCases;
  late MockRealtyRepository mockRealtyRepository;

  setUp(() {
    mockRealtyRepository = MockRealtyRepository();
    realtyUseCases = RealtyUseCases(mockRealtyRepository);
  });

  group('RealtyUseCases', () {
    final realtyParam = RealtyParam();
    final realty = Realty(
        amenities: [],
        available: true,
        description: 'description',
        id: 'id',
        location: '',
        name: 'name',
        owner: '',
        photos: [],
        price: 234);

    final updatedRealty = Realty(
        amenities: [],
        available: true,
        description: 'descriptionUpdate',
        id: 'id',
        location: '',
        name: 'nameUpdate',
        owner: '',
        photos: [],
        price: 2344);

    test('Create Realty', () async {
      when(mockRealtyRepository.createRealty(realtyParam))
          .thenAnswer((_) => Future.value(true));
      final result = await realtyUseCases.createRealty(realtyParam);
      expect(result, true);
    });

    test('Retrieve Realty by ID', () async {
      const realtyId = 123;
      when(mockRealtyRepository.getRealtyById(realtyId))
          .thenAnswer((_) => Future.value(realty));
      final result = await realtyUseCases.retrieveRealtyById(realtyId);
      expect(result, isInstanceOf<Realty>());
    });

    test('Update Realty', () async {
      when(mockRealtyRepository.updateRealty(updatedRealty))
          .thenAnswer((_) => Future.value(true));
      final result = await realtyUseCases.updateRealty(updatedRealty);
      expect(result, true);
    });

    test('Delete Realty', () async {
      const realtyId = '123';
      when(mockRealtyRepository.deleteRealty(realtyId))
          .thenAnswer((_) => Future.value(true));
      final result = await realtyUseCases.deleteRealty(realtyId);
      expect(result, true);
    });
  });
}
