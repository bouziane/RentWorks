import 'package:flutter_test/flutter_test.dart';
import 'package:rentworks/features/tenant/data/datasource/tenant_datasource.dart';
import 'package:rentworks/features/tenant/domain/usecases/params/tenant_param.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:rentworks/features/tenant/data/repositories/tenant_repository_impl.dart';
import 'package:rentworks/features/tenant/domain/entities/tenant.dart';

import 'tenant_repository_impl_test.mocks.dart';

@GenerateMocks([TenantDataSource])
void main() {
  late TenantRepositoryImpl tenantRepository;
  late MockTenantDataSource mockTenantDataSource;

  setUp(() {
    mockTenantDataSource = MockTenantDataSource();
    tenantRepository = TenantRepositoryImpl(mockTenantDataSource);
  });

  group('TenantRepositoryImpl', () {
    final tenantParam = TenantParam(
      name: "name",
      email: "email",
      phoneNumber: "phoneNumber",
      active: true,
      occupation: 'employee',
    );

    final tenant = Tenant(
      id: 123,
      name: "name",
      email: "email",
      phoneNumber: "phoneNumber",
      active: true,
      occupation: 'employee',
    );

    final updatedTenant = Tenant(
      id: 123,
      name: "nameUpdate",
      email: "emailUpdate",
      phoneNumber: "phoneNumberUpdate",
      active: true,
      occupation: 'employee',
    );

    test('Create Tenant', () async {
      when(mockTenantDataSource.createTenant(tenantParam))
          .thenAnswer((_) => Future.value(true));
      final result = await tenantRepository.createTenant(tenantParam);
      expect(result, true);
    });

    test('Delete Tenant', () async {
      const tenantId = '123';
      when(mockTenantDataSource.deleteTenant(tenantId))
          .thenAnswer((_) => Future.value(true));
      final result = await tenantRepository.deleteTenant(tenantId);
      expect(result, true);
    });

    test('Get Tenant by ID', () async {
      const tenantId = 123;
      when(mockTenantDataSource.getTenantById(tenantId))
          .thenAnswer((_) => Future.value(tenant));
      final result = await tenantRepository.getTenantById(tenantId);
      expect(result, isInstanceOf<Tenant>());
    });

    test('Update Tenant', () async {
      when(mockTenantDataSource.updateTenant(updatedTenant))
          .thenAnswer((_) => Future.value(true));
      final result = await tenantRepository.updateTenant(updatedTenant);
      expect(result, true);
    });
  });
}
