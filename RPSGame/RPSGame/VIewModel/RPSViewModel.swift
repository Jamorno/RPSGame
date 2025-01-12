//
//  RPSViewModel.swift
//  RPSGame
//
//  Created by Jamorn Suttipong on 12/1/2568 BE.
//

import Foundation

class RPSViewModel: ObservableObject {
    
    @Published var playerChoice: String = "?"
    @Published var computerChoice: String = "?"
    @Published var result: String = "Choose you weapon"
    @Published var playerScore: Int = 0
    @Published var computerScore: Int = 0
    
    func playGame(with choice: String) {
        computerChoice = ["✊", "✌️", "🖐️"].randomElement()!
        playerChoice = choice
        
        if playerChoice == "✊" && computerChoice == "✌️" || playerChoice == "✌️" && computerChoice == "🖐️" ||
            playerChoice == "🖐️" && computerChoice == "✊" {
            result = "You win!!"
            playerScore += 1
        } else if playerChoice == computerChoice {
            result = "DRAW"
        } else {
            result = "You Lose!!"
            computerScore += 1
        }
    }
    
    func startNewGame() {
        playerChoice = "?"
        computerChoice = "?"
        result = "Choose you weapon"
        playerScore = 0
        computerScore = 0
    }
}
