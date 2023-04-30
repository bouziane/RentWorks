import 'package:rentworks/features/tenant/domain/entities/tenant.dart';
import 'package:rentworks/features/tenant/domain/usecases/params/tenant_param.dart';

abstract class TenantRepository {
  Future<bool> createTenant(TenantParam tenantParam);
  Future<bool> deleteTenant(String tenantId);
  Future<bool> updateTenant(Tenant updatedTenant);
  Future<Tenant> getTenantById(int tenantId);
}
