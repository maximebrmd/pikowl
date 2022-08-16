// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'deck.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Deck _$DeckFromJson(Map<String, dynamic> json) => $checkedCreate(
      'Deck',
      json,
      ($checkedConvert) {
        final val = Deck(
          id: $checkedConvert('id', (v) => v as int),
          name: $checkedConvert('name', (v) => v as String),
          description: $checkedConvert('description', (v) => v as String),
          elements: $checkedConvert(
              'elements',
              (v) => (v as List<dynamic>)
                  .map((e) => e as Map<String, dynamic>)
                  .toList()),
          nameOfImage: $checkedConvert('nameOfImage', (v) => v as String?),
        );
        return val;
      },
    );

Map<String, dynamic> _$DeckToJson(Deck instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'description': instance.description,
      'nameOfImage': instance.nameOfImage,
      'elements': instance.elements,
    };
