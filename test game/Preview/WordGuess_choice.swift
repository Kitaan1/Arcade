//
//  WordGuess_choice.swift
//  test game
//
//  Created by Reddy Kitaan on 27/6/22.
//

import SwiftUI

struct WordGuess_choice: View {
    @EnvironmentObject var appState: AppState
    @EnvironmentObject var Sets: settings
    var body: some View {
        ZStack{
            CustomColor.be.ignoresSafeArea()
            VStack{
                Button("3 Letter Words"){appState.hasOnboared = 12}
                    .foregroundColor(. black)
                    .font(.custom("KGHAPPY",size:30))
                Button("5 Letter Words"){appState.hasOnboared = 8}
                    .foregroundColor(. black)
                    .font(.custom("KGHAPPY",size:30))
                
            }
        }
    }
}

struct WordGuess_choice_Previews: PreviewProvider {
    static var previews: some View {
        WordGuess_choice()
    }
}
