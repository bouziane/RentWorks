import 'package:get_it/get_it.dart';
import 'package:rentworks/config/supabase_config.dart';
import 'package:rentworks/core/app_router.dart';
import 'package:rentworks/features/realty/data/datasource/realty_datasource.dart';
import 'package:rentworks/features/realty/data/repositories/realty_repository_impl.dart';
import 'package:rentworks/features/realty/domain/repositories/realty_repository.dart';
import 'package:rentworks/features/realty/domain/usecases/realty_usescase.dart';
import 'package:rentworks/features/realty/presentation/realty/cubit/realty_cubit.dart';
import 'package:rentworks/features/tenant/data/datasource/tenant_datasource.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

import 'features/tenant/data/repositories/tenant_repository_impl.dart';
import 'features/tenant/domain/repositories/tenant_repository.dart';
import 'features/tenant/domain/usecases/tenant_usecases.dart';

final getIt = GetIt.instance;
Future<void> init() async {
// //appwrite
//   Client client = Client();
//   client
//           .setEndpoint('http://2.36.113.234/v1') // Your Appwrite Endpoint
//           .setProject('645111') // Your project ID
//           .setSelfSigned() // Use only on dev mode with a self-signed SSL cert
//       ;
//   getIt.registerLazySingleton(() => client);
  getIt.registerSingletonAsync(() => Supabase.initialize(
        url: SupabaseConfig.url,
        anonKey: SupabaseConfig.anon,
      ));
//sharedPreferences
  getIt.registerLazySingletonAsync(() => SharedPreferences.getInstance());

//go_router
  getIt.registerLazySingleton(() => AppRouter.createRouter());

//useCases
  getIt.registerLazySingleton(() => TenantUseCase(getIt()));
  getIt.registerLazySingleton(() => RealtyUseCases(getIt()));

//repositories
  getIt.registerLazySingleton<TenantRepository>(
      () => TenantRepositoryImpl(getIt()));
  getIt.registerLazySingleton<RealtyRepository>(
      () => RealtyRepositoryImpl(getIt()));

// datasources
  getIt.registerLazySingleton(() => TenantDataSource());
  getIt.registerLazySingleton(() => RealtyDataSource(getIt()));

//cubits
  getIt.registerLazySingleton(() => RealtyCubit(getIt()));
}
