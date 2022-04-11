import 'package:dio/dio.dart';
import 'package:heartstone_cards_bloc/core/api_consts.dart';
import 'package:retrofit/dio.dart';
import 'package:retrofit/http.dart';

import '../../models/models.dart';

part 'heartstone_api_service.g.dart';

@RestApi(baseUrl: ApiConsts.baseUrl)
abstract class HeartstoneApiService {
  factory HeartstoneApiService(Dio dio, {String baseUrl}) =
      _HeartstoneApiService;

  @GET("/info")
  Future<Info> getInfo();
}
