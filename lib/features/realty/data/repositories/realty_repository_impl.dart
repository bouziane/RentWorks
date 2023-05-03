import 'package:rentworks/features/realty/data/datasource/realty_datasource.dart';
import 'package:rentworks/features/realty/domain/usecases/params/realty_param.dart';

import 'package:rentworks/features/realty/domain/entities/realty.dart';

import '../../domain/repositories/realty_repository.dart';

class RealtyRepositoryImpl extends RealtyRepository {
  RealtyDataSource realtyDataSource;

  RealtyRepositoryImpl(this.realtyDataSource);

  @override
  Future<bool> addTenantToRealty(String realtyId, String tenantId) {
    // TODO: implement addTenantToRealty
    throw UnimplementedError();
  }

  @override
  Future<bool> createRealty(RealtyParam realtyParam) {
    return realtyDataSource.createRealty(realtyParam);
  }

  @override
  Future<bool> deleteRealty(String realtyId) {
    // TODO: implement deleteRealty
    throw UnimplementedError();
  }

  @override
  Future<List<Realty>> getAllRealty() {
    return realtyDataSource.getAllRealty();
  }

  @override
  Future<Realty> getRealtyById(String realtyId) {
    // TODO: implement getRealtyById
    throw UnimplementedError();
  }

  @override
  Future<bool> updateRealty(Realty updatedRealty) {
    // TODO: implement updateRealty
    throw UnimplementedError();
  }
}
