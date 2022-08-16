import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/cupertino.dart';
import 'package:pikowl/src/deck/models/deck.dart';
import 'package:pikowl/src/deck_repository.dart';

part 'deck_event.dart';
part 'deck_state.dart';

class DeckBloc extends Bloc<DeckEvent, DeckState> {
  DeckBloc({required this.deckRepository}) : super(DeckLoading()) {
    on<DeckStarted>(_onStarted);
  }

  final DeckRepository deckRepository;

  Future<void> _onStarted(DeckStarted event, Emitter<DeckState> emit) async {
    emit(DeckLoading());
    try {
      final decks = await deckRepository.loadDecks();
      emit(DeckLoaded(decks));
    } catch (err) {
      print(err);
      emit(DeckError());
    }
  }
}
