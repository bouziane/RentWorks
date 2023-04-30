import 'package:rentworks/features/tenant/domain/usecases/params/tenant_param.dart';

import 'package:rentworks/features/tenant/domain/entities/tenant.dart';

import '../../domain/repositories/tenant_repository.dart';
import '../datasource/tenant_datasource.dart';

class TenantRepositoryImpl extends TenantRepository {
  TenantDataSource tenantDataSource;

  TenantRepositoryImpl(this.tenantDataSource);

  @override
  Future<bool> createTenant(TenantParam tenantParam) {
    return tenantDataSource.createTenant(tenantParam);
  }

  @override
  Future<bool> deleteTenant(String tenantId) {
    return tenantDataSource.deleteTenant(tenantId);
  }

  @override
  Future<Tenant> getTenantById(int tenantId) {
    return tenantDataSource.getTenantById(tenantId);
  }

  @override
  Future<bool> updateTenant(Tenant updatedTenant) {
    return tenantDataSource.updateTenant(updatedTenant);
  }
}
