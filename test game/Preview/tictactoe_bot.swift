//
//  tictactoe_bot.swift
//  test game
//
//  Created by Reddy Kitaan on 6/5/22.
//

import SwiftUI

struct tictactoe_bot: View {
    @EnvironmentObject var appState: AppState
    @EnvironmentObject var Sets: settings
    
    @State var rounds = 1
    @State var x_w = 0
    @State var O_w = 0
    
    @State var s0 = 80
    @State var s1 = 80
    @State var s2 = 80
    @State var s3 = 80
    @State var s4 = 80
    @State var s5 = 80
    @State var s6 = 80
    @State var s7 = 80
    @State var s8 = 80
    
    @State var s0c = Color.black
    @State var s1c = Color.black
    @State var s2c = Color.black
    @State var s3c = Color.black
    @State var s4c = Color.black
    @State var s5c = Color.black
    @State var s6c = Color.black
    @State var s7c = Color.black
    @State var s8c = Color.black
    
    
    @State var tag1 = false
    @State var check = false
    @State var x =  "x"
    @State var y = "y"
    @State var squares = ["-","-","-","-","-","-","-","-","-"]
    @State var color = [0,0,0,0,0,0,0,0,0,0]
    @State var again = "Next Round"
    @State var player = "X"
    @State var i = 0
    @State var e = 0
    @State var Place = ""
    @State var g = 0
    @State var change = 0
    
    @State var turn = 1
    @State var ran = 0
    @State var first_pos = [0,1,2,3,5,6,7,8]
    @State var tag_1 = false
    @State var won = "X"
    @State var first_tag = false
    @State var once = false // USE AND FIX
    
    
    
