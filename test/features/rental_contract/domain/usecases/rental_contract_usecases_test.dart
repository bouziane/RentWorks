import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:rentworks/features/realty/domain/entities/realty.dart';
import 'package:rentworks/features/rental_contract/domain/entities/rental_contract.dart';
import 'package:rentworks/features/rental_contract/domain/repositories/rental_contract_repository.dart';
import 'package:rentworks/features/rental_contract/domain/usecases/params/rental_contract_params.dart';
import 'package:rentworks/features/rental_contract/domain/usecases/rental_contract_usecases.dart';
import 'package:rentworks/features/tenant/domain/entities/tenant.dart';

import 'rental_contract_usecases_test.mocks.dart';

@GenerateMocks([RentalContractRepository])
void main() {
  group('RentalContractUseCases', () {
    RentalContractRepository mockRepository = MockRentalContractRepository();
    RentalContractUseCases useCases = RentalContractUseCases(mockRepository);
    Tenant testTenant = Tenant(
        id: "22",
        name: "John Doe",
        email: "johndoe@example.com",
        phoneNumber: "phoneNumber",
        occupation: "occupation",
        active: true);
    Realty testRealty = Realty(
        id: "id",
        name: " name",
        description: "description",
        location: "location",
        price: 1,
        available: true,
        amenities: ["amenities"],
        owner: "owner",
        photos: ["photos"]);

    RentalContractParams testRentalContractParam = RentalContractParams(
        tenant: testTenant,
        realty: testRealty,
        paymentFrequency: PaymentFrequency.monthly,
        startDate: DateTime(2021),
        paymentDate: 4,
        leaseDuration: 12,
        paymentMethod: "paymentMethod",
        securityDeposit: 2300,
        additionalNotes: "additionalNotes");

    RentalContract testContract = RentalContract(
        additionalNotes: "additionalNotes",
        endDate: DateTime(2022),
        id: "id",
        leaseDuration: 433,
        paymentDate: 3,
        paymentFrequency: PaymentFrequency.quarterly,
        paymentMethod: "paymentMethod",
        realty: testRealty,
        securityDeposit: 2344,
        startDate: DateTime(2033),
        status: ContractStatus.ongoing,
        tenant: testTenant);

    test('createRentalContract', () async {
      when(mockRepository.createRentalContract(testRentalContractParam))
          .thenAnswer((_) async => 1);

      int result = await useCases.createRentalContract(testRentalContractParam);
      expect(result, 1);

      verify(mockRepository.createRentalContract(testRentalContractParam))
          .called(1);
    });

    test('updateRentalContract', () async {
      when(mockRepository.updateRentalContract(testContract))
          .thenAnswer((_) async => true);

      var res = await useCases.updateRentalContract(testContract);
      expect(res, true);
      verify(mockRepository.updateRentalContract(testContract)).called(1);
    });
  });
}
