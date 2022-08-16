part of 'deck_bloc.dart';

abstract class DeckEvent extends Equatable {}

class DeckStarted extends DeckEvent {
  @override
  List<Object?> get props => [];
}
