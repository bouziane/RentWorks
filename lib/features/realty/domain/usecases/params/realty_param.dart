import 'package:freezed_annotation/freezed_annotation.dart';

part 'realty_param.freezed.dart';
part 'realty_param.g.dart';

@Freezed()
class RealtyParam with _$RealtyParam {
  const factory RealtyParam({
    bool? available,
    double? price,
    List<String>? amenities,
    List<String>? photos,
    String? description,
    String? location,
    String? name,
    String? owner,
  }) = _RealtyParam;

  factory RealtyParam.fromJson(Map<String, dynamic> json) =>
      _$RealtyParamFromJson(json);
}
