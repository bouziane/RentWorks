import 'package:rentworks/features/realty/domain/entities/realty.dart';
import 'package:rentworks/features/realty/domain/usecases/params/realty_param.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

class RealtyDataSource {
  Supabase supabase;
  // Client appwriteClient;
  // Databases databases;
  // RealtyDataSource(this.appwriteClient) : databases = Databases(appwriteClient);

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

  Future<List<Realty>> getAllRealty() async {
    // supabase.client
    //     .channel('table-db-changes')
    //     .onEvents(type, filter, (payload, [ref]) {});

    supabase.client
        .from('realty')
        .stream(primaryKey: ['id']).listen((List<Map<String, dynamic>> data) {
      print("object");
    });

    var select = await supabase.client.from('realty').stream(primaryKey: ["id"])
        // .order("name", ascending: true)
        .listen((event) {
      print("object");
    });

    return [
      Realty(
          amenities: [],
          available: true,
          description: "description",
          id: "id",
          location: "location",
          name: "name",
          owner: "owner",
          photos: ["photos"],
          price: 23)
    ];
  }
}
