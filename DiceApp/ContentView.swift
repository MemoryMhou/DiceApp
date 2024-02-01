//
//  ContentView.swift
//  DiceApp
//
//  Created by Memory Mhou on 01/02/2024.
//

import SwiftUI

struct ContentView: View {
    @State private var diceNumber = 1
    
    var body: some View {
        VStack {
            Text("Dice Roll: \(diceNumber)")
                .font(.title)
                .padding()
            
            Spacer()
            
            Image(systemName: "die.face.\(diceNumber).fill")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 100, height: 100)
                .padding()
            
            Spacer()
            
            Button("Roll Dice") {
                rollDice()
            }
            .padding()
            .foregroundColor(.white)
            .background(Color.blue)
            .cornerRadius(10)
            .padding()
        }
    }
    
    func rollDice() {
        diceNumber = Int.random(in: 1...6)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

