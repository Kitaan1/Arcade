//
//  BigBrain_code.swift
//  test game
//
//  Created by Reddy Kitaan on 13/6/22.
//

import SwiftUI

struct BigBrain_code: View {
    @EnvironmentObject var appState: AppState
    @EnvironmentObject var Sets: settings
    
    @State var w = 52
    @State var h = 52
    @State var r = 100
    @State var code = [CustomColor.yellow,CustomColor.yellow,CustomColor.yellow,CustomColor.yellow]
    @State var select_white = [CustomColor.be,CustomColor.be,CustomColor.be,CustomColor.be,CustomColor.be,CustomColor.be,CustomColor.be]
    @State var Color_selected = CustomColor.yellow
    @State var Colors = [CustomColor.yellow,Color.orange,CustomColor.red_D,CustomColor.pink,Color.purple,Color.green,Color.blue]
    @State var pos1 = 0
    @State var pos2 = 0
    @State var pos3 = 0
    @State var pos4 = 0
    
    func select(Col:Color) -> Color{
        if Color_selected == CustomColor.yellow{
            select_white[0] = CustomColor.be
        }
        
        if Color_selected == Color.orange{
            select_white[1] = CustomColor.be
        }
        
        if Color_selected == CustomColor.red_D{
            select_white[2] = CustomColor.be
        }
        
        if Color_selected == CustomColor.pink{
            select_white[3] = CustomColor.be
        }
        
        if Color_selected == Color.purple{
            select_white[4] = CustomColor.be
        }
        
        if Color_selected == Color.green{
            select_white[5] = CustomColor.be
        }
        
        if Color_selected == Color.blue{
            select_white[6] = CustomColor.be
        }
        
        
        if Col == CustomColor.yellow{
            select_white[0] = CustomColor.beige_d
        }
        
        if Col == Color.orange{
            select_white[1] = CustomColor.beige_d
        }
        
        if Col == CustomColor.red_D{
            select_white[2] = CustomColor.beige_d
        }
        
        if Col == CustomColor.pink{
            select_white[3] = CustomColor.beige_d
        }
        
        if Col == Color.purple{
            select_white[4] = CustomColor.beige_d
        }
        
        if Col == Color.green{
            select_white[5] = CustomColor.beige_d
        }
        
        if Col == Color.blue{
            select_white[6] = CustomColor.beige_d
        }
        
        
       return(Col)
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
                    .foregroundColor(. black)
                    .font(.custom("KGHAPPY",size:25))
                Spacer()
                Text("Hide the code!")
                    .foregroundColor(. black)
                    .font(.custom("KGHAPPY",size:15))
                
                
                Text("")
                HStack{
                    Button("y"){if pos1 != 6{
                        pos1 = pos1 + 1
                        code[0] = Colors[pos1]
                    }
                        else{
                            pos1 = 0
                            code[0] = Colors[pos1]
                        }
                    }
                        .frame(width: CGFloat(w), height: CGFloat(h))
                        .background(code[0].cornerRadius(CGFloat(r)))
                        .foregroundColor(Color.white.opacity(0))
                        .font(.custom("KGHAPPY",size:20))
                    Button("y"){if pos2 != 6{
                        pos2 = pos2 + 1
                        code[1] = Colors[pos2]
                    }
                        else{
                            pos2 = 0
                            code[1] = Colors[pos2]
                        }}
                        .frame(width: CGFloat(w), height: CGFloat(h))
                        .background(code[1].cornerRadius(CGFloat(r)))
                        .foregroundColor(Color.white.opacity(0))
                        .font(.custom("KGHAPPY",size:20))
                    Button("y"){if pos3 != 6{
                        pos3 = pos3 + 1
                        code[2] = Colors[pos3]
                    }
                        else{
                            pos3 = 0
                            code[2] = Colors[pos3]
                        }}
                        .frame(width: CGFloat(w), height: CGFloat(h))
                        .background(code[2].cornerRadius(CGFloat(r)))
                        .foregroundColor(Color.white.opacity(0))
                        .font(.custom("KGHAPPY",size:20))
                    Button("y"){if pos4 != 6{
                        pos4 = pos4 + 1
                        code[3] = Colors[pos4]
                    }
                        else{
                            pos4 = 0
                            code[3] = Colors[pos4]
                        }}
                        .frame(width: CGFloat(w), height: CGFloat(h))
                        .background(code[3].cornerRadius(CGFloat(r)))
                        .foregroundColor(Color.white.opacity(0))
                        .font(.custom("KGHAPPY",size:20))
                }
            
            Text("")
                Text("Tap to change")
                    .foregroundColor(. black)
                    .font(.custom("KGHAPPY",size:15))
            
            Spacer()
                Button("Play"){if code.contains(Color.white) == false {
                    Sets.Multiplayer_code = code
                    appState.hasOnboared = 7
                    
                }
                
            }
                .font(.custom("KGHAPPY",size:25))
                .foregroundColor(.black)
                .frame(width: 320, height: 50)
                .background(Color.white.opacity(100).cornerRadius(3))
        }
            
        }
            
    }
}

struct BigBrain_code_Previews: PreviewProvider {
    static var previews: some View {
        BigBrain_code()
    }
}
