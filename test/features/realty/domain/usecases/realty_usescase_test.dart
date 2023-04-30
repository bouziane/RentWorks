import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:rentworks/features/realty/domain/entities/realty.dart';
import 'package:rentworks/features/realty/domain/repositories/realty_repository.dart';
import 'package:rentworks/features/realty/domain/usecases/params/realty_param.dart';
import 'package:rentworks/features/realty/domain/usecases/realty_usescase.dart';
import 'package:rentworks/features/tenant/domain/entities/tenant.dart';

import '../../../domaines/usescases/tenant_usescases_test.mocks.dart';
import 'realty_usescase_test.mocks.dart';

@GenerateMocks([RealtyRepository])
void main() {
  late MockRealtyRepository mockRealtyRepository;
  late MockTenantRepository mockTenantRepository;
  late RealtyUseCases realtyUseCases;

  setUp(() {
    mockRealtyRepository = MockRealtyRepository();
    mockTenantRepository = MockTenantRepository();
    realtyUseCases = RealtyUseCases(mockRealtyRepository, mockTenantRepository);
  });

  group('RealtyUseCases', () {
    final testRealtyParam = RealtyParam();
    Tenant testTenant = Tenant(
        id: "22",
        name: "name",
        email: "email",
        phoneNumber: "phoneNumber",
        occupation: "occupation",
        active: true);

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
        tenants: [testTenant]);

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

    test('Add tenant to realty', () async {
      // Realty(id: testRealtyId, tenants: []);
      when(mockRealtyRepository.addTenantToRealty(testRealty.id, testTenant.id))
          .thenAnswer((_) async => true);
      when(mockRealtyRepository.getRealtyById(testRealty.id))
          .thenAnswer((_) async => testRealty);
      when(mockTenantRepository.getTenantById(testTenant.id))
          .thenAnswer((_) async => testTenant);
      //

      bool result =
          await realtyUseCases.addTenantToRealty(testRealty.id, testTenant.id);

      expect(result, true);
      expect(testRealty.tenants?.contains(testTenant), true);

      verify(mockRealtyRepository.getRealtyById(testRealty.id)).called(1);
      verify(mockTenantRepository.getTenantById(testTenant.id)).called(1);
    });
    test('Add tenant to non-existent realty', () async {
      when(mockRealtyRepository.getRealtyById(testRealty.id))
          .thenAnswer((_) async => testRealty);
      when(mockTenantRepository.getTenantById(testTenant.id))
          .thenAnswer((_) async => testTenant);
      when(mockRealtyRepository.addTenantToRealty(testRealty.id, testTenant.id))
          .thenAnswer((_) async => false);

      bool result =
          await realtyUseCases.addTenantToRealty(testRealty.id, testTenant.id);

      expect(result, false);

      verify(mockRealtyRepository.getRealtyById(testRealty.id)).called(1);
      verify(mockTenantRepository.getTenantById(testTenant.id)).called(1);
    });

    test('Add non-existent tenant to realty', () async {
      when(mockRealtyRepository.getRealtyById(testRealty.id))
          .thenAnswer((_) async => testRealty);
      when(mockRealtyRepository.addTenantToRealty(testRealty.id, testTenant.id))
          .thenAnswer((_) async => false);
      when(mockTenantRepository.getTenantById(testTenant.id))
          .thenAnswer((_) async => testTenant);

      bool result =
          await realtyUseCases.addTenantToRealty(testRealty.id, testTenant.id);

      expect(result, false);

      verify(mockRealtyRepository.getRealtyById(testRealty.id)).called(1);
      verify(mockTenantRepository.getTenantById(testTenant.id)).called(1);
    });
  });
}
