import 'dart:async';

import 'package:rentworks/features/realty/domain/entities/realty.dart';
import 'package:rentworks/features/realty/domain/usecases/params/realty_param.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

class RealtyDataSource {
  Supabase supabase;

  RealtyDataSource(this.supabase);

  Future<bool> createRealty(RealtyParam realtyParam) async {
    try {
      await supabase.client.from('realty').insert(
        {"name": "toto"},
      );
      return true;
    } catch (e) {
      print(e);
      return false;
    }
  }

  Stream<List<Realty>> getAllRealty() {
    return supabase.client
        .from('realty')
        .stream(primaryKey: ['id']).transform(StreamTransformer.fromHandlers(
      handleData: (data, sink) {
        sink.add(data.map((e) {
          return Realty.fromJson(e);
        }).toList());
      },
    ));
  }
}
