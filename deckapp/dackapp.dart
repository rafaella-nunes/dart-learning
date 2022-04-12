void main() {
  var deck = new Deck();
  print(deck);
  deck.removeCard('Hearts', 'Ace');
  print(deck);
}

class Deck {
  List<Card> cards = [];

  Deck() {
    var ranks = [
      'Ace',
      'Two',
      'Three',
      'Four',
      'Five',
      'Six',
      'Seven',
      'Eight',
      'Nine',
      'Ten',
      "Jack",
      'Queen',
      'King'
    ];
    var suits = ['Diamonds', 'Hearts', 'Clubs', 'Spades'];

    for (var suit in suits) {
      for (var rank in ranks) {
        var card = new Card(rank: rank, suit: suit);
        cards.add(card);
      }
    }
  }

  toString() {
    return cards.toString();
  }

  shuffle() {
    cards.shuffle();
  }

  cardsWithSuit(String suit) {
    return cards.where((card) => card.suit == suit);
  }

  deal(int handSize) {
    var hand = cards.sublist(0, handSize);
    cards = cards.sublist(handSize);

    return hand;
  }

  removeCard(String rank, String suit) {
    return cards.removeWhere((card) => card.suit == suit && card.rank == rank);
  }
}

class Card {
  String rank = '';
  String suit = '';

  Card({required this.rank, required this.suit});

  toString() {
    return '$rank of $suit';
  }
}
