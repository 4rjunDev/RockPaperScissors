//
//  ContentView.swift
//  RockPaperScissors
//
//  Created by Arjun on 2021-04-26.
//

import SwiftUI

struct ContentView: View {
    
    var moves = ["Rock", "Paper", "Scissors"]
    var action = ["Win", "Lose"]
    @State private var score = 0
    @State private var selectedMove = Int.random(in: 0...2)
    @State private var selectedAction = Int.random(in: 0...1)
    @State private var gameOver = false
    
    var body: some View {
        
        VStack(spacing: 500) {
            
            VStack {
                Text("Score: \(score)")
                    .padding()
                Text(action[selectedAction] + " against " + moves[selectedMove])
                    .font(.largeTitle)
            }
            
            HStack {
                Button("Rock") {
                    if selectedAction == 0 && selectedMove == 0 || selectedAction == 0 && selectedMove == 1 {
                        score -= 1
                    } else if selectedAction == 0 && selectedMove == 2 {
                        score += 1
                    }
                    if selectedAction == 1 && selectedMove == 0 || selectedAction == 1 && selectedMove == 1 {
                        score += 1
                    } else if selectedAction == 1 && selectedMove == 2 {
                        score -= 1
                    }
                    newStatement()
                    
                }
                .padding()
                
                Button("Paper") {
                    if selectedAction == 0 && selectedMove == 1 || selectedAction == 0 && selectedMove == 2 {
                        score -= 1
                    } else if selectedAction == 0 && selectedMove == 0 {
                        score += 1
                    }
                    if selectedAction == 1 && selectedMove == 1 || selectedAction == 1 && selectedMove == 2 {
                        score += 1
                    } else if selectedAction == 1 && selectedMove == 0 {
                        score -= 1
                    }
                    newStatement()
                }
                .padding()
                
                Button("Scissors") {
                    if selectedAction == 0 && selectedMove == 0 || selectedAction == 0 && selectedMove == 2 {
                        score -= 1
                    } else if selectedAction == 0 && selectedMove == 1 {
                        score += 1
                    }
                    if selectedAction == 1 && selectedMove == 0 || selectedAction == 1 && selectedMove == 2 {
                        score += 1
                    } else if selectedAction == 1 && selectedMove == 1 {
                        score -= 1
                    }
                    newStatement()
                }
                .padding()
            }
        }
    }
    
    
    func newStatement() {
        selectedMove = Int.random(in: 0...2)
        selectedAction = Int.random(in: 0...1)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
