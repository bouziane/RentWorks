import 'package:rentworks/features/tenant/domain/entities/tenant.dart';
import 'package:rentworks/features/tenant/domain/usecases/params/tenant_param.dart';

class TenantDataSource {
  Future<bool> createTenant(TenantParam tenantParam) async {
    return true;
  }

  Future<bool> deleteTenant(String tenantId) async {
    return true;
  }

  Future<Tenant> getTenantById(int tenantId) async {
    return Tenant(
        id: 12,
        name: "name",
        email: "email",
        phoneNumber: "phoneNumber",
        moveInDate: DateTime.now());
  }

  Future<bool> updateTenant(Tenant updatedTenant) async {
    return true;
  }
}
