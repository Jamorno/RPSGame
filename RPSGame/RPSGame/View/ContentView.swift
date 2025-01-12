//
//  ContentView.swift
//  RPSGame
//
//  Created by Jamorn Suttipong on 12/1/2568 BE.
//

import SwiftUI

struct ContentView: View {
    
    @ObservedObject var viewModel = RPSViewModel()
    
    var body: some View {
        VStack {
            Spacer()
            
            HStack(spacing: 100) {
                //user
                VStack(spacing: 30) {
                    Text("\(viewModel.playerScore)")
                        .font(.system(size: 40))
                        .fontWeight(.semibold)
                        .foregroundStyle(.pink)
                    Text("👤")
                    
                    Text(viewModel.playerChoice)
                }
                
                //computer
                VStack(spacing: 30) {
                    Text("\(viewModel.computerScore)")
                        .font(.system(size: 40))
                        .fontWeight(.semibold)
                        .foregroundStyle(.pink)
                    Text("🤖")
                    Text(viewModel.computerChoice)
                }
            }
            .font(.system(size: 80))
            
            Spacer()
            
            Text(viewModel.result)
                .font(.title3)
                .fontWeight(.semibold)
                .foregroundStyle(.black)
            
            Button {
                viewModel.startNewGame()
            } label: {
                Text("Restart")
                    .font(.title3)
                    .fontWeight(.semibold)
                    .foregroundStyle(.white)
                    .padding()
                    .background(.pink)
                    .clipShape(RoundedRectangle(cornerRadius: 25.0))
                    .padding()
                    
            }
            
            Spacer()
            
            //button choice
            HStack(spacing: 30) {
                Button("✊") {
                    viewModel.playGame(with: "✊")
                }
                Button("✌️") {
                    viewModel.playGame(with: "✌️")
                }
                Button("🖐️") {
                    viewModel.playGame(with: "🖐️")
                }
            }
            .font(.system(size: 80))
        }
        .padding()
    }
}

#Preview {
    ContentView()
}

