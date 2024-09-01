import "package:json_annotation/json_annotation.dart";
import "package:retrofit/retrofit.dart";
import "package:dio/dio.dart";

import "../../dto/display/menu/menu.dto.dart";

part "display.api.g.dart";

@RestApi()
abstract class DisplayApi {
  factory DisplayApi(Dio dio, {String baseUrl}) = _DisplayApi;

  @GET("/api/menu/{mall_type}")
  Future<List<MenuDto>> getMenusByMallType(@Path("mall_type") String mallType);
}
