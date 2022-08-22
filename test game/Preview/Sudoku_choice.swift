//
//  Sudoku_choice.swift
//  test game
//
//  Created by Reddy Kitaan on 6/6/22.
//

import SwiftUI

struct Sudoku_choice: View {
    @EnvironmentObject var appState: AppState
    @EnvironmentObject var Sets: settings
    @State var Easy_highScore = defaults.float(forKey: "Easy_highScore")
    @State var Medium_highScore = defaults.float(forKey: "Medium_highScore")
    
    @State var modes = ["Easy","Medium","Hard"]
    @State var i = 0
    @State var yes = 1
    @State var cols = [Color.black,Color.black,Color.red]
    
    
    
    var body: some View {
        ZStack{
            CustomColor.be.ignoresSafeArea()
        VStack{
            Text("Sudoku")
                .font(.custom("KGHAPPY",size:30))
                .foregroundColor(.black)
            Spacer()
            Button("How to Play"){appState.hasOnboared = 13}
                .font(.custom("KGHAPPY",size:25))
                .foregroundColor(.black)
            HStack{
                Text("Easy Highscore ")
                    .font(.custom("KGHAPPY",size:25))
                    .foregroundColor(.black)
                Text((String(format: "%.0f", floor(Easy_highScore/60.0))) + ":" +
                         (String(format: "%.0f", floor(Easy_highScore.truncatingRemainder(dividingBy: 60)))))
                    .font(.custom("KGHAPPY",size:25))
                    .foregroundColor(.black)
            }
            HStack{
                Text("Medium Highscore ")
                    .font(.custom("KGHAPPY",size:25))
                    .foregroundColor(.black)
                Text((String(format: "%.0f", floor(Medium_highScore/60.0))) + ":" +
                         (String(format: "%.0f", floor(Medium_highScore.truncatingRemainder(dividingBy: 60)))))
                    .font(.custom("KGHAPPY",size:23))
                    .foregroundColor(.black)
            }
            HStack{
                Text("Mode ")
                    .font(.custom("KGHAPPY",size:25))
                    .foregroundColor(.black)
                Button("<"){
                    if i != 0 {
                    i = i - 1
                        yes = 1
                    }
                    else{
                        i = 2
                        yes = 0
                    }
                }
                .font(.custom("KGHAPPY",size:25))
                .foregroundColor(.black)
                Text(modes[i])
                    .font(.custom("KGHAPPY",size:25))
                    .foregroundColor(cols[i])
                Button(">"){
                    if i != 2{
                        i = i + 1
                        yes = 1
                    }
                    else{
                        i = 0
                        yes = 1
                    }
                    if i == 2{
                        yes = 0
                    }
                }
                .font(.custom("KGHAPPY",size:25))
                .foregroundColor(.black)
            }
            Spacer()
            Button("Play"){if yes == 1{
                Sets.mode = modes[i]
                appState.hasOnboared = 10
            }}
                .font(.custom("KGHAPPY",size:25))
                .foregroundColor(.black)
                .frame(width: 320, height: 50)
                .background(Color.white.opacity(100).cornerRadius(3))
        }
        }
    }
}

struct Sudoku_choice_Previews: PreviewProvider {
    static var previews: some View {
        Sudoku_choice()
    }
}
