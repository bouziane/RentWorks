import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rentworks/di.dart';
import 'package:rentworks/features/tenant/domain/entities/tenant.dart';
import 'package:rentworks/features/tenant/presentation/cubit/tenants_cubit.dart';

import '../widget/tenant_card.dart';

class TenantsScreen extends StatefulWidget {
  const TenantsScreen({super.key});

  @override
  State<TenantsScreen> createState() => _TenantsScreenState();
}

class _TenantsScreenState extends State<TenantsScreen> {
  List<Tenant> tenants = [];
  @override
  void initState() {
    super.initState();
    getIt<TenantsCubit>().getAllTenants();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<TenantsCubit, TenantsState>(
      bloc: getIt<TenantsCubit>(),
      builder: (context, state) {
        return Scaffold(
          body: state.whenOrNull(
            loading: () => const Center(
              child: CircularProgressIndicator(),
            ),
            loaded: (tenants) => ListView.builder(
              itemCount: tenants.length,
              itemBuilder: (context, index) {
                return TenantCard(tenant: tenants[index]);
              },
            ),
          ),
        );
      },
    );
  }
}
