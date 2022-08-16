import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pikowl/debug_bloc_observer.dart';
import 'package:pikowl/src/app.dart';
import 'package:pikowl/src/deck_repository.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  BlocOverrides.runZoned(
    () => runApp(App(deckRepository: DeckRepository())),
    blocObserver: kDebugMode ? DebugBlocObserver() : null,
  );
}
