//
//  big_brain.swift
//  test game
//
//  Created by Reddy Kitaan on 12/5/22.
//

import SwiftUI

struct big_brain: View {
    @EnvironmentObject var appState: AppState
    @EnvironmentObject var Sets: settings
    @State var w = 52
    @State var h = 52
    @State var r = 100
    @State var b = 5
    @State var m = 35
    
    @State var message = "Lock in"
    @State var Colors = [CustomColor.yellow,Color.orange,CustomColor.red_D,CustomColor.pink,Color.purple,Color.green,Color.blue]
    
    @State var row1 = [CustomColor.beige_d,CustomColor.beige_d,CustomColor.beige_d,CustomColor.beige_d]
    @State var row2 = [CustomColor.beige_d,CustomColor.beige_d,CustomColor.beige_d,CustomColor.beige_d]
    @State var row3 = [CustomColor.beige_d,CustomColor.beige_d,CustomColor.beige_d,CustomColor.beige_d]
    @State var row4 = [CustomColor.beige_d,CustomColor.beige_d,CustomColor.beige_d,CustomColor.beige_d]
    @State var row5 = [CustomColor.beige_d,CustomColor.beige_d,CustomColor.beige_d,CustomColor.beige_d]
    @State var row6 = [CustomColor.beige_d,CustomColor.beige_d,CustomColor.beige_d,CustomColor.beige_d]
    @State var row7 = [CustomColor.beige_d,CustomColor.beige_d,CustomColor.beige_d,CustomColor.beige_d]
    @State var row8 = [CustomColor.beige_d,CustomColor.beige_d,CustomColor.beige_d,CustomColor.beige_d]
    @State var row9 = [CustomColor.beige_d,CustomColor.beige_d,CustomColor.beige_d,CustomColor.beige_d]
    @State var row10 = [CustomColor.beige_d,CustomColor.beige_d,CustomColor.beige_d,CustomColor.beige_d]
    
    @State var row1_Correct = [0,0,0,0]
    @State var row2_Correct = [0,0,0,0]
    @State var row3_Correct = [0,0,0,0]
    @State var row4_Correct = [0,0,0,0]
    @State var row5_Correct = [0,0,0,0]
    @State var row6_Correct = [0,0,0,0]
    @State var row7_Correct = [0,0,0,0]
    @State var row8_Correct = [0,0,0,0]
    @State var row9_Correct = [0,0,0,0]
    @State var row10_Correct = [0,0,0,0]
    
    
    @State var row1_white = [0,0,0,0]
    @State var row2_white = [0,0,0,0]
    @State var row3_white = [0,0,0,0]
    @State var row4_white = [0,0,0,0]
    @State var row5_white = [0,0,0,0]
    @State var row6_white = [0,0,0,0]
    @State var row7_white = [0,0,0,0]
    @State var row8_white = [0,0,0,0]
    @State var row9_white = [0,0,0,0]
    @State var row10_white = [0,0,0,0]
    
    @State var game_status = false
    @State var first = false
    
    @State var v10 = 0
    @State var v9 = 0
    @State var v8 = 0
    @State var v7 = 0
    @State var v6 = 0
    @State var v5 = 0
    @State var v4 = 0
    @State var v3 = 0
    @State var v2 = 0
    @State var v1 = 100
    
    @State var select_white = [CustomColor.be,CustomColor.be,CustomColor.be,CustomColor.be,CustomColor.be,CustomColor.be,CustomColor.be]
    
    @State var Color_selected = CustomColor.yellow
    @State var row = 0
    @State var pos = 0
    @State var Try = 1
    @State var add = 0
    @State var i = 0
    @State var num = 0
    @State var Continue = false
    @State var correct = 0
    @State var white = 0
    
    @State var Code = [CustomColor.red_D,CustomColor.red_D,CustomColor.red_D,CustomColor.red_D]
    @State var pos0 = false
    @State var pos1 = false
    @State var pos2 = false
    @State var pos3 = false
    
    @State var zero = false
    @State var one = false
    @State var two = false
    @State var three = false
    
    
    
    
    @State var Pass = false
    
    @State var win = ""
    
    func code(){
        if Sets.Bigbrain_p == 1{
        for i in 0...3{
            num = Int.random(in: 0...6)
            Code[i] = Colors[num]
        }
            message = "Lock in"}
        
        if Sets.Bigbrain_p == 2{
            Code = Sets.Multiplayer_code
            message = "Lock in"}
        
        
        
        
    }
    
