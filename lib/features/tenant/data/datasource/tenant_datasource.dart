import 'dart:async';

import 'package:rentworks/features/tenant/domain/entities/tenant.dart';
import 'package:rentworks/features/tenant/domain/usecases/params/tenant_param.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

class TenantDataSource {
  Supabase supabase;
  TenantDataSource(this.supabase);

  Future<bool> createTenant(TenantParam tenantParam) async {
    return true;
  }

  Future<bool> deleteTenant(String tenantId) async {
    return true;
  }

  Future<Tenant> getTenantById(String tenantId) async {
    return Tenant(
      id: "12",
      active: true,
      name: "name",
      email: "email",
      phoneNumber: "phoneNumber",
      occupation: "employee",
    );
  }

  Future<bool> updateTenant(Tenant updatedTenant) async {
    return true;
  }

  Stream<List<Tenant>> getAllTenants() {
    return supabase.client
        .from('tenants')
        .stream(primaryKey: ['id']).transform(StreamTransformer.fromHandlers(
      handleData: (data, sink) {
        sink.add(data.map((e) {
          return Tenant.fromJson(e);
        }).toList());
      },
    ));
  }
}