    func buttonAction( index: Int){
        once = false
        if first_tag == false{
            s0c = Sets.O_col
            s1c = Sets.O_col
            s2c = Sets.O_col
            s3c = Sets.O_col
            s4c = Sets.O_col
            s5c = Sets.O_col
            s6c = Sets.O_col
            s7c = Sets.O_col
            s8c = Sets.O_col
            first_tag = true
        }
        
        if color[9] == 0{
        if squares[index] == "-" && tag1 == false{
            
            turn = turn + 1
            squares[index] = "X"
            color[index] = 100
            if index == 0{
                s0 = 35
                if player == "X"{
                    s0c = Sets.X_col
                }
                else{
                    s0c = Sets.O_col
                }
            }
            if index == 1{
                s1 = 35
                if player == "X"{
                    s1c = Sets.X_col
                }
                else{
                    s1c = Sets.O_col
                }
            }
            if index == 2{
                s2 = 35
                if player == "X"{
                    s2c = Sets.X_col
                }
                else{
                    s2c = Sets.O_col
                }
            }
            if index == 3{
                s3 = 35
                if player == "X"{
                    s3c = Sets.X_col
                }
                else{
                    s3c = Sets.O_col
                }
            }
            if index == 4{
                s4 = 35
                if player == "X"{
                    s4c = Sets.X_col
                }
                else{
                    s4c = Sets.O_col
                }
            }
            if index == 5{
                s5 = 35
                if player == "X"{
                    s5c = Sets.X_col
                }
                else{
                    s5c = Sets.O_col
                }
            }
            if index == 6{
                s6 = 35
                if player == "X"{
                    s6c = Sets.X_col
                }
                else{
                    s6c = Sets.O_col
                }
            }
            if index == 7{
                s7 = 35
                if player == "X"{
                    s7c = Sets.X_col
                }
                else{
                    s7c = Sets.O_col
                }
            }
            if index == 8{
                s8 = 35
                if player == "X"{
                    s8c = Sets.X_col
                }
                else{
                    s8c = Sets.O_col
                }
            }
            
            tag1 = check(tag:false)
            if tag1 == true{
                once = true
                player = who_won()
                    
                    color[9] = 100
                    if player == "0"{
                        O_w = O_w + 1
                    }
                    else{
                        x_w = x_w + 1
                    }
                
                        player = player + " wins"
                
                if rounds == Sets.Rounds{
                    again = "Play Again"
                    color[9] = 100
                    if x_w > O_w{
                        player = "X"
                        player = player + " wins" + " Overall"
                    }
                    
                    if O_w > x_w{
                        player = "0"
                        player = player + " wins" + " Overall"
                    }
                    
                    else if O_w == x_w{
                        player = "Overall Tie"
                    }
                    
                    
                    
                }
                
            }
            
            
            check = tie(tag2:false)
            if check == true && tag1 == false{
                once = true
                    
                color[9] = 100
                player = "Tie"
                
                    
                if rounds == Sets.Rounds{
                    again = "Play Again"
                    color[9] = 100
                    if x_w > O_w{
                        player = "X"
                        player = player + " wins" + " Overall"
                    }
                    
                    if O_w > x_w{
                        player = "0"
                        player = player + " wins" + " Overall"
                    }
                    
                    else if O_w == x_w{
                        player = "Overall Tie"
                    }
                    
                    
                    
                }
            }
            
            
            
            
        }
        
        if squares[4] == "X" && tag1 == false{
            if turn == 2{
                if squares[4] != "-"{
                    ran = Int.random(in: 0...7)
                    ran = first_pos[ran]
                    squares[ran] = "0"
                    color[ran] = 100
                    if ran == 0{
                        s0 = 35
                    }
                    if ran == 1{
                        s1 = 35
                    }
                    if ran == 2{
                        s2 = 35
                    }
                    if ran == 3{
                        s3 = 35
                    }
                    if ran == 4{
                        s4 = 35
                    }
                    if ran == 5{
                        s5 = 35
                    }
                    if ran == 6{
                        s6 = 35
                    }
                    if ran == 7{
                        s7 = 35
                    }
                    if ran == 8{
                        s8 = 35
                    }
                }
                else{
                    squares[4] = "0"
                    color[4] = 100
                    s4 = 35
                    
                }
                turn = turn+1
            }
            
            
            if turn == 4{
                tag_1 = false
                if squares[0] == "X" && squares[8] == "-"{
                    squares[8] = "0"
                    color[8] = 100
                    s8 = 35
                    tag_1 = true
                }
                
                if squares[8] == "X" && squares[0] == "-"{
                    squares[0] = "0"
                    color[0] = 100
                    s0 = 35
                    tag_1 = true
                }
                
                if squares[6] == "X" && squares[2] == "-"{
                    squares[2] = "0"
                    color[2] = 100
                    s2 = 35
                    tag_1 = true
                }
                
                
                if squares[2] == "X" && squares[6] == "-"{
                    squares[6] = "0"
                    color[6] = 100
                    s6 = 35
                    tag_1 = true
                }
                
                
                if squares[1] == "X" && squares[7] == "-"{
                    squares[7] = "0"
                    color[7] = 100
                    s7 = 35
                    tag_1 = true
                }
                
                if squares[7] == "X" && squares[1] == "-"{
                    squares[1] = "0"
                    color[1] = 100
                    s1 = 35
                    tag_1 = true
                }
                
                if squares[3] == "X" && squares[5] == "-"{
                    squares[5] = "0"
                    color[5] = 100
                    s5 = 35
                    tag_1 = true
                }
                
                if squares[5] == "X" && squares[3] == "-"{
                    squares[3] = "0"
                    color[3] = 100
                    s3 = 35
                    tag_1 = true
                }
                
                
                if tag_1 == false{
                    
                    if squares[0] == "0"{
                        squares[2] = "0"
                        color[2] = 100
                        s2 = 35
                    }
                    
                    else if squares[1] == "0"{
                        squares[0] = "0"
                        color[0] = 100
                        s0 = 35
                    }
                    
                    else if squares[2] == "0"{
                        squares[0] = "0"
                        color[0] = 100
                        s0 = 35
                    }

                    else if squares[3] == "0"{
                        squares[0] = "0"
                        color[0] = 100
                        s0 = 35
                    }
                    


                    else if squares[5] == "0"{
                        squares[8] = "0"
                        color[8] = 100
                        s8 = 35
                    }
                    
                    
                    else if squares[6] == "0"{
                        squares[8] = "0"
                        color[8] = 100
                        s8 = 35
                    }

                    else if squares[7] == "0"{
                        squares[8] = "0"
                        color[8] = 100
                        s8 = 35
                    }
                    
                    else if squares[8] == "0"{
                        squares[6] = "0"
                        color[6] = 100
                        s6 = 35
                    }
                    
                   else if squares[8] == "0"{
                        squares[6] = "0"
                        color[6] = 100
                        s6 = 35
                    }
                    
                    
                    
                    
                    
                    
                    
                    
                    
                }
                
                turn = turn+1
                
            }
            
            if turn == 6 || turn == 8{
                tag_1 = false
                if squares[0] == "0" && squares[1] == "0" && squares[2] == "-"{
                    squares[2] = "0"
                    color[2] = 100
                    s2 = 35
                    tag_1 = true
                }
                
                if squares[0] == "-" && squares[1] == "0" && squares[2] == "0"{
                    squares[0] = "0"
                    color[0] = 100
                    s0 = 35
                    tag_1 = true
                }
                
                if squares[0] == "0" && squares[1] == "-" && squares[2] == "0"{
                    squares[1] = "0"
                    color[1] = 100
                    s1 = 35
                    tag_1 = true
                }
                
                
                if squares[6] == "0" && squares[7] == "-" && squares[8] == "0"{
                    squares[7] = "0"
                    color[7] = 100
                    s7 = 35
                    tag_1 = true
                }
                
                if squares[6] == "-" && squares[7] == "0" && squares[8] == "0"{
                    squares[6] = "0"
                    color[6] = 100
                    s6 = 35
                    tag_1 = true
                }
                
                if squares[6] == "0" && squares[7] == "0" && squares[8] == "-"{
                    squares[8] = "0"
                    color[8] = 100
                    s8 = 35
                    tag_1 = true
                }
                
                if squares[0] == "0" && squares[3] == "0" && squares[6] == "-"{
                    squares[6] = "0"
                    color[6] = 100
                    s6 = 35
                    tag_1 = true
                }
                
                if squares[0] == "-" && squares[3] == "0" && squares[6] == "0"{
                    squares[0] = "0"
                    color[0] = 100
                    s0 = 35
                    tag_1 = true
                }
                
                
                if squares[0] == "0" && squares[3] == "-" && squares[6] == "0"{
                    squares[3] = "0"
                    color[3] = 100
                    s3 = 35
                    tag_1 = true
                }
                
                
                if squares[2] == "0" && squares[5] == "0" && squares[8] == "-"{
                    squares[8] = "0"
                    color[8] = 100
                    s8 = 35
                    tag_1 = true
                }
                
                if squares[2] == "-" && squares[5] == "0" && squares[8] == "0"{
                    squares[2] = "0"
                    color[2] = 100
                    s2 = 35
                    tag_1 = true
                }
                
                if squares[2] == "0" && squares[5] == "-" && squares[8] == "0"{
                    squares[5] = "0"
                    color[5] = 100
                    s5 = 35
                    tag_1 = true
                }
                
                
                if squares[0] == "0" && squares[4] == "0" && squares[8] == "-"{
                    squares[8] = "0"
                    color[8] = 100
                    s8 = 35
                    tag_1 = true
                }
                
                if squares[0] == "-" && squares[4] == "0" && squares[8] == "0"{
                    squares[0] = "0"
                    color[0] = 100
                    s0 = 35
                    tag_1 = true
                }
                
                
                
                
                
                
                if tag_1 == false{
                    if squares[0] == "X" && squares[1] == "X" && squares[2] == "-"{
                        squares[2] = "0"
                        color[2] = 100
                        s2 = 35
                        tag_1 = true
                    }
                    
                    else if squares[0] == "-" && squares[1] == "X" && squares[2] == "X"{
                        squares[0] = "0"
                        color[0] = 100
                        s0 = 35
                        tag_1 = true
                    }
                    
                    else if squares[0] == "X" && squares[1] == "-" && squares[2] == "X"{
                        squares[1] = "0"
                        color[1] = 100
                        s1 = 35
                        tag_1 = true
                    }
                    
                    
                    else if squares[6] == "X" && squares[7] == "-" && squares[8] == "X"{
                        squares[7] = "0"
                        color[7] = 100
                        s7 = 35
                        tag_1 = true
                    }
                    
                    else if squares[6] == "-" && squares[7] == "X" && squares[8] == "X"{
                        squares[6] = "0"
                        color[6] = 100
                        s6 = 35
                        tag_1 = true
                    }
                    
                    else if squares[6] == "X" && squares[7] == "X" && squares[8] == "-"{
                        squares[8] = "0"
                        color[8] = 100
                        s8 = 35
                        tag_1 = true
                    }
                    
                    else if squares[0] == "X" && squares[3] == "X" && squares[6] == "-"{
                        squares[6] = "0"
                        color[6] = 100
                        s6 = 35
                        tag_1 = true
                    }
                    
                    else if squares[0] == "-" && squares[3] == "X" && squares[6] == "X"{
                        squares[0] = "0"
                        color[0] = 100
                        s0 = 35
                        tag_1 = true
                    }
                    
                    
                    else if squares[0] == "X" && squares[3] == "-" && squares[6] == "X"{
                        squares[3] = "0"
                        color[3] = 100
                        s3 = 35
                        tag_1 = true
                    }
                    
                    
                    else if squares[2] == "X" && squares[5] == "X" && squares[8] == "-"{
                        squares[8] = "0"
                        color[8] = 100
                        s8 = 35
                        tag_1 = true
                    }
                    
                    else  if squares[2] == "-" && squares[5] == "X" && squares[8] == "X"{
                        squares[2] = "0"
                        color[2] = 100
                        s2 = 35
                        tag_1 = true
                    }
                    
                    else if squares[2] == "X" && squares[5] == "-" && squares[8] == "X"{
                        squares[5] = "0"
                        color[5] = 100
                        s5 = 35
                        tag_1 = true
                    }
                    
                    else if squares[1] == "X" && squares[4] == "X" && squares[7] == "-"{
                        squares[7] = "0"
                        color[7] = 100
                        s7 = 35
                        tag_1 = true
                    }
                    
                    else if squares[1] == "-" && squares[4] == "X" && squares[7] == "X"{
                        squares[1] = "0"
                        color[1] = 100
                        s1 = 35
                        tag_1 = true
                    }
                    
                    
                    else if squares[3] == "X" && squares[4] == "X" && squares[5] == "-"{
                        squares[5] = "0"
                        color[5] = 100
                        s5 = 35
                        tag_1 = true
                    }
                    
                    else if squares[3] == "-" && squares[4] == "X" && squares[5] == "X"{
                        squares[3] = "0"
                        color[3] = 100
                        s3 = 35
                        tag_1 = true
                    }
                    
                    else if squares[0] == "-" && squares[4] == "X" && squares[8] == "X"{
                        squares[0] = "0"
                        color[0] = 100
                        s0 = 35
                        tag_1 = true
                    }
                    
                    else if squares[0] == "X" && squares[4] == "X" && squares[8] == "-"{
                        squares[8] = "0"
                        color[8] = 100
                        s8 = 35
                        tag_1 = true
                    }
                    
                    else if squares[6] == "X" && squares[4] == "X" && squares[2] == "-"{
                        squares[2] = "0"
                        color[2] = 100
                        s2 = 35
                        tag_1 = true
                    }
                    
                    else if squares[6] == "-" && squares[4] == "X" && squares[2] == "X"{
                        squares[6] = "0"
                        color[6] = 100
                        s6 = 35
                        tag_1 = true
                    }
                    
                    else{
                        if squares[0] == "-"{
                            squares[0] = "0"
                            color[0] = 100
                            s0 = 35
                        }
                        
                        else if squares[1] == "-"{
                            squares[1] = "0"
                            color[1] = 100
                            s1 = 35
                        }
                        
                        else if squares[2] == "-"{
                            squares[2] = "0"
                            color[2] = 100
                            s2 = 35
                        }
                        
                        
                        else if squares[3] == "-"{
                            squares[3] = "0"
                            color[3] = 100
                            s3 = 35
                        }
                        
                        else if squares[4] == "-"{
                            squares[4] = "0"
                            color[4] = 100
                            s4 = 35
                        }
                        
                        else if squares[5] == "-"{
                            squares[5] = "0"
                            color[5] = 100
                            s5 = 35
                        }
                        
                        else if squares[6] == "-"{
                            squares[6] = "0"
                            color[6] = 100
                            s6 = 35
                        }
                        
                        else if squares[7] == "-"{
                            squares[7] = "0"
                            color[7] = 100
                            s7 = 35
                        }
                        
                        else  if squares[8] == "-"{
                            squares[8] = "0"
                            color[8] = 100
                            s8 = 35
                        }
                        
                        
                        
                        
                    }
                    
                    
                    
                }
                
                turn = turn+1
            }
            
        }
        
        else{
            
            if turn == 2 && tag1 == false{
                    squares[4] = "0"
                    color[4] = 100
                    s4 = 35
                    turn = turn + 1
            }
            
            
            if turn == 4 && tag1 == false{
                    
                    if squares[0] == "X" && squares[1] == "X" && squares[2] == "-"{
                        squares[2] = "0"
                        color[2] = 100
                        s2 = 35
                        tag_1 = true
                    }
                    
                    else if squares[0] == "-" && squares[1] == "X" && squares[2] == "X"{
                        squares[0] = "0"
                        color[0] = 100
                        s0 = 35
                        tag_1 = true
                    }
                    
                    else if squares[0] == "X" && squares[1] == "-" && squares[2] == "X"{
                        squares[1] = "0"
                        color[1] = 100
                        s1 = 35
                        tag_1 = true
                    }
                    
                    
                    else if squares[6] == "X" && squares[7] == "-" && squares[8] == "X"{
                        squares[7] = "0"
                        color[7] = 100
                        s7 = 35
                        tag_1 = true
                    }
                    
                    else if squares[6] == "-" && squares[7] == "X" && squares[8] == "X"{
                        squares[6] = "0"
                        color[6] = 100
                        s6 = 35
                        tag_1 = true
                    }
                    
                    else if squares[6] == "X" && squares[7] == "X" && squares[8] == "-"{
                        squares[8] = "0"
                        color[8] = 100
                        s8 = 35
                        tag_1 = true
                    }
                    
                    else if squares[0] == "X" && squares[3] == "X" && squares[6] == "-"{
                        squares[6] = "0"
                        color[6] = 100
                        s6 = 35
                        tag_1 = true
                    }
                    
                    else if squares[0] == "-" && squares[3] == "X" && squares[6] == "X"{
                        squares[0] = "0"
                        color[0] = 100
                        s0 = 35
                        tag_1 = true
                    }
                    
                    
                    else if squares[0] == "X" && squares[3] == "-" && squares[6] == "X"{
                        squares[3] = "0"
                        color[3] = 100
                        s3 = 35
                        tag_1 = true
                    }
                    
                    
                    else if squares[2] == "X" && squares[5] == "X" && squares[8] == "-"{
                        squares[8] = "0"
                        color[8] = 100
                        s8 = 35
                        tag_1 = true
                    }
                    
                    else  if squares[2] == "-" && squares[5] == "X" && squares[8] == "X"{
                        squares[2] = "0"
                        color[2] = 100
                        s2 = 35
                        tag_1 = true
                    }
                    
                    else if squares[2] == "X" && squares[5] == "-" && squares[8] == "X"{
                        squares[5] = "0"
                        color[5] = 100
                        s5 = 35
                        tag_1 = true
                    }
                
                    else if squares[0] == "-"{
                        squares[0] = "0"
                        color[0] = 100
                        s0 = 35
                    }
                    
                    else if squares[1] == "-"{
                        squares[1] = "0"
                        color[1] = 100
                        s1 = 35
                    }
                    
                    else if squares[2] == "-"{
                        squares[2] = "0"
                        color[2] = 100
                        s2 = 35
                    }
                    
                    
                    else if squares[3] == "-"{
                        squares[3] = "0"
                        color[3] = 100
                        s3 = 35
                    }
                    
                    else if squares[4] == "-"{
                        squares[4] = "0"
                        color[4] = 100
                        s4 = 35
                    }
                    
                    else if squares[5] == "-"{
                        squares[5] = "0"
                        color[5] = 100
                        s5 = 35
                    }
                    
                    else if squares[6] == "-"{
                        squares[6] = "0"
                        color[6] = 100
                        s6 = 35
                    }
                    
                    else if squares[7] == "-"{
                        squares[7] = "0"
                        color[7] = 100
                        s7 = 35
                    }
                    
                    else  if squares[8] == "-"{
                        squares[8] = "0"
                        color[8] = 100
                        s8 = 35
                    }
                turn = turn + 1
                    
                    
            }
            }
            
            if (turn == 6 || turn == 8) && tag1 == false{
                tag_1 = false
                if squares[0] == "0" && squares[1] == "0" && squares[2] == "-"{
                    squares[2] = "0"
                    color[2] = 100
                    s2 = 35
                    tag_1 = true
                }
                
                if squares[0] == "-" && squares[1] == "0" && squares[2] == "0"{
                    squares[0] = "0"
                    color[0] = 100
                    s0 = 35
                    tag_1 = true
                }
                
                if squares[0] == "0" && squares[1] == "-" && squares[2] == "0"{
                    squares[1] = "0"
                    color[1] = 100
                    s1 = 35
                    tag_1 = true
                }
                
                if squares[3] == "-" && squares[4] == "0" && squares[5] == "0"{
                    squares[3] = "0"
                    color[3] = 100
                    s3 = 35
                    tag_1 = true
                }
                
                if squares[3] == "0" && squares[4] == "0" && squares[5] == "-"{
                    squares[5] = "0"
                    color[5] = 100
                    s5 = 35
                    tag_1 = true
                }
                
                
                
                
                
                if squares[6] == "0" && squares[7] == "-" && squares[8] == "0"{
                    squares[7] = "0"
                    color[7] = 100
                    s7 = 35
                    tag_1 = true
                }
                
                if squares[6] == "-" && squares[7] == "0" && squares[8] == "0"{
                    squares[6] = "0"
                    color[6] = 100
                    s6 = 35
                    tag_1 = true
                }
                
                if squares[6] == "0" && squares[7] == "0" && squares[8] == "-"{
                    squares[8] = "0"
                    color[8] = 100
                    s8 = 35
                    tag_1 = true
                }
                
                if squares[0] == "0" && squares[3] == "0" && squares[6] == "-"{
                    squares[6] = "0"
                    color[6] = 100
                    s6 = 35
                    tag_1 = true
                }
                
                if squares[0] == "-" && squares[3] == "0" && squares[6] == "0"{
                    squares[0] = "0"
                    color[0] = 100
                    s0 = 35
                    tag_1 = true
                }
                
                
                if squares[1] == "-" && squares[4] == "0" && squares[7] == "0"{
                    squares[1] = "0"
                    color[1] = 100
                    s1 = 35
                    tag_1 = true
                }
                
                if squares[1] == "0" && squares[4] == "0" && squares[7] == "-"{
                    squares[7] = "0"
                    color[7] = 100
                    s7 = 35
                    tag_1 = true
                }
                
                
                
                
                
                
                
                
                
                if squares[2] == "0" && squares[5] == "0" && squares[8] == "-"{
                    squares[8] = "0"
                    color[8] = 100
                    s8 = 35
                    tag_1 = true
                }
                
                if squares[2] == "-" && squares[5] == "0" && squares[8] == "0"{
                    squares[2] = "0"
                    color[2] = 100
                    s2 = 35
                    tag_1 = true
                }
                
                if squares[2] == "0" && squares[5] == "-" && squares[8] == "0"{
                    squares[5] = "0"
                    color[5] = 100
                    s5 = 35
                    tag_1 = true
                }
                
                if tag_1 == false{
                    if squares[0] == "X" && squares[1] == "X" && squares[2] == "-"{
                        squares[2] = "0"
                        color[2] = 100
                        s2 = 35
                        tag_1 = true
                    }
                    
                    else if squares[0] == "-" && squares[1] == "X" && squares[2] == "X"{
                        squares[0] = "0"
                        color[0] = 100
                        s0 = 35
                        tag_1 = true
                    }
                    
                    else if squares[0] == "X" && squares[1] == "-" && squares[2] == "X"{
                        squares[1] = "0"
                        color[1] = 100
                        s1 = 35
                        tag_1 = true
                    }
                    
                    
                    else if squares[6] == "X" && squares[7] == "-" && squares[8] == "X"{
                        squares[7] = "0"
                        color[7] = 100
                        s7 = 35
                        tag_1 = true
                    }
                    
                    else if squares[6] == "-" && squares[7] == "X" && squares[8] == "X"{
                        squares[6] = "0"
                        color[6] = 100
                        s6 = 35
                        tag_1 = true
                    }
                    
                    else if squares[6] == "X" && squares[7] == "X" && squares[8] == "-"{
                        squares[8] = "0"
                        color[8] = 100
                        s8 = 35
                        tag_1 = true
                    }
                    
                    else if squares[0] == "X" && squares[3] == "X" && squares[6] == "-"{
                        squares[6] = "0"
                        color[6] = 100
                        s6 = 35
                        tag_1 = true
                    }
                    
                    else if squares[0] == "-" && squares[3] == "X" && squares[6] == "X"{
                        squares[0] = "0"
                        color[0] = 100
                        s0 = 35
                        tag_1 = true
                    }
                    
                    
                    else if squares[0] == "X" && squares[3] == "-" && squares[6] == "X"{
                        squares[3] = "0"
                        color[3] = 100
                        s3 = 35
                        tag_1 = true
                    }
                    
                    
                    else if squares[2] == "X" && squares[5] == "X" && squares[8] == "-"{
                        squares[8] = "0"
                        color[8] = 100
                        s8 = 35
                        tag_1 = true
                    }
                    
                    else  if squares[2] == "-" && squares[5] == "X" && squares[8] == "X"{
                        squares[2] = "0"
                        color[2] = 100
                        s2 = 35
                        tag_1 = true
                    }
                    
                    else if squares[2] == "X" && squares[5] == "-" && squares[8] == "X"{
                        squares[5] = "0"
                        color[5] = 100
                        s5 = 35
                        tag_1 = true
                    }
                    
                    else if squares[1] == "X" && squares[4] == "X" && squares[7] == "-"{
                        squares[7] = "0"
                        color[7] = 100
                        s7 = 35
                        tag_1 = true
                    }
                    
                    else if squares[1] == "-" && squares[4] == "X" && squares[7] == "X"{
                        squares[1] = "0"
                        color[1] = 100
                        s1 = 35
                        tag_1 = true
                    }
                    
                    
                    else if squares[3] == "X" && squares[4] == "X" && squares[5] == "-"{
                        squares[5] = "0"
                        color[5] = 100
                        s5 = 35
                        tag_1 = true
                    }
                    
                    else if squares[3] == "-" && squares[4] == "X" && squares[5] == "X"{
                        squares[3] = "0"
                        color[3] = 100
                        s3 = 35
                        tag_1 = true
                    }
                    
                    else if squares[0] == "-" && squares[4] == "X" && squares[8] == "X"{
                        squares[0] = "0"
                        color[0] = 100
                        s0 = 35
                        tag_1 = true
                    }
                    
                    else if squares[0] == "X" && squares[4] == "X" && squares[8] == "-"{
                        squares[8] = "0"
                        color[8] = 100
                        s8 = 35
                        tag_1 = true
                    }
                    
                    else if squares[6] == "X" && squares[4] == "X" && squares[2] == "-"{
                        squares[2] = "0"
                        color[2] = 100
                        s2 = 35
                        tag_1 = true
                    }
                    
                    else if squares[6] == "-" && squares[4] == "X" && squares[2] == "X"{
                        squares[6] = "0"
                        color[6] = 100
                        s6 = 35
                        tag_1 = true
                    }
                    
                    else{
                        if squares[0] == "-"{
                            squares[0] = "0"
                            color[0] = 100
                            s0 = 35
                        }
                        
                        else if squares[1] == "-"{
                            squares[1] = "0"
                            color[1] = 100
                            s1 = 35
                        }
                        
                        else if squares[2] == "-"{
                            squares[2] = "0"
                            color[2] = 100
                            s2 = 35
                        }
                        
                        
                        else if squares[3] == "-"{
                            squares[3] = "0"
                            color[3] = 100
                            s3 = 35
                        }
                        
                        else if squares[4] == "-"{
                            squares[4] = "0"
                            color[4] = 100
                            s4 = 35
                        }
                        
                        else if squares[5] == "-"{
                            squares[5] = "0"
                            color[5] = 100
                            s5 = 35
                        }
                        
                        else if squares[6] == "-"{
                            squares[6] = "0"
                            color[6] = 100
                            s6 = 35
                        }
                        
                        else if squares[7] == "-"{
                            squares[7] = "0"
                            color[7] = 100
                            s7 = 35
                        }
                        
                        else  if squares[8] == "-"{
                            squares[8] = "0"
                            color[8] = 100
                            s8 = 35
                        }
                    }
                    turn = turn + 1
                }
        }
        
        
            
            
        if once == false{
        tag1 = check(tag:false)
        if tag1 == true{
            player = who_won()
                
                color[9] = 100
                if player == "0"{
                    O_w = O_w + 1
                }
                else{
                    x_w = x_w + 1
                }
            
                    player = player + " wins"
            
            if rounds == Sets.Rounds{
                again = "Play Again"
                color[9] = 100
                if x_w > O_w{
                    player = "X"
                    player = player + " wins" + " Overall"
                }
                
                if O_w > x_w{
                    player = "0"
                    player = player + " wins" + " Overall"
                }
                
                else if O_w == x_w{
                    player = "Overall Tie"
                }
                
                
                
            }
            
        }
        
        
        check = tie(tag2:false)
        if check == true && tag1 == false{
            
                
            color[9] = 100
            player = "Tie"
            
                
            if rounds == Sets.Rounds{
                again = "Play Again"
                color[9] = 100
                if x_w > O_w{
                    player = "X"
                    player = player + " wins" + " Overall"
                }
                
                if O_w > x_w{
                    player = "0"
                    player = player + " wins" + " Overall"
                }
                
                else if O_w == x_w{
                    player = "Overall Tie"
                }
                
                
                
            }
        }
        }
        
        }
    }
    
