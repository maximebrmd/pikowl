part of 'deck_bloc.dart';

@immutable
abstract class DeckState extends Equatable {
  const DeckState();
}

class DeckLoading extends DeckState {
  @override
  List<Object?> get props => [];
}

class DeckLoaded extends DeckState {
  const DeckLoaded(this.decks);

  final List<Deck> decks;

  @override
  List<Object?> get props => [decks];
}

class DeckError extends DeckState {
  @override
  List<Object?> get props => [];
}