    func update(){
        
        correct = 0
        white = 0
        pos1 = false
        pos2 = false
        pos3 = false
        pos0 = false
        
        zero = false
        one = false
        two = false
        three = false
        
        if Try == 1{
            if row1[0] == Code[0]{
                correct = correct + 1
                pos0 = true
                zero = true
            }
            
            if row1[1] == Code[1]{
                correct = correct + 1
                pos1 = true
                one = true
            }
            
            if row1[2] == Code[2]{
                correct = correct + 1
                pos2 = true
                two = true
            }
            
            
            
            if row1[3] == Code[3]{
                correct = correct + 1
                pos3 = true
                three = true
            }
            
            
            
            if zero == false{
                if row1[0] == Code[1] && pos1 == false{
                   white = white + 1
                    pos1 = true
                    }
                
                else if row1[0] == Code[2] && pos2 == false{
                    white = white + 1
                    pos2 = true
                }
                
                else if row1[0] == Code[3] && pos3 == false{
                    white = white + 1
                    pos3 = true
                }
                
            }
            
            
            if one == false{
                if row1[1] == Code[0] && pos0 == false{
                    white = white + 1
                    pos0 = true
                }
                
                else if row1[1] == Code[2] && pos2 == false{
                    white = white + 1
                    pos2 = true
                }
                
                else if row1[1] == Code[3] && pos3 == false{
                    white = white + 1
                    pos3 = true
                }
            }
            
            
            
            
            
            if two == false{
                if row1[2] == Code[0] && pos0 == false{
                    white = white + 1
                    pos0 = true
                }
                
                else if row1[2] == Code[1] && pos1 == false{
                    white = white + 1
                    pos1 = true
                }
                
                else if row1[2] == Code[3] && pos3 == false{
                    white = white + 1
                    pos3 = true
                }
            }
            
            
            
            
            
            
            
            
            
            
            if three == false{
                if row1[3] == Code[0] && pos0 == false{
                        white = white + 1
                        pos0 = true
                    }
                
                else if row1[3] == Code[1] && pos1 == false{
                        white = white + 1
                        pos1 = true
                    }
                
                else if row1[3] == Code[2] && pos2 == false{
                        white = white + 1
                        pos2 = true
                    }
            }
            
            
            
            
            if correct == 1{
                row1_Correct[3] = 100
            }
            
            if correct == 2{
                row1_Correct[3] = 100
                row1_Correct[2] = 100
                
                
            }
            
            if correct == 3{
                row1_Correct[3] = 100
                row1_Correct[2] = 100
                row1_Correct[1] = 100
                
            }
            
            if correct == 4{
                row1_Correct[3] = 100
                row1_Correct[2] = 100
                row1_Correct[1] = 100
                row1_Correct[0] = 100
            }
            
            
            
            
            if white == 1{
                row1_white[0] = 100
            }
            
            if white == 2{
                row1_white[0] = 100
                row1_white[1] = 100
                
            }
            
            if white == 3{
                row1_white[0] = 100
                row1_white[1] = 100
                row1_white[2] = 100
                
            }
            
            if white == 4{
                row1_white[3] = 100
                row1_white[2] = 100
                row1_white[1] = 100
                row1_white[0] = 100
            }
            
            
            
            
                
        }
        
        if Try == 2{
            if row2[0] == Code[0]{
                correct = correct + 1
                pos0 = true
                zero = true
            }
            
            if row2[1] == Code[1]{
                correct = correct + 1
                pos1 = true
                one = true
            }
            
            if row2[2] == Code[2]{
                correct = correct + 1
                pos2 = true
                two = true
            }
            
            
            
            if row2[3] == Code[3]{
                correct = correct + 1
                pos3 = true
                three = true
            }
            
            
            
            if zero == false{
                if row2[0] == Code[1] && pos1 == false{
                   white = white + 1
                    pos1 = true
                    }
                
                else if row2[0] == Code[2] && pos2 == false{
                    white = white + 1
                    pos2 = true
                }
                
                else if row2[0] == Code[3] && pos3 == false{
                    white = white + 1
                    pos3 = true
                }
            }
            
            
            
            if one == false{
                if row2[1] == Code[0] && pos0 == false{
                    white = white + 1
                    pos0 = true
                }
                
                else if row2[1] == Code[2] && pos2 == false{
                    white = white + 1
                    pos2 = true
                }
                
                else if row2[1] == Code[3] && pos3 == false{
                    white = white + 1
                    pos3 = true
                }
            }
            
            
            
            
            
            if two == false{
                if row2[2] == Code[0] && pos0 == false{
                    white = white + 1
                    pos0 = true
                }
                
                else if row2[2] == Code[1] && pos1 == false{
                    white = white + 1
                    pos1 = true
                }
                
                else if row2[2] == Code[3] && pos3 == false{
                    white = white + 1
                    pos3 = true
                }
            }
            
            
            
            
            
            
            
            
            
            
            
            if three == false{
                if row2[3] == Code[0] && pos0 == false{
                        white = white + 1
                        pos0 = true
                    }
                
                else if row2[3] == Code[1] && pos1 == false{
                        white = white + 1
                        pos1 = true
                    }
                
                else if row2[3] == Code[2] && pos2 == false{
                        white = white + 1
                        pos2 = true
                    }
            }
            
            
            
            
            
            if correct == 1{
                row2_Correct[3] = 100
            }
            
            if correct == 2{
                row2_Correct[3] = 100
                row2_Correct[2] = 100
                
                
            }
            
            if correct == 3{
                row2_Correct[3] = 100
                row2_Correct[2] = 100
                row2_Correct[1] = 100
                
            }
            
            if correct == 4{
                row2_Correct[3] = 100
                row2_Correct[2] = 100
                row2_Correct[1] = 100
                row2_Correct[0] = 100
            }
            
            
            
            
            if white == 1{
                row2_white[0] = 100
            }
            
            if white == 2{
                row2_white[0] = 100
                row2_white[1] = 100
                
            }
            
            if white == 3{
                row2_white[0] = 100
                row2_white[1] = 100
                row2_white[2] = 100
                
            }
            
            if white == 4{
                row2_white[3] = 100
                row2_white[2] = 100
                row2_white[1] = 100
                row2_white[0] = 100
            }
            
            
            
            
                
        }
        
        if Try == 3{
            if row3[0] == Code[0]{
                correct = correct + 1
                pos0 = true
                zero = true
            }
            
            if row3[1] == Code[1]{
                correct = correct + 1
                pos1 = true
                one = true
            }
            
            if row3[2] == Code[2]{
                correct = correct + 1
                pos2 = true
                two = true
            }
            
            
            
            if row3[3] == Code[3]{
                correct = correct + 1
                pos3 = true
                three = true
            }
            
            
            
            if zero == false{
                if row3[0] == Code[1] && pos1 == false{
                   white = white + 1
                    pos1 = true
                    }
                
                else if row3[0] == Code[2] && pos2 == false{
                    white = white + 1
                    pos2 = true
                }
                
                else if row3[0] == Code[3] && pos3 == false{
                    white = white + 1
                    pos3 = true
                }
            }
            
            
            
            if one == false{
                if row3[1] == Code[0] && pos0 == false{
                    white = white + 1
                    pos0 = true
                }
                
                else if row3[1] == Code[2] && pos2 == false{
                    white = white + 1
                    pos2 = true
                }
                
                else if row3[1] == Code[3] && pos3 == false{
                    white = white + 1
                    pos3 = true
                }
            }
            
            
            
            
            
            if two == false{
                if row3[2] == Code[0] && pos0 == false{
                    white = white + 1
                    pos0 = true
                }
                
                else if row3[2] == Code[1] && pos1 == false{
                    white = white + 1
                    pos1 = true
                }
                
                else if row3[2] == Code[3] && pos3 == false{
                    white = white + 1
                    pos3 = true
                }
            }
            
            
            
            
            
            
            
            
            
            
            
            if three == false{
                if row3[3] == Code[0] && pos0 == false{
                        white = white + 1
                        pos0 = true
                    }
                
                else if row3[3] == Code[1] && pos1 == false{
                        white = white + 1
                        pos1 = true
                    }
                
                else if row3[3] == Code[2] && pos2 == false{
                        white = white + 1
                        pos2 = true
                    }
            }
            
            
            
            
            
            if correct == 1{
                row3_Correct[3] = 100
            }
            
            if correct == 2{
                row3_Correct[3] = 100
                row3_Correct[2] = 100
                
                
            }
            
            if correct == 3{
                row3_Correct[3] = 100
                row3_Correct[2] = 100
                row3_Correct[1] = 100
                
            }
            
            if correct == 4{
                row3_Correct[3] = 100
                row3_Correct[2] = 100
                row3_Correct[1] = 100
                row3_Correct[0] = 100
            }
            
            
            
            
            if white == 1{
                row3_white[0] = 100
            }
            
            if white == 2{
                row3_white[0] = 100
                row3_white[1] = 100
                
            }
            
            if white == 3{
                row3_white[0] = 100
                row3_white[1] = 100
                row3_white[2] = 100
            
            }
            
            if white == 4{
                row3_white[3] = 100
                row3_white[2] = 100
                row3_white[1] = 100
                row3_white[0] = 100
            }
            
            
            
            
                
        }
        
        if Try == 4{
            if row4[0] == Code[0]{
                correct = correct + 1
                pos0 = true
                zero = true
            }
            
            if row4[1] == Code[1]{
                correct = correct + 1
                pos1 = true
                one = true
            }
            
            if row4[2] == Code[2]{
                correct = correct + 1
                pos2 = true
                two = true
            }
            
            
            
            if row4[3] == Code[3]{
                correct = correct + 1
                pos3 = true
                three = true
            }
            
            
            
            if zero == false{
            if row4[0] == Code[1] && pos1 == false{
               white = white + 1
                pos1 = true
                }
            
            else if row4[0] == Code[2] && pos2 == false{
                white = white + 1
                pos2 = true
            }
            
            else if row4[0] == Code[3] && pos3 == false{
                white = white + 1
                pos3 = true
            }
            }
            
            
            
            if one == false{
            if row4[1] == Code[0] && pos0 == false{
                white = white + 1
                pos0 = true
            }
            
            else if row4[1] == Code[2] && pos2 == false{
                white = white + 1
                pos2 = true
            }
            
            else if row4[1] == Code[3] && pos3 == false{
                white = white + 1
                pos3 = true
            }
            }
            
            
            
            
            
            if two == false{
            if row4[2] == Code[0] && pos0 == false{
                white = white + 1
                pos0 = true
            }
            
            else if row4[2] == Code[1] && pos1 == false{
                white = white + 1
                pos1 = true
            }
            
            else if row4[2] == Code[3] && pos3 == false{
                white = white + 1
                pos3 = true
            }
            
            }
            
            
            
            
            
            
            
            
            
            
            if three == false{
            if row4[3] == Code[0] && pos0 == false{
                    white = white + 1
                    pos0 = true
                }
            
            else if row4[3] == Code[1] && pos1 == false{
                    white = white + 1
                    pos1 = true
                }
            
            else if row4[3] == Code[2] && pos2 == false{
                    white = white + 1
                    pos2 = true
                }
            }
            
            
            
            
            
            if correct == 1{
                row4_Correct[3] = 100
            }
            
            if correct == 2{
                row4_Correct[3] = 100
                row4_Correct[2] = 100
                
                
            }
            
            if correct == 3{
                row4_Correct[3] = 100
                row4_Correct[2] = 100
                row4_Correct[1] = 100
                
            }
            
            if correct == 4{
                row4_Correct[3] = 100
                row4_Correct[2] = 100
                row4_Correct[1] = 100
                row4_Correct[0] = 100
            }
            
            
            
            
            if white == 1{
                row4_white[0] = 100
            }
            
            if white == 2{
                row4_white[0] = 100
                row4_white[1] = 100
                
            }
            
            if white == 3{
                row4_white[0] = 100
                row4_white[1] = 100
                row4_white[2] = 100
            
            }
            
            if white == 4{
                row4_white[3] = 100
                row4_white[2] = 100
                row4_white[1] = 100
                row4_white[0] = 100
            }
            
            
            
            
                
        }
        
        if Try == 5{
            if row5[0] == Code[0]{
                correct = correct + 1
                pos0 = true
                zero = true
            }
            
            if row5[1] == Code[1]{
                correct = correct + 1
                pos1 = true
                one = true
            }
            
            if row5[2] == Code[2]{
                correct = correct + 1
                pos2 = true
                two = true
            }
            
            
            
            if row5[3] == Code[3]{
                correct = correct + 1
                pos3 = true
                three = true
            }
            
            
            
            if zero == false{
            if row5[0] == Code[1] && pos1 == false{
               white = white + 1
                pos1 = true
                }
            
            else if row5[0] == Code[2] && pos2 == false{
                white = white + 1
                pos2 = true
            }
            
            else if row5[0] == Code[3] && pos3 == false{
                white = white + 1
                pos3 = true
            }
            }
            
            
            
            if one == false{
            if row5[1] == Code[0] && pos0 == false{
                white = white + 1
                pos0 = true
            }
            
            else if row5[1] == Code[2] && pos2 == false{
                white = white + 1
                pos2 = true
            }
            
            else if row5[1] == Code[3] && pos3 == false{
                white = white + 1
                pos3 = true
            }
            }
            
            
            
            
            
            if two == false{
            if row5[2] == Code[0] && pos0 == false{
                white = white + 1
                pos0 = true
            }
            
            else if row5[2] == Code[1] && pos1 == false{
                white = white + 1
                pos1 = true
            }
            
            else if row5[2] == Code[3] && pos3 == false{
                white = white + 1
                pos3 = true
            }
            }
            
            
            
            
            
            
            
            
            
            
            
            if three == false{
            if row5[3] == Code[0] && pos0 == false{
                    white = white + 1
                    pos0 = true
                }
            
            else if row5[3] == Code[1] && pos1 == false{
                    white = white + 1
                    pos1 = true
                }
            
            else if row5[3] == Code[2] && pos2 == false{
                    white = white + 1
                    pos2 = true
                }
        }
            
            
            
            
            
            if correct == 1{
                row5_Correct[3] = 100
            }
            
            if correct == 2{
                row5_Correct[3] = 100
                row5_Correct[2] = 100
                
                
            }
            
            if correct == 3{
                row5_Correct[3] = 100
                row5_Correct[2] = 100
                row5_Correct[1] = 100
                
            }
            
            if correct == 4{
                row5_Correct[3] = 100
                row5_Correct[2] = 100
                row5_Correct[1] = 100
                row5_Correct[0] = 100
            }
            
            
            
            
            if white == 1{
                row5_white[0] = 100
            }
            
            if white == 2{
                row5_white[0] = 100
                row5_white[1] = 100
                
            }
            
            if white == 3{
                row5_white[0] = 100
                row5_white[1] = 100
                row5_white[2] = 100
            
            }
            
            if white == 4{
                row5_white[3] = 100
                row5_white[2] = 100
                row5_white[1] = 100
                row5_white[0] = 100
            }
            
            
            
            
                
        }
        
        if Try == 6{
            if row6[0] == Code[0]{
                correct = correct + 1
                pos0 = true
                zero = true
            }
            
            if row6[1] == Code[1]{
                correct = correct + 1
                pos1 = true
                one = true
            }
            
            if row6[2] == Code[2]{
                correct = correct + 1
                pos2 = true
                two = true
            }
            
            
            
            if row6[3] == Code[3]{
                correct = correct + 1
                pos3 = true
                three = true
            }
            
            
            
            if zero == false{
            if row6[0] == Code[1] && pos1 == false{
               white = white + 1
                pos1 = true
                }
            
            else if row6[0] == Code[2] && pos2 == false{
                white = white + 1
                pos2 = true
            }
            
            else if row6[0] == Code[3] && pos3 == false{
                white = white + 1
                pos3 = true
            }
            }
            
            
            
            if one == false{
            if row6[1] == Code[0] && pos0 == false{
                white = white + 1
                pos0 = true
            }
            
            else if row6[1] == Code[2] && pos2 == false{
                white = white + 1
                pos2 = true
            }
            
            else if row6[1] == Code[3] && pos3 == false{
                white = white + 1
                pos3 = true
            }
            }
            
            
            
            
            
            if two == false{
            if row6[2] == Code[0] && pos0 == false{
                white = white + 1
                pos0 = true
            }
            
            else if row6[2] == Code[1] && pos1 == false{
                white = white + 1
                pos1 = true
            }
            
            else if row6[2] == Code[3] && pos3 == false{
                white = white + 1
                pos3 = true
            }
            }
            
            
            
            
            
            
            
            
            
            
            
            if three == false{
            if row6[3] == Code[0] && pos0 == false{
                    white = white + 1
                    pos0 = true
                }
            
            else if row6[3] == Code[1] && pos1 == false{
                    white = white + 1
                    pos1 = true
                }
            
            else if row6[3] == Code[2] && pos2 == false{
                    white = white + 1
                    pos2 = true
                }
            }
            
            
            
            
            
            if correct == 1{
                row6_Correct[3] = 100
            }
            
            if correct == 2{
                row6_Correct[3] = 100
                row6_Correct[2] = 100
                
                
            }
            
            if correct == 3{
                row6_Correct[3] = 100
                row6_Correct[2] = 100
                row6_Correct[1] = 100
                
            }
            
            if correct == 4{
                row6_Correct[3] = 100
                row6_Correct[2] = 100
                row6_Correct[1] = 100
                row6_Correct[0] = 100
            }
            
            
            
            
            if white == 1{
                row6_white[0] = 100
            }
            
            if white == 2{
                row6_white[0] = 100
                row6_white[1] = 100
                
            }
            
            if white == 3{
                row6_white[0] = 100
                row6_white[1] = 100
                row6_white[2] = 100
            
            }
            
            if white == 4{
                row6_white[3] = 100
                row6_white[2] = 100
                row6_white[1] = 100
                row6_white[0] = 100
            }
            
            
            
            
                
        }
        
        if Try == 7{
            if row7[0] == Code[0]{
                correct = correct + 1
                pos0 = true
                zero = true
            }
            
            if row7[1] == Code[1]{
                correct = correct + 1
                pos1 = true
                one = true
            }
            
            if row7[2] == Code[2]{
                correct = correct + 1
                pos2 = true
                two = true
            }
            
            
            
            if row7[3] == Code[3]{
                correct = correct + 1
                pos3 = true
                three = true
            }
            
            
            
            if zero == false{
            if row7[0] == Code[1] && pos1 == false{
               white = white + 1
                pos1 = true
                }
            
            else if row7[0] == Code[2] && pos2 == false{
                white = white + 1
                pos2 = true
            }
            
            else if row7[0] == Code[3] && pos3 == false{
                white = white + 1
                pos3 = true
            }
            }
            
            
            
            if one == false{
            if row7[1] == Code[0] && pos0 == false{
                white = white + 1
                pos0 = true
            }
            
            else if row7[1] == Code[2] && pos2 == false{
                white = white + 1
                pos2 = true
            }
            
            else if row7[1] == Code[3] && pos3 == false{
                white = white + 1
                pos3 = true
            }
            }
            
            
            
            
            
            if two == false{
            if row7[2] == Code[0] && pos0 == false{
                white = white + 1
                pos0 = true
            }
            
            else if row7[2] == Code[1] && pos1 == false{
                white = white + 1
                pos1 = true
            }
            
            else if row7[2] == Code[3] && pos3 == false{
                white = white + 1
                pos3 = true
            }
            }
            
            
            
            
            
            
            
            
            
            
            
            if three == false{
            if row7[3] == Code[0] && pos0 == false{
                    white = white + 1
                    pos0 = true
                }
            
            else if row7[3] == Code[1] && pos1 == false{
                    white = white + 1
                    pos1 = true
                }
            
            else if row7[3] == Code[2] && pos2 == false{
                    white = white + 1
                    pos2 = true
                }
            }
            
            
            
            
            
            if correct == 1{
                row7_Correct[3] = 100
            }
            
            if correct == 2{
                row7_Correct[3] = 100
                row7_Correct[2] = 100
                
                
            }
            
            if correct == 3{
                row7_Correct[3] = 100
                row7_Correct[2] = 100
                row7_Correct[1] = 100
                
            }
            
            if correct == 4{
                row7_Correct[3] = 100
                row7_Correct[2] = 100
                row7_Correct[1] = 100
                row7_Correct[0] = 100
            }
            
            
            
            
            if white == 1{
                row7_white[0] = 100
            }
            
            if white == 2{
                row7_white[0] = 100
                row7_white[1] = 100
                
            }
            
            if white == 3{
                row7_white[0] = 100
                row7_white[1] = 100
                row7_white[2] = 100
            
            }
            
            if white == 4{
                row7_white[3] = 100
                row7_white[2] = 100
                row7_white[1] = 100
                row7_white[0] = 100
            }
            
            
            
            
                
        }
        
        if Try == 8{
            if row8[0] == Code[0]{
                correct = correct + 1
                pos0 = true
                zero = true
            }
            
            if row8[1] == Code[1]{
                correct = correct + 1
                pos1 = true
                one = true
            }
            
            if row8[2] == Code[2]{
                correct = correct + 1
                pos2 = true
                two = true
                
            }
            
            
            
            if row8[3] == Code[3]{
                correct = correct + 1
                pos3 = true
                three = true
            }
            
            
            
            if zero == false{
            if row8[0] == Code[1] && pos1 == false{
               white = white + 1
                pos1 = true
                }
            
            else if row8[0] == Code[2] && pos2 == false{
                white = white + 1
                pos2 = true
            }
            
            else if row8[0] == Code[3] && pos3 == false{
                white = white + 1
                pos3 = true
            }
            }
            
            
            
            if one == false{
            if row8[1] == Code[0] && pos0 == false{
                white = white + 1
                pos0 = true
            }
            
            else if row8[1] == Code[2] && pos2 == false{
                white = white + 1
                pos2 = true
            }
            
            else if row8[1] == Code[3] && pos3 == false{
                white = white + 1
                pos3 = true
            }
            }
            
            
            
            
            
            if two == false{
            if row8[2] == Code[0] && pos0 == false{
                white = white + 1
                pos0 = true
            }
            
            else if row8[2] == Code[1] && pos1 == false{
                white = white + 1
                pos1 = true
            }
            
            else if row8[2] == Code[3] && pos3 == false{
                white = white + 1
                pos3 = true
            }
            }
            
            
            
            
            
            
            
            
            
            
            
            if three == false{
            if row8[3] == Code[0] && pos0 == false{
                    white = white + 1
                    pos0 = true
                }
            
            else if row8[3] == Code[1] && pos1 == false{
                    white = white + 1
                    pos1 = true
                }
            
            else if row8[3] == Code[2] && pos2 == false{
                    white = white + 1
                    pos2 = true
                }
            }
            
            
            
            
            
            if correct == 1{
                row8_Correct[3] = 100
            }
            
            if correct == 2{
                row8_Correct[3] = 100
                row8_Correct[2] = 100
                
                
            }
            
            if correct == 3{
                row8_Correct[3] = 100
                row8_Correct[2] = 100
                row8_Correct[1] = 100
                
            }
            
            if correct == 4{
                row8_Correct[3] = 100
                row8_Correct[2] = 100
                row8_Correct[1] = 100
                row8_Correct[0] = 100
            }
            
            
            
            
            if white == 1{
                row8_white[0] = 100
            }
            
            if white == 2{
                row8_white[0] = 100
                row8_white[1] = 100
                
            }
            
            if white == 3{
                row8_white[0] = 100
                row8_white[1] = 100
                row8_white[2] = 100
            
            }
            
            if white == 4{
                row8_white[3] = 100
                row8_white[2] = 100
                row8_white[1] = 100
                row8_white[0] = 100
            }
            
            
            
            
                
        }
        
        if Try == 9{
            if row9[0] == Code[0]{
                correct = correct + 1
                pos0 = true
                zero = true
            }
            
            if row9[1] == Code[1]{
                correct = correct + 1
                pos1 = true
                one = true
            }
            
            if row9[2] == Code[2]{
                correct = correct + 1
                pos2 = true
                two = true
            }
            
            
            
            if row9[3] == Code[3]{
                correct = correct + 1
                pos3 = true
                three = true
            }
            
            
            
            if zero == false{
            if row9[0] == Code[1] && pos1 == false{
               white = white + 1
                pos1 = true
                }
            
            else if row9[0] == Code[2] && pos2 == false{
                white = white + 1
                pos2 = true
            }
            
            else if row9[0] == Code[3] && pos3 == false{
                white = white + 1
                pos3 = true
            }
            }
            
            
            
            if one == false{
            if row9[1] == Code[0] && pos0 == false{
                white = white + 1
                pos0 = true
            }
            
            else if row9[1] == Code[2] && pos2 == false{
                white = white + 1
                pos2 = true
            }
            
            else if row9[1] == Code[3] && pos3 == false{
                white = white + 1
                pos3 = true
            }
            }
            
            
            
            
            
            if two == false{
            if row9[2] == Code[0] && pos0 == false{
                white = white + 1
                pos0 = true
            }
            
            else if row9[2] == Code[1] && pos1 == false{
                white = white + 1
                pos1 = true
            }
            
            else if row9[2] == Code[3] && pos3 == false{
                white = white + 1
                pos3 = true
            }
            }
            
            
            
            
            
            
            
            
            
            
            
            if three == false{
            if row9[3] == Code[0] && pos0 == false{
                    white = white + 1
                    pos0 = true
                }
            
            else if row9[3] == Code[1] && pos1 == false{
                    white = white + 1
                    pos1 = true
                }
            
            else if row9[3] == Code[2] && pos2 == false{
                    white = white + 1
                    pos2 = true
                }
            }
            
            
            
            
            
            if correct == 1{
                row9_Correct[3] = 100
            }
            
            if correct == 2{
                row9_Correct[3] = 100
                row9_Correct[2] = 100
                
                
            }
            
            if correct == 3{
                row9_Correct[3] = 100
                row9_Correct[2] = 100
                row9_Correct[1] = 100
                
            }
            
            if correct == 4{
                row9_Correct[3] = 100
                row9_Correct[2] = 100
                row9_Correct[1] = 100
                row9_Correct[0] = 100
            }
            
            
            
            
            if white == 1{
                row9_white[0] = 100
            }
            
            if white == 2{
                row9_white[0] = 100
                row9_white[1] = 100
                
            }
            
            if white == 3{
                row9_white[0] = 100
                row9_white[1] = 100
                row9_white[2] = 100
            
            }
            
            if white == 4{
                row9_white[3] = 100
                row9_white[2] = 100
                row9_white[1] = 100
                row9_white[0] = 100
            }
            
            
            
            
                
        }
        
        if Try == 10{
            if row10[0] == Code[0]{
                correct = correct + 1
                pos0 = true
                zero = true
            }
            
            if row10[1] == Code[1]{
                correct = correct + 1
                pos1 = true
                one = true
            }
            
            if row10[2] == Code[2]{
                correct = correct + 1
                pos2 = true
                two = true
            }
            
            
            
            if row10[3] == Code[3]{
                correct = correct + 1
                pos3 = true
                three = true
            }
            
            
            
            if zero == false{
            if row10[0] == Code[1] && pos1 == false{
               white = white + 1
                pos1 = true
                }
            
            else if row10[0] == Code[2] && pos2 == false{
                white = white + 1
                pos2 = true
            }
            
            else if row10[0] == Code[3] && pos3 == false{
                white = white + 1
                pos3 = true
            }
            }
            
            
            
            if one == false{
            if row10[1] == Code[0] && pos0 == false{
                white = white + 1
                pos0 = true
            }
            
            else if row10[1] == Code[2] && pos2 == false{
                white = white + 1
                pos2 = true
            }
            
            else if row10[1] == Code[3] && pos3 == false{
                white = white + 1
                pos3 = true
            }
            }
            
            
            
            
            if two == false{
            
            if row10[2] == Code[0] && pos0 == false{
                white = white + 1
                pos0 = true
            }
            
            else if row10[2] == Code[1] && pos1 == false{
                white = white + 1
                pos1 = true
            }
            
            else if row10[2] == Code[3] && pos3 == false{
                white = white + 1
                pos3 = true
            }
            }
            
            
            
            
            
            
            
            
            
            
            
            if three == false{
            if row10[3] == Code[0] && pos0 == false{
                    white = white + 1
                    pos0 = true
                }
            
            else if row10[3] == Code[1] && pos1 == false{
                    white = white + 1
                    pos1 = true
                }
            
            else if row10[3] == Code[2] && pos2 == false{
                    white = white + 1
                    pos2 = true
                }
            }
            
            
            
            
            
            if correct == 1{
                row10_Correct[3] = 100
            }
            
            if correct == 2{
                row10_Correct[3] = 100
                row10_Correct[2] = 100
                
                
            }
            
            if correct == 3{
                row10_Correct[3] = 100
                row10_Correct[2] = 100
                row10_Correct[1] = 100
                
            }
            
            if correct == 4{
                row10_Correct[3] = 100
                row10_Correct[2] = 100
                row10_Correct[1] = 100
                row10_Correct[0] = 100
            }
            
            
            
            
            if white == 1{
                row10_white[0] = 100
            }
            
            if white == 2{
                row10_white[0] = 100
                row10_white[1] = 100
                
            }
            
            if white == 3{
                row10_white[0] = 100
                row10_white[1] = 100
                row10_white[2] = 100
            
            }
            
            if white == 4{
                row10_white[3] = 100
                row10_white[2] = 100
                row10_white[1] = 100
                row10_white[0] = 100
            }
            
            
            
            
                
        }
        
        if row1[0] == Code[0] && row1[1] == Code[1]  && row1[2] == Code[2] && row1[3] == Code[3]{
            game_status = true
            win = "U got it in 1 trys"
            message = "New Game"
        }
        
        
        if row2[0] == Code[0] && row2[1] == Code[1]  && row2[2] == Code[2] && row2[3] == Code[3]{
            game_status = true
            win = "U got it in 2 trys"
            message = "New Game"
        }
        
        
        if row3[0] == Code[0] && row3[1] == Code[1]  && row3[2] == Code[2] && row3[3] == Code[3]{
            game_status = true
            win = "U got it in 3 trys"
            message = "New Game"
        }
        
        
        if row4[0] == Code[0] && row4[1] == Code[1]  && row4[2] == Code[2] && row4[3] == Code[3]{
            game_status = true
            win = "U got it in 4 trys"
            message = "New Game"
        }
        
        
        if row5[0] == Code[0] && row5[1] == Code[1]  && row5[2] == Code[2] && row5[3] == Code[3]{
            game_status = true
            win = "U got it in 5 trys"
            message = "New Game"
        }
        
        
        if row6[0] == Code[0] && row6[1] == Code[1]  && row6[2] == Code[2] && row6[3] == Code[3]{
            game_status = true
            win = "U got it in 6 trys"
            message = "New Game"
        }
        
        
        if row7[0] == Code[0] && row7[1] == Code[1]  && row7[2] == Code[2] && row7[3] == Code[3]{
            game_status = true
            win = "U got it in 7 trys"
            message = "New Game"
        }
        
        
        if row8[0] == Code[0] && row8[1] == Code[1]  && row8[2] == Code[2] && row8[3] == Code[3]{
            game_status = true
            win = "U got it in 8 trys"
            message = "New Game"
        }
        
        if row9[0] == Code[0] && row9[1] == Code[1]  && row9[2] == Code[2] && row9[3] == Code[3]{
            game_status = true
            win = "U got it in 9 trys"
            message = "New Game"
        }
        
        if row10[0] == Code[0] && row10[1] == Code[1]  && row10[2] == Code[2] && row10[3] == Code[3]{
            game_status = true
            win = "U got it in 10 trys"
            message = "New Game"
        }
        
        else{
            if Try == 10{
                game_status = true
                win = "better luck next time"
                message = "New Game"
            }
        }
        
        
        
        
            
    }
    
