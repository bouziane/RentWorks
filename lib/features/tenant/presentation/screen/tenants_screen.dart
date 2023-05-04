import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:bloc/bloc.dart';

import '../../../../di.dart';
import '../../domain/entities/tenant.dart';
import '../cubit/tenants_cubit.dart';
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
            loaded: (tenants) => ResponsiveBuilder(
              builder: (context, sizingInformation) {
                if (sizingInformation.deviceScreenType ==
                    DeviceScreenType.mobile) {
                  // Mobile layout
                  return ListView.builder(
                    itemCount: tenants.length,
                    itemBuilder: (context, index) {
                      return TenantCard(tenant: tenants[index]);
                    },
                  );
                } else {
                  // Web layout
                  return GridView.builder(
                    padding: const EdgeInsets.all(10),
                    gridDelegate:
                        const SliverGridDelegateWithMaxCrossAxisExtent(
                      maxCrossAxisExtent: 340,
                      mainAxisExtent: 160,
                      crossAxisSpacing: 20,
                      mainAxisSpacing: 20,
                    ),
                    itemCount: tenants.length,
                    itemBuilder: (context, index) {
                      return AspectRatio(
                          aspectRatio: 3 / 2,
                          child: TenantCard(tenant: tenants[index]));
                    },
                  );
                }
              },
            ),
          ),
        );
      },
    );
  }
}
