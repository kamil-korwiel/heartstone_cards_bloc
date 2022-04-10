import 'package:heartstone_cards_bloc/core/exceptions/network_exception.dart';
import 'package:heartstone_cards_bloc/data/models/info/info.dart';
import 'package:retrofit/dio.dart';

import '../../datasources/remote/heartstone_api_service.dart';
import '../abstract/heartstone_repositories.dart';

class HeartsoneRepositoryImpl implements HeartStoneRepository {
  final HeartstoneApiService _heartStoneApiService;

  HeartsoneRepositoryImpl(this._heartStoneApiService);

  @override
  Future<Info> getInfo() async {
    final httpResponse = await _heartStoneApiService.getInfo();

    if (httpResponse.response.statusCode! >= 200 &&
        httpResponse.response.statusCode! < 300) {
      return httpResponse.data;
    } else {
      throw NetworkException(
          errorMessage: httpResponse.response.statusMessage ?? "No Message",
          statusCode: httpResponse.response.statusCode ?? 0);
    }
  }
}