    func reset(){
        
        v10 = 0
        v9 = 0
        v8 = 0
        v7 = 0
        v6 = 0
        v5 = 0
        v4 = 0
        v3 = 0
        v2 = 0
        v1 = 100
      
        Colors = [CustomColor.yellow,Color.orange,CustomColor.red_D,CustomColor.pink,Color.purple,Color.green,Color.blue]
        
        row1 = [CustomColor.beige_d,CustomColor.beige_d,CustomColor.beige_d,CustomColor.beige_d]
        row2 = [CustomColor.beige_d,CustomColor.beige_d,CustomColor.beige_d,CustomColor.beige_d]
        row3 = [CustomColor.beige_d,CustomColor.beige_d,CustomColor.beige_d,CustomColor.beige_d]
        row4 = [CustomColor.beige_d,CustomColor.beige_d,CustomColor.beige_d,CustomColor.beige_d]
        row5 = [CustomColor.beige_d,CustomColor.beige_d,CustomColor.beige_d,CustomColor.beige_d]
        row6 = [CustomColor.beige_d,CustomColor.beige_d,CustomColor.beige_d,CustomColor.beige_d]
        row7 = [CustomColor.beige_d,CustomColor.beige_d,CustomColor.beige_d,CustomColor.beige_d]
        row8 = [CustomColor.beige_d,CustomColor.beige_d,CustomColor.beige_d,CustomColor.beige_d]
        row9 = [CustomColor.beige_d,CustomColor.beige_d,CustomColor.beige_d,CustomColor.beige_d]
        row10 = [CustomColor.beige_d,CustomColor.beige_d,CustomColor.beige_d,CustomColor.beige_d]
        
        row1_Correct = [0,0,0,0]
        row2_Correct = [0,0,0,0]
        row3_Correct = [0,0,0,0]
        row4_Correct = [0,0,0,0]
        row5_Correct = [0,0,0,0]
        row6_Correct = [0,0,0,0]
        row7_Correct = [0,0,0,0]
        row8_Correct = [0,0,0,0]
        row9_Correct = [0,0,0,0]
        row10_Correct = [0,0,0,0]
        
        row1_white = [0,0,0,0]
        row2_white = [0,0,0,0]
        row3_white = [0,0,0,0]
        row4_white = [0,0,0,0]
        row5_white = [0,0,0,0]
        row6_white = [0,0,0,0]
        row7_white = [0,0,0,0]
        row8_white = [0,0,0,0]
        row9_white = [0,0,0,0]
        row10_white = [0,0,0,0]
        
        game_status = false
        
        
        
        select_white = [CustomColor.be,CustomColor.be,CustomColor.be,CustomColor.be,CustomColor.be,CustomColor.be,CustomColor.be]
        
        Color_selected = CustomColor.yellow
        row = 0
        pos = 0
        Try = 1
        add = 0
        i = 0
        num = 0
        Continue = false
        correct = 0
        white = 0
        
        Code = [CustomColor.red_D,CustomColor.red_D,CustomColor.red_D,CustomColor.red_D]
        pos0 = false
        pos1 = false
        pos2 = false
        pos3 = false
        
        win = ""
    }
    
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
    
    
    func Turn() -> Int{
        if first == false{
            code()
            first = true
        }
        add = 0
        if message == "New Game"{
            add = 0
            reset()
            code()
        }
        else{
            if Try == 1{
                if row1.contains(CustomColor.beige_d){
                    add = 0
                    
                }
                else{
                    update()
                    add = 1
                }
            }
            
            if Try == 2{
                if row2.contains(CustomColor.beige_d){
                    add = 0
                    
                }
                else{
                    update()
                    add = 1
                }
            }
            
            if Try == 3{
                if row3.contains(CustomColor.beige_d){
                    add = 0
                    
                }
                else{
                    update()
                    add = 1
                }
            }
            
            if Try == 4{
                if row4.contains(CustomColor.beige_d){
                    add = 0
                    
                }
                else{
                    update()
                    add = 1
                }
            }
            
            if Try == 5{
                if row5.contains(CustomColor.beige_d){
                    add = 0
                    
                }
                else{
                    update()
                    add = 1
                }
            }
            
            if Try == 6{
                if row6.contains(CustomColor.beige_d){
                    add = 0
                    
                }
                else{
                    update()
                    add = 1
                }
            }
            
            if Try == 7{
                if row7.contains(CustomColor.beige_d){
                    add = 0
                    
                }
                else{
                    update()
                    add = 1
                }
            }
            
            if Try == 8{
                if row8.contains(CustomColor.beige_d){
                    add = 0
                    
                }
                else{
                    update()
                    add = 1
                }
            }
            
            if Try == 9{
                if row9.contains(CustomColor.beige_d){
                    add = 0
                    
                }
                else{
                    update()
                    add = 1
                }
            }
            
            if Try == 10{
                if row10.contains(CustomColor.beige_d){
                    add = 0
                    
                }
                else{
                    update()
                    add = 1
                }
            }
            
            
            
            
            
            
            
            if add == 1{
            if message != "New Game"{
            if Try == 1{
                v2 = 100
            }
            
            if Try == 2{
                v3 = 100
            }
            if Try == 3{
                v4 = 100
            }
            if Try == 4{
                v5 = 100
            }
            if Try == 5{
                v6 = 100
            }
            if Try == 6{
                v7 = 100
            }
            if Try == 7{
                v8 = 100
            }
            if Try == 8{
                v9 = 100
            }
            if Try == 9{
                v10 = 100
            }
            }}

    
        }
        return(Try + add)
    }
    
    
    
    
    func change(row:Int,pos:Int){
       
        if Try == row{
            Continue = true
        }
        
        if Continue == true{
            if row == 1{
                row1[pos] = Color_selected
            }
            
            if row == 2{
                row2[pos] = Color_selected
            }
            
            if row == 3{
                row3[pos] = Color_selected
            }
            
            if row == 4{
                row4[pos] = Color_selected
            }
            
            if row == 5{
                row5[pos] = Color_selected
            }
            
            if row == 6{
                row6[pos] = Color_selected
            }
            
            if row == 7{
                row7[pos] = Color_selected
            }
            
            if row == 8{
                row8[pos] = Color_selected
            }
            
            if row == 9{
                row9[pos] = Color_selected
            }
            
            if row == 10{
                row10[pos] = Color_selected
            }
            
        }
        
        Continue = false
        
    }
    
    
    
    
    
    
    
