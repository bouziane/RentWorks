import 'package:freezed_annotation/freezed_annotation.dart';

part 'realty.freezed.dart';
part 'realty.g.dart';

@Freezed()
class Realty with _$Realty {
  const factory Realty({
    @Default(false) bool available,
    double? price,
    List<String>? amenities,
    List<String>? photos,
    required String id,
    String? description,
    String? location,
    String? name,
    String? owner,
  }) = _Realty;
  factory Realty.fromJson(Map<String, dynamic> json) => _$RealtyFromJson(json);
}
