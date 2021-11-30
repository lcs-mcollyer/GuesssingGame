//
//  GuessingGame.swift
//  StatePropertyWrapperSimpleExample
//
//  Created by Matthew Collyer on 2021-11-30.
//

import SwiftUI

struct ContentView: View {
    
    // creat the user is guessing
    @State var currentGuess = 50.0
    
    @State var feedback = ""
    
    
    
    
    // Generate random number
    let target = Int.random(in: 1...100)
    
    
    
    var body: some View {
        VStack{
            
            HStack {
              Spacer()
                Text("\(String(format: "%.0f", currentGuess))")
                    .font(.title)
                    .bold()
             
            }
            
            
            
            
            Slider(value: $currentGuess, in: 0.0...100.0, label: {
                Text("Guess")
            },
                   minimumValueLabel: {
                Text("0.0")
            },
                   
                   maximumValueLabel: {
                Text("100.0")
            })
            Button(action: {
                print("Guess Submitted")
            }, label: {
                Text("Submit Guess")
            })
                .buttonStyle(.bordered)
            
            Text("The actaul secret number is: \(target)")
            
            Spacer()
            
        }
        .padding()
        .navigationTitle("Guessing Game")
    }
}



struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView{
            ContentView()
                .preferredColorScheme(.dark)
        }
    }
}
