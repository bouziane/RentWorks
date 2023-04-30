import 'package:rentworks/features/rental_contract/domain/usecases/params/rental_contract_params.dart';

import '../entities/rental_contract.dart';
import '../repositories/rental_contract_repository.dart';

class RentalContractUseCases {
  RentalContractRepository rentalContractRepository;
  RentalContractUseCases(this.rentalContractRepository);

  Future<int> createRentalContract(RentalContractParams rentalContractParams) {
    return rentalContractRepository.createRentalContract(rentalContractParams);
  }

  Future<bool> updateRentalContract(RentalContract updatedContract) {
    return rentalContractRepository.updateRentalContract(updatedContract);
  }
}
