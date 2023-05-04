part of 'tenants_cubit.dart';

@freezed
class TenantsState with _$TenantsState {
  const factory TenantsState.initial() = _Initial;
  const factory TenantsState.loading() = _Loading;
  const factory TenantsState.loaded(List<Tenant> tenants) = _Loaded;
  const factory TenantsState.error(String message) = _Error;
}
