//
//  Tic tack toe.swift
//  test game
//
//  Created by Reddy Kitaan on 26/3/22.
//

import SwiftUI

// Screen is 410 x 630

struct game_choice2: View {
    @EnvironmentObject var appState: AppState
    
    var body: some View {
        
        ZStack{
            CustomColor.be.ignoresSafeArea()
            
            VStack{
                
                Button("Tic-tac-toe"){appState.hasOnboared = 3}
        
                .foregroundColor(. black)
                .font(.custom("KGHAPPY",size:25))
                .padding()
        
                Button("Sudoku"){appState.hasOnboared = 4 }
        
                .foregroundColor(. black)
                .font(.custom("KGHAPPY",size:25))
                .padding()
                
                Button("BigBrain"){appState.hasOnboared = 9 }
        
                .foregroundColor(. black)
                .font(.custom("KGHAPPY",size:25))
                .padding()
                
                
        
                Button("Word Guess"){appState.hasOnboared = 8 }
        
                .foregroundColor(. black)
                .font(.custom("KGHAPPY",size:25))
                .padding()
            
            }
            
        }
        
        
        
    }
}

struct game_choice2_Previews: PreviewProvider {
    static var previews: some View {
        game_choice2()
    }
}