    func check(tag:Bool) -> Bool{
        var tag = false
        var ck = "X"
        for i in 1 ... 2{
            if i == 1{
                ck = "X"
            }
            else{
                ck = "0"
            }
            if squares[0] == ck && squares[1] == ck && squares[2] == ck{
                tag = true
                won = ck
            }
            if squares[3] == ck && squares[4] == ck && squares[5] == ck{
                tag = true
                won = ck
            }
            if squares[6] == ck && squares[7] == ck && squares[8] == ck{
                tag = true
                won = ck
            }
            
            if squares[0] == ck && squares[3] == ck && squares[6] == ck{
                tag = true
                won = ck
            }
            if squares[1] == ck && squares[4] == ck && squares[7] == ck{
                tag = true
                won = ck
            }
            if squares[2] == ck && squares[5] == ck && squares[8] == ck{
                tag = true
                won = ck
            }
            
            if squares[0] == ck && squares[4] == ck && squares[8] == ck{
                tag = true
                won = ck
            }
            if squares[2] == ck && squares[4] == ck && squares[6] == ck{
                tag = true
                won = ck
            }
            
            
        
        }
        
       
        return (tag)
    }
    
    func who_won() -> String{
        var ck = "X"
        for i in 1 ... 2{
            if i == 1{
                ck = "X"
            }
            else{
                ck = "0"
            }
            if squares[0] == ck && squares[1] == ck && squares[2] == ck{
                won = ck
            }
            if squares[3] == ck && squares[4] == ck && squares[5] == ck{
                won = ck
            }
            if squares[6] == ck && squares[7] == ck && squares[8] == ck{
                won = ck
            }
            
            if squares[0] == ck && squares[3] == ck && squares[6] == ck{
                won = ck
            }
            if squares[1] == ck && squares[4] == ck && squares[7] == ck{
                won = ck
            }
            if squares[2] == ck && squares[5] == ck && squares[8] == ck{
                won = ck
            }
            
            if squares[0] == ck && squares[4] == ck && squares[8] == ck{
                won = ck
            }
            if squares[2] == ck && squares[4] == ck && squares[6] == ck{
                won = ck
            }
            
            
        
        }
        
       
        return (won)
    }
    
    
    func tie(tag2:Bool) -> Bool{
        var tag2 = false
        var count = 0
        for e in 0...8{
            if squares[e] != "-" {
                count = count + 1
            }
        }
        if count == 9{
            tag2 = true
        }
        return tag2
    }

