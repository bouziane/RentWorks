import 'package:get_it/get_it.dart';
import 'package:rentworks/core/app_router.dart';
import 'package:rentworks/features/tenant/data/datasource/tenant_datasource.dart';

import 'features/tenant/data/repositories/tenant_repository_impl.dart';
import 'features/tenant/domain/usecases/tenant_usecases.dart';

final getIt = GetIt.instance;
Future<void> init() async {
//go_router
  getIt.registerLazySingleton(() => AppRouter.createRouter());

//useCases
  getIt.registerLazySingleton(() => TenantUseCase(getIt()));

//repositories
  getIt.registerLazySingleton(() => TenantRepositoryImpl(getIt()));

// datasources
  getIt.registerLazySingleton(() => TenantDataSource());
}
