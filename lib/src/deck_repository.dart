import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:pikowl/src/deck/models/deck.dart';

class DeckRepository {
  Future<List<Deck>> loadDecks() async {
    final jsonData = await rootBundle.loadString('assets/json/decks.json');
    final list = await json.decode(jsonData) as List<dynamic>;

    final decks = <Deck>[];
    for (final dynamic it in list) {
      final deck = Deck.fromJson(it as Map<String, dynamic>);
      decks.add(deck);
    }

    return decks;
  }
}
