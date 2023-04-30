import '../entities/realty.dart';
import '../repositories/realty_repository.dart';
import 'params/realty_param.dart';

class RealtyUseCases {
  final RealtyRepository realtyRepository;
  RealtyUseCases(this.realtyRepository);

  // Create a new realty
  Future<bool> createRealty(RealtyParam param) {
    return realtyRepository.createRealty(param);
  }

  // Retrieve a realty by their ID
  Future<Realty> retrieveRealtyById(int realtyId) {
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
}
