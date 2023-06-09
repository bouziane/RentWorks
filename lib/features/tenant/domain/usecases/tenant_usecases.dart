import 'package:rentworks/features/tenant/domain/entities/tenant.dart';
import 'package:rentworks/features/tenant/domain/usecases/params/tenant_param.dart';
import '../repositories/tenant_repository.dart';

class TenantUseCase {
  final TenantRepository tenantRepository;
  TenantUseCase(this.tenantRepository);

  // Create a new tenant
  Future<bool> createTenant(TenantParam param) {
    return tenantRepository.createTenant(param);
  }

// Retrieve all tenants
  Stream<List<Tenant>> retrieveAllTenants() {
    return tenantRepository.getAllTenants();
  }

  // Retrieve a tenant by their ID
  Future<Tenant> retrieveTenantById(String tenantId) {
    return tenantRepository.getTenantById(tenantId);
  }

  // Update a tenant's information
  Future<bool> updateTenant(Tenant updatedTenant) {
    return tenantRepository.updateTenant(updatedTenant);
  }

  // Delete a tenant by their ID
  Future<bool> deleteTenant(String tenantId) {
    return tenantRepository.deleteTenant(tenantId);
  }
}
