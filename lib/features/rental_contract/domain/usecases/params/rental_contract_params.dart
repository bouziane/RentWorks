import '../../../../realty/domain/entities/realty.dart';
import '../../../../tenant/domain/entities/tenant.dart';
import '../../entities/rental_contract.dart';

class RentalContractParams {
  final DateTime startDate;
  final double securityDeposit;
  final int leaseDuration;
  final int paymentDate;
  final PaymentFrequency paymentFrequency;
  final Realty realty;
  final String? additionalNotes;
  final String paymentMethod;
  final Tenant tenant;

  RentalContractParams({
    required this.additionalNotes,
    required this.leaseDuration,
    required this.paymentDate,
    required this.paymentFrequency,
    required this.paymentMethod,
    required this.realty,
    required this.securityDeposit,
    required this.startDate,
    required this.tenant,
  });
}
