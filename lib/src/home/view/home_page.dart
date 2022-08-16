import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pikowl/src/deck/bloc/deck_bloc.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocBuilder<DeckBloc, DeckState>(
        builder: (context, state) {
          if (state is DeckLoaded) {
            return GridView(
              shrinkWrap: true,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
                crossAxisSpacing: 5,
                mainAxisSpacing: 5,
                childAspectRatio: .5625,
              ),
              children: state.decks.map((e) {
                if (e.nameOfImage == null || e.nameOfImage!.isEmpty) {
                  return Container();
                }
                return InkWell(
                  onTap: () {
                    /*Navigator.of(context).push(
                      MaterialPageRoute<void>(
                        builder: (context) => Game(elements: e.elements),
                      ),
                    );*/
                  },
                  child: Image.asset('assets/imgs/${e.nameOfImage}'),
                );
              }).toList(),
            );
          }
          return Container();
        },
      ),
    );
  }
}
