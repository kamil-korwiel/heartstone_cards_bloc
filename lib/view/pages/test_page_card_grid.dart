import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:heartstone_cards_bloc/data/models/cardfront/cardfront.dart';
import 'package:heartstone_cards_bloc/logic/blocs/cardfront/cardfront_bloc.dart';

class TestPageCardGrid extends StatelessWidget {
  const TestPageCardGrid({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("TestCardImg")),
      body: BlocBuilder<CardfrontBloc, CardfrontState>(
        builder: (context, state) {
          return state.when(
              initial: () => const Center(child: Text("Click The Button")),
              loading: () => const Center(child: CircularProgressIndicator()),
              loaded: (data) => GridCardGrid(
                    listCardFront: data,
                  ),
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
        onPressed: () => BlocProvider.of<CardfrontBloc>(context)
            .add(const CardfrontEvent.getSet("Scholomance Academy")),
        child: const Icon(Icons.download),
      ),
    );
  }
}

class GridCardGrid extends StatelessWidget {
  final List<CardFront> listCardFront;

  const GridCardGrid({Key? key, required this.listCardFront}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
        ),
        itemCount: listCardFront.length,
        itemBuilder: (_, index) => Card(
              child: CachedNetworkImage(
                alignment: Alignment.bottomLeft,
                imageUrl: listCardFront[index].img!,
                progressIndicatorBuilder: (context, url, downloadProgress) =>
                    Center(
                        child: CircularProgressIndicator(
                            value: downloadProgress.progress)),
                errorWidget: (context, url, error) => const Icon(Icons.error),
              ),
            ));
  }
}
