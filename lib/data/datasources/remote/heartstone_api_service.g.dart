// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'heartstone_api_service.dart';

// **************************************************************************
// RetrofitGenerator
// **************************************************************************

// ignore_for_file: unnecessary_brace_in_string_interps

class _HeartstoneApiService implements HeartstoneApiService {
  _HeartstoneApiService(this._dio, {this.baseUrl}) {
    baseUrl ??= 'https://omgvamp-hearthstone-v1.p.rapidapi.com';
  }

  final Dio _dio;

  String? baseUrl;

  @override
  Future<HttpResponse<Info>> getInfo() async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{};
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<HttpResponse<Info>>(
            Options(method: 'GET', headers: _headers, extra: _extra)
                .compose(_dio.options, '/info',
                    queryParameters: queryParameters, data: _data)
                .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = Info.fromJson(_result.data!);
    final httpResponse = HttpResponse(value, _result);
    return httpResponse;
  }

  RequestOptions _setStreamType<T>(RequestOptions requestOptions) {
    if (T != dynamic &&
        !(requestOptions.responseType == ResponseType.bytes ||
            requestOptions.responseType == ResponseType.stream)) {
      if (T == String) {
        requestOptions.responseType = ResponseType.plain;
      } else {
        requestOptions.responseType = ResponseType.json;
      }
    }
    return requestOptions;
  }
}
