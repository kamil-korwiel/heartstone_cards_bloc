import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:heartstone_cards_bloc/core/api_consts.dart';

import 'data/datasources/remote/heartstone_api_service.dart';
import 'data/repositories/implementation/heartstone_repositories_impl.dart';
import 'logic/blocs/info/info_bloc.dart';
import 'view/pages/test_page_info.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: BlocProvider(
        create: (context) =>
            InfoBloc(HeartsoneRepositoryImpl(HeartstoneApiService(Dio()
              ..options = BaseOptions(
                headers: {
                  'x-rapidapi-host': ApiConsts.hostApi,
                  'x-rapidapi-key': ApiConsts.apiKey
                },
                connectTimeout: 5000,
                receiveTimeout: 3000,
              )))),
        child: const TestInfoPage(),
      ),
    );
  }
}
