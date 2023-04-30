import 'package:rentworks/features/realty/domain/entities/realty.dart';
import 'package:rentworks/features/realty/domain/usecases/params/realty_param.dart';

abstract class RealtyRepository {
  Future<bool> createRealty(RealtyParam param);

  Future<Realty> getRealtyById(int realtyId);

  Future<bool> updateRealty(Realty updatedRealty);

  Future<bool> deleteRealty(String realtyId);
}