    func reset(){
        if color[9] == 100 {
            s0c = Sets.O_col
            s1c = Sets.O_col
            s2c = Sets.O_col
            s3c = Sets.O_col
            s4c = Sets.O_col
            s5c = Sets.O_col
            s6c = Sets.O_col
            s7c = Sets.O_col
            s8c = Sets.O_col
            
            rounds = rounds + 1
            
            if again == "Play Again"{
            rounds = 1
            x_w = 0
                O_w = 0
                
            }
            again = "New Round"
            s0 = 80
            s1 = 80
            s2 = 80
            s3 = 80
            s4 = 80
            s5 = 80
            s6 = 80
            s7 = 80
            s8 = 80
            squares = ["-","-","-","-","-","-","-","-","-"]
            color = [0,0,0,0,0,0,0,0,0,0]
            tag1 = false
            player = "X"
            turn = 1
        
        }
        
    }


    
    var body: some View {
        ZStack{
            
            CustomColor.be.ignoresSafeArea()
            Button("<"){appState.hasOnboared = 3}
            .foregroundColor(. black)
            .font(.custom("KGHAPPY",size:25))
            .position(x: 30, y: 10)
            VStack(alignment: .center, spacing: 0, content:{
                
                VStack{
                    Text("")
                    Text("")
                    Text("")
                }
                VStack{
                Text("Round " + String(rounds) + "/" + String(Sets.Rounds))
                    .font(.custom("KGHAPPY",size:30))
                    .foregroundColor(.black)
                    Text("")}
                Text("X wins       O wins")
                    .font(.custom("KGHAPPY",size:20))
                    .foregroundColor(.black)
                Text(String(x_w) + "          " + String(O_w))
                    .font(.custom("KGHAPPY",size:30))
                    .foregroundColor(.black)
                VStack{
                    Text("")
                    Text("")
                    Text("")
                }
                VStack{
                Text(player)
                    .font(.custom("KGHAPPY",size:30))
                    .foregroundColor(.black)
                    Text("")}
                

                
                
                HStack{
                    VStack{
                        
                        Button(squares[0]){buttonAction( index: 0)}
                        .font(.custom("KGHAPPY",size:CGFloat(s0)))
                        .frame(width: 75, height: 75)
                        .foregroundColor(s0c.opacity(Double(color[0])))
                        .background(Color.white.opacity(100).cornerRadius(10))
                         
                        Button(squares[1]){buttonAction( index: 1)}
                        .font(.custom("KGHAPPY",size:CGFloat(s1)))
                        .frame(width: 75, height: 75)
                        .foregroundColor(s1c.opacity(Double(color[1])))
                        .background(Color.white.opacity(100).cornerRadius(10))
                        
                        Button(squares[2]){buttonAction( index: 2)}
                        .font(.custom("KGHAPPY",size:CGFloat(s2)))
                        .frame(width: 75, height: 75)
                        .foregroundColor(s2c.opacity(Double(color[2])))
                        .background(Color.white.opacity(100).cornerRadius(10))
                    }
                        
                    VStack{
                        Button(squares[3]){buttonAction( index: 3)}
                        .font(.custom("KGHAPPY",size:CGFloat(s3)))
                        .frame(width: 75, height: 75)
                        .foregroundColor(s3c.opacity(Double(color[3])))
                        .background(Color.white.opacity(100).cornerRadius(10))
                        Button(squares[4]){buttonAction( index: 4)}
                        .font(.custom("KGHAPPY",size:CGFloat(s4)))
                        .frame(width: 75, height: 75)
                        .foregroundColor(s4c.opacity(Double(color[4])))
                        .background(Color.white.opacity(100).cornerRadius(10))
                        Button(squares[5]){buttonAction( index: 5)}
                        .font(.custom("KGHAPPY",size:CGFloat(s5)))
                        .frame(width: 75, height: 75)
                        .foregroundColor(s5c.opacity(Double(color[5])))
                        .background(Color.white.opacity(100).cornerRadius(10))
                    }
                    VStack{
                        Button(squares[6]){buttonAction( index: 6)}
                        .font(.custom("KGHAPPY",size:CGFloat(s6)))
                        .frame(width: 75, height: 75)
                        .foregroundColor(s6c.opacity(Double(color[6])))
                        .background(Color.white.opacity(100).cornerRadius(10))
                        Button(squares[7]){buttonAction( index: 7)}
                        .font(.custom("KGHAPPY",size:CGFloat(s7)))
                        .frame(width: 75, height: 75)
                        .foregroundColor(s7c.opacity(Double(color[7])))
                        .background(Color.white.opacity(100).cornerRadius(10))
                        
                        Button(squares[8]){buttonAction( index: 8)}
                        .font(.custom("KGHAPPY",size:CGFloat(s8)))
                            .frame(width: 75, height: 75)
                            .foregroundColor(s8c.opacity(Double(color[8])))
                            .background(Color.white.opacity(100).cornerRadius(10))}
                
                
           

            }
                Text("")
                Button(again){reset()}
                    .font(.custom("KGHAPPY",size:20))
                    .foregroundColor(. black.opacity(Double(color[9])))
                
                
                VStack{
                    Text("")
                    Text("")
                    Text("")
                }
                
            })
           
        }
        
    }
                    
        
}
struct tictactoe_bot_Previews: PreviewProvider {
    static var previews: some View {
        tictactoe_bot()
    }
}
