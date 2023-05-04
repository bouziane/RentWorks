import 'package:freezed_annotation/freezed_annotation.dart';

part 'tenant_param.freezed.dart';
part 'tenant_param.g.dart';

@freezed
class TenantParam with _$TenantParam {
  const factory TenantParam({
    @Default(false) bool active,
    required String email,
    String? name,
    String? occupation,
    String? phoneNumber,
  }) = _TenantParam;

  factory TenantParam.fromJson(Map<String, dynamic> json) =>
      _$TenantParamFromJson(json);
}
