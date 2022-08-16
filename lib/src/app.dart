import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pikowl/l10n/l10n.dart';
import 'package:pikowl/src/deck/bloc/deck_bloc.dart';
import 'package:pikowl/src/deck_repository.dart';
import 'package:pikowl/src/home/view/home_page.dart';

class App extends StatelessWidget {
  const App({Key? key, required this.deckRepository}) : super(key: key);

  final DeckRepository deckRepository;

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (_) => DeckBloc(
            deckRepository: deckRepository,
          )..add(DeckStarted()),
        )
      ],
      child: const MaterialApp(
        title: 'Pikowl',
        localizationsDelegates: AppLocalizations.localizationsDelegates,
        supportedLocales: AppLocalizations.supportedLocales,
        debugShowCheckedModeBanner: false,
        home: HomePage(),
      ),
    );
  }
}
