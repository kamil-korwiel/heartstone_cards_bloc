import 'package:dio/dio.dart';
import 'package:heartstone_cards_bloc/core/exceptions/network_exception.dart';
import 'package:heartstone_cards_bloc/data/models/info/info.dart';

import '../../datasources/remote/heartstone_api_service.dart';
import '../abstract/heartstone_repositories.dart';

class HeartsoneRepositoryImpl implements HeartStoneRepository {
  final HeartstoneApiService _heartStoneApiService;

  HeartsoneRepositoryImpl(this._heartStoneApiService);

  @override
  Future<Info> getInfo() async {
    final data = await _heartStoneApiService.getInfo().catchError((error) {
      if (error is DioError) {
        throw NetworkException(
            errorMessage: error.response?.statusMessage ?? "No Message",
            statusCode: error.response?.statusCode ?? 0);
      } else {
        throw NetworkException(
            errorMessage: "Some thing go wrong", statusCode: -1);
      }
    });

    return data;
  }
}
