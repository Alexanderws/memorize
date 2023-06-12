//
//  EmojiMemoryGame.swift
//  Memorize
//
//  Created by Alexander on 24/04/2023.
//

import SwiftUI

class EmojiMemoryGame: ObservableObject {
    typealias Card = MemoryGame<String>.Card

    private static let emojis = ["🎚", "⏱", "🛠", "🔫", "💎", "⚖️", "🪜", "🪛", "⚙️", "🪬", "🩸", "🛎", "🛋", "🪟", "📓", "🧷", "📌", "⛔️", "⚠️"]

    private static func createMemoryGame() -> MemoryGame<String> {
        MemoryGame<String>(numberOfPairsOfCards: 7) { pairIndex in emojis[pairIndex] }
    }

    @Published private var model: MemoryGame<String> = createMemoryGame()


    var cards: Array<Card> {
        model.cards
    }

    // MARK: - Intents
    func choose(_ card: Card) {
        model.choose(card)
    }

    func shuffle() {
        model.shuffle()
    }

    func restart() {
        model = EmojiMemoryGame.createMemoryGame()
    }
}
