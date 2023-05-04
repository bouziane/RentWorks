import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:rentworks/features/tenant/domain/usecases/params/tenant_param.dart';

import '../../domain/entities/tenant.dart';
import '../../domain/usecases/tenant_usecases.dart';

part 'tenants_state.dart';
part 'tenants_cubit.freezed.dart';

class TenantsCubit extends Cubit<TenantsState> {
  TenantUseCase tenantUseCase;
  TenantsCubit(this.tenantUseCase) : super(const TenantsState.initial());

  createTenant(TenantParam tenantParam) async {
    bool isCreated = await tenantUseCase.createTenant(tenantParam);
    if (!isCreated) {
      emit(
          const TenantsState.error("Error during the creation of the tenants"));
    } else {
      getAllTenants();
    }
  }

  getAllTenants() async {
    emit(const TenantsState.loading());
    tenantUseCase.retrieveAllTenants().listen((event) {
      if (event.isNotEmpty) {
        emit(TenantsState.loaded(event));
      } else {
        emit(const TenantsState.error("No elements found."));
      }
    });
  }
}
