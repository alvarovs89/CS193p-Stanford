//
//  EmojiMemoryGame.swift
//  Memorize
//
//  Created by Alvaro Valdes Salazar on 29-12-21.

    // THIS IS THE VIEW-MODEL

import SwiftUI


//func makeCardContent(index: Int)-> String {
//    return "😀"
//
//}

class EmojiMemoryGame {
    
    static let emojis = ["✈️","🚗","🚓","🛵","🚒","🚚","🛺","🚝","🚀","🚁","🚕","🚎","🛴","🚲","🚈","🛶","🛸","🚂","🚜","🚙","🚌","🏎","🚢","🛰"]
    
    static func createMemoryGame() -> MemoryGame<String> {
        MemoryGame<String>(numberOfPairsOfCards: 4) { pairIndex in
            EmojiMemoryGame.emojis[pairIndex]
        }
    }
    
    
        // private makes a class private, so it is accesible only by the class, however private(set) (set) will allow others struct or classes to view the class but not change it
    
    
        //   private(set) var model: MemoryGame<String>
    
    
        //    private var model: MemoryGame<String> =
        //    MemoryGame<String>(numberOfPairsOfCards: 4) { pairIndex in
        //        EmojiMemoryGame.emojis[pairIndex]
        //    }
    
    private var model: MemoryGame<String> = EmojiMemoryGame.createMemoryGame()
    
            // this is read only
    var cards: Array<MemoryGame<String>.Card> {
        return model.cards
        
    }
    
}
