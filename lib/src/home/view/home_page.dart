import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pikowl/src/deck/bloc/deck_bloc.dart';
import 'package:pikowl/src/game/game.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Decks'),
      ),
      backgroundColor: Colors.red,
      body: BlocBuilder<DeckBloc, DeckState>(
        builder: (context, state) {
          if (state is DeckLoaded) {
            return ListView(
              padding: const EdgeInsets.all(8),
              children: state.decks.map((e) {
                return Center(
                  child: Card(
                    child: ListTile(
                      shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(8),
                        ),
                      ),
                      tileColor: Colors.white,
                      leading: ClipRRect(
                        borderRadius: BorderRadius.circular(8),
                        // Image border
                        child: SizedBox.fromSize(
                          size: const Size.fromRadius(36), // Image radius
                          child: Image.asset(
                            'assets/imgs/${e.nameOfImage}',
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      title: Text(
                        e.name,
                        style: const TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      subtitle: Text(e.description),
                      contentPadding: const EdgeInsets.all(20),
                      onTap: () {
                        Navigator.of(context).push(
                          MaterialPageRoute<void>(
                            builder: (context) => Game(elements: e.elements),
                          ),
                        );
                      },
                    ),
                  ),
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
