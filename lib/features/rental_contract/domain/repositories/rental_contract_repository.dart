import 'package:rentworks/features/rental_contract/domain/entities/rental_contract.dart';

import '../usecases/params/rental_contract_params.dart';

abstract class RentalContractRepository {
  Future<int> createRentalContract(RentalContractParams contract);

  Future<void> terminateRentalContract(String contractId);

  Future<void> renewRentalContract(String contractId);

  Future<bool> updateRentalContract(RentalContract updatedContract);
}
