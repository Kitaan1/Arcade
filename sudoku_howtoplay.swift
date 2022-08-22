//
//  sudoku_howtoplay.swift
//  test game
//
//  Created by Reddy Kitaan on 7/8/22.
//

import SwiftUI

struct sudoku_howtoplay: View {
    var body: some View {
        ZStack{
            CustomColor.be.ignoresSafeArea()
            VStack{
            Text("How to Play Sudoku")
                    .font(.custom("KGHAPPY",size:30))
                    .foregroundColor(.black)
            Text("")
            Text("The aim is to get 1 to 9 in every box row and coloum no double ups")
                    .font(.custom("KGHAPPY",size:18))
                    .foregroundColor(.black)
            Text("")
            Text("Use the proccess of elimination to find the missing numbers")
                    .font(.custom("KGHAPPY",size:18))
                .foregroundColor(.black)}}
            ZStack{
            
            
                
               
            
            
            
        }
    }
}

struct sudoku_howtoplay_Previews: PreviewProvider {
    static var previews: some View {
        sudoku_howtoplay()
    }
}
