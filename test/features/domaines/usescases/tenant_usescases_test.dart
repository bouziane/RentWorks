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
  group('Tenant UseCases', () {
    Tenant testTenant = Tenant(
        id: "22",
        name: "John Doe",
        email: "johndoe@example.com",
        phoneNumber: "phoneNumber",
        occupation: "occupation",
        active: true);

    final updatedTenant = Tenant(
      id: "22",
      name: 'Jane Doe',
      email: 'janedoe@example.com',
      phoneNumber: '+1234567890',
      active: true,
      occupation: 'employee',
    );

    test('Create Tenant', () async {
      final tenantParam = TenantParam(
        name: 'John Doe',
        email: 'johndoe@example.com',
        phoneNumber: '+1234567890',
        active: true,
        occupation: 'employee',
      );

      when(mockTenantRepository.createTenant(tenantParam))
          .thenAnswer((realInvocation) => Future.value(true));
      final res = await tenantUseCase.createTenant(tenantParam);
      expect(res, true);
    });

    test('Retrieve Tenant by ID', () async {
      // const tenantId = "123";

      when(mockTenantRepository.getTenantById(testTenant.id))
          .thenAnswer((realInvocation) => Future.value(testTenant));
      final res = await tenantUseCase.retrieveTenantById(testTenant.id);
      expect(res.name, 'John Doe');
      expect(res.id, testTenant.id);
      expect(res.email, 'johndoe@example.com');
      expect(res.phoneNumber, 'phoneNumber');
    });

    test('Update Tenant', () async {
      when(mockTenantRepository.updateTenant(updatedTenant))
          .thenAnswer((realInvocation) => Future.value(true));
      final res = await tenantUseCase.updateTenant(updatedTenant);
      expect(res, true);
    });

    test('Delete Tenant', () async {
      when(mockTenantRepository.deleteTenant(testTenant.id))
          .thenAnswer((realInvocation) => Future.value(true));
      final res = await tenantUseCase.deleteTenant(testTenant.id);
      expect(res, true);
    });
  });
}
