//
//  MemorizeApp.swift
//  Memorize
//
//  Created by Alexander on 18/04/2023.
//

import SwiftUI

@main
struct MemorizeApp: App {
    private let game = EmojiMemoryGame()

    var body: some Scene {
        WindowGroup {
            GameView(game: game)
        }
    }
}
