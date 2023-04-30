import 'package:flutter_test/flutter_test.dart';
import 'package:rentworks/features/tenant/domain/entities/tenant.dart';
import 'package:rentworks/features/tenant/domain/repositories/tenant_repository.dart';
import 'package:rentworks/features/tenant/domain/usecases/params/tenant_param.dart';
import 'package:rentworks/features/tenant/domain/usecases/tenant_usecases.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';

import 'tenant_usescases_test.mocks.dart';

@GenerateMocks([TenantRepository])
void main() {
  late MockTenantRepository mockTenantRepository;
  late TenantUseCase tenantUseCase;

  setUp(() {
    mockTenantRepository = MockTenantRepository();
    tenantUseCase = TenantUseCase(mockTenantRepository);
  });
  group('Tenant Service', () {
    test('Create Tenant', () async {
      final tenantParam = TenantParam(
        name: 'John Doe',
        email: 'johndoe@example.com',
        phoneNumber: '+1234567890',
        moveInDate: DateTime.now(),
      );

      when(mockTenantRepository.createTenant(tenantParam))
          .thenAnswer((realInvocation) => Future.value(true));
      final res = await tenantUseCase.createTenant(tenantParam);
      expect(res, true);
    });

    test('Retrieve Tenant by ID', () async {
      const tenantId = 123;

      when(mockTenantRepository.getTenantById(tenantId))
          .thenAnswer((realInvocation) => Future.value(Tenant(
                id: 123,
                name: 'John Doe',
                email: 'johndoe@example.com',
                phoneNumber: '+1234567890',
                moveInDate: DateTime.now(),
              )));
      final res = await tenantUseCase.retrieveTenantById(tenantId);
      expect(res.name, 'John Doe');
      expect(res.id, 123);
      expect(res.email, 'johndoe@example.com');
      expect(res.phoneNumber, '+1234567890');
    });

    test('Update Tenant', () async {
      final updatedTenant = Tenant(
        id: 123,
        name: 'Jane Doe',
        email: 'janedoe@example.com',
        phoneNumber: '+1234567890',
        moveInDate: DateTime.now(),
      );

      when(mockTenantRepository.updateTenant(updatedTenant))
          .thenAnswer((realInvocation) => Future.value(true));
      final res = await tenantUseCase.updateTenant(updatedTenant);
      expect(res, true);
    });

    test('Delete Tenant', () async {
      const tenantId = '123';

      when(mockTenantRepository.deleteTenant(tenantId))
          .thenAnswer((realInvocation) => Future.value(true));
      final res = await tenantUseCase.deleteTenant(tenantId);
      expect(res, true);
    });
  });
}