    var body: some View {
          
        ZStack{
            CustomColor.be.ignoresSafeArea()
            
            VStack{
                HStack{
                    Text("")
                    Button("<"){appState.hasOnboared = 1}
                        .foregroundColor(Color.black)
                        .font(.custom("KGHAPPY",size:20))
                    
                    Spacer()
                    Spacer()
                    Button(message){Try = Turn()}
                    .font(.custom("KGHAPPY",size:CGFloat(20)))
                    .foregroundColor(.black)
                    Spacer()
                    Spacer()
                    Text("     ")
 
                }
                
            HStack{
            //MARK: RED MARKERS
                VStack (alignment: .center, spacing: 40, content: {
                    VStack(alignment: .center, spacing: 40, content: {
                        //ROW1: RED MARKERS
                        HStack(alignment: .center, spacing: 2, content:{
                    Text("")
                        .frame(width: CGFloat(w-m), height: CGFloat(h-m))
                        .background(CustomColor.red.opacity(Double(row10_Correct[0])).cornerRadius(CGFloat(r)))
                    Text("")
                        .frame(width: CGFloat(w-m), height: CGFloat(h-m))
                        .background(CustomColor.red.opacity(Double(row10_Correct[1])).cornerRadius(CGFloat(r)))
                    Text("")
                        .frame(width: CGFloat(w-m), height: CGFloat(h-m))
                        .background(CustomColor.red.opacity(Double(row10_Correct[2])).cornerRadius(CGFloat(r)))
                    Text("")
                        .frame(width: CGFloat(w-m), height: CGFloat(h-m))
                        .background(CustomColor.red.opacity(Double(row10_Correct[3])).cornerRadius(CGFloat(r)))
                            
                        })
                            
                            
                            
                        
                            
                            
                        HStack(alignment: .center, spacing: 2, content:{
                            Text("")
                                .frame(width: CGFloat(w-m), height: CGFloat(h-m))
                                .background(CustomColor.red.opacity(Double(row9_Correct[0])).cornerRadius(CGFloat(r)))
                            Text("")
                                .frame(width: CGFloat(w-m), height: CGFloat(h-m))
                                .background(CustomColor.red.opacity(Double(row9_Correct[1])).cornerRadius(CGFloat(r)))
                            Text("")
                                .frame(width: CGFloat(w-m), height: CGFloat(h-m))
                                .background(CustomColor.red.opacity(Double(row9_Correct[2])).cornerRadius(CGFloat(r)))
                            Text("")
                                .frame(width: CGFloat(w-m), height: CGFloat(h-m))
                                .background(CustomColor.red.opacity(Double(row9_Correct[3])).cornerRadius(CGFloat(r)))
                            
                        })
                        
                        
                        HStack(alignment: .center, spacing: 2, content:{
                            Text("")
                                .frame(width: CGFloat(w-m), height: CGFloat(h-m))
                                .background(CustomColor.red.opacity(Double(row8_Correct[0])).cornerRadius(CGFloat(r)))
                            Text("")
                                .frame(width: CGFloat(w-m), height: CGFloat(h-m))
                                .background(CustomColor.red.opacity(Double(row8_Correct[1])).cornerRadius(CGFloat(r)))
                            Text("")
                                .frame(width: CGFloat(w-m), height: CGFloat(h-m))
                                .background(CustomColor.red.opacity(Double(row8_Correct[2])).cornerRadius(CGFloat(r)))
                            Text("")
                                .frame(width: CGFloat(w-m), height: CGFloat(h-m))
                                .background(CustomColor.red.opacity(Double(row8_Correct[3])).cornerRadius(CGFloat(r)))
                            
                        })
                    
                                             
                                             })
                   
                    HStack(alignment: .center, spacing: 2, content:{
                        Text("")
                            .frame(width: CGFloat(w-m), height: CGFloat(h-m))
                            .background(CustomColor.red.opacity(Double(row7_Correct[0])).cornerRadius(CGFloat(r)))
                        Text("")
                            .frame(width: CGFloat(w-m), height: CGFloat(h-m))
                            .background(CustomColor.red.opacity(Double(row7_Correct[1])).cornerRadius(CGFloat(r)))
                        Text("")
                            .frame(width: CGFloat(w-m), height: CGFloat(h-m))
                            .background(CustomColor.red.opacity(Double(row7_Correct[2])).cornerRadius(CGFloat(r)))
                        Text("")
                            .frame(width: CGFloat(w-m), height: CGFloat(h-m))
                            .background(CustomColor.red.opacity(Double(row7_Correct[3])).cornerRadius(CGFloat(r)))
                        
                    })
                    
                    HStack(alignment: .center, spacing: 2, content:{
                        Text("")
                            .frame(width: CGFloat(w-m), height: CGFloat(h-m))
                            .background(CustomColor.red.opacity(Double(row6_Correct[0])).cornerRadius(CGFloat(r)))
                        Text("")
                            .frame(width: CGFloat(w-m), height: CGFloat(h-m))
                            .background(CustomColor.red.opacity(Double(row6_Correct[1])).cornerRadius(CGFloat(r)))
                        Text("")
                            .frame(width: CGFloat(w-m), height: CGFloat(h-m))
                            .background(CustomColor.red.opacity(Double(row6_Correct[2])).cornerRadius(CGFloat(r)))
                        Text("")
                            .frame(width: CGFloat(w-m), height: CGFloat(h-m))
                            .background(CustomColor.red.opacity(Double(row6_Correct[3])).cornerRadius(CGFloat(r)))
                        
                    })
                    
                    HStack(alignment: .center, spacing: 2, content:{
                        Text("")
                            .frame(width: CGFloat(w-m), height: CGFloat(h-m))
                            .background(CustomColor.red.opacity(Double(row5_Correct[0])).cornerRadius(CGFloat(r)))
                        Text("")
                            .frame(width: CGFloat(w-m), height: CGFloat(h-m))
                            .background(CustomColor.red.opacity(Double(row5_Correct[1])).cornerRadius(CGFloat(r)))
                        Text("")
                            .frame(width: CGFloat(w-m), height: CGFloat(h-m))
                            .background(CustomColor.red.opacity(Double(row5_Correct[2])).cornerRadius(CGFloat(r)))
                        Text("")
                            .frame(width: CGFloat(w-m), height: CGFloat(h-m))
                            .background(CustomColor.red.opacity(Double(row5_Correct[3])).cornerRadius(CGFloat(r)))
                        
                    })
                    
                    HStack(alignment: .center, spacing: 2, content:{
                        Text("")
                            .frame(width: CGFloat(w-m), height: CGFloat(h-m))
                            .background(CustomColor.red.opacity(Double(row4_Correct[0])).cornerRadius(CGFloat(r)))
                        Text("")
                            .frame(width: CGFloat(w-m), height: CGFloat(h-m))
                            .background(CustomColor.red.opacity(Double(row4_Correct[1])).cornerRadius(CGFloat(r)))
                        Text("")
                            .frame(width: CGFloat(w-m), height: CGFloat(h-m))
                            .background(CustomColor.red.opacity(Double(row4_Correct[2])).cornerRadius(CGFloat(r)))
                        Text("")
                            .frame(width: CGFloat(w-m), height: CGFloat(h-m))
                            .background(CustomColor.red.opacity(Double(row4_Correct[3])).cornerRadius(CGFloat(r)))
                        
                    })
                    
                    HStack(alignment: .center, spacing: 2, content:{
                        Text("")
                            .frame(width: CGFloat(w-m), height: CGFloat(h-m))
                            .background(CustomColor.red.opacity(Double(row3_Correct[0])).cornerRadius(CGFloat(r)))
                        Text("")
                            .frame(width: CGFloat(w-m), height: CGFloat(h-m))
                            .background(CustomColor.red.opacity(Double(row3_Correct[1])).cornerRadius(CGFloat(r)))
                        Text("")
                            .frame(width: CGFloat(w-m), height: CGFloat(h-m))
                            .background(CustomColor.red.opacity(Double(row3_Correct[2])).cornerRadius(CGFloat(r)))
                        Text("")
                            .frame(width: CGFloat(w-m), height: CGFloat(h-m))
                            .background(CustomColor.red.opacity(Double(row3_Correct[3])).cornerRadius(CGFloat(r)))
                        
                    })
                    
                    HStack(alignment: .center, spacing: 2, content:{
                        Text("")
                            .frame(width: CGFloat(w-m), height: CGFloat(h-m))
                            .background(CustomColor.red.opacity(Double(row2_Correct[0])).cornerRadius(CGFloat(r)))
                        Text("")
                            .frame(width: CGFloat(w-m), height: CGFloat(h-m))
                            .background(CustomColor.red.opacity(Double(row2_Correct[1])).cornerRadius(CGFloat(r)))
                        Text("")
                            .frame(width: CGFloat(w-m), height: CGFloat(h-m))
                            .background(CustomColor.red.opacity(Double(row2_Correct[2])).cornerRadius(CGFloat(r)))
                        Text("")
                            .frame(width: CGFloat(w-m), height: CGFloat(h-m))
                            .background(CustomColor.red.opacity(Double(row2_Correct[3])).cornerRadius(CGFloat(r)))
                        
                    })
                    
                    HStack(alignment: .center, spacing: 2, content:{
                        Text("")
                            .frame(width: CGFloat(w-m), height: CGFloat(h-m))
                            .background(CustomColor.red.opacity(Double(row1_Correct[0])).cornerRadius(CGFloat(r)))
                        Text("")
                            .frame(width: CGFloat(w-m), height: CGFloat(h-m))
                            .background(CustomColor.red.opacity(Double(row1_Correct[1])).cornerRadius(CGFloat(r)))
                        Text("")
                            .frame(width: CGFloat(w-m), height: CGFloat(h-m))
                            .background(CustomColor.red.opacity(Double(row1_Correct[2])).cornerRadius(CGFloat(r)))
                        Text("")
                            .frame(width: CGFloat(w-m), height: CGFloat(h-m))
                            .background(CustomColor.red.opacity(Double(row1_Correct[3])).cornerRadius(CGFloat(r)))
                        
                    })
                    
                })
                
                VStack (alignment: .center, spacing: 5, content: {
                    VStack(alignment: .center, spacing: 5, content: {
                        Button("y"){change(row:10,pos:0)}
                            
                            .frame(width: CGFloat(w), height: CGFloat(h))
                            .background(row10[0].opacity(Double(v10)).cornerRadius(CGFloat(r)))
                            .foregroundColor(Color.white.opacity(0))
                            .font(.custom("KGHAPPY",size:20))
               
                    Button("y"){change(row:9,pos:0)}
                            .frame(width: CGFloat(w), height: CGFloat(h))
                            .background(row9[0].opacity(Double(v9)).cornerRadius(CGFloat(r)))
                            .foregroundColor(Color.white.opacity(0))
                            .font(.custom("KGHAPPY",size:20))

                            
                    Button("y"){change(row:8,pos:0)}
                            .frame(width: CGFloat(w), height: CGFloat(h))
                            .background(row8[0].opacity(Double(v8)).cornerRadius(CGFloat(r)))
                            .foregroundColor(Color.white.opacity(0))
                            .font(.custom("KGHAPPY",size:20))

                            
                    
                                             
                                             })
                    
                        
                    Button("y"){change(row:7,pos:0)}
                        .frame(width: CGFloat(w), height: CGFloat(h))
                        .background(row7[0].opacity(Double(v7)).cornerRadius(CGFloat(r)))
                        .foregroundColor(Color.white.opacity(0))
                        .font(.custom("KGHAPPY",size:20))

                        
                    Button("y"){change(row:6,pos:0)}
                        .frame(width: CGFloat(w), height: CGFloat(h))
                        .background(row6[0].opacity(Double(v6)).cornerRadius(CGFloat(r)))
                        .foregroundColor(Color.white.opacity(0))
                        .font(.custom("KGHAPPY",size:20))

                        
                    Button("y"){change(row:5,pos:0)}
                        .frame(width: CGFloat(w), height: CGFloat(h))
                        .background(row5[0].opacity(Double(v5)).cornerRadius(CGFloat(r)))
                        .foregroundColor(Color.white.opacity(0))
                        .font(.custom("KGHAPPY",size:20))

                        
                    Button("y"){change(row:4,pos:0)}
                        .frame(width: CGFloat(w), height: CGFloat(h))
                        .background(row4[0].opacity(Double(v4)).cornerRadius(CGFloat(r)))
                        .foregroundColor(Color.white.opacity(0))
                        .font(.custom("KGHAPPY",size:20))

                        
                    Button("y"){change(row:3,pos:0)}
                        .frame(width: CGFloat(w), height: CGFloat(h))
                        .background(row3[0].opacity(Double(v3)).cornerRadius(CGFloat(r)))
                        .foregroundColor(Color.white.opacity(0))
                        .font(.custom("KGHAPPY",size:20))

                        
                    Button("y"){change(row:2,pos:0)}
                        .frame(width: CGFloat(w), height: CGFloat(h))
                        .background(row2[0].opacity(Double(v2)).cornerRadius(CGFloat(r)))
                        .foregroundColor(Color.white.opacity(0))
                        .font(.custom("KGHAPPY",size:20))

                    
                    Button("y"){change(row:1,pos:0)}
                        .frame(width: CGFloat(w), height: CGFloat(h))
                        .background(row1[0].opacity(Double(v1)).cornerRadius(CGFloat(r)))
                        .foregroundColor(Color.white.opacity(0))
                        .font(.custom("KGHAPPY",size:20))

                        
                    
                })
                
                VStack (alignment: .center, spacing: 5, content: {
                    VStack(alignment: .center, spacing: 5, content: {
                    Button("y"){change(row:10,pos:1)}
                            
                            .frame(width: CGFloat(w), height: CGFloat(h))
                            .background(row10[1].opacity(Double(v10)).cornerRadius(CGFloat(r)))
                            .foregroundColor(Color.white.opacity(0))
                            .font(.custom("KGHAPPY",size:20))
               
                    Button("y"){change(row:9,pos:1)}
                            .frame(width: CGFloat(w), height: CGFloat(h))
                            .background(row9[1].opacity(Double(v9)).cornerRadius(CGFloat(r)))
                            .foregroundColor(Color.white.opacity(0))
                            .font(.custom("KGHAPPY",size:20))
                            
                    Button("y"){change(row:8,pos:1)}
                            .frame(width: CGFloat(w), height: CGFloat(h))
                            .background(row8[1].opacity(Double(v8)).cornerRadius(CGFloat(r)))
                            .foregroundColor(Color.white.opacity(0))
                            .font(.custom("KGHAPPY",size:20))
                            
                    
                                             
                                             })
                   
                    Button("y"){change(row:7,pos:1)}
                        .frame(width: CGFloat(w), height: CGFloat(h))
                        .background(row7[1].opacity(Double(v7)).cornerRadius(CGFloat(r)))
                        .foregroundColor(Color.white.opacity(0))
                        .font(.custom("KGHAPPY",size:20))
                        
                    Button("y"){change(row:6,pos:1)}
                        .frame(width: CGFloat(w), height: CGFloat(h))
                        .background(row6[1].opacity(Double(v6)).cornerRadius(CGFloat(r)))
                        .foregroundColor(Color.white.opacity(0))
                        .font(.custom("KGHAPPY",size:20))
                        
                    Button("y"){change(row:5,pos:1)}
                        .frame(width: CGFloat(w), height: CGFloat(h))
                        .background(row5[1].opacity(Double(v5)).cornerRadius(CGFloat(r)))
                        .foregroundColor(Color.white.opacity(0))
                        .font(.custom("KGHAPPY",size:20))
                        
                    Button("y"){change(row:4,pos:1)}
                        .frame(width: CGFloat(w), height: CGFloat(h))
                        .background(row4[1].opacity(Double(v4)).cornerRadius(CGFloat(r)))
                        .foregroundColor(Color.white.opacity(0))
                        .font(.custom("KGHAPPY",size:20))
                        
                    Button("y"){change(row:3,pos:1)}
                        .frame(width: CGFloat(w), height: CGFloat(h))
                        .background(row3[1].opacity(Double(v3)).cornerRadius(CGFloat(r)))
                        .foregroundColor(Color.white.opacity(0))
                        .font(.custom("KGHAPPY",size:20))
                        
                    Button("y"){change(row:2,pos:1)}
                        .frame(width: CGFloat(w), height: CGFloat(h))
                        .background(row2[1].opacity(Double(v2)).cornerRadius(CGFloat(r)))
                        .foregroundColor(Color.white.opacity(0))
                        .font(.custom("KGHAPPY",size:20))
                        
                    Button("y"){change(row:1,pos:1)}
                        .frame(width: CGFloat(w), height: CGFloat(h))
                        .background(row1[1].opacity(Double(v1)).cornerRadius(CGFloat(r)))
                        .foregroundColor(Color.white.opacity(0))
                        .font(.custom("KGHAPPY",size:20))
                        
                    
                })
                
                VStack (alignment: .center, spacing: 5, content: {
                    VStack(alignment: .center, spacing: 5, content: {
                    Button("y"){change(row:10,pos:2)}
                            
                            .frame(width: CGFloat(w), height: CGFloat(h))
                            .background(row10[2].opacity(Double(v10)).cornerRadius(CGFloat(r)))
                            .foregroundColor(Color.white.opacity(0))
                            .font(.custom("KGHAPPY",size:20))
               
                    Button("y"){change(row:9,pos:2)}
                            .frame(width: CGFloat(w), height: CGFloat(h))
                            .background(row9[2].opacity(Double(v9)).cornerRadius(CGFloat(r)))
                            .foregroundColor(Color.white.opacity(0))
                            .font(.custom("KGHAPPY",size:20))
                            
                    Button("y"){change(row:8,pos:2)}
                            .frame(width: CGFloat(w), height: CGFloat(h))
                            .background(row8[2].opacity(Double(v8)).cornerRadius(CGFloat(r)))
                            .foregroundColor(Color.white.opacity(0))
                            .font(.custom("KGHAPPY",size:20))
                            
                    
                                             
                                             })
                   
                    Button("y"){change(row:7,pos:2)}
                        .frame(width: CGFloat(w), height: CGFloat(h))
                        .background(row7[2].opacity(Double(v7)).cornerRadius(CGFloat(r)))
                        .foregroundColor(Color.white.opacity(0))
                        .font(.custom("KGHAPPY",size:20))
                        
                    Button("y"){change(row:6,pos:2)}
                        .frame(width: CGFloat(w), height: CGFloat(h))
                        .background(row6[2].opacity(Double(v6)).cornerRadius(CGFloat(r)))
                        .foregroundColor(Color.white.opacity(0))
                        .font(.custom("KGHAPPY",size:20))
                        
                    Button("y"){change(row:5,pos:2)}
                        .frame(width: CGFloat(w), height: CGFloat(h))
                        .background(row5[2].opacity(Double(v5)).cornerRadius(CGFloat(r)))
                        .foregroundColor(Color.white.opacity(0))
                        .font(.custom("KGHAPPY",size:20))
                        
                    Button("y"){change(row:4,pos:2)}
                        .frame(width: CGFloat(w), height: CGFloat(h))
                        .background(row4[2].opacity(Double(v4)).cornerRadius(CGFloat(r)))
                        .foregroundColor(Color.white.opacity(0))
                        .font(.custom("KGHAPPY",size:20))
                        
                    Button("y"){change(row:3,pos:2)}
                        .frame(width: CGFloat(w), height: CGFloat(h))
                        .background(row3[2].opacity(Double(v3)).cornerRadius(CGFloat(r)))
                        .foregroundColor(Color.white.opacity(0))
                        .font(.custom("KGHAPPY",size:20))
                        
                    Button("y"){change(row:2,pos:2)}
                        .frame(width: CGFloat(w), height: CGFloat(h))
                        .background(row2[2].opacity(Double(v2)).cornerRadius(CGFloat(r)))
                        .foregroundColor(Color.white.opacity(0))
                        .font(.custom("KGHAPPY",size:20))
                        
                    Button("y"){change(row:1,pos:2)}
                        .frame(width: CGFloat(w), height: CGFloat(h))
                        .background(row1[2].opacity(Double(v1)).cornerRadius(CGFloat(r)))
                        .foregroundColor(Color.white.opacity(0))
                        .font(.custom("KGHAPPY",size:20))
                        
                    
                })
                
                VStack (alignment: .center, spacing: 5, content: {
                    VStack(alignment: .center, spacing: 5, content: {
                    Button("y"){change(row:10,pos:3)}
                            
                            .frame(width: CGFloat(w), height: CGFloat(h))
                            .background(row10[3].opacity(Double(v10)).cornerRadius(CGFloat(r)))
                            .foregroundColor(Color.white.opacity(0))
                            .font(.custom("KGHAPPY",size:20))
               
                    Button("y"){change(row:9,pos:3)}
                            .frame(width: CGFloat(w), height: CGFloat(h))
                            .background(row9[3].opacity(Double(v9)).cornerRadius(CGFloat(r)))
                            .foregroundColor(Color.white.opacity(0))
                            .font(.custom("KGHAPPY",size:20))
                            
                    Button("y"){change(row:8,pos:3)}
                            .frame(width: CGFloat(w), height: CGFloat(h))
                            .background(row8[3].opacity(Double(v8)).cornerRadius(CGFloat(r)))
                            .foregroundColor(Color.white.opacity(0))
                            .font(.custom("KGHAPPY",size:20))
                            
                    
                                             
                                             })
                   
                    Button("y"){change(row:7,pos:3)}
                        .frame(width: CGFloat(w), height: CGFloat(h))
                        .background(row7[3].opacity(Double(v7)).cornerRadius(CGFloat(r)))
                        .foregroundColor(Color.white.opacity(0))
                        .font(.custom("KGHAPPY",size:20))
                        
                    Button("y"){change(row:6,pos:3)}
                        .frame(width: CGFloat(w), height: CGFloat(h))
                        .background(row6[3].opacity(Double(v6)).cornerRadius(CGFloat(r)))
                        .foregroundColor(Color.white.opacity(0))
                        .font(.custom("KGHAPPY",size:20))
                        
                    Button("y"){change(row:5,pos:3)}
                        .frame(width: CGFloat(w), height: CGFloat(h))
                        .background(row5[3].opacity(Double(v5)).cornerRadius(CGFloat(r)))
                        .foregroundColor(Color.white.opacity(0))
                        .font(.custom("KGHAPPY",size:20))
                        
                    Button("y"){change(row:4,pos:3)}
                        .frame(width: CGFloat(w), height: CGFloat(h))
                        .background(row4[3].opacity(Double(v4)).cornerRadius(CGFloat(r)))
                        .foregroundColor(Color.white.opacity(0))
                        .font(.custom("KGHAPPY",size:20))
                        
                    Button("y"){change(row:3,pos:3)}
                        .frame(width: CGFloat(w), height: CGFloat(h))
                        .background(row3[3].opacity(Double(v3)).cornerRadius(CGFloat(r)))
                        .foregroundColor(Color.white.opacity(0))
                        .font(.custom("KGHAPPY",size:20))
                        
                    Button("y"){change(row:2,pos:3)}
                        .frame(width: CGFloat(w), height: CGFloat(h))
                        .background(row2[3].opacity(Double(v2)).cornerRadius(CGFloat(r)))
                        .foregroundColor(Color.white.opacity(0))
                        .font(.custom("KGHAPPY",size:20))
                        
                    Button("y"){change(row:1,pos:3)}
                        .frame(width: CGFloat(w), height: CGFloat(h))
                        .background(row1[3].opacity(Double(v1)).cornerRadius(CGFloat(r)))
                        .foregroundColor(Color.white.opacity(0))
                        .font(.custom("KGHAPPY",size:20))
                        
                    
                })
                
                VStack (alignment: .center, spacing: 40, content: {
                    VStack(alignment: .center, spacing: 40, content: {
                        //ROW1: RED MARKERS
                        HStack(alignment: .center, spacing: 2, content:{
                    Text("")
                            .frame(width: CGFloat(w-m), height: CGFloat(h-m))
                            .background(Color.white.opacity(Double(row10_white[0])).cornerRadius(CGFloat(r)))
                            
                    Text("")
                            .frame(width: CGFloat(w-m), height: CGFloat(h-m))
                            .background(Color.white.opacity(Double(row10_white[1])).cornerRadius(CGFloat(r)))
                    Text("")
                            .frame(width: CGFloat(w-m), height: CGFloat(h-m))
                            .background(Color.white.opacity(Double(row10_white[2])).cornerRadius(CGFloat(r)))
                    Text("")
                            .frame(width: CGFloat(w-m), height: CGFloat(h-m))
                            .background(Color.white.opacity(Double(row10_white[3])).cornerRadius(CGFloat(r)))
                            
                        })
                            
                            
                            
                        
                            
                            
                        HStack(alignment: .center, spacing: 2, content:{
                            Text("")
                                    .frame(width: CGFloat(w-m), height: CGFloat(h-m))
                                    .background(Color.white.opacity(Double(row9_white[0])).cornerRadius(CGFloat(r)))
                            Text("")
                                    .frame(width: CGFloat(w-m), height: CGFloat(h-m))
                                    .background(Color.white.opacity(Double(row9_white[1])).cornerRadius(CGFloat(r)))
                            Text("")
                                    .frame(width: CGFloat(w-m), height: CGFloat(h-m))
                                    .background(Color.white.opacity(Double(row9_white[2])).cornerRadius(CGFloat(r)))
                            Text("")
                                    .frame(width: CGFloat(w-m), height: CGFloat(h-m))
                                    .background(Color.white.opacity(Double(row9_white[3])).cornerRadius(CGFloat(r)))
                            
                        })
                        
                        
                        HStack(alignment: .center, spacing: 2, content:{
                            Text("")
                                    .frame(width: CGFloat(w-m), height: CGFloat(h-m))
                                    .background(Color.white.opacity(Double(row8_white[0])).cornerRadius(CGFloat(r)))
                            Text("")
                                    .frame(width: CGFloat(w-m), height: CGFloat(h-m))
                                    .background(Color.white.opacity(Double(row8_white[1])).cornerRadius(CGFloat(r)))
                            Text("")
                                    .frame(width: CGFloat(w-m), height: CGFloat(h-m))
                                    .background(Color.white.opacity(Double(row8_white[2])).cornerRadius(CGFloat(r)))
                            Text("")
                                    .frame(width: CGFloat(w-m), height: CGFloat(h-m))
                                    .background(Color.white.opacity(Double(row8_white[3])).cornerRadius(CGFloat(r)))
                            
                        })
                    
                                             
                                             })
                   
            
                    
                    HStack(alignment: .center, spacing: 2, content:{
                        Text("")
                                .frame(width: CGFloat(w-m), height: CGFloat(h-m))
                                .background(Color.white.opacity(Double(row7_white[0])).cornerRadius(CGFloat(r)))
                        Text("")
                                .frame(width: CGFloat(w-m), height: CGFloat(h-m))
                                .background(Color.white.opacity(Double(row7_white[1])).cornerRadius(CGFloat(r)))
                        Text("")
                                .frame(width: CGFloat(w-m), height: CGFloat(h-m))
                                .background(Color.white.opacity(Double(row7_white[2])).cornerRadius(CGFloat(r)))
                        Text("")
                                .frame(width: CGFloat(w-m), height: CGFloat(h-m))
                                .background(Color.white.opacity(Double(row7_white[3])).cornerRadius(CGFloat(r)))
                        
                    })
                    
                    HStack(alignment: .center, spacing: 2, content:{
                        Text("")
                                .frame(width: CGFloat(w-m), height: CGFloat(h-m))
                                .background(Color.white.opacity(Double(row6_white[0])).cornerRadius(CGFloat(r)))
                        Text("")
                                .frame(width: CGFloat(w-m), height: CGFloat(h-m))
                                .background(Color.white.opacity(Double(row6_white[1])).cornerRadius(CGFloat(r)))
                        Text("")
                                .frame(width: CGFloat(w-m), height: CGFloat(h-m))
                                .background(Color.white.opacity(Double(row6_white[2])).cornerRadius(CGFloat(r)))
                        Text("")
                                .frame(width: CGFloat(w-m), height: CGFloat(h-m))
                                .background(Color.white.opacity(Double(row6_white[3])).cornerRadius(CGFloat(r)))
                        
                    })
                    
                    HStack(alignment: .center, spacing: 2, content:{
                        Text("")
                                .frame(width: CGFloat(w-m), height: CGFloat(h-m))
                                .background(Color.white.opacity(Double(row5_white[0])).cornerRadius(CGFloat(r)))
                        Text("")
                                .frame(width: CGFloat(w-m), height: CGFloat(h-m))
                                .background(Color.white.opacity(Double(row5_white[1])).cornerRadius(CGFloat(r)))
                        Text("")
                                .frame(width: CGFloat(w-m), height: CGFloat(h-m))
                                .background(Color.white.opacity(Double(row5_white[2])).cornerRadius(CGFloat(r)))
                        Text("")
                                .frame(width: CGFloat(w-m), height: CGFloat(h-m))
                                .background(Color.white.opacity(Double(row5_white[3])).cornerRadius(CGFloat(r)))
                        
                    })
                    
                    HStack(alignment: .center, spacing: 2, content:{
                        Text("")
                                .frame(width: CGFloat(w-m), height: CGFloat(h-m))
                                .background(Color.white.opacity(Double(row4_white[0])).cornerRadius(CGFloat(r)))
                        Text("")
                                .frame(width: CGFloat(w-m), height: CGFloat(h-m))
                                .background(Color.white.opacity(Double(row4_white[1])).cornerRadius(CGFloat(r)))
                        Text("")
                                .frame(width: CGFloat(w-m), height: CGFloat(h-m))
                                .background(Color.white.opacity(Double(row4_white[2])).cornerRadius(CGFloat(r)))
                        Text("")
                                .frame(width: CGFloat(w-m), height: CGFloat(h-m))
                                .background(Color.white.opacity(Double(row4_white[3])).cornerRadius(CGFloat(r)))
                        
                    })
                    
                    HStack(alignment: .center, spacing: 2, content:{
                        Text("")
                                .frame(width: CGFloat(w-m), height: CGFloat(h-m))
                                .background(Color.white.opacity(Double(row3_white[0])).cornerRadius(CGFloat(r)))
                        Text("")
                                .frame(width: CGFloat(w-m), height: CGFloat(h-m))
                                .background(Color.white.opacity(Double(row3_white[1])).cornerRadius(CGFloat(r)))
                        Text("")
                                .frame(width: CGFloat(w-m), height: CGFloat(h-m))
                                .background(Color.white.opacity(Double(row3_white[2])).cornerRadius(CGFloat(r)))
                        Text("")
                                .frame(width: CGFloat(w-m), height: CGFloat(h-m))
                                .background(Color.white.opacity(Double(row3_white[3])).cornerRadius(CGFloat(r)))
                        
                    })
                    
                    HStack(alignment: .center, spacing: 2, content:{
                        Text("")
                                .frame(width: CGFloat(w-m), height: CGFloat(h-m))
                                .background(Color.white.opacity(Double(row2_white[0])).cornerRadius(CGFloat(r)))
                        Text("")
                                .frame(width: CGFloat(w-m), height: CGFloat(h-m))
                                .background(Color.white.opacity(Double(row2_white[1])).cornerRadius(CGFloat(r)))
                        Text("")
                                .frame(width: CGFloat(w-m), height: CGFloat(h-m))
                                .background(Color.white.opacity(Double(row2_white[2])).cornerRadius(CGFloat(r)))
                        Text("")
                                .frame(width: CGFloat(w-m), height: CGFloat(h-m))
                                .background(Color.white.opacity(Double(row2_white[3])).cornerRadius(CGFloat(r)))
                        
                    })
                    
                    HStack(alignment: .center, spacing: 2, content:{
                        Text("")
                                .frame(width: CGFloat(w-m), height: CGFloat(h-m))
                                .background(Color.white.opacity(Double(row1_white[0])).cornerRadius(CGFloat(r)))
                        Text("")
                                .frame(width: CGFloat(w-m), height: CGFloat(h-m))
                                .background(Color.white.opacity(Double(row1_white[1])).cornerRadius(CGFloat(r)))
                        Text("")
                                .frame(width: CGFloat(w-m), height: CGFloat(h-m))
                                .background(Color.white.opacity(Double(row1_white[2])).cornerRadius(CGFloat(r)))
                        Text("")
                                .frame(width: CGFloat(w-m), height: CGFloat(h-m))
                                .background(Color.white.opacity(Double(row1_white[3])).cornerRadius(CGFloat(r)))
                        
                    })
                    
                })
                
                    }
                
                Text("")
                Text("")
                Text("")
            
            HStack(alignment: .center, spacing: 9, content:{
                ZStack{
                Button("y"){}
                    .frame(width: CGFloat(w-3), height: CGFloat(h-3))
                    .background(select_white[0].opacity(100).cornerRadius(CGFloat(0)))
                    
                        
                    
                    Button("y"){Color_selected = select(Col:CustomColor.yellow)}
                    .frame(width: CGFloat(w-12), height: CGFloat(h-12))
                    .background(CustomColor.yellow.opacity(100).cornerRadius(CGFloat(r)))
                    .foregroundColor(.yellow.opacity(0))
                    .font(.custom("KGHAPPY",size:20))
                    
                    
                }
                ZStack{
                Button("y"){}
                    .frame(width: CGFloat(w-3), height: CGFloat(h-3))
                    .background(select_white[1].opacity(100).cornerRadius(CGFloat(0)))
                Button("y"){Color_selected = select(Col:Color.orange)}
                    .frame(width: CGFloat(w-12), height: CGFloat(h-12))
                    .background(Color.orange.opacity(100).cornerRadius(CGFloat(r)))
                    .foregroundColor(.white.opacity(0))
                    .font(.custom("KGHAPPY",size:20))
                    
                }
                ZStack{
                Button("y"){}
                    .frame(width: CGFloat(w-3), height: CGFloat(h-3))
                    .background(select_white[2].opacity(100).cornerRadius(CGFloat(0)))
                Button("y"){Color_selected = select(Col:CustomColor.red_D)}
                    .frame(width: CGFloat(w-12), height: CGFloat(h-12))
                    .background(CustomColor.red_D.opacity(100).cornerRadius(CGFloat(r)))
                    .foregroundColor(.white.opacity(0))
                    .font(.custom("KGHAPPY",size:20))}
                
                ZStack{
                Button("y"){}
                    .frame(width: CGFloat(w-3), height: CGFloat(h-3))
                    .background(select_white[3].opacity(100).cornerRadius(CGFloat(0)))
                Button("y"){Color_selected = select(Col:CustomColor.pink)}
                    .frame(width: CGFloat(w-12), height: CGFloat(h-12))
                    .background(CustomColor.pink.opacity(100).cornerRadius(CGFloat(r)))
                    .foregroundColor(.white.opacity(0))
                    .font(.custom("KGHAPPY",size:20))}
                
                ZStack{
                Button("y"){}
                    .frame(width: CGFloat(w-3), height: CGFloat(h-3))
                    .background(select_white[4].opacity(100).cornerRadius(CGFloat(0)))
                Button("y"){Color_selected = select(Col:Color.purple)}
                    .frame(width: CGFloat(w-12), height: CGFloat(h-12))
                    .background(Color.purple.opacity(100).cornerRadius(CGFloat(r)))
                    .foregroundColor(.white.opacity(0))
                    .font(.custom("KGHAPPY",size:20))}
                
                ZStack{
                Button("y"){}
                    .frame(width: CGFloat(w-3), height: CGFloat(h-3))
                    .background(select_white[5].opacity(100).cornerRadius(CGFloat(0)))
                Button("y"){Color_selected = select(Col:Color.green)}
                    .frame(width: CGFloat(w-12), height: CGFloat(h-12))
                    .background(Color.green.opacity(100).cornerRadius(CGFloat(r)))
                    .foregroundColor(.white.opacity(0))
                    .font(.custom("KGHAPPY",size:20))}
                
                ZStack{
                Button("y"){}
                    .frame(width: CGFloat(w-3), height: CGFloat(h-3))
                    .background(select_white[6].opacity(100).cornerRadius(CGFloat(0)))
                Button("y"){Color_selected = select(Col:Color.blue)}
                    .frame(width: CGFloat(w-12), height: CGFloat(h-12))
                    .background(Color.blue.opacity(100).cornerRadius(CGFloat(r)))
                    .foregroundColor(.white.opacity(0))
                    .font(.custom("KGHAPPY",size:20))}
                
                
                })
            
                Text(win)
                    .font(.custom("KGHAPPY",size:20))
                    .foregroundColor(Color.black)
        }
            
            
            
        
        }
        
    }
}

struct big_brain_Previews: PreviewProvider {
    static var previews: some View {
        big_brain()
    }
}
