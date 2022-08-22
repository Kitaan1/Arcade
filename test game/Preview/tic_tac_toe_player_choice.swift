//
//  tic_tac_toe_player_choice.swift
//  test game
//
//  Created by Reddy Kitaan on 4/5/22.


import SwiftUI






struct tic_tac_toe_player_choice: View {
    @EnvironmentObject var appState: AppState
    @EnvironmentObject var Sets: settings
    
    
    
    @State var player = [1,2]
    @State var rounds = 1
    @State var p = 0
    @State var X = ["Black","Red","Blue","Green","Purple","Pink","Yellow","Orange"]
    @State var Y = ["Black","Red","Blue","Green","Purple","Pink","Yellow","Orange"]
    @State var x = 0
    @State var y = 0
    @State var pass = true
    @State var colorx = Color.black
    @State var colory = Color.black
    
    func player_change(){
        if p == 0{
            p = 1
        }
        else{
            p = 0
        }
    }
    
    
    
    
    
    var body: some View {
        ZStack{
            CustomColor.be.ignoresSafeArea()
            Button("<"){appState.hasOnboared = 2}
            .foregroundColor(. black)
            .font(.custom("KGHAPPY",size:25))
            .position(x: 30, y: 10)
        VStack{
            VStack{
                Text("Tic Tac Toe")
                .font(.custom("KGHAPPY",size:30))
                .foregroundColor(.black)
           
            Spacer()
            VStack{
            HStack{
                Text("Players")
                    .font(.custom("KGHAPPY",size:25))
                    .foregroundColor(.black)
                Button("<"){player_change()}
                    .font(.custom("KGHAPPY",size:25))
                                   .foregroundColor(.black)
            Button(String(player[p])){}
                .font(.custom("KGHAPPY",size:25))
                .foregroundColor(.black)
                Button(">"){player_change()}
                    .font(.custom("KGHAPPY",size:25))
                                    .foregroundColor(.black)
            }}}
            Text("")
            
            VStack{
                HStack{
                    
                    Text("Rounds")
                        .font(.custom("KGHAPPY",size:25))
                        .foregroundColor(.black)
                    
                    Button("<"){
                        if rounds != 1{
                        rounds = rounds - 1
                        }
                    }
                        .font(.custom("KGHAPPY",size:25))
                                       .foregroundColor(.black)
                Button(String(rounds)){}
                    .font(.custom("KGHAPPY",size:25))
                    .foregroundColor(.black)
                    Button(">"){rounds = rounds+1}
                        .font(.custom("KGHAPPY",size:25))
                                        .foregroundColor(.black)
                    
                }
            }
            Text("")
            VStack{
                HStack{
                    
                    Text("X's")
                        .font(.custom("KGHAPPY",size:25))
                        .foregroundColor(.black)
                    
                    Button("<"){if x != 0{
                        x = x - 1
                    }
                        else{
                            x = 5
                        }
                        if X[x] == "Black"{
                            colorx = Color.black
                            }
                        
                        if X[x] == "Red"{
                            colorx = Color.red
                            }
                        
                        if X[x] == "Blue"{
                            colorx = Color.blue
                            }
                        
                        if X[x] == "Green"{
                            colorx = Color.green
                            }
                        
                        if X[x] == "Purple"{
                            colorx = Color.purple
                            }
                        
                        if X[x] == "Pink"{
                            colorx = Color.pink
                            }
                        
                        if X[x] == "Yellow"{
                            colorx = Color.yellow
                            }
                        
                        if X[x] == "Orange"{
                            colorx = Color.orange
                            }
                    }
                        .font(.custom("KGHAPPY",size:25))
                        .foregroundColor(.black)
                Button(String(X[x])){}
                    .font(.custom("KGHAPPY",size:25))
                    .foregroundColor(colorx)
                    Button(">"){if x == 5{
                        x = 0
                    }
                        else{
                            x = x + 1
                        }
                        if X[x] == "Black"{
                            colorx = Color.black
                            }
                        
                        if X[x] == "Red"{
                            colorx = Color.red
                            }
                        
                        if X[x] == "Blue"{
                            colorx = Color.blue
                            }
                        
                        if X[x] == "Green"{
                            colorx = Color.green
                            }
                        
                        if X[x] == "Purple"{
                            colorx = Color.purple
                            }
                        
                        if X[x] == "Pink"{
                            colorx = Color.pink
                            }
                        
                        if X[x] == "Yellow"{
                            colorx = Color.yellow
                            }
                        
                        if X[x] == "Orange"{
                            colorx = Color.orange
                            }
                        
                        
                    }
                        .font(.custom("KGHAPPY",size:25))
                        .foregroundColor(.black)
                    
                }
            }
            Text("")
            VStack{
                HStack{
                    
                    Text("0's")
                        .font(.custom("KGHAPPY",size:25))
                        .foregroundColor(.black)
                    
                    Button("<"){if y != 0{
                        y = y - 1
                    }
                        else{
                            y = 5
                        }
                        if Y[y] == "Black"{
                            colory = Color.black
                            }
                        
                        if Y[y] == "Red"{
                            colory = Color.red
                            }
                        
                        if Y[y] == "Blue"{
                            colory = Color.blue
                            }
                        
                        if Y[y] == "Green"{
                            colory = Color.green
                            }
                        
                        if Y[y] == "Purple"{
                            colory = Color.purple
                            }
                        
                        if Y[y] == "Pink"{
                            colory = Color.pink
                            }
                        
                        if Y[y] == "Yellow"{
                            colory = Color.yellow
                            }
                        
                        if Y[y] == "Orange"{
                            colory = Color.orange
                            }
                    }
                        .font(.custom("KGHAPPY",size:25))
                                       .foregroundColor(.black)
                Button(String(Y[y])){}
                    .font(.custom("KGHAPPY",size:25))
                    .foregroundColor(colory)
                    Button(">"){if y == 5{
                        y = 0
                    }
                        else{
                            y = y + 1
                        }
                        if Y[y] == "Black"{
                            colory = Color.black
                            }
                        
                        if Y[y] == "Red"{
                            colory = Color.red
                            }
                        
                        if Y[y] == "Blue"{
                            colory = Color.blue
                            }
                        
                        if Y[y] == "Green"{
                            colory = Color.green
                            }
                        
                        if Y[y] == "Purple"{
                            colory = Color.purple
                            }
                        
                        if Y[y] == "Pink"{
                            colory = Color.pink
                            }
                        
                        if Y[y] == "Yellow"{
                            colory = Color.yellow
                            }
                        
                        if Y[y] == "Orange"{
                            colory = Color.orange
                            }
                        
                    }
                        .font(.custom("KGHAPPY",size:25))
                                        .foregroundColor(.black)
                    
                }
                Spacer()
            }
            
            
            
        Spacer()
            Button("Play"){if pass == true{
                Sets.Rounds = rounds
                Sets.X_col = colorx
                Sets.O_col = colory
                appState.hasOnboared = 7-player[p]
                
            }
            
        }
            .font(.custom("KGHAPPY",size:25))
            .foregroundColor(.black)
            .frame(width: 320, height: 50)
            .background(Color.white.opacity(100).cornerRadius(3))
            
        Text(" ")
            }
        }
        
        
    }
        
}

struct tic_tac_toe_player_choice_Previews: PreviewProvider {
    static var previews: some View {
        tic_tac_toe_player_choice()
    }
}
