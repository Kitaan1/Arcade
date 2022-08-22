//
//  Tic tack toe.swift
//  test game
//
//  Created by Reddy Kitaan on 26/3/22.
//

import SwiftUI

// Screen is 410 x 630


struct game_choice: View {   
    @EnvironmentObject var appState: AppState
    @State var games = [" Sudoku ","TicTacToe"," BigBrain ","WordGuess"]
    @State var i = 0
    @State var p = [4,3,7,8]
    @State var s = [42.525,36,38.25,31]
    
    func add(){
        if i != 3{
            i = i+1
        }
        else{
            i = 0
        }
        
        
    }
    
    func minus(){
        if i != 0{
            i = i-1
        }
        else{
            i = 3
        }
        
        
    }
    
    
    
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
                
                
        
                Button("Word Guess"){appState.hasOnboared = 101 }
        
                .foregroundColor(. black)
                .font(.custom("KGHAPPY",size:25))
                .padding()
                
                Button("Serpents And Stairs"){appState.hasOnboared = 11}
        
                .foregroundColor(. black)
                .font(.custom("KGHAPPY",size:25))
                .padding()
                
                
                
                
                
            
            }
//            VStack{
//
//
//                HStack{
//        Button("<"){appState.hasOnboared = 1}
//
//        .foregroundColor(. black)
//        .font(.custom("KGHAPPY",size:20))
//        .padding()
//                    Spacer()
//                }
//        Spacer()
//
//                HStack(alignment: .center, spacing: 14, content:{
//        Button("<"){minus()}
//
//        .foregroundColor(. black)
//        .font(.custom("KGHAPPY",size:28))
//
//        Button(games[i]){appState.hasOnboared = p[i]}
//
//        .foregroundColor(. black)
//        .font(.custom("KGHAPPY",size:CGFloat(s[i])))
//
//        Button(">"){add()}
//
//        .foregroundColor(. black)
//        .font(.custom("KGHAPPY",size:28))
//
//                })
        

              
            
            
        }
        
        
        
    }
}

struct game_choice_Previews: PreviewProvider {
    static var previews: some View {
        game_choice()
    }
}

