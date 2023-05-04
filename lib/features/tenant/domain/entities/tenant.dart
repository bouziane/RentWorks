import 'package:freezed_annotation/freezed_annotation.dart';
part 'tenant.freezed.dart';
part 'tenant.g.dart';

@Freezed()
class Tenant with _$Tenant {
  const factory Tenant({
    @Default(false) bool active,
    required String id,
    String? email,
    String? name,
    String? occupation,
    String? phoneNumber,
  }) = _Tenant;
  factory Tenant.fromJson(Map<String, dynamic> json) => _$TenantFromJson(json);
}
