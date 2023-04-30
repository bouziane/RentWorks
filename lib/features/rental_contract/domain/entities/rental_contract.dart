import '../../../realty/domain/entities/realty.dart';
import '../../../tenant/domain/entities/tenant.dart';

class RentalContract {
  final ContractStatus status;
  final DateTime endDate;
  final DateTime startDate;
  final double securityDeposit;
  final int leaseDuration;
  final int paymentDate;
  final PaymentFrequency paymentFrequency;
  final Realty realty;
  final String additionalNotes;
  final String paymentMethod;
  final Tenant tenant;
  late String id;

  RentalContract({
    required this.additionalNotes,
    required this.endDate,
    required this.id,
    required this.leaseDuration,
    required this.paymentDate,
    required this.paymentFrequency,
    required this.paymentMethod,
    required this.realty,
    required this.securityDeposit,
    required this.startDate,
    required this.status,
    required this.tenant,
  });
}

enum ContractStatus { ongoing, terminated, renewed }

enum PaymentFrequency { monthly, quarterly }
