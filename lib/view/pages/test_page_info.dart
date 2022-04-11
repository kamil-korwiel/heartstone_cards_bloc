import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_sticky_header/flutter_sticky_header.dart';

import 'package:heartstone_cards_bloc/data/models/models.dart';

import '../../logic/blocs/info/info_bloc.dart';

class TestInfoPage extends StatelessWidget {
  const TestInfoPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.lightBlue,
      child: SafeArea(
        child: Scaffold(
          body: BlocBuilder<InfoBloc, InfoState>(
            builder: (context, state) {
              return state.when(
                  initial: () => const Center(child: Text("Click The Button")),
                  loading: () =>
                      const Center(child: CircularProgressIndicator()),
                  loaded: (data) => ListOfInfoData(info: data),
                  error: (error) => Center(
                          child: Column(
                        children: [
                          const Spacer(),
                          Text(error.statusCode.toString()),
                          Text(error.errorMessage),
                          const Spacer(),
                        ],
                      )));
            },
          ),
          floatingActionButton: FloatingActionButton(
            onPressed: () =>
                BlocProvider.of<InfoBloc>(context).add(const InfoEvent.get()),
            child: const Icon(Icons.download),
          ),
        ),
      ),
    );
  }
}

class ListOfInfoData extends StatelessWidget {
  final Info info;
  const ListOfInfoData({Key? key, required this.info}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverAppBar(
          title: Text(info.patch),
          centerTitle: true,
        ),
        SliverInfo(
          headerTitle: "classes",
          list: info.classes,
        ),
        SliverInfo(
          headerTitle: "sets",
          list: info.sets,
        ),
        SliverInfo(
          headerTitle: "standard",
          list: info.standard,
        ),
        SliverInfo(
          headerTitle: "wild",
          list: info.wild,
        ),
        SliverInfo(
          headerTitle: "types",
          list: info.types,
        ),
        SliverInfo(
          headerTitle: "factions",
          list: info.factions,
        ),
        SliverInfo(
          headerTitle: "qualities",
          list: info.qualities,
        ),
        SliverInfo(
          headerTitle: "races",
          list: info.races,
        ),
      ],
    );
  }
}

class SliverInfo extends StatelessWidget {
  final String headerTitle;
  final List<String> list;

  const SliverInfo({Key? key, required this.headerTitle, required this.list})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverStickyHeader(
      header: Container(
        height: 60.0,
        color: Colors.lightBlue,
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        alignment: Alignment.centerLeft,
        child: Text(
          headerTitle,
          style: const TextStyle(color: Colors.white),
        ),
      ),
      sliver: SliverList(
          delegate: SliverChildBuilderDelegate(
              (context, i) => ListTile(
                    title: Text(list[i]),
                  ),
              childCount: list.length)),
    );
  }
}
