import 'package:rentworks/features/tenant/domain/entities/tenant.dart';
import 'package:rentworks/features/tenant/domain/repositories/tenant_repository.dart';

import '../entities/realty.dart';
import '../repositories/realty_repository.dart';
import 'params/realty_param.dart';

class RealtyUseCases {
  final RealtyRepository realtyRepository;
  final TenantRepository tenantRepository;
  RealtyUseCases(this.realtyRepository, this.tenantRepository);

  // Create a new realty
  Future<bool> createRealty(RealtyParam param) {
    return realtyRepository.createRealty(param);
  }

  // Retrieve a realty by their ID
  Future<Realty> retrieveRealtyById(String realtyId) {
    return realtyRepository.getRealtyById(realtyId);
  }

  // Update a Realty's information
  Future<bool> updateRealty(Realty updatedRealty) {
    return realtyRepository.updateRealty(updatedRealty);
  }

  // Delete a Realty by their ID
  Future<bool> deleteRealty(String realtyId) {
    return realtyRepository.deleteRealty(realtyId);
  }

  Future<bool> addTenantToRealty(String realtyId, String tenantId) async {
    Realty realty = await realtyRepository.getRealtyById(realtyId);
    Tenant tenant = await tenantRepository.getTenantById(tenantId);
    return realtyRepository.addTenantToRealty(realty.id, tenant.id);
  }
}
