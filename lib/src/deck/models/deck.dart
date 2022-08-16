import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'deck.g.dart';

@JsonSerializable()
class Deck extends Equatable {
  const Deck({
    required this.id,
    required this.name,
    required this.description,
    required this.elements,
    this.nameOfImage,
  });

  /// Connect the generated [_$DeckFromJson] function to the `fromJson`
  /// factory.
  factory Deck.fromJson(Map<String, dynamic> json) => _$DeckFromJson(json);

  /// Connect the generated [_$DeckToJson] function to the `toJson` method.
  Map<String, dynamic> toJson() => _$DeckToJson(this);

  final int id;
  final String name;
  final String description;
  @JsonKey(name: 'nameOfImage')
  final String? nameOfImage;
  final List<Map<String, dynamic>> elements;

  @override
  List<Object> get props => [
        id,
        name,
        description,
        elements,
      ];
}
