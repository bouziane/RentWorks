import 'dart:async';

import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:rentworks/features/realty/domain/entities/realty.dart';
import 'package:rentworks/features/realty/domain/repositories/realty_repository.dart';
import 'package:rentworks/features/realty/domain/usecases/params/realty_param.dart';
import 'package:rentworks/features/realty/domain/usecases/realty_usescase.dart';

import '../../../tenant/domain/usecases/tenant_usecases_test.mocks.dart';
import 'realty_usescase_test.mocks.dart';

@GenerateMocks([RealtyRepository])
void main() {
  late MockRealtyRepository mockRealtyRepository;
  // late MockTenantRepository mockTenantRepository;
  late RealtyUseCases realtyUseCases;

  setUp(() {
    mockRealtyRepository = MockRealtyRepository();
    // mockTenantRepository = MockTenantRepository();
    realtyUseCases = RealtyUseCases(mockRealtyRepository);
  });

  group('RealtyUseCases', () {
    final testRealtyParam = RealtyParam();

    Realty testRealty = Realty(
      id: "id",
      name: " name",
      description: "description",
      location: "location",
      price: 1,
      available: true,
      amenities: ["amenities"],
      owner: "owner",
      photos: ["photos"],
    );

    final testUpdatedRealty = Realty(
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
      when(mockRealtyRepository.createRealty(testRealtyParam))
          .thenAnswer((_) => Future.value(true));
      final result = await realtyUseCases.createRealty(testRealtyParam);
      expect(result, true);
    });

    test('Retrieve All Realty ', () async {
      final mockStreamController = StreamController<List<Realty>>();
      final expectedRealtyList = [
        Realty(
            id: '1',
            name: 'Apartment A',
            location: 'New York',
            price: 1000.0,
            available: false,
            owner: "Mr Smith"),
        Realty(
            id: '2',
            name: 'House B',
            location: 'Los Angeles',
            price: 2000.0,
            available: true,
            owner: "Ms Smith")
      ];

      when(mockRealtyRepository.getAllRealty())
          .thenAnswer((_) => Stream.value(expectedRealtyList));

      // Act
      final resultStream = mockRealtyRepository.getAllRealty();

      // Assert
      expect(
        resultStream,
        emitsInOrder([
          expectedRealtyList,
          emitsDone,
        ]),
      );
    });

    test('Retrieve Realty by ID', () async {
      when(mockRealtyRepository.getRealtyById(testRealty.id))
          .thenAnswer((_) => Future.value(testRealty));
      final result = await realtyUseCases.retrieveRealtyById(testRealty.id);
      expect(result, isInstanceOf<Realty>());
    });

    test('Update Realty', () async {
      when(mockRealtyRepository.updateRealty(testUpdatedRealty))
          .thenAnswer((_) => Future.value(true));
      final result = await realtyUseCases.updateRealty(testUpdatedRealty);
      expect(result, true);
    });

    test('Delete Realty', () async {
      when(mockRealtyRepository.deleteRealty(testRealty.id))
          .thenAnswer((_) => Future.value(true));
      final result = await realtyUseCases.deleteRealty(testRealty.id);
      expect(result, true);
    });
  });
}
