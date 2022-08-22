//
//  bigbrain_choice.swift
//  test game
//
//  Created by Reddy Kitaan on 13/6/22.
//

import SwiftUI

struct bigbrain_choice: View {
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
            
            Text("BigBrain")
            .font(.custom("KGHAPPY",size:30))
            .foregroundColor(.black)
           
           
            
            
        Spacer()
            Button("Single Player"){
                Sets.Bigbrain_p = 1
                appState.hasOnboared = 7}
                .font(.custom("KGHAPPY",size:25))
                .foregroundColor(.black)
                .frame(width: 350, height: 50)
                .background(Color.white.opacity(100).cornerRadius(3))
            Button("Multi Player"){
                Sets.Bigbrain_p = 2
                appState.hasOnboared = 99}
                .font(.custom("KGHAPPY",size:25))
                .foregroundColor(.black)
                .frame(width: 350, height: 50)
                .background(Color.white.opacity(100).cornerRadius(3))
            Spacer()
        Text(" ")
            }
        }
        
        
    }
        
}
struct bigbrain_choice_Previews: PreviewProvider {
    static var previews: some View {
        bigbrain_choice()
    }
}
