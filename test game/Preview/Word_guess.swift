//
//  Word_guess.swift
//  test game
//
//  Created by Reddy Kitaan on 19/5/22.
//

import SwiftUI

struct Word_guess: View {
    @EnvironmentObject var appState: AppState
    @State var guess_line_1 = ["","","","","","",""]
    @State var guess_line_2 = ["","","","","","",""]
    @State var guess_line_3 = ["","","","","","",""]
    @State var guess_line_4 = ["","","","","","",""]
    @State var guess_line_5 = ["","","","","","",""]
    @State var guess_line_6 = ["","","","","","",""]
    
    @State var gl1c = [Color.white,Color.white,Color.white,Color.white,Color.white,Color.white,Color.white]
    @State var gl2c = [Color.white,Color.white,Color.white,Color.white,Color.white,Color.white,Color.white]
    @State var gl3c = [Color.white,Color.white,Color.white,Color.white,Color.white,Color.white,Color.white]
    @State var gl4c = [Color.white,Color.white,Color.white,Color.white,Color.white,Color.white,Color.white]
    @State var gl5c = [Color.white,Color.white,Color.white,Color.white,Color.white,Color.white,Color.white]
    @State var gl6c = [Color.white,Color.white,Color.white,Color.white,Color.white,Color.white,Color.white]
    
    
    @State var ap = 0
    @State var o = 0

    @State var Word_Length_3 = [0,0,80,80,80,0,0]
    @State var Word_Length_5 = [0,70,70,70,70,70,0]
    @State var Word_Length_7 = [50,50,50,50,50,50,50]

    @State var Word_Length = [0,0,0,0,0,0,0]
    @State var e = 0
    @State var i = 0
    @State var pos = 0
    @State var word = ""
    @State var pos0 = ""
    @State var num = 0
    @State var message = "  Play"
    @State var Try = 1
    @State var Ts = 30
    @State var check = ""
    @State var alpha = alphabet.W
    @State var tag = false
    @State var checker = []
    @State var string = "Hello, world!"
    

    @State var cols1 = [Color.white,Color.white,Color.white,Color.white,Color.white,Color.white,Color.white,Color.white,Color.white,Color.white]
    
    @State var cols2 = [Color.white,Color.white,Color.white,Color.white,Color.white,Color.white,Color.white,Color.white,Color.white]
    
    @State var cols3 = [Color.white,Color.white,Color.white,Color.white,Color.white,Color.white,Color.white]
    
    func reset(){
        guess_line_1 = ["","","","","","",""]
        guess_line_2 = ["","","","","","",""]
        guess_line_3 = ["","","","","","",""]
        guess_line_4 = ["","","","","","",""]
        guess_line_5 = ["","","","","","",""]
        guess_line_6 = ["","","","","","",""]
        o = 100
        gl1c = [Color.white,Color.white,Color.white,Color.white,Color.white,Color.white,Color.white]
        gl2c = [Color.white,Color.white,Color.white,Color.white,Color.white,Color.white,Color.white]
        gl3c = [Color.white,Color.white,Color.white,Color.white,Color.white,Color.white,Color.white]
        gl4c = [Color.white,Color.white,Color.white,Color.white,Color.white,Color.white,Color.white]
        gl5c = [Color.white,Color.white,Color.white,Color.white,Color.white,Color.white,Color.white]
        gl6c = [Color.white,Color.white,Color.white,Color.white,Color.white,Color.white,Color.white]
        
        
        ap = 0

         Word_Length_3 = [0,0,80,80,80,0,0]
        Word_Length_5 = [0,70,70,70,70,70,0]
        Word_Length_7 = [50,50,50,50,50,50,50]

        Word_Length = [0,0,0,0,0,0,0]
        e = 0
        i = 0
        pos = 0
        word = ""
        pos0 = ""
        num = 0
        message = "Word Guess"
        Try = 1
        Ts = 30 // Text Size
        check = ""
        alpha = alphabet.W
        tag = false
        checker = []
        string = "Hello, world!"
        

        cols1 = [Color.white,Color.white,Color.white,Color.white,Color.white,Color.white,Color.white,Color.white,Color.white,Color.white]
        
        cols2 = [Color.white,Color.white,Color.white,Color.white,Color.white,Color.white,Color.white,Color.white,Color.white]
        
        cols3 = [Color.white,Color.white,Color.white,Color.white,Color.white,Color.white,Color.white]
    }

    func modes(){
        reset()
        if i == 0{
            for pos in 0...6{
                Word_Length[pos] = Word_Length_3[pos]
            }

        }
        
        if i == 1{
            for pos in 0...6{
                Word_Length[pos] = Word_Length_5[pos]
            }

        }
        
        
        if i == 2{
            for pos in 0...6{
                Word_Length[pos] = Word_Length_7[pos]
            }

        }
        
        
        
        if i == 0{
            num = Int.random(in: 0...336)
            word = W3.Words3[num]
            word = word.uppercased()
            
            
        }
        



    }
    
    func update(letter:String){
        if i == 0{
            if Try == 1{
                if guess_line_1[2] == ""{
                    guess_line_1[2] = letter.uppercased()
                }
                
                else if guess_line_1[3] == ""{
                    guess_line_1[3] = letter.uppercased()
                }
                
                else if guess_line_1[4] == ""{
                    guess_line_1[4] = letter.uppercased()
                }
            }
            
            if Try == 2{
                if guess_line_2[2] == ""{
                    guess_line_2[2] = letter.uppercased()
                }
                
                else if guess_line_2[3] == ""{
                    guess_line_2[3] = letter.uppercased()
                }
                
                else if guess_line_2[4] == ""{
                    guess_line_2[4] = letter.uppercased()
                }
            }
            
            if Try == 3{
                if guess_line_3[2] == ""{
                    guess_line_3[2] = letter.uppercased()
                }
                
                else if guess_line_3[3] == ""{
                    guess_line_3[3] = letter.uppercased()
                }
                
                else if guess_line_3[4] == ""{
                    guess_line_3[4] = letter.uppercased()
                }
            }
            
            if Try == 4{
                if guess_line_4[2] == ""{
                    guess_line_4[2] = letter.uppercased()
                }
                
                else if guess_line_4[3] == ""{
                    guess_line_4[3] = letter.uppercased()
                }
                
                else if guess_line_4[4] == ""{
                    guess_line_4[4] = letter.uppercased()
                }
            }
            
            if Try == 5{
                if guess_line_5[2] == ""{
                    guess_line_5[2] = letter.uppercased()
                }
                
                else if guess_line_5[3] == ""{
                    guess_line_5[3] = letter.uppercased()
                }
                
                else if guess_line_5[4] == ""{
                    guess_line_5[4] = letter.uppercased()
                }
            }
            
            if Try == 6{
                if guess_line_6[2] == ""{
                    guess_line_6[2] = letter.uppercased()
                }
                
                else if guess_line_6[3] == ""{
                    guess_line_6[3] = letter.uppercased()
                }
                
                else if guess_line_6[4] == ""{
                    guess_line_6[4] = letter.uppercased()
                }
            }
        }
    }
    
    func del(){
        if Try == 1{
            if guess_line_1[4] != ""{
                guess_line_1[4] = ""
            }
            
            else if guess_line_1[3] != ""{
                guess_line_1[3] = ""
            }
            
            else if guess_line_1[2] != ""{
                guess_line_1[2] = ""
            }
            
        }
        
        if Try == 2{
            if guess_line_2[4] != ""{
                guess_line_2[4] = ""
            }
            
            else if guess_line_2[3] != ""{
                guess_line_2[3] = ""
            }
            
            else if guess_line_2[2] != ""{
                guess_line_2[2] = ""
            }
            
        }
        
        if Try == 3{
            if guess_line_3[4] != ""{
                guess_line_3[4] = ""
            }
            
            else if guess_line_3[3] != ""{
                guess_line_3[3] = ""
            }
            
            else if guess_line_3[2] != ""{
                guess_line_3[2] = ""
            }
            
        }
        
        
        if Try == 4{
            if guess_line_4[4] != ""{
                guess_line_4[4] = ""
            }
            
            else if guess_line_4[3] != ""{
                guess_line_4[3] = ""
            }
            
            else if guess_line_4[2] != ""{
                guess_line_4[2] = ""
            }
            
        }
        
        
        if Try == 5{
            if guess_line_5[4] != ""{
                guess_line_5[4] = ""
            }
            
            else if guess_line_5[3] != ""{
                guess_line_5[3] = ""
            }
            
            else if guess_line_5[2] != ""{
                guess_line_5[2] = ""
            }
            
        }
        
        if Try == 6{
            if guess_line_6[4] != ""{
                guess_line_6[4] = ""
            }
            
            else if guess_line_6[3] != ""{
                guess_line_6[3] = ""
            }
            
            else if guess_line_6[2] != ""{
                guess_line_6[2] = ""
            }
            
        }
        
        
        
        
    }
    
    func done(){
        tag = false
        var pas = false
        if i == 0{
            if Try == 1 && guess_line_1[2] != "" && guess_line_1[3] != "" && guess_line_1[4] != ""{
                check = guess_line_1[2] + guess_line_1[3] + guess_line_1[4]
                check = check.uppercased()
                pas = true
            }
            
            
            if Try == 2 && guess_line_2[2] != "" && guess_line_2[3] != "" && guess_line_2[4] != ""{
                check = guess_line_2[2] + guess_line_2[3] + guess_line_2[4]
                check = check.uppercased()
                pas = true
            }
            
            if Try == 3 && guess_line_3[2] != "" && guess_line_3[3] != "" && guess_line_3[4] != ""{
                check = guess_line_3[2] + guess_line_3[3] + guess_line_3[4]
                check = check.uppercased()
                pas = true
            }
            
            if Try == 4 && guess_line_4[2] != "" && guess_line_4[3] != "" && guess_line_4[4] != ""{
                check = guess_line_4[2] + guess_line_4[3] + guess_line_4[4]
                check = check.uppercased()
                pas = true
            }
            
            if Try == 5 && guess_line_5[2] != "" && guess_line_5[3] != "" && guess_line_5[4] != ""{
                check = guess_line_5[2] + guess_line_5[3] + guess_line_5[4]
                check = check.uppercased()
                pas = true
            }
            
            if Try == 6 && guess_line_6[2] != "" && guess_line_6[3] != "" && guess_line_6[4] != ""{
                check = guess_line_6[2] + guess_line_6[3] + guess_line_6[4]
                check = check.uppercased()
                pas = true
            }
            
        }
        
        
        
        if alpha.contains(check) && pas == true{
            tag = true
        }
        
        if tag == true{
            word = word.uppercased()
            let index = word.index(word.startIndex, offsetBy: 1)
            var index2 = word.index(word.startIndex, offsetBy: 1)
            let index3 = word.index(word.startIndex, offsetBy: 2)
            
            var pos1 = false
            var pos2 = false
            var pos3 = false
            
            var one = false
            var two = false
            var three = false
            
            
            if Try == 1{
                if guess_line_1[2].uppercased() == String(word.prefix(upTo: index)){
                    one = true
                    pos1 = true
                    gl1c[2] = Color.green
                    if guess_line_1[2] == "Q"{
                        cols1[0] = Color.green}
                    
                    if guess_line_1[2] == "W"{
                        cols1[1] = Color.green}
                
                    if guess_line_1[2] == "E"{
                        cols1[2] = Color.green}
            
                    if guess_line_1[2] == "R"{
                        cols1[3] = Color.green}
                    
                    if guess_line_1[2] == "T"{
                        cols1[4] = Color.green}
                
                    if guess_line_1[2] == "Y"{
                        cols1[5] = Color.green}

                    if guess_line_1[2] == "U"{
                        cols1[6] = Color.green}

                    if guess_line_1[2] == "I"{
                        cols1[7] = Color.green}

                    if guess_line_1[2] == "O"{
                        cols1[8] = Color.green}
                
                    if guess_line_1[2] == "P"{
                        cols1[9] = Color.green}
                
                    
                    
                    
                    
                    if guess_line_1[2] == "A"{
                        cols2[0] = Color.green}
                    
                    if guess_line_1[2] == "S"{
                        cols2[1] = Color.green}
                
                    if guess_line_1[2] == "D"{
                        cols2[2] = Color.green}
            
                    if guess_line_1[2] == "F"{
                        cols2[3] = Color.green}
                    
                    if guess_line_1[2] == "G"{
                        cols2[4] = Color.green}
                
                    if guess_line_1[2] == "H"{
                        cols2[5] = Color.green}

                    if guess_line_1[2] == "J"{
                        cols2[6] = Color.green}

                    if guess_line_1[2] == "K"{
                        cols2[7] = Color.green}

                    if guess_line_1[2] == "L"{
                        cols2[8] = Color.green}
                
            
                    if guess_line_1[2] == "Z"{
                        cols3[0] = Color.green}
                
                    if guess_line_1[2] == "X"{
                        cols3[1] = Color.green}
            
                    if guess_line_1[2] == "C"{
                        cols3[2] = Color.green}
                    
                    if guess_line_1[2] == "V"{
                        cols3[3] = Color.green}
                
                    if guess_line_1[2] == "B"{
                        cols3[4] = Color.green}

                    if guess_line_1[2] == "N"{
                        cols3[5] = Color.green}

                    if guess_line_1[2] == "M"{
                        cols3[6] = Color.green}}
                if guess_line_1[3].uppercased() == String(word[index2]) && pos2 == false{
                    two = true
                    pos2 = true
                    gl1c[3] = Color.green
                    if guess_line_1[3] == "Q"{
                        cols1[0] = Color.green}
                    
                    if guess_line_1[3] == "W"{
                        cols1[1] = Color.green}
                
                    if guess_line_1[3] == "E"{
                        cols1[2] = Color.green}
            
                    if guess_line_1[3] == "R"{
                        cols1[3] = Color.green}
                    
                    if guess_line_1[3] == "T"{
                        cols1[4] = Color.green}
                
                    if guess_line_1[3] == "Y"{
                        cols1[5] = Color.green}

                    if guess_line_1[3] == "U"{
                        cols1[6] = Color.green}

                    if guess_line_1[3] == "I"{
                        cols1[7] = Color.green}

                    if guess_line_1[3] == "O"{
                        cols1[8] = Color.green}
                
                    if guess_line_1[3] == "P"{
                        cols1[9] = Color.green}
                
                    
                    
                    
                    
                    if guess_line_1[3] == "A"{
                        cols2[0] = Color.green}
                    
                    if guess_line_1[3] == "S"{
                        cols2[1] = Color.green}
                
                    if guess_line_1[3] == "D"{
                        cols2[2] = Color.green}
            
                    if guess_line_1[3] == "F"{
                        cols2[3] = Color.green}
                    
                    if guess_line_1[3] == "G"{
                        cols2[4] = Color.green}
                
                    if guess_line_1[3] == "H"{
                        cols2[5] = Color.green}

                    if guess_line_1[3] == "J"{
                        cols2[6] = Color.green}

                    if guess_line_1[3] == "K"{
                        cols2[7] = Color.green}

                    if guess_line_1[3] == "L"{
                        cols2[8] = Color.green}
                
            
                    if guess_line_1[3] == "Z"{
                        cols3[0] = Color.green}
                
                    if guess_line_1[3] == "X"{
                        cols3[1] = Color.green}
            
                    if guess_line_1[3] == "C"{
                        cols3[2] = Color.green}
                    
                    if guess_line_1[3] == "V"{
                        cols3[3] = Color.green}
                
                    if guess_line_1[3] == "B"{
                        cols3[4] = Color.green}

                    if guess_line_1[3] == "N"{
                        cols3[5] = Color.green}

                    if guess_line_1[3] == "M"{
                        cols3[6] = Color.green}}
                if guess_line_1[4].uppercased() == String(word[index3]) && pos3 == false{
                    three  = true
                    pos3 = true
                    gl1c[4] = Color.green
                    if guess_line_1[4] == "Q"{
                        cols1[0] = Color.green}
                    
                    if guess_line_1[4] == "W"{
                        cols1[1] = Color.green}
                
                    if guess_line_1[4] == "E"{
                        cols1[2] = Color.green}
            
                    if guess_line_1[4] == "R"{
                        cols1[3] = Color.green}
                    
                    if guess_line_1[4] == "T"{
                        cols1[4] = Color.green}
                
                    if guess_line_1[4] == "Y"{
                        cols1[5] = Color.green}

                    if guess_line_1[4] == "U"{
                        cols1[6] = Color.green}

                    if guess_line_1[4] == "I"{
                        cols1[7] = Color.green}

                    if guess_line_1[4] == "O"{
                        cols1[8] = Color.green}
                
                    if guess_line_1[4] == "P"{
                        cols1[9] = Color.green}
                
                    
                    
                    
                    
                    if guess_line_1[4] == "A"{
                        cols2[0] = Color.green}
                    
                    if guess_line_1[4] == "S"{
                        cols2[1] = Color.green}
                
                    if guess_line_1[4] == "D"{
                        cols2[2] = Color.green}
            
                    if guess_line_1[4] == "F"{
                        cols2[3] = Color.green}
                    
                    if guess_line_1[4] == "G"{
                        cols2[4] = Color.green}
                
                    if guess_line_1[4] == "H"{
                        cols2[5] = Color.green}

                    if guess_line_1[4] == "J"{
                        cols2[6] = Color.green}

                    if guess_line_1[4] == "K"{
                        cols2[7] = Color.green}

                    if guess_line_1[4] == "L"{
                        cols2[8] = Color.green}
                
            
                    if guess_line_1[4] == "Z"{
                        cols3[0] = Color.green}
                
                    if guess_line_1[4] == "X"{
                        cols3[1] = Color.green}
            
                    if guess_line_1[4] == "C"{
                        cols3[2] = Color.green}
                    
                    if guess_line_1[4] == "V"{
                        cols3[3] = Color.green}
                
                    if guess_line_1[4] == "B"{
                        cols3[4] = Color.green}

                    if guess_line_1[4] == "N"{
                        cols3[5] = Color.green}

                    if guess_line_1[4] == "M"{
                        cols3[6] = Color.green}}
                
                if word.contains(guess_line_1[2].uppercased()) && one == false{
                    
                    if guess_line_1[2].uppercased() == String(word.prefix(upTo: index)) && pos1 == false{
                        pos1 = true
                        gl1c[2] = Color.green
                        if guess_line_1[2] == "Q"{
                            cols1[0] = Color.green}
                        
                        if guess_line_1[2] == "W"{
                            cols1[1] = Color.green}
                    
                        if guess_line_1[2] == "E"{
                            cols1[2] = Color.green}
                
                        if guess_line_1[2] == "R"{
                            cols1[3] = Color.green}
                        
                        if guess_line_1[2] == "T"{
                            cols1[4] = Color.green}
                    
                        if guess_line_1[2] == "Y"{
                            cols1[5] = Color.green}

                        if guess_line_1[2] == "U"{
                            cols1[6] = Color.green}

                        if guess_line_1[2] == "I"{
                            cols1[7] = Color.green}

                        if guess_line_1[2] == "O"{
                            cols1[8] = Color.green}
                    
                        if guess_line_1[2] == "P"{
                            cols1[9] = Color.green}
                    
                        
                        
                        
                        
                        if guess_line_1[2] == "A"{
                            cols2[0] = Color.green}
                        
                        if guess_line_1[2] == "S"{
                            cols2[1] = Color.green}
                    
                        if guess_line_1[2] == "D"{
                            cols2[2] = Color.green}
                
                        if guess_line_1[2] == "F"{
                            cols2[3] = Color.green}
                        
                        if guess_line_1[2] == "G"{
                            cols2[4] = Color.green}
                    
                        if guess_line_1[2] == "H"{
                            cols2[5] = Color.green}

                        if guess_line_1[2] == "J"{
                            cols2[6] = Color.green}

                        if guess_line_1[2] == "K"{
                            cols2[7] = Color.green}

                        if guess_line_1[2] == "L"{
                            cols2[8] = Color.green}
                    
                
                        if guess_line_1[2] == "Z"{
                            cols3[0] = Color.green}
                    
                        if guess_line_1[2] == "X"{
                            cols3[1] = Color.green}
                
                        if guess_line_1[2] == "C"{
                            cols3[2] = Color.green}
                        
                        if guess_line_1[2] == "V"{
                            cols3[3] = Color.green}
                    
                        if guess_line_1[2] == "B"{
                            cols3[4] = Color.green}

                        if guess_line_1[2] == "N"{
                            cols3[5] = Color.green}

                        if guess_line_1[2] == "M"{
                            cols3[6] = Color.green}}
                    else if guess_line_1[2].uppercased() == String(word[index2]) && pos2 == false{
                        pos2 = true
                        gl1c[2] = Color.yellow
                        index2 = word.index(word.startIndex, offsetBy: 1)
                        if guess_line_1[2] == "Q"{
                            cols1[0] = Color.yellow}
                        
                        if guess_line_1[2] == "W"{
                            cols1[1] = Color.yellow}
                    
                        if guess_line_1[2] == "E"{
                            cols1[2] = Color.yellow}
                
                        if guess_line_1[2] == "R"{
                            cols1[3] = Color.yellow}
                        
                        if guess_line_1[2] == "T"{
                            cols1[4] = Color.yellow}
                    
                        if guess_line_1[2] == "Y"{
                            cols1[5] = Color.yellow}

                        if guess_line_1[2] == "U"{
                            cols1[6] = Color.yellow}

                        if guess_line_1[2] == "I"{
                            cols1[7] = Color.yellow}

                        if guess_line_1[2] == "O"{
                            cols1[8] = Color.yellow}
                    
                        if guess_line_1[2] == "P"{
                            cols1[9] = Color.yellow}
                    
                        
                        
                        
                        
                        if guess_line_1[2] == "A"{
                            cols2[0] = Color.yellow}
                        
                        if guess_line_1[2] == "S"{
                            cols2[1] = Color.yellow}
                    
                        if guess_line_1[2] == "D"{
                            cols2[2] = Color.yellow}
                
                        if guess_line_1[2] == "F"{
                            cols2[3] = Color.yellow}
                        
                        if guess_line_1[2] == "G"{
                            cols2[4] = Color.yellow}
                    
                        if guess_line_1[2] == "H"{
                            cols2[5] = Color.yellow}

                        if guess_line_1[2] == "J"{
                            cols2[6] = Color.yellow}

                        if guess_line_1[2] == "K"{
                            cols2[7] = Color.yellow}

                        if guess_line_1[2] == "L"{
                            cols2[8] = Color.yellow}
                    
                
                        if guess_line_1[2] == "Z"{
                            cols3[0] = Color.yellow}
                    
                        if guess_line_1[2] == "X"{
                            cols3[1] = Color.yellow}
                
                        if guess_line_1[2] == "C"{
                            cols3[2] = Color.yellow}
                        
                        if guess_line_1[2] == "V"{
                            cols3[3] = Color.yellow}
                    
                        if guess_line_1[2] == "B"{
                            cols3[4] = Color.yellow}

                        if guess_line_1[2] == "N"{
                            cols3[5] = Color.yellow}

                        if guess_line_1[2] == "M"{
                            cols3[6] = Color.yellow}}
                    else if guess_line_1[2].uppercased() == String(word[index3]) && pos3 == false{
                        pos3 = true
                        gl1c[2] = Color.yellow
                        if guess_line_1[2] == "Q"{
                            cols1[0] = Color.yellow}
                        
                        if guess_line_1[2] == "W"{
                            cols1[1] = Color.yellow}
                    
                        if guess_line_1[2] == "E"{
                            cols1[2] = Color.yellow}
                
                        if guess_line_1[2] == "R"{
                            cols1[3] = Color.yellow}
                        
                        if guess_line_1[2] == "T"{
                            cols1[4] = Color.yellow}
                    
                        if guess_line_1[2] == "Y"{
                            cols1[5] = Color.yellow}

                        if guess_line_1[2] == "U"{
                            cols1[6] = Color.yellow}

                        if guess_line_1[2] == "I"{
                            cols1[7] = Color.yellow}

                        if guess_line_1[2] == "O"{
                            cols1[8] = Color.yellow}
                    
                        if guess_line_1[2] == "P"{
                            cols1[9] = Color.yellow}
                    
                        
                        
                        
                        
                        if guess_line_1[2] == "A"{
                            cols2[0] = Color.yellow}
                        
                        if guess_line_1[2] == "S"{
                            cols2[1] = Color.yellow}
                    
                        if guess_line_1[2] == "D"{
                            cols2[2] = Color.yellow}
                
                        if guess_line_1[2] == "F"{
                            cols2[3] = Color.yellow}
                        
                        if guess_line_1[2] == "G"{
                            cols2[4] = Color.yellow}
                    
                        if guess_line_1[2] == "H"{
                            cols2[5] = Color.yellow}

                        if guess_line_1[2] == "J"{
                            cols2[6] = Color.yellow}

                        if guess_line_1[2] == "K"{
                            cols2[7] = Color.yellow}

                        if guess_line_1[2] == "L"{
                            cols2[8] = Color.yellow}
                    
                
                        if guess_line_1[2] == "Z"{
                            cols3[0] = Color.yellow}
                    
                        if guess_line_1[2] == "X"{
                            cols3[1] = Color.yellow}
                
                        if guess_line_1[2] == "C"{
                            cols3[2] = Color.yellow}
                        
                        if guess_line_1[2] == "V"{
                            cols3[3] = Color.yellow}
                    
                        if guess_line_1[2] == "B"{
                            cols3[4] = Color.yellow}

                        if guess_line_1[2] == "N"{
                            cols3[5] = Color.yellow}

                        if guess_line_1[2] == "M"{
                            cols3[6] = Color.yellow}}}
                else{
                    if one == false{
                if guess_line_1[2] == "Q"{
                    cols1[0] = Color.gray}
                
                if guess_line_1[2] == "W"{
                    cols1[1] = Color.gray}
            
                if guess_line_1[2] == "E"{
                    cols1[2] = Color.gray}
        
                if guess_line_1[2] == "R"{
                    cols1[3] = Color.gray}
                
                if guess_line_1[2] == "T"{
                    cols1[4] = Color.gray}
            
                if guess_line_1[2] == "Y"{
                    cols1[5] = Color.gray}

                if guess_line_1[2] == "U"{
                    cols1[6] = Color.gray}

                if guess_line_1[2] == "I"{
                    cols1[7] = Color.gray}

                if guess_line_1[2] == "O"{
                    cols1[8] = Color.gray}
            
                if guess_line_1[2] == "P"{
                    cols1[9] = Color.gray}
            
                
                
                
                
                if guess_line_1[2] == "A"{
                    cols2[0] = Color.gray}
                
                if guess_line_1[2] == "S"{
                    cols2[1] = Color.gray}
            
                if guess_line_1[2] == "D"{
                    cols2[2] = Color.gray}
        
                if guess_line_1[2] == "F"{
                    cols2[3] = Color.gray}
                
                if guess_line_1[2] == "G"{
                    cols2[4] = Color.gray}
            
                if guess_line_1[2] == "H"{
                    cols2[5] = Color.gray}

                if guess_line_1[2] == "J"{
                    cols2[6] = Color.gray}

                if guess_line_1[2] == "K"{
                    cols2[7] = Color.gray}

                if guess_line_1[2] == "L"{
                    cols2[8] = Color.gray}
            
        
                if guess_line_1[2] == "Z"{
                    cols3[0] = Color.gray}
            
                if guess_line_1[2] == "X"{
                    cols3[1] = Color.gray}
        
                if guess_line_1[2] == "C"{
                    cols3[2] = Color.gray}
                
                if guess_line_1[2] == "V"{
                    cols3[3] = Color.gray}
            
                if guess_line_1[2] == "B"{
                    cols3[4] = Color.gray}

                if guess_line_1[2] == "N"{
                    cols3[5] = Color.gray}

                if guess_line_1[2] == "M"{
                    cols3[6] = Color.gray}}}
                
                
                
                if word.contains(guess_line_1[3].uppercased())  && two == false{
                    
                    if guess_line_1[3].uppercased() == String(word[index2]) && pos2 == false{
                        pos2 = true
                        gl1c[3] = Color.green
                        if guess_line_1[3] == "Q"{
                            cols1[0] = Color.green}
                        
                        if guess_line_1[3] == "W"{
                            cols1[1] = Color.green}
                    
                        if guess_line_1[3] == "E"{
                            cols1[2] = Color.green}
                
                        if guess_line_1[3] == "R"{
                            cols1[3] = Color.green}
                        
                        if guess_line_1[3] == "T"{
                            cols1[4] = Color.green}
                    
                        if guess_line_1[3] == "Y"{
                            cols1[5] = Color.green}

                        if guess_line_1[3] == "U"{
                            cols1[6] = Color.green}

                        if guess_line_1[3] == "I"{
                            cols1[7] = Color.green}

                        if guess_line_1[3] == "O"{
                            cols1[8] = Color.green}
                    
                        if guess_line_1[3] == "P"{
                            cols1[9] = Color.green}
                    
                        
                        
                        
                        
                        if guess_line_1[3] == "A"{
                            cols2[0] = Color.green}
                        
                        if guess_line_1[3] == "S"{
                            cols2[1] = Color.green}
                    
                        if guess_line_1[3] == "D"{
                            cols2[2] = Color.green}
                
                        if guess_line_1[3] == "F"{
                            cols2[3] = Color.green}
                        
                        if guess_line_1[3] == "G"{
                            cols2[4] = Color.green}
                    
                        if guess_line_1[3] == "H"{
                            cols2[5] = Color.green}

                        if guess_line_1[3] == "J"{
                            cols2[6] = Color.green}

                        if guess_line_1[3] == "K"{
                            cols2[7] = Color.green}

                        if guess_line_1[3] == "L"{
                            cols2[8] = Color.green}
                    
                
                        if guess_line_1[3] == "Z"{
                            cols3[0] = Color.green}
                    
                        if guess_line_1[3] == "X"{
                            cols3[1] = Color.green}
                
                        if guess_line_1[3] == "C"{
                            cols3[2] = Color.green}
                        
                        if guess_line_1[3] == "V"{
                            cols3[3] = Color.green}
                    
                        if guess_line_1[3] == "B"{
                            cols3[4] = Color.green}

                        if guess_line_1[3] == "N"{
                            cols3[5] = Color.green}

                        if guess_line_1[3] == "M"{
                            cols3[6] = Color.green}}
                    else if guess_line_1[3].uppercased() == String(word.prefix(upTo: index)) && pos1 == false{
                        pos1 = true
                        gl1c[3] = Color.yellow
                        if guess_line_1[3] == "Q"{
                            cols1[0] = Color.yellow}
                        
                        if guess_line_1[3] == "W"{
                            cols1[1] = Color.yellow}
                    
                        if guess_line_1[3] == "E"{
                            cols1[2] = Color.yellow}
                
                        if guess_line_1[3] == "R"{
                            cols1[3] = Color.yellow}
                        
                        if guess_line_1[3] == "T"{
                            cols1[4] = Color.yellow}
                    
                        if guess_line_1[3] == "Y"{
                            cols1[5] = Color.yellow}

                        if guess_line_1[3] == "U"{
                            cols1[6] = Color.yellow}

                        if guess_line_1[3] == "I"{
                            cols1[7] = Color.yellow}

                        if guess_line_1[3] == "O"{
                            cols1[8] = Color.yellow}
                    
                        if guess_line_1[3] == "P"{
                            cols1[9] = Color.yellow}
                    
                        
                        
                        
                        
                        if guess_line_1[3] == "A"{
                            cols2[0] = Color.yellow}
                        
                        if guess_line_1[3] == "S"{
                            cols2[1] = Color.yellow}
                    
                        if guess_line_1[3] == "D"{
                            cols2[2] = Color.yellow}
                
                        if guess_line_1[3] == "F"{
                            cols2[3] = Color.yellow}
                        
                        if guess_line_1[3] == "G"{
                            cols2[4] = Color.yellow}
                    
                        if guess_line_1[3] == "H"{
                            cols2[5] = Color.yellow}

                        if guess_line_1[3] == "J"{
                            cols2[6] = Color.yellow}

                        if guess_line_1[3] == "K"{
                            cols2[7] = Color.yellow}

                        if guess_line_1[3] == "L"{
                            cols2[8] = Color.yellow}
                    
                
                        if guess_line_1[3] == "Z"{
                            cols3[0] = Color.yellow}
                    
                        if guess_line_1[3] == "X"{
                            cols3[1] = Color.yellow}
                
                        if guess_line_1[3] == "C"{
                            cols3[2] = Color.yellow}
                        
                        if guess_line_1[3] == "V"{
                            cols3[3] = Color.yellow}
                    
                        if guess_line_1[3] == "B"{
                            cols3[4] = Color.yellow}

                        if guess_line_1[3] == "N"{
                            cols3[5] = Color.yellow}

                        if guess_line_1[3] == "M"{
                            cols3[6] = Color.yellow}}
                    else if guess_line_1[3].uppercased() == String(word[index3]) && pos3 == false{
                        pos3 = true
                        gl1c[3] = Color.yellow
                        if guess_line_1[3] == "Q"{
                            cols1[0] = Color.yellow}
                        
                        if guess_line_1[3] == "W"{
                            cols1[1] = Color.yellow}
                    
                        if guess_line_1[3] == "E"{
                            cols1[2] = Color.yellow}
                
                        if guess_line_1[3] == "R"{
                            cols1[3] = Color.yellow}
                        
                        if guess_line_1[3] == "T"{
                            cols1[4] = Color.yellow}
                    
                        if guess_line_1[3] == "Y"{
                            cols1[5] = Color.yellow}

                        if guess_line_1[3] == "U"{
                            cols1[6] = Color.yellow}

                        if guess_line_1[3] == "I"{
                            cols1[7] = Color.yellow}

                        if guess_line_1[3] == "O"{
                            cols1[8] = Color.yellow}
                    
                        if guess_line_1[3] == "P"{
                            cols1[9] = Color.yellow}
                    
                        
                        
                        
                        
                        if guess_line_1[3] == "A"{
                            cols2[0] = Color.yellow}
                        
                        if guess_line_1[3] == "S"{
                            cols2[1] = Color.yellow}
                    
                        if guess_line_1[3] == "D"{
                            cols2[2] = Color.yellow}
                
                        if guess_line_1[3] == "F"{
                            cols2[3] = Color.yellow}
                        
                        if guess_line_1[3] == "G"{
                            cols2[4] = Color.yellow}
                    
                        if guess_line_1[3] == "H"{
                            cols2[5] = Color.yellow}

                        if guess_line_1[3] == "J"{
                            cols2[6] = Color.yellow}

                        if guess_line_1[3] == "K"{
                            cols2[7] = Color.yellow}

                        if guess_line_1[3] == "L"{
                            cols2[8] = Color.yellow}
                    
                
                        if guess_line_1[3] == "Z"{
                            cols3[0] = Color.yellow}
                    
                        if guess_line_1[3] == "X"{
                            cols3[1] = Color.yellow}
                
                        if guess_line_1[3] == "C"{
                            cols3[2] = Color.yellow}
                        
                        if guess_line_1[3] == "V"{
                            cols3[3] = Color.yellow}
                    
                        if guess_line_1[3] == "B"{
                            cols3[4] = Color.yellow}

                        if guess_line_1[3] == "N"{
                            cols3[5] = Color.yellow}

                        if guess_line_1[3] == "M"{
                            cols3[6] = Color.yellow}}}
                else{
                    if two == false{
                if guess_line_1[3] == "Q"{
                    cols1[0] = Color.gray}
                
                if guess_line_1[3] == "W"{
                    cols1[1] = Color.gray}
            
                if guess_line_1[3] == "E"{
                    cols1[2] = Color.gray}
        
                if guess_line_1[3] == "R"{
                    cols1[3] = Color.gray}
                
                if guess_line_1[3] == "T"{
                    cols1[4] = Color.gray}
            
                if guess_line_1[3] == "Y"{
                    cols1[5] = Color.gray}

                if guess_line_1[3] == "U"{
                    cols1[6] = Color.gray}

                if guess_line_1[3] == "I"{
                    cols1[7] = Color.gray}

                if guess_line_1[3] == "O"{
                    cols1[8] = Color.gray}
            
                if guess_line_1[3] == "P"{
                    cols1[9] = Color.gray}
            
                
                
                
                
                if guess_line_1[3] == "A"{
                    cols2[0] = Color.gray}
                
                if guess_line_1[3] == "S"{
                    cols2[1] = Color.gray}
            
                if guess_line_1[3] == "D"{
                    cols2[2] = Color.gray}
        
                if guess_line_1[3] == "F"{
                    cols2[3] = Color.gray}
                
                if guess_line_1[3] == "G"{
                    cols2[4] = Color.gray}
            
                if guess_line_1[3] == "H"{
                    cols2[5] = Color.gray}

                if guess_line_1[3] == "J"{
                    cols2[6] = Color.gray}

                if guess_line_1[3] == "K"{
                    cols2[7] = Color.gray}

                if guess_line_1[3] == "L"{
                    cols2[8] = Color.gray}
            
        
                if guess_line_1[3] == "Z"{
                    cols3[0] = Color.gray}
            
                if guess_line_1[3] == "X"{
                    cols3[1] = Color.gray}
        
                if guess_line_1[3] == "C"{
                    cols3[2] = Color.gray}
                
                if guess_line_1[3] == "V"{
                    cols3[3] = Color.gray}
            
                if guess_line_1[3] == "B"{
                    cols3[4] = Color.gray}

                if guess_line_1[3] == "N"{
                    cols3[5] = Color.gray}

                if guess_line_1[3] == "M"{
                    cols3[6] = Color.gray}}}
                
            
                if word.contains(guess_line_1[4].uppercased()) && three == false{
                   
                    if guess_line_1[4].uppercased() == String(word[index3]) && pos3 == false{
                        pos3 = true
                        gl1c[4] = Color.green
                        if guess_line_1[4] == "Q"{
                            cols1[0] = Color.green}
                        
                        if guess_line_1[4] == "W"{
                            cols1[1] = Color.green}
                    
                        if guess_line_1[4] == "E"{
                            cols1[2] = Color.green}
                
                        if guess_line_1[4] == "R"{
                            cols1[3] = Color.green}
                        
                        if guess_line_1[4] == "T"{
                            cols1[4] = Color.green}
                    
                        if guess_line_1[4] == "Y"{
                            cols1[5] = Color.green}

                        if guess_line_1[4] == "U"{
                            cols1[6] = Color.green}

                        if guess_line_1[4] == "I"{
                            cols1[7] = Color.green}

                        if guess_line_1[4] == "O"{
                            cols1[8] = Color.green}
                    
                        if guess_line_1[4] == "P"{
                            cols1[9] = Color.green}
                    
                        
                        
                        
                        
                        if guess_line_1[4] == "A"{
                            cols2[0] = Color.green}
                        
                        if guess_line_1[4] == "S"{
                            cols2[1] = Color.green}
                    
                        if guess_line_1[4] == "D"{
                            cols2[2] = Color.green}
                
                        if guess_line_1[4] == "F"{
                            cols2[3] = Color.green}
                        
                        if guess_line_1[4] == "G"{
                            cols2[4] = Color.green}
                    
                        if guess_line_1[4] == "H"{
                            cols2[5] = Color.green}

                        if guess_line_1[4] == "J"{
                            cols2[6] = Color.green}

                        if guess_line_1[4] == "K"{
                            cols2[7] = Color.green}

                        if guess_line_1[4] == "L"{
                            cols2[8] = Color.green}
                    
                
                        if guess_line_1[4] == "Z"{
                            cols3[0] = Color.green}
                    
                        if guess_line_1[4] == "X"{
                            cols3[1] = Color.green}
                
                        if guess_line_1[4] == "C"{
                            cols3[2] = Color.green}
                        
                        if guess_line_1[4] == "V"{
                            cols3[3] = Color.green}
                    
                        if guess_line_1[4] == "B"{
                            cols3[4] = Color.green}

                        if guess_line_1[4] == "N"{
                            cols3[5] = Color.green}

                        if guess_line_1[4] == "M"{
                            cols3[6] = Color.green}}
                    else if guess_line_1[4].uppercased() == String(word.prefix(upTo: index)) && pos1 == false{
                        pos1 = true
                        gl1c[4] = Color.yellow
                        if guess_line_1[4] == "Q"{
                            cols1[0] = Color.yellow}
                        
                        if guess_line_1[4] == "W"{
                            cols1[1] = Color.yellow}
                    
                        if guess_line_1[4] == "E"{
                            cols1[2] = Color.yellow}
                
                        if guess_line_1[4] == "R"{
                            cols1[3] = Color.yellow}
                        
                        if guess_line_1[4] == "T"{
                            cols1[4] = Color.yellow}
                    
                        if guess_line_1[4] == "Y"{
                            cols1[5] = Color.yellow}

                        if guess_line_1[4] == "U"{
                            cols1[6] = Color.yellow}

                        if guess_line_1[4] == "I"{
                            cols1[7] = Color.yellow}

                        if guess_line_1[4] == "O"{
                            cols1[8] = Color.yellow}
                    
                        if guess_line_1[4] == "P"{
                            cols1[9] = Color.yellow}
                    
                        
                        
                        
                        
                        if guess_line_1[4] == "A"{
                            cols2[0] = Color.yellow}
                        
                        if guess_line_1[4] == "S"{
                            cols2[1] = Color.yellow}
                    
                        if guess_line_1[4] == "D"{
                            cols2[2] = Color.yellow}
                
                        if guess_line_1[4] == "F"{
                            cols2[3] = Color.yellow}
                        
                        if guess_line_1[4] == "G"{
                            cols2[4] = Color.yellow}
                    
                        if guess_line_1[4] == "H"{
                            cols2[5] = Color.yellow}

                        if guess_line_1[4] == "J"{
                            cols2[6] = Color.yellow}

                        if guess_line_1[4] == "K"{
                            cols2[7] = Color.yellow}

                        if guess_line_1[4] == "L"{
                            cols2[8] = Color.yellow}
                    
                
                        if guess_line_1[4] == "Z"{
                            cols3[0] = Color.yellow}
                    
                        if guess_line_1[4] == "X"{
                            cols3[1] = Color.yellow}
                
                        if guess_line_1[4] == "C"{
                            cols3[2] = Color.yellow}
                        
                        if guess_line_1[4] == "V"{
                            cols3[3] = Color.yellow}
                    
                        if guess_line_1[4] == "B"{
                            cols3[4] = Color.yellow}

                        if guess_line_1[4] == "N"{
                            cols3[5] = Color.yellow}

                        if guess_line_1[4] == "M"{
                            cols3[6] = Color.yellow}}
                    else if guess_line_1[4].uppercased() == String(word[index2]) && pos2 == false{
                        pos2 = true
                        gl1c[4] = Color.yellow
                        if guess_line_1[4] == "Q"{
                            cols1[0] = Color.yellow}
                        
                        if guess_line_1[4] == "W"{
                            cols1[1] = Color.yellow}
                    
                        if guess_line_1[4] == "E"{
                            cols1[2] = Color.yellow}
                
                        if guess_line_1[4] == "R"{
                            cols1[3] = Color.yellow}
                        
                        if guess_line_1[4] == "T"{
                            cols1[4] = Color.yellow}
                    
                        if guess_line_1[4] == "Y"{
                            cols1[5] = Color.yellow}

                        if guess_line_1[4] == "U"{
                            cols1[6] = Color.yellow}

                        if guess_line_1[4] == "I"{
                            cols1[7] = Color.yellow}

                        if guess_line_1[4] == "O"{
                            cols1[8] = Color.yellow}
                    
                        if guess_line_1[4] == "P"{
                            cols1[9] = Color.yellow}
                    
                        
                        
                        
                        
                        if guess_line_1[4] == "A"{
                            cols2[0] = Color.yellow}
                        
                        if guess_line_1[4] == "S"{
                            cols2[1] = Color.yellow}
                    
                        if guess_line_1[4] == "D"{
                            cols2[2] = Color.yellow}
                
                        if guess_line_1[4] == "F"{
                            cols2[3] = Color.yellow}
                        
                        if guess_line_1[4] == "G"{
                            cols2[4] = Color.yellow}
                    
                        if guess_line_1[4] == "H"{
                            cols2[5] = Color.yellow}

                        if guess_line_1[4] == "J"{
                            cols2[6] = Color.yellow}

                        if guess_line_1[4] == "K"{
                            cols2[7] = Color.yellow}

                        if guess_line_1[4] == "L"{
                            cols2[8] = Color.yellow}
                    
                
                        if guess_line_1[4] == "Z"{
                            cols3[0] = Color.yellow}
                    
                        if guess_line_1[4] == "X"{
                            cols3[1] = Color.yellow}
                
                        if guess_line_1[4] == "C"{
                            cols3[2] = Color.yellow}
                        
                        if guess_line_1[4] == "V"{
                            cols3[3] = Color.yellow}
                    
                        if guess_line_1[4] == "B"{
                            cols3[4] = Color.yellow}

                        if guess_line_1[4] == "N"{
                            cols3[5] = Color.yellow}

                        if guess_line_1[4] == "M"{
                            cols3[6] = Color.yellow}}}
                else{
                    if three == false{
                if guess_line_1[4] == "Q"{
                    cols1[0] = Color.gray}
                
                if guess_line_1[4] == "W"{
                    cols1[1] = Color.gray}
            
                if guess_line_1[4] == "E"{
                    cols1[2] = Color.gray}
        
                if guess_line_1[4] == "R"{
                    cols1[3] = Color.gray}
                
                if guess_line_1[4] == "T"{
                    cols1[4] = Color.gray}
            
                if guess_line_1[4] == "Y"{
                    cols1[5] = Color.gray}

                if guess_line_1[4] == "U"{
                    cols1[6] = Color.gray}

                if guess_line_1[4] == "I"{
                    cols1[7] = Color.gray}

                if guess_line_1[4] == "O"{
                    cols1[8] = Color.gray}
            
                if guess_line_1[4] == "P"{
                    cols1[9] = Color.gray}
            
                
                
                
                
                if guess_line_1[4] == "A"{
                    cols2[0] = Color.gray}
                
                if guess_line_1[4] == "S"{
                    cols2[1] = Color.gray}
            
                if guess_line_1[4] == "D"{
                    cols2[2] = Color.gray}
        
                if guess_line_1[4] == "F"{
                    cols2[3] = Color.gray}
                
                if guess_line_1[4] == "G"{
                    cols2[4] = Color.gray}
            
                if guess_line_1[4] == "H"{
                    cols2[5] = Color.gray}

                if guess_line_1[4] == "J"{
                    cols2[6] = Color.gray}

                if guess_line_1[4] == "K"{
                    cols2[7] = Color.gray}

                if guess_line_1[4] == "L"{
                    cols2[8] = Color.gray}
            
        
                if guess_line_1[4] == "Z"{
                    cols3[0] = Color.gray}
            
                if guess_line_1[4] == "X"{
                    cols3[1] = Color.gray}
        
                if guess_line_1[4] == "C"{
                    cols3[2] = Color.gray}
                
                if guess_line_1[4] == "V"{
                    cols3[3] = Color.gray}
            
                if guess_line_1[4] == "B"{
                    cols3[4] = Color.gray}

                if guess_line_1[4] == "N"{
                    cols3[5] = Color.gray}

                if guess_line_1[4] == "M"{
                    cols3[6] = Color.gray}}}
                
                
                if gl1c[2] == Color.white{
                    gl1c[2] = Color.gray
                }
                
                if gl1c[3] == Color.white{
                    
                    gl1c[3] = Color.gray
                }
                
                if gl1c[4] == Color.white{
                    gl1c[4] = Color.gray
                }
                
                
            }
            
            if Try == 2{
                if guess_line_2[2].uppercased() == String(word.prefix(upTo: index)){
                    one = true
                    pos1 = true
                    gl2c[2] = Color.green
                    if guess_line_2[2] == "Q"{
                        cols1[0] = Color.green}
                    
                    if guess_line_2[2] == "W"{
                        cols1[1] = Color.green}
                
                    if guess_line_2[2] == "E"{
                        cols1[2] = Color.green}
            
                    if guess_line_2[2] == "R"{
                        cols1[3] = Color.green}
                    
                    if guess_line_2[2] == "T"{
                        cols1[4] = Color.green}
                
                    if guess_line_2[2] == "Y"{
                        cols1[5] = Color.green}

                    if guess_line_2[2] == "U"{
                        cols1[6] = Color.green}

                    if guess_line_2[2] == "I"{
                        cols1[7] = Color.green}

                    if guess_line_2[2] == "O"{
                        cols1[8] = Color.green}
                
                    if guess_line_2[2] == "P"{
                        cols1[9] = Color.green}
                
                    
                    
                    
                    
                    if guess_line_2[2] == "A"{
                        cols2[0] = Color.green}
                    
                    if guess_line_2[2] == "S"{
                        cols2[1] = Color.green}
                
                    if guess_line_2[2] == "D"{
                        cols2[2] = Color.green}
            
                    if guess_line_2[2] == "F"{
                        cols2[3] = Color.green}
                    
                    if guess_line_2[2] == "G"{
                        cols2[4] = Color.green}
                
                    if guess_line_2[2] == "H"{
                        cols2[5] = Color.green}

                    if guess_line_2[2] == "J"{
                        cols2[6] = Color.green}

                    if guess_line_2[2] == "K"{
                        cols2[7] = Color.green}

                    if guess_line_2[2] == "L"{
                        cols2[8] = Color.green}
                
            
                    if guess_line_2[2] == "Z"{
                        cols3[0] = Color.green}
                
                    if guess_line_2[2] == "X"{
                        cols3[1] = Color.green}
            
                    if guess_line_2[2] == "C"{
                        cols3[2] = Color.green}
                    
                    if guess_line_2[2] == "V"{
                        cols3[3] = Color.green}
                
                    if guess_line_2[2] == "B"{
                        cols3[4] = Color.green}

                    if guess_line_2[2] == "N"{
                        cols3[5] = Color.green}

                    if guess_line_2[2] == "M"{
                        cols3[6] = Color.green}}
                if guess_line_2[3].uppercased() == String(word[index2]){
                    two = true
                    pos2 = true
                    gl2c[3] = Color.green
                    if guess_line_2[3] == "Q"{
                        cols1[0] = Color.green}
                    
                    if guess_line_2[3] == "W"{
                        cols1[1] = Color.green}
                
                    if guess_line_2[3] == "E"{
                        cols1[2] = Color.green}
            
                    if guess_line_2[3] == "R"{
                        cols1[3] = Color.green}
                    
                    if guess_line_2[3] == "T"{
                        cols1[4] = Color.green}
                
                    if guess_line_2[3] == "Y"{
                        cols1[5] = Color.green}

                    if guess_line_2[3] == "U"{
                        cols1[6] = Color.green}

                    if guess_line_2[3] == "I"{
                        cols1[7] = Color.green}

                    if guess_line_2[3] == "O"{
                        cols1[8] = Color.green}
                
                    if guess_line_2[3] == "P"{
                        cols1[9] = Color.green}
                
                    
                    
                    
                    
                    if guess_line_2[3] == "A"{
                        cols2[0] = Color.green}
                    
                    if guess_line_2[3] == "S"{
                        cols2[1] = Color.green}
                
                    if guess_line_2[3] == "D"{
                        cols2[2] = Color.green}
            
                    if guess_line_2[3] == "F"{
                        cols2[3] = Color.green}
                    
                    if guess_line_2[3] == "G"{
                        cols2[4] = Color.green}
                
                    if guess_line_2[3] == "H"{
                        cols2[5] = Color.green}

                    if guess_line_2[3] == "J"{
                        cols2[6] = Color.green}

                    if guess_line_2[3] == "K"{
                        cols2[7] = Color.green}

                    if guess_line_2[3] == "L"{
                        cols2[8] = Color.green}
                
            
                    if guess_line_2[3] == "Z"{
                        cols3[0] = Color.green}
                
                    if guess_line_2[3] == "X"{
                        cols3[1] = Color.green}
            
                    if guess_line_2[3] == "C"{
                        cols3[2] = Color.green}
                    
                    if guess_line_2[3] == "V"{
                        cols3[3] = Color.green}
                
                    if guess_line_2[3] == "B"{
                        cols3[4] = Color.green}

                    if guess_line_2[3] == "N"{
                        cols3[5] = Color.green}

                    if guess_line_2[3] == "M"{
                        cols3[6] = Color.green}}
                if guess_line_2[4].uppercased() == String(word[index3]){
                    three = true
                    pos3 = true
                    gl2c[4] = Color.green
                    if guess_line_2[4] == "Q"{
                        cols1[0] = Color.green}
                    
                    if guess_line_2[4] == "W"{
                        cols1[1] = Color.green}
                
                    if guess_line_2[4] == "E"{
                        cols1[2] = Color.green}
            
                    if guess_line_2[4] == "R"{
                        cols1[3] = Color.green}
                    
                    if guess_line_2[4] == "T"{
                        cols1[4] = Color.green}
                
                    if guess_line_2[4] == "Y"{
                        cols1[5] = Color.green}

                    if guess_line_2[4] == "U"{
                        cols1[6] = Color.green}

                    if guess_line_2[4] == "I"{
                        cols1[7] = Color.green}

                    if guess_line_2[4] == "O"{
                        cols1[8] = Color.green}
                
                    if guess_line_2[4] == "P"{
                        cols1[9] = Color.green}
                
                    
                    
                    
                    
                    if guess_line_2[4] == "A"{
                        cols2[0] = Color.green}
                    
                    if guess_line_2[4] == "S"{
                        cols2[1] = Color.green}
                
                    if guess_line_2[4] == "D"{
                        cols2[2] = Color.green}
            
                    if guess_line_2[4] == "F"{
                        cols2[3] = Color.green}
                    
                    if guess_line_2[4] == "G"{
                        cols2[4] = Color.green}
                
                    if guess_line_2[4] == "H"{
                        cols2[5] = Color.green}

                    if guess_line_2[4] == "J"{
                        cols2[6] = Color.green}

                    if guess_line_2[4] == "K"{
                        cols2[7] = Color.green}

                    if guess_line_2[4] == "L"{
                        cols2[8] = Color.green}
                
            
                    if guess_line_2[4] == "Z"{
                        cols3[0] = Color.green}
                
                    if guess_line_2[4] == "X"{
                        cols3[1] = Color.green}
            
                    if guess_line_2[4] == "C"{
                        cols3[2] = Color.green}
                    
                    if guess_line_2[4] == "V"{
                        cols3[3] = Color.green}
                
                    if guess_line_2[4] == "B"{
                        cols3[4] = Color.green}

                    if guess_line_2[4] == "N"{
                        cols3[5] = Color.green}

                    if guess_line_2[4] == "M"{
                        cols3[6] = Color.green}}
                
                if one == false{
                if word.contains(guess_line_2[2].uppercased()){
                    
                    if guess_line_2[2].uppercased() == String(word.prefix(upTo: index)) && pos1 == false{
                        pos1 = true
                        gl2c[2] = Color.green
                        if guess_line_2[2] == "Q"{
                            cols1[0] = Color.green}
                        
                        if guess_line_2[2] == "W"{
                            cols1[1] = Color.green}
                    
                        if guess_line_2[2] == "E"{
                            cols1[2] = Color.green}
                
                        if guess_line_2[2] == "R"{
                            cols1[3] = Color.green}
                        
                        if guess_line_2[2] == "T"{
                            cols1[4] = Color.green}
                    
                        if guess_line_2[2] == "Y"{
                            cols1[5] = Color.green}

                        if guess_line_2[2] == "U"{
                            cols1[6] = Color.green}

                        if guess_line_2[2] == "I"{
                            cols1[7] = Color.green}

                        if guess_line_2[2] == "O"{
                            cols1[8] = Color.green}
                    
                        if guess_line_2[2] == "P"{
                            cols1[9] = Color.green}
                    
                        
                        
                        
                        
                        if guess_line_2[2] == "A"{
                            cols2[0] = Color.green}
                        
                        if guess_line_2[2] == "S"{
                            cols2[1] = Color.green}
                    
                        if guess_line_2[2] == "D"{
                            cols2[2] = Color.green}
                
                        if guess_line_2[2] == "F"{
                            cols2[3] = Color.green}
                        
                        if guess_line_2[2] == "G"{
                            cols2[4] = Color.green}
                    
                        if guess_line_2[2] == "H"{
                            cols2[5] = Color.green}

                        if guess_line_2[2] == "J"{
                            cols2[6] = Color.green}

                        if guess_line_2[2] == "K"{
                            cols2[7] = Color.green}

                        if guess_line_2[2] == "L"{
                            cols2[8] = Color.green}
                    
                
                        if guess_line_2[2] == "Z"{
                            cols3[0] = Color.green}
                    
                        if guess_line_2[2] == "X"{
                            cols3[1] = Color.green}
                
                        if guess_line_2[2] == "C"{
                            cols3[2] = Color.green}
                        
                        if guess_line_2[2] == "V"{
                            cols3[3] = Color.green}
                    
                        if guess_line_2[2] == "B"{
                            cols3[4] = Color.green}

                        if guess_line_2[2] == "N"{
                            cols3[5] = Color.green}

                        if guess_line_2[2] == "M"{
                            cols3[6] = Color.green}}
                    else if guess_line_2[2].uppercased() == String(word[index2]) && pos2 == false{
                        pos2 = true
                        gl2c[2] = Color.yellow
                        if guess_line_2[2] == "Q" && cols1[0] != Color.green{
                            cols1[0] = Color.yellow}
                        
                        if guess_line_2[2] == "W" && cols1[1] != Color.green{
                            cols1[1] = Color.yellow}
                    
                        if guess_line_2[2] == "E" && cols1[2] != Color.green{
                            cols1[2] = Color.yellow}
                
                        if guess_line_2[2] == "R" && cols1[3] != Color.green{
                            cols1[3] = Color.yellow}
                        
                        if guess_line_2[2] == "T" && cols1[4] != Color.green{
                            cols1[4] = Color.yellow}
                    
                        if guess_line_2[2] == "Y" && cols1[5] != Color.green{
                            cols1[5] = Color.yellow}

                        if guess_line_2[2] == "U" && cols1[6] != Color.green{
                            cols1[6] = Color.yellow}

                        if guess_line_2[2] == "I" && cols1[7] != Color.green{
                            cols1[7] = Color.yellow}

                        if guess_line_2[2] == "O" && cols1[8] != Color.green{
                            cols1[8] = Color.yellow}
                    
                        if guess_line_2[2] == "P" && cols1[9] != Color.green{
                            cols1[9] = Color.yellow}
                    
                        
                        
                        
                        
                        if guess_line_2[2] == "A"  && cols2[0] != Color.green{
                            cols2[0] = Color.yellow}
                        
                        if guess_line_2[2] == "S" && cols2[1] != Color.green{
                            cols2[1] = Color.yellow}
                    
                        if guess_line_2[2] == "D" && cols2[2] != Color.green{
                            cols2[2] = Color.yellow}
                
                        if guess_line_2[2] == "F" && cols2[3] != Color.green{
                            cols2[3] = Color.yellow}
                        
                        if guess_line_2[2] == "G" && cols2[4] != Color.green{
                            cols2[4] = Color.yellow}
                    
                        if guess_line_2[2] == "H" && cols2[5] != Color.green{
                            cols2[5] = Color.yellow}

                        if guess_line_2[2] == "J" && cols2[6] != Color.green{
                            cols2[6] = Color.yellow}

                        if guess_line_2[2] == "K" && cols2[7] != Color.green{
                            cols2[7] = Color.yellow}

                        if guess_line_2[2] == "L" && cols2[8] != Color.green{
                            cols2[8] = Color.yellow}
                    
                
                        if guess_line_2[2] == "Z" && cols3[0] != Color.green{
                            cols3[0] = Color.yellow}
                    
                        if guess_line_2[2] == "X" && cols3[1] != Color.green{
                            cols3[1] = Color.yellow}
                
                        if guess_line_2[2] == "C" && cols3[2] != Color.green{
                            cols3[2] = Color.yellow}
                        
                        if guess_line_2[2] == "V" && cols3[3] != Color.green{
                            cols3[3] = Color.yellow}
                    
                        if guess_line_2[2] == "B" && cols3[4] != Color.green{
                            cols3[4] = Color.yellow}

                        if guess_line_2[2] == "N" && cols3[5] != Color.green{
                            cols3[5] = Color.yellow}

                        if guess_line_2[2] == "M" && cols3[6] != Color.green{
                            cols3[6] = Color.yellow}}
                    else if guess_line_2[2].uppercased() == String(word[index3]) && pos3 == false{
                        pos3 = true
                        gl2c[2] = Color.yellow
                        if guess_line_2[2] == "Q" && cols1[0] != Color.green{
                            cols1[0] = Color.yellow}
                        
                        if guess_line_2[2] == "W" && cols1[1] != Color.green{
                            cols1[1] = Color.yellow}
                    
                        if guess_line_2[2] == "E" && cols1[2] != Color.green{
                            cols1[2] = Color.yellow}
                
                        if guess_line_2[2] == "R" && cols1[3] != Color.green{
                            cols1[3] = Color.yellow}
                        
                        if guess_line_2[2] == "T" && cols1[4] != Color.green{
                            cols1[4] = Color.yellow}
                    
                        if guess_line_2[2] == "Y" && cols1[5] != Color.green{
                            cols1[5] = Color.yellow}

                        if guess_line_2[2] == "U" && cols1[6] != Color.green{
                            cols1[6] = Color.yellow}

                        if guess_line_2[2] == "I" && cols1[7] != Color.green{
                            cols1[7] = Color.yellow}

                        if guess_line_2[2] == "O" && cols1[8] != Color.green{
                            cols1[8] = Color.yellow}
                    
                        if guess_line_2[2] == "P" && cols1[9] != Color.green{
                            cols1[9] = Color.yellow}
                    
                        
                        
                        
                        
                        if guess_line_2[2] == "A"  && cols2[0] != Color.green{
                            cols2[0] = Color.yellow}
                        
                        if guess_line_2[2] == "S"  && cols2[1] != Color.green{
                            cols2[1] = Color.yellow}
                    
                        if guess_line_2[2] == "D"  && cols2[2] != Color.green{
                            cols2[2] = Color.yellow}
                
                        if guess_line_2[2] == "F" && cols2[3] != Color.green{
                            cols2[3] = Color.yellow}
                        
                        if guess_line_2[2] == "G" && cols2[4] != Color.green{
                            cols2[4] = Color.yellow}
                    
                        if guess_line_2[2] == "H" && cols2[5] != Color.green{
                            cols2[5] = Color.yellow}

                        if guess_line_2[2] == "J" && cols2[6] != Color.green{
                            cols2[6] = Color.yellow}

                        if guess_line_2[2] == "K" && cols2[7] != Color.green{
                            cols2[7] = Color.yellow}

                        if guess_line_2[2] == "L" && cols2[8] != Color.green{
                            cols2[8] = Color.yellow}
                    
                
                        if guess_line_2[2] == "Z" && cols3[0] != Color.green{
                            cols3[0] = Color.yellow}
                    
                        if guess_line_2[2] == "X" && cols3[1] != Color.green{
                            cols3[1] = Color.yellow}
                
                        if guess_line_2[2] == "C" && cols3[2] != Color.green{
                            cols3[2] = Color.yellow}
                        
                        if guess_line_2[2] == "V" && cols3[3] != Color.green{
                            cols3[3] = Color.yellow}
                    
                        if guess_line_2[2] == "B" && cols3[4] != Color.green{
                            cols3[4] = Color.yellow}

                        if guess_line_2[2] == "N" && cols3[5] != Color.green{
                            cols3[5] = Color.yellow}

                        if guess_line_2[2] == "M" && cols3[6] != Color.green{
                            cols3[6] = Color.yellow}}}
                else{
                if guess_line_2[2] == "Q"{
                    cols1[0] = Color.gray}
                
                if guess_line_2[2] == "W"{
                    cols1[1] = Color.gray}
            
                if guess_line_2[2] == "E"{
                    cols1[2] = Color.gray}
        
                if guess_line_2[2] == "R"{
                    cols1[3] = Color.gray}
                
                if guess_line_2[2] == "T"{
                    cols1[4] = Color.gray}
            
                if guess_line_2[2] == "Y"{
                    cols1[5] = Color.gray}

                if guess_line_2[2] == "U"{
                    cols1[6] = Color.gray}

                if guess_line_2[2] == "I"{
                    cols1[7] = Color.gray}

                if guess_line_2[2] == "O"{
                    cols1[8] = Color.gray}
            
                if guess_line_2[2] == "P"{
                    cols1[9] = Color.gray}
            
                
                
                
                
                if guess_line_2[2] == "A"{
                    cols2[0] = Color.gray}
                
                if guess_line_2[2] == "S"{
                    cols2[1] = Color.gray}
            
                if guess_line_2[2] == "D"{
                    cols2[2] = Color.gray}
        
                if guess_line_2[2] == "F"{
                    cols2[3] = Color.gray}
                
                if guess_line_2[2] == "G"{
                    cols2[4] = Color.gray}
            
                if guess_line_2[2] == "H"{
                    cols2[5] = Color.gray}

                if guess_line_2[2] == "J"{
                    cols2[6] = Color.gray}

                if guess_line_2[2] == "K"{
                    cols2[7] = Color.gray}

                if guess_line_2[2] == "L"{
                    cols2[8] = Color.gray}
            
        
                if guess_line_2[2] == "Z"{
                    cols3[0] = Color.gray}
            
                if guess_line_2[2] == "X"{
                    cols3[1] = Color.gray}
        
                if guess_line_2[2] == "C"{
                    cols3[2] = Color.gray}
                
                if guess_line_2[2] == "V"{
                    cols3[3] = Color.gray}
            
                if guess_line_2[2] == "B"{
                    cols3[4] = Color.gray}

                if guess_line_2[2] == "N"{
                    cols3[5] = Color.gray}

                if guess_line_2[2] == "M"{
                    cols3[6] = Color.gray}}}
                
                
                if two == false{
                if word.contains(guess_line_2[3].uppercased()){
                    if guess_line_2[3].uppercased() == String(word[index2]) && pos2 == false{
                        pos2 = true
                        gl2c[3] = Color.green
                        if guess_line_2[3] == "Q"{
                            cols1[0] = Color.green}
                        
                        if guess_line_2[3] == "W"{
                            cols1[1] = Color.green}
                    
                        if guess_line_2[3] == "E"{
                            cols1[2] = Color.green}
                
                        if guess_line_2[3] == "R"{
                            cols1[3] = Color.green}
                        
                        if guess_line_2[3] == "T"{
                            cols1[4] = Color.green}
                    
                        if guess_line_2[3] == "Y"{
                            cols1[5] = Color.green}

                        if guess_line_2[3] == "U"{
                            cols1[6] = Color.green}

                        if guess_line_2[3] == "I"{
                            cols1[7] = Color.green}

                        if guess_line_2[3] == "O"{
                            cols1[8] = Color.green}
                    
                        if guess_line_2[3] == "P"{
                            cols1[9] = Color.green}
                    
                        
                        
                        
                        
                        if guess_line_2[3] == "A"{
                            cols2[0] = Color.green}
                        
                        if guess_line_2[3] == "S"{
                            cols2[1] = Color.green}
                    
                        if guess_line_2[3] == "D"{
                            cols2[2] = Color.green}
                
                        if guess_line_2[3] == "F"{
                            cols2[3] = Color.green}
                        
                        if guess_line_2[3] == "G"{
                            cols2[4] = Color.green}
                    
                        if guess_line_2[3] == "H"{
                            cols2[5] = Color.green}

                        if guess_line_2[3] == "J"{
                            cols2[6] = Color.green}

                        if guess_line_2[3] == "K"{
                            cols2[7] = Color.green}

                        if guess_line_2[3] == "L"{
                            cols2[8] = Color.green}
                    
                
                        if guess_line_2[3] == "Z"{
                            cols3[0] = Color.green}
                    
                        if guess_line_2[3] == "X"{
                            cols3[1] = Color.green}
                
                        if guess_line_2[3] == "C"{
                            cols3[2] = Color.green}
                        
                        if guess_line_2[3] == "V"{
                            cols3[3] = Color.green}
                    
                        if guess_line_2[3] == "B"{
                            cols3[4] = Color.green}

                        if guess_line_2[3] == "N"{
                            cols3[5] = Color.green}

                        if guess_line_2[3] == "M"{
                            cols3[6] = Color.green}}
                    else if guess_line_2[3].uppercased() == String(word.prefix(upTo: index)) && pos1 == false{
                        pos1 = true
                        gl2c[3] = Color.yellow
                        if guess_line_2[3] == "Q" && cols1[0] != Color.green{
                            cols1[0] = Color.yellow}
                        
                        if guess_line_2[3] == "W" && cols1[1] != Color.green{
                            cols1[1] = Color.yellow}
                    
                        if guess_line_2[3] == "E" && cols1[2] != Color.green{
                            cols1[2] = Color.yellow}
                
                        if guess_line_2[3] == "R" && cols1[3] != Color.green{
                            cols1[3] = Color.yellow}
                        
                        if guess_line_2[3] == "T" && cols1[4] != Color.green{
                            cols1[4] = Color.yellow}
                    
                        if guess_line_2[3] == "Y" && cols1[5] != Color.green{
                            cols1[5] = Color.yellow}

                        if guess_line_2[3] == "U" && cols1[6] != Color.green{
                            cols1[6] = Color.yellow}

                        if guess_line_2[3] == "I" && cols1[7] != Color.green{
                            cols1[7] = Color.yellow}

                        if guess_line_2[3] == "O" && cols1[8] != Color.green{
                            cols1[8] = Color.yellow}
                    
                        if guess_line_2[3] == "P" && cols1[9] != Color.green{
                            cols1[9] = Color.yellow}
                    
                        
                        
                        
                        
                        if guess_line_2[3] == "A"{
                            cols2[0] = Color.yellow}
                        
                        if guess_line_2[3] == "S"{
                            cols2[1] = Color.yellow}
                    
                        if guess_line_2[3] == "D"{
                            cols2[2] = Color.yellow}
                
                        if guess_line_2[3] == "F"{
                            cols2[3] = Color.yellow}
                        
                        if guess_line_2[2] == "G"{
                            cols2[4] = Color.yellow}
                    
                        if guess_line_2[3] == "H"{
                            cols2[5] = Color.yellow}

                        if guess_line_2[3] == "J"{
                            cols2[6] = Color.yellow}

                        if guess_line_2[3] == "K"{
                            cols2[7] = Color.yellow}

                        if guess_line_2[3] == "L"{
                            cols2[8] = Color.yellow}
                    
                
                        if guess_line_2[3] == "Z"{
                            cols3[0] = Color.yellow}
                    
                        if guess_line_2[3] == "X"{
                            cols3[1] = Color.yellow}
                
                        if guess_line_2[3] == "C"{
                            cols3[2] = Color.yellow}
                        
                        if guess_line_2[3] == "V"{
                            cols3[3] = Color.yellow}
                    
                        if guess_line_2[3] == "B"{
                            cols3[4] = Color.yellow}

                        if guess_line_2[3] == "N"{
                            cols3[5] = Color.yellow}

                        if guess_line_2[3] == "M"{
                            cols3[6] = Color.yellow}}
                    else if guess_line_2[3].uppercased() == String(word[index3]) && pos3 == false{
                        pos3 = true
                        gl2c[3] = Color.yellow
                        if guess_line_2[3] == "Q" && cols1[0] != Color.green{
                            cols1[0] = Color.yellow}
                        
                        if guess_line_2[3] == "W"{
                            cols1[1] = Color.yellow}
                    
                        if guess_line_2[3] == "E"{
                            cols1[2] = Color.yellow}
                
                        if guess_line_2[3] == "R"{
                            cols1[3] = Color.yellow}
                        
                        if guess_line_2[3] == "T"{
                            cols1[4] = Color.yellow}
                    
                        if guess_line_2[3] == "Y"{
                            cols1[5] = Color.yellow}

                        if guess_line_2[3] == "U"{
                            cols1[6] = Color.yellow}

                        if guess_line_2[3] == "I"{
                            cols1[7] = Color.yellow}

                        if guess_line_2[3] == "O"{
                            cols1[8] = Color.yellow}
                    
                        if guess_line_2[3] == "P"{
                            cols1[9] = Color.yellow}
                    
                        
                        
                        
                        
                        if guess_line_2[3] == "A"{
                            cols2[0] = Color.yellow}
                        
                        if guess_line_2[3] == "S"{
                            cols2[1] = Color.yellow}
                    
                        if guess_line_2[3] == "D"{
                            cols2[2] = Color.yellow}
                
                        if guess_line_2[3] == "F"{
                            cols2[3] = Color.yellow}
                        
                        if guess_line_2[3] == "G"{
                            cols2[4] = Color.yellow}
                    
                        if guess_line_2[3] == "H"{
                            cols2[5] = Color.yellow}

                        if guess_line_2[3] == "J"{
                            cols2[6] = Color.yellow}

                        if guess_line_2[3] == "K"{
                            cols2[7] = Color.yellow}

                        if guess_line_2[3] == "L"{
                            cols2[8] = Color.yellow}
                    
                
                        if guess_line_2[3] == "Z"{
                            cols3[0] = Color.yellow}
                    
                        if guess_line_2[3] == "X"{
                            cols3[1] = Color.yellow}
                
                        if guess_line_2[3] == "C"{
                            cols3[2] = Color.yellow}
                        
                        if guess_line_2[3] == "V"{
                            cols3[3] = Color.yellow}
                    
                        if guess_line_2[3] == "B"{
                            cols3[4] = Color.yellow}

                        if guess_line_2[3] == "N"{
                            cols3[5] = Color.yellow}

                        if guess_line_2[3] == "M"{
                            cols3[6] = Color.yellow}}}
                else{
                if guess_line_2[3] == "Q"{
                    cols1[0] = Color.gray}
                
                if guess_line_2[3] == "W"{
                    cols1[1] = Color.gray}
            
                if guess_line_2[3] == "E"{
                    cols1[2] = Color.gray}
        
                if guess_line_2[3] == "R"{
                    cols1[3] = Color.gray}
                
                if guess_line_2[3] == "T"{
                    cols1[4] = Color.gray}
            
                if guess_line_2[3] == "Y"{
                    cols1[5] = Color.gray}

                if guess_line_2[3] == "U"{
                    cols1[6] = Color.gray}

                if guess_line_2[3] == "I"{
                    cols1[7] = Color.gray}

                if guess_line_2[3] == "O"{
                    cols1[8] = Color.gray}
            
                if guess_line_2[3] == "P"{
                    cols1[9] = Color.gray}
            
                
                
                
                
                if guess_line_2[3] == "A"{
                    cols2[0] = Color.gray}
                
                if guess_line_2[3] == "S"{
                    cols2[1] = Color.gray}
            
                if guess_line_2[3] == "D"{
                    cols2[2] = Color.gray}
        
                if guess_line_2[3] == "F"{
                    cols2[3] = Color.gray}
                
                if guess_line_2[3] == "G"{
                    cols2[4] = Color.gray}
            
                if guess_line_2[3] == "H"{
                    cols2[5] = Color.gray}

                if guess_line_2[3] == "J"{
                    cols2[6] = Color.gray}

                if guess_line_2[3] == "K"{
                    cols2[7] = Color.gray}

                if guess_line_2[3] == "L"{
                    cols2[8] = Color.gray}
            
        
                if guess_line_2[3] == "Z"{
                    cols3[0] = Color.gray}
            
                if guess_line_2[3] == "X"{
                    cols3[1] = Color.gray}
        
                if guess_line_2[3] == "C"{
                    cols3[2] = Color.gray}
                
                if guess_line_2[3] == "V"{
                    cols3[3] = Color.gray}
            
                if guess_line_2[3] == "B"{
                    cols3[4] = Color.gray}

                if guess_line_2[3] == "N"{
                    cols3[5] = Color.gray}

                if guess_line_2[3] == "M"{
                    cols3[6] = Color.gray}}}
                
                if three == false{
                if word.contains(guess_line_2[4].uppercased()){
                    
                    if guess_line_2[4].uppercased() == String(word[index3]) && pos3 == false{
                        pos3 = true
                        gl2c[4] = Color.green
                        if guess_line_2[4] == "Q"{
                            cols1[0] = Color.green}
                        
                        if guess_line_2[4] == "W"{
                            cols1[1] = Color.green}
                    
                        if guess_line_2[4] == "E"{
                            cols1[2] = Color.green}
                
                        if guess_line_2[4] == "R"{
                            cols1[3] = Color.green}
                        
                        if guess_line_2[4] == "T"{
                            cols1[4] = Color.green}
                    
                        if guess_line_2[4] == "Y"{
                            cols1[5] = Color.green}

                        if guess_line_2[4] == "U"{
                            cols1[6] = Color.green}

                        if guess_line_2[4] == "I"{
                            cols1[7] = Color.green}

                        if guess_line_2[4] == "O"{
                            cols1[8] = Color.green}
                    
                        if guess_line_2[4] == "P"{
                            cols1[9] = Color.green}
                    
                        
                        
                        
                        
                        if guess_line_2[4] == "A"{
                            cols2[0] = Color.green}
                        
                        if guess_line_2[4] == "S"{
                            cols2[1] = Color.green}
                    
                        if guess_line_2[4] == "D"{
                            cols2[2] = Color.green}
                
                        if guess_line_2[4] == "F"{
                            cols2[3] = Color.green}
                        
                        if guess_line_2[4] == "G"{
                            cols2[4] = Color.green}
                    
                        if guess_line_2[4] == "H"{
                            cols2[5] = Color.green}

                        if guess_line_2[4] == "J"{
                            cols2[6] = Color.green}

                        if guess_line_2[4] == "K"{
                            cols2[7] = Color.green}

                        if guess_line_2[4] == "L"{
                            cols2[8] = Color.green}
                    
                
                        if guess_line_2[4] == "Z"{
                            cols3[0] = Color.green}
                    
                        if guess_line_2[4] == "X"{
                            cols3[1] = Color.green}
                
                        if guess_line_2[4] == "C"{
                            cols3[2] = Color.green}
                        
                        if guess_line_2[4] == "V"{
                            cols3[3] = Color.green}
                    
                        if guess_line_2[4] == "B"{
                            cols3[4] = Color.green}

                        if guess_line_2[4] == "N"{
                            cols3[5] = Color.green}

                        if guess_line_2[4] == "M"{
                            cols3[6] = Color.green}}
                    else if guess_line_2[4].uppercased() == String(word.prefix(upTo: index)) && pos1 == false{
                        pos1 = true
                        gl2c[4] = Color.yellow
                        if guess_line_2[4] == "Q"{
                            cols1[0] = Color.yellow}
                        
                        if guess_line_2[4] == "W"{
                            cols1[1] = Color.yellow}
                    
                        if guess_line_2[4] == "E"{
                            cols1[2] = Color.yellow}
                
                        if guess_line_2[4] == "R"{
                            cols1[3] = Color.yellow}
                        
                        if guess_line_2[4] == "T"{
                            cols1[4] = Color.yellow}
                    
                        if guess_line_2[4] == "Y"{
                            cols1[5] = Color.yellow}

                        if guess_line_2[4] == "U"{
                            cols1[6] = Color.yellow}

                        if guess_line_2[4] == "I"{
                            cols1[7] = Color.yellow}

                        if guess_line_2[4] == "O"{
                            cols1[8] = Color.yellow}
                    
                        if guess_line_2[4] == "P"{
                            cols1[9] = Color.yellow}
                    
                        
                        
                        
                        
                        if guess_line_2[4] == "A"{
                            cols2[0] = Color.yellow}
                        
                        if guess_line_2[4] == "S"{
                            cols2[1] = Color.yellow}
                    
                        if guess_line_2[4] == "D"{
                            cols2[2] = Color.yellow}
                
                        if guess_line_2[4] == "F"{
                            cols2[3] = Color.yellow}
                        
                        if guess_line_2[4] == "G"{
                            cols2[4] = Color.yellow}
                    
                        if guess_line_2[4] == "H"{
                            cols2[5] = Color.yellow}

                        if guess_line_2[4] == "J"{
                            cols2[6] = Color.yellow}

                        if guess_line_2[4] == "K"{
                            cols2[7] = Color.yellow}

                        if guess_line_2[4] == "L"{
                            cols2[8] = Color.yellow}
                    
                
                        if guess_line_2[4] == "Z"{
                            cols3[0] = Color.yellow}
                    
                        if guess_line_2[4] == "X"{
                            cols3[1] = Color.yellow}
                
                        if guess_line_2[4] == "C"{
                            cols3[2] = Color.yellow}
                        
                        if guess_line_2[4] == "V"{
                            cols3[3] = Color.yellow}
                    
                        if guess_line_2[4] == "B"{
                            cols3[4] = Color.yellow}

                        if guess_line_2[4] == "N"{
                            cols3[5] = Color.yellow}

                        if guess_line_2[4] == "M"{
                            cols3[6] = Color.yellow}}
                    else if guess_line_2[4].uppercased() == String(word[index2]) && pos2 == false{
                        pos2 = true
                        gl2c[4] = Color.yellow
                        if guess_line_2[4] == "Q"{
                            cols1[0] = Color.yellow}
                        
                        if guess_line_2[4] == "W"{
                            cols1[1] = Color.yellow}
                    
                        if guess_line_2[4] == "E"{
                            cols1[2] = Color.yellow}
                
                        if guess_line_2[4] == "R"{
                            cols1[3] = Color.yellow}
                        
                        if guess_line_2[4] == "T"{
                            cols1[4] = Color.yellow}
                    
                        if guess_line_2[4] == "Y"{
                            cols1[5] = Color.yellow}

                        if guess_line_2[4] == "U"{
                            cols1[6] = Color.yellow}

                        if guess_line_2[4] == "I"{
                            cols1[7] = Color.yellow}

                        if guess_line_2[4] == "O"{
                            cols1[8] = Color.yellow}
                    
                        if guess_line_2[4] == "P"{
                            cols1[9] = Color.yellow}
                    
                        
                        
                        
                        
                        if guess_line_2[4] == "A"{
                            cols2[0] = Color.yellow}
                        
                        if guess_line_2[4] == "S"{
                            cols2[1] = Color.yellow}
                    
                        if guess_line_2[4] == "D"{
                            cols2[2] = Color.yellow}
                
                        if guess_line_2[4] == "F"{
                            cols2[3] = Color.yellow}
                        
                        if guess_line_2[4] == "G"{
                            cols2[4] = Color.yellow}
                    
                        if guess_line_2[4] == "H"{
                            cols2[5] = Color.yellow}

                        if guess_line_2[4] == "J"{
                            cols2[6] = Color.yellow}

                        if guess_line_2[4] == "K"{
                            cols2[7] = Color.yellow}

                        if guess_line_2[4] == "L"{
                            cols2[8] = Color.yellow}
                    
                
                        if guess_line_2[4] == "Z"{
                            cols3[0] = Color.yellow}
                    
                        if guess_line_2[4] == "X"{
                            cols3[1] = Color.yellow}
                
                        if guess_line_2[4] == "C"{
                            cols3[2] = Color.yellow}
                        
                        if guess_line_2[4] == "V"{
                            cols3[3] = Color.yellow}
                    
                        if guess_line_2[4] == "B"{
                            cols3[4] = Color.yellow}

                        if guess_line_2[4] == "N"{
                            cols3[5] = Color.yellow}

                        if guess_line_2[4] == "M"{
                            cols3[6] = Color.yellow}}}
                else{
                if guess_line_2[4] == "Q"{
                    cols1[0] = Color.gray}
                
                if guess_line_2[4] == "W"{
                    cols1[1] = Color.gray}
            
                if guess_line_2[4] == "E"{
                    cols1[2] = Color.gray}
        
                if guess_line_2[4] == "R"{
                    cols1[3] = Color.gray}
                
                if guess_line_2[4] == "T"{
                    cols1[4] = Color.gray}
            
                if guess_line_2[4] == "Y"{
                    cols1[5] = Color.gray}

                if guess_line_2[4] == "U"{
                    cols1[6] = Color.gray}

                if guess_line_2[4] == "I"{
                    cols1[7] = Color.gray}

                if guess_line_2[4] == "O"{
                    cols1[8] = Color.gray}
            
                if guess_line_2[4] == "P"{
                    cols1[9] = Color.gray}
            
                
                
                
                
                if guess_line_2[4] == "A"{
                    cols2[0] = Color.gray}
                
                if guess_line_2[4] == "S"{
                    cols2[1] = Color.gray}
            
                if guess_line_2[4] == "D"{
                    cols2[2] = Color.gray}
        
                if guess_line_2[4] == "F"{
                    cols2[3] = Color.gray}
                
                if guess_line_2[4] == "G"{
                    cols2[4] = Color.gray}
            
                if guess_line_2[4] == "H"{
                    cols2[5] = Color.gray}

                if guess_line_2[4] == "J"{
                    cols2[6] = Color.gray}

                if guess_line_2[4] == "K"{
                    cols2[7] = Color.gray}

                if guess_line_2[4] == "L"{
                    cols2[8] = Color.gray}
            
        
                if guess_line_2[4] == "Z"{
                    cols3[0] = Color.gray}
            
                if guess_line_2[4] == "X"{
                    cols3[1] = Color.gray}
        
                if guess_line_2[4] == "C"{
                    cols3[2] = Color.gray}
                
                if guess_line_2[4] == "V"{
                    cols3[3] = Color.gray}
            
                if guess_line_2[4] == "B"{
                    cols3[4] = Color.gray}

                if guess_line_2[4] == "N"{
                    cols3[5] = Color.gray}

                if guess_line_2[4] == "M"{
                    cols3[6] = Color.gray}}}
                if gl2c[2] == Color.white{
                    gl2c[2] = Color.gray
                }
                
                if gl2c[3] == Color.white{
                    gl2c[3] = Color.gray
                }
                
                if gl2c[4] == Color.white{
                    gl2c[4] = Color.gray
                }
            }
            
            if Try == 3{
                if guess_line_3[2].uppercased() == String(word.prefix(upTo: index)){
                    one = true
                    pos1 = true
                    gl3c[2] = Color.green
                    if guess_line_3[2] == "Q"{
                        cols1[0] = Color.green}
                    
                    if guess_line_3[2] == "W"{
                        cols1[1] = Color.green}
                
                    if guess_line_3[2] == "E"{
                        cols1[2] = Color.green}
            
                    if guess_line_3[2] == "R"{
                        cols1[3] = Color.green}
                    
                    if guess_line_3[2] == "T"{
                        cols1[4] = Color.green}
                
                    if guess_line_3[2] == "Y"{
                        cols1[5] = Color.green}

                    if guess_line_3[2] == "U"{
                        cols1[6] = Color.green}

                    if guess_line_3[2] == "I"{
                        cols1[7] = Color.green}

                    if guess_line_3[2] == "O"{
                        cols1[8] = Color.green}
                
                    if guess_line_3[2] == "P"{
                        cols1[9] = Color.green}
                
                    
                    
                    
                    
                    if guess_line_3[2] == "A"{
                        cols2[0] = Color.green}
                    
                    if guess_line_3[2] == "S"{
                        cols2[1] = Color.green}
                
                    if guess_line_3[2] == "D"{
                        cols2[2] = Color.green}
            
                    if guess_line_3[2] == "F"{
                        cols2[3] = Color.green}
                    
                    if guess_line_3[2] == "G"{
                        cols2[4] = Color.green}
                
                    if guess_line_3[2] == "H"{
                        cols2[5] = Color.green}

                    if guess_line_3[2] == "J"{
                        cols2[6] = Color.green}

                    if guess_line_3[2] == "K"{
                        cols2[7] = Color.green}

                    if guess_line_3[2] == "L"{
                        cols2[8] = Color.green}
                
            
                    if guess_line_3[2] == "Z"{
                        cols3[0] = Color.green}
                
                    if guess_line_3[2] == "X"{
                        cols3[1] = Color.green}
            
                    if guess_line_3[2] == "C"{
                        cols3[2] = Color.green}
                    
                    if guess_line_3[2] == "V"{
                        cols3[3] = Color.green}
                
                    if guess_line_3[2] == "B"{
                        cols3[4] = Color.green}

                    if guess_line_3[2] == "N"{
                        cols3[5] = Color.green}

                    if guess_line_3[2] == "M"{
                        cols3[6] = Color.green}}
                if guess_line_3[3].uppercased() == String(word[index2]){
                    two = true
                    pos2 = true
                    gl3c[3] = Color.green
                    if guess_line_3[3] == "Q"{
                        cols1[0] = Color.green}
                    
                    if guess_line_3[3] == "W"{
                        cols1[1] = Color.green}
                
                    if guess_line_3[3] == "E"{
                        cols1[2] = Color.green}
            
                    if guess_line_3[3] == "R"{
                        cols1[3] = Color.green}
                    
                    if guess_line_3[3] == "T"{
                        cols1[4] = Color.green}
                
                    if guess_line_3[3] == "Y"{
                        cols1[5] = Color.green}

                    if guess_line_3[3] == "U"{
                        cols1[6] = Color.green}

                    if guess_line_3[3] == "I"{
                        cols1[7] = Color.green}

                    if guess_line_3[3] == "O"{
                        cols1[8] = Color.green}
                
                    if guess_line_3[3] == "P"{
                        cols1[9] = Color.green}
                
                    
                    
                    
                    
                    if guess_line_3[3] == "A"{
                        cols2[0] = Color.green}
                    
                    if guess_line_3[3] == "S"{
                        cols2[1] = Color.green}
                
                    if guess_line_3[3] == "D"{
                        cols2[2] = Color.green}
            
                    if guess_line_3[3] == "F"{
                        cols2[3] = Color.green}
                    
                    if guess_line_3[3] == "G"{
                        cols2[4] = Color.green}
                
                    if guess_line_3[3] == "H"{
                        cols2[5] = Color.green}

                    if guess_line_3[3] == "J"{
                        cols2[6] = Color.green}

                    if guess_line_3[3] == "K"{
                        cols2[7] = Color.green}

                    if guess_line_3[3] == "L"{
                        cols2[8] = Color.green}
                
            
                    if guess_line_3[3] == "Z"{
                        cols3[0] = Color.green}
                
                    if guess_line_3[3] == "X"{
                        cols3[1] = Color.green}
            
                    if guess_line_3[3] == "C"{
                        cols3[2] = Color.green}
                    
                    if guess_line_3[3] == "V"{
                        cols3[3] = Color.green}
                
                    if guess_line_3[3] == "B"{
                        cols3[4] = Color.green}

                    if guess_line_3[3] == "N"{
                        cols3[5] = Color.green}

                    if guess_line_3[3] == "M"{
                        cols3[6] = Color.green}}
                if guess_line_3[4].uppercased() == String(word[index3]){
                    three = true
                    pos3 = true
                    gl3c[4] = Color.green
                    if guess_line_3[4] == "Q"{
                        cols1[0] = Color.green}
                    
                    if guess_line_3[4] == "W"{
                        cols1[1] = Color.green}
                
                    if guess_line_3[4] == "E"{
                        cols1[2] = Color.green}
            
                    if guess_line_3[4] == "R"{
                        cols1[3] = Color.green}
                    
                    if guess_line_3[4] == "T"{
                        cols1[4] = Color.green}
                
                    if guess_line_3[4] == "Y"{
                        cols1[5] = Color.green}

                    if guess_line_3[4] == "U"{
                        cols1[6] = Color.green}

                    if guess_line_3[4] == "I"{
                        cols1[7] = Color.green}

                    if guess_line_3[4] == "O"{
                        cols1[8] = Color.green}
                
                    if guess_line_3[4] == "P"{
                        cols1[9] = Color.green}
                
                    
                    
                    
                    
                    if guess_line_3[4] == "A"{
                        cols2[0] = Color.green}
                    
                    if guess_line_3[4] == "S"{
                        cols2[1] = Color.green}
                
                    if guess_line_3[4] == "D"{
                        cols2[2] = Color.green}
            
                    if guess_line_3[4] == "F"{
                        cols2[3] = Color.green}
                    
                    if guess_line_3[4] == "G"{
                        cols2[4] = Color.green}
                
                    if guess_line_3[4] == "H"{
                        cols2[5] = Color.green}

                    if guess_line_3[4] == "J"{
                        cols2[6] = Color.green}

                    if guess_line_3[4] == "K"{
                        cols2[7] = Color.green}

                    if guess_line_3[4] == "L"{
                        cols2[8] = Color.green}
                
            
                    if guess_line_3[4] == "Z"{
                        cols3[0] = Color.green}
                
                    if guess_line_3[4] == "X"{
                        cols3[1] = Color.green}
            
                    if guess_line_3[4] == "C"{
                        cols3[2] = Color.green}
                    
                    if guess_line_3[4] == "V"{
                        cols3[3] = Color.green}
                
                    if guess_line_3[4] == "B"{
                        cols3[4] = Color.green}

                    if guess_line_3[4] == "N"{
                        cols3[5] = Color.green}

                    if guess_line_3[4] == "M"{
                        cols3[6] = Color.green}}
                
                if word.contains(guess_line_3[2].uppercased()) && one == false{
                    
                    if guess_line_3[2].uppercased() == String(word.prefix(upTo: index)) && pos1 == false{
                        pos1 = true
                        gl3c[2] = Color.green
                        if guess_line_3[2] == "Q"{
                            cols1[0] = Color.green}
                        
                        if guess_line_3[2] == "W"{
                            cols1[1] = Color.green}
                    
                        if guess_line_3[2] == "E"{
                            cols1[2] = Color.green}
                
                        if guess_line_3[2] == "R"{
                            cols1[3] = Color.green}
                        
                        if guess_line_3[2] == "T"{
                            cols1[4] = Color.green}
                    
                        if guess_line_3[2] == "Y"{
                            cols1[5] = Color.green}

                        if guess_line_3[2] == "U"{
                            cols1[6] = Color.green}

                        if guess_line_3[2] == "I"{
                            cols1[7] = Color.green}

                        if guess_line_3[2] == "O"{
                            cols1[8] = Color.green}
                    
                        if guess_line_3[2] == "P"{
                            cols1[9] = Color.green}
                    
                        
                        
                        
                        
                        if guess_line_3[2] == "A"{
                            cols2[0] = Color.green}
                        
                        if guess_line_3[2] == "S"{
                            cols2[1] = Color.green}
                    
                        if guess_line_3[2] == "D"{
                            cols2[2] = Color.green}
                
                        if guess_line_3[2] == "F"{
                            cols2[3] = Color.green}
                        
                        if guess_line_3[2] == "G"{
                            cols2[4] = Color.green}
                    
                        if guess_line_3[2] == "H"{
                            cols2[5] = Color.green}

                        if guess_line_3[2] == "J"{
                            cols2[6] = Color.green}

                        if guess_line_3[2] == "K"{
                            cols2[7] = Color.green}

                        if guess_line_3[2] == "L"{
                            cols2[8] = Color.green}
                    
                
                        if guess_line_3[2] == "Z"{
                            cols3[0] = Color.green}
                    
                        if guess_line_3[2] == "X"{
                            cols3[1] = Color.green}
                
                        if guess_line_3[2] == "C"{
                            cols3[2] = Color.green}
                        
                        if guess_line_3[2] == "V"{
                            cols3[3] = Color.green}
                    
                        if guess_line_3[2] == "B"{
                            cols3[4] = Color.green}

                        if guess_line_3[2] == "N"{
                            cols3[5] = Color.green}

                        if guess_line_3[2] == "M"{
                            cols3[6] = Color.green}}
                    else if guess_line_3[2].uppercased() == String(word[index2]) && pos2 == false{
                        pos2 = true
                        gl3c[2] = Color.yellow
                        if guess_line_3[2] == "Q" && cols1[0] != Color.green{
                            cols1[0] = Color.yellow}
                        
                        if guess_line_3[2] == "W" && cols1[1] != Color.green{
                            cols1[1] = Color.yellow}
                    
                        if guess_line_3[2] == "E" && cols1[2] != Color.green{
                            cols1[2] = Color.yellow}
                
                        if guess_line_3[2] == "R" && cols1[3] != Color.green{
                            cols1[3] = Color.yellow}
                        
                        if guess_line_3[2] == "T" && cols1[4] != Color.green{
                            cols1[4] = Color.yellow}
                    
                        if guess_line_3[2] == "Y" && cols1[5] != Color.green{
                            cols1[5] = Color.yellow}

                        if guess_line_3[2] == "U" && cols1[6] != Color.green{
                            cols1[6] = Color.yellow}

                        if guess_line_3[2] == "I" && cols1[7] != Color.green{
                            cols1[7] = Color.yellow}

                        if guess_line_3[2] == "O" && cols1[8] != Color.green{
                            cols1[8] = Color.yellow}
                    
                        if guess_line_3[2] == "P" && cols1[9] != Color.green{
                            cols1[9] = Color.yellow}
                    
                        
                        
                        
                        
                        if guess_line_3[2] == "A"  && cols2[0] != Color.green{
                            cols2[0] = Color.yellow}
                        
                        if guess_line_3[2] == "S" && cols2[1] != Color.green{
                            cols2[1] = Color.yellow}
                    
                        if guess_line_3[2] == "D" && cols2[2] != Color.green{
                            cols2[2] = Color.yellow}
                
                        if guess_line_3[2] == "F" && cols2[3] != Color.green{
                            cols2[3] = Color.yellow}
                        
                        if guess_line_3[2] == "G" && cols2[4] != Color.green{
                            cols2[4] = Color.yellow}
                    
                        if guess_line_3[2] == "H" && cols2[5] != Color.green{
                            cols2[5] = Color.yellow}

                        if guess_line_3[2] == "J" && cols2[6] != Color.green{
                            cols2[6] = Color.yellow}

                        if guess_line_3[2] == "K" && cols2[7] != Color.green{
                            cols2[7] = Color.yellow}

                        if guess_line_3[2] == "L" && cols2[8] != Color.green{
                            cols2[8] = Color.yellow}
                    
                
                        if guess_line_3[2] == "Z" && cols3[0] != Color.green{
                            cols3[0] = Color.yellow}
                    
                        if guess_line_3[2] == "X" && cols3[1] != Color.green{
                            cols3[1] = Color.yellow}
                
                        if guess_line_3[2] == "C" && cols3[2] != Color.green{
                            cols3[2] = Color.yellow}
                        
                        if guess_line_3[2] == "V" && cols3[3] != Color.green{
                            cols3[3] = Color.yellow}
                    
                        if guess_line_3[2] == "B" && cols3[4] != Color.green{
                            cols3[4] = Color.yellow}

                        if guess_line_3[2] == "N" && cols3[5] != Color.green{
                            cols3[5] = Color.yellow}

                        if guess_line_3[2] == "M" && cols3[6] != Color.green{
                            cols3[6] = Color.yellow}}
                    else if guess_line_3[2].uppercased() == String(word[index3])  && pos3 == false{
                        pos3 = true
                        gl3c[2] = Color.yellow
                        if guess_line_3[2] == "Q" && cols1[0] != Color.green{
                            cols1[0] = Color.yellow}
                        
                        if guess_line_3[2] == "W" && cols1[1] != Color.green{
                            cols1[1] = Color.yellow}
                    
                        if guess_line_3[2] == "E" && cols1[2] != Color.green{
                            cols1[2] = Color.yellow}
                
                        if guess_line_3[2] == "R" && cols1[3] != Color.green{
                            cols1[3] = Color.yellow}
                        
                        if guess_line_3[2] == "T" && cols1[4] != Color.green{
                            cols1[4] = Color.yellow}
                    
                        if guess_line_3[2] == "Y" && cols1[5] != Color.green{
                            cols1[5] = Color.yellow}

                        if guess_line_3[2] == "U" && cols1[6] != Color.green{
                            cols1[6] = Color.yellow}

                        if guess_line_3[2] == "I" && cols1[7] != Color.green{
                            cols1[7] = Color.yellow}

                        if guess_line_3[2] == "O" && cols1[8] != Color.green{
                            cols1[8] = Color.yellow}
                    
                        if guess_line_3[2] == "P" && cols1[9] != Color.green{
                            cols1[9] = Color.yellow}
                    
                        
                        
                        
                        
                        if guess_line_3[2] == "A"  && cols2[0] != Color.green{
                            cols2[0] = Color.yellow}
                        
                        if guess_line_3[2] == "S"  && cols2[1] != Color.green{
                            cols2[1] = Color.yellow}
                    
                        if guess_line_3[2] == "D"  && cols2[2] != Color.green{
                            cols2[2] = Color.yellow}
                
                        if guess_line_3[2] == "F" && cols2[3] != Color.green{
                            cols2[3] = Color.yellow}
                        
                        if guess_line_3[2] == "G" && cols2[4] != Color.green{
                            cols2[4] = Color.yellow}
                    
                        if guess_line_3[2] == "H" && cols2[5] != Color.green{
                            cols2[5] = Color.yellow}

                        if guess_line_3[2] == "J" && cols2[6] != Color.green{
                            cols2[6] = Color.yellow}

                        if guess_line_3[2] == "K" && cols2[7] != Color.green{
                            cols2[7] = Color.yellow}

                        if guess_line_3[2] == "L" && cols2[8] != Color.green{
                            cols2[8] = Color.yellow}
                    
                
                        if guess_line_3[2] == "Z" && cols3[0] != Color.green{
                            cols3[0] = Color.yellow}
                    
                        if guess_line_3[2] == "X" && cols3[1] != Color.green{
                            cols3[1] = Color.yellow}
                
                        if guess_line_3[2] == "C" && cols3[2] != Color.green{
                            cols3[2] = Color.yellow}
                        
                        if guess_line_3[2] == "V" && cols3[3] != Color.green{
                            cols3[3] = Color.yellow}
                    
                        if guess_line_3[2] == "B" && cols3[4] != Color.green{
                            cols3[4] = Color.yellow}

                        if guess_line_3[2] == "N" && cols3[5] != Color.green{
                            cols3[5] = Color.yellow}

                        if guess_line_3[2] == "M" && cols3[6] != Color.green{
                            cols3[6] = Color.yellow}}}
                else{
                    if one == false{
                if guess_line_3[2] == "Q"{
                    cols1[0] = Color.gray}
                
                if guess_line_3[2] == "W"{
                    cols1[1] = Color.gray}
            
                if guess_line_3[2] == "E"{
                    cols1[2] = Color.gray}
        
                if guess_line_3[2] == "R"{
                    cols1[3] = Color.gray}
                
                if guess_line_3[2] == "T"{
                    cols1[4] = Color.gray}
            
                if guess_line_3[2] == "Y"{
                    cols1[5] = Color.gray}

                if guess_line_3[2] == "U"{
                    cols1[6] = Color.gray}

                if guess_line_3[2] == "I"{
                    cols1[7] = Color.gray}

                if guess_line_3[2] == "O"{
                    cols1[8] = Color.gray}
            
                if guess_line_3[2] == "P"{
                    cols1[9] = Color.gray}
            
                
                
                
                
                if guess_line_3[2] == "A"{
                    cols2[0] = Color.gray}
                
                if guess_line_3[2] == "S"{
                    cols2[1] = Color.gray}
            
                if guess_line_3[2] == "D"{
                    cols2[2] = Color.gray}
        
                if guess_line_3[2] == "F"{
                    cols2[3] = Color.gray}
                
                if guess_line_3[2] == "G"{
                    cols2[4] = Color.gray}
            
                if guess_line_3[2] == "H"{
                    cols2[5] = Color.gray}

                if guess_line_3[2] == "J"{
                    cols2[6] = Color.gray}

                if guess_line_3[2] == "K"{
                    cols2[7] = Color.gray}

                if guess_line_3[2] == "L"{
                    cols2[8] = Color.gray}
            
        
                if guess_line_3[2] == "Z"{
                    cols3[0] = Color.gray}
            
                if guess_line_3[2] == "X"{
                    cols3[1] = Color.gray}
        
                if guess_line_3[2] == "C"{
                    cols3[2] = Color.gray}
                
                if guess_line_3[2] == "V"{
                    cols3[3] = Color.gray}
            
                if guess_line_3[2] == "B"{
                    cols3[4] = Color.gray}

                if guess_line_3[2] == "N"{
                    cols3[5] = Color.gray}

                if guess_line_3[2] == "M"{
                    cols3[6] = Color.gray}}
                
                    
                if word.contains(guess_line_3[3].uppercased()){
                    if pos2 == false{
                    if guess_line_3[3].uppercased() == String(word[index2]) && pos2 == false{
                        pos2 = true
                        gl3c[3] = Color.green
                        if guess_line_3[3] == "Q"{
                            cols1[0] = Color.green}
                        
                        if guess_line_3[3] == "W"{
                            cols1[1] = Color.green}
                    
                        if guess_line_3[3] == "E"{
                            cols1[2] = Color.green}
                
                        if guess_line_3[3] == "R"{
                            cols1[3] = Color.green}
                        
                        if guess_line_3[3] == "T"{
                            cols1[4] = Color.green}
                    
                        if guess_line_3[3] == "Y"{
                            cols1[5] = Color.green}

                        if guess_line_3[3] == "U"{
                            cols1[6] = Color.green}

                        if guess_line_3[3] == "I"{
                            cols1[7] = Color.green}

                        if guess_line_3[3] == "O"{
                            cols1[8] = Color.green}
                    
                        if guess_line_3[3] == "P"{
                            cols1[9] = Color.green}
                    
                        
                        
                        
                        
                        if guess_line_3[3] == "A"{
                            cols2[0] = Color.green}
                        
                        if guess_line_3[3] == "S"{
                            cols2[1] = Color.green}
                    
                        if guess_line_3[3] == "D"{
                            cols2[2] = Color.green}
                
                        if guess_line_3[3] == "F"{
                            cols2[3] = Color.green}
                        
                        if guess_line_3[3] == "G"{
                            cols2[4] = Color.green}
                    
                        if guess_line_3[3] == "H"{
                            cols2[5] = Color.green}

                        if guess_line_3[3] == "J"{
                            cols2[6] = Color.green}

                        if guess_line_3[3] == "K"{
                            cols2[7] = Color.green}

                        if guess_line_3[3] == "L"{
                            cols2[8] = Color.green}
                    
                
                        if guess_line_3[3] == "Z"{
                            cols3[0] = Color.green}
                    
                        if guess_line_3[3] == "X"{
                            cols3[1] = Color.green}
                
                        if guess_line_3[3] == "C"{
                            cols3[2] = Color.green}
                        
                        if guess_line_3[3] == "V"{
                            cols3[3] = Color.green}
                    
                        if guess_line_3[3] == "B"{
                            cols3[4] = Color.green}

                        if guess_line_3[3] == "N"{
                            cols3[5] = Color.green}

                        if guess_line_3[3] == "M"{
                            cols3[6] = Color.green}}
                    else if guess_line_3[3].uppercased() == String(word.prefix(upTo: index)) && pos1 == false{
                        pos1 = true
                        gl3c[3] = Color.yellow
                        if guess_line_3[3] == "Q" && cols1[0] != Color.green{
                            cols1[0] = Color.yellow}
                        
                        if guess_line_3[3] == "W" && cols1[1] != Color.green{
                            cols1[1] = Color.yellow}
                    
                        if guess_line_3[3] == "E" && cols1[2] != Color.green{
                            cols1[2] = Color.yellow}
                
                        if guess_line_3[3] == "R" && cols1[3] != Color.green{
                            cols1[3] = Color.yellow}
                        
                        if guess_line_3[3] == "T" && cols1[4] != Color.green{
                            cols1[4] = Color.yellow}
                    
                        if guess_line_3[3] == "Y" && cols1[5] != Color.green{
                            cols1[5] = Color.yellow}

                        if guess_line_3[3] == "U" && cols1[6] != Color.green{
                            cols1[6] = Color.yellow}

                        if guess_line_3[3] == "I" && cols1[7] != Color.green{
                            cols1[7] = Color.yellow}

                        if guess_line_3[3] == "O" && cols1[8] != Color.green{
                            cols1[8] = Color.yellow}
                    
                        if guess_line_3[3] == "P" && cols1[9] != Color.green{
                            cols1[9] = Color.yellow}
                    
                        
                        
                        
                        
                        if guess_line_3[3] == "A"{
                            cols2[0] = Color.yellow}
                        
                        if guess_line_3[3] == "S"{
                            cols2[1] = Color.yellow}
                    
                        if guess_line_3[3] == "D"{
                            cols2[2] = Color.yellow}
                
                        if guess_line_3[3] == "F"{
                            cols2[3] = Color.yellow}
                        
                        if guess_line_3[2] == "G"{
                            cols2[4] = Color.yellow}
                    
                        if guess_line_3[3] == "H"{
                            cols2[5] = Color.yellow}

                        if guess_line_3[3] == "J"{
                            cols2[6] = Color.yellow}

                        if guess_line_3[3] == "K"{
                            cols2[7] = Color.yellow}

                        if guess_line_3[3] == "L"{
                            cols2[8] = Color.yellow}
                    
                
                        if guess_line_3[3] == "Z"{
                            cols3[0] = Color.yellow}
                    
                        if guess_line_3[3] == "X"{
                            cols3[1] = Color.yellow}
                
                        if guess_line_3[3] == "C"{
                            cols3[2] = Color.yellow}
                        
                        if guess_line_3[3] == "V"{
                            cols3[3] = Color.yellow}
                    
                        if guess_line_3[3] == "B"{
                            cols3[4] = Color.yellow}

                        if guess_line_3[3] == "N"{
                            cols3[5] = Color.yellow}

                        if guess_line_3[3] == "M"{
                            cols3[6] = Color.yellow}}
                    else if guess_line_3[3].uppercased() == String(word[index3])  && pos3 == false{
                        pos3 = true
                        gl3c[3] = Color.yellow
                        if guess_line_3[3] == "Q" && cols1[0] != Color.green{
                            cols1[0] = Color.yellow}
                        
                        if guess_line_3[3] == "W"{
                            cols1[1] = Color.yellow}
                    
                        if guess_line_3[3] == "E"{
                            cols1[2] = Color.yellow}
                
                        if guess_line_3[3] == "R"{
                            cols1[3] = Color.yellow}
                        
                        if guess_line_3[3] == "T"{
                            cols1[4] = Color.yellow}
                    
                        if guess_line_3[3] == "Y"{
                            cols1[5] = Color.yellow}

                        if guess_line_3[3] == "U"{
                            cols1[6] = Color.yellow}

                        if guess_line_3[3] == "I"{
                            cols1[7] = Color.yellow}

                        if guess_line_3[3] == "O"{
                            cols1[8] = Color.yellow}
                    
                        if guess_line_3[3] == "P"{
                            cols1[9] = Color.yellow}
                    
                        
                        
                        
                        
                        if guess_line_3[3] == "A"{
                            cols2[0] = Color.yellow}
                        
                        if guess_line_3[3] == "S"{
                            cols2[1] = Color.yellow}
                    
                        if guess_line_3[3] == "D"{
                            cols2[2] = Color.yellow}
                
                        if guess_line_3[3] == "F"{
                            cols2[3] = Color.yellow}
                        
                        if guess_line_3[3] == "G"{
                            cols2[4] = Color.yellow}
                    
                        if guess_line_3[3] == "H"{
                            cols2[5] = Color.yellow}

                        if guess_line_3[3] == "J"{
                            cols2[6] = Color.yellow}

                        if guess_line_3[3] == "K"{
                            cols2[7] = Color.yellow}

                        if guess_line_3[3] == "L"{
                            cols2[8] = Color.yellow}
                    
                
                        if guess_line_3[3] == "Z"{
                            cols3[0] = Color.yellow}
                    
                        if guess_line_3[3] == "X"{
                            cols3[1] = Color.yellow}
                
                        if guess_line_3[3] == "C"{
                            cols3[2] = Color.yellow}
                        
                        if guess_line_3[3] == "V"{
                            cols3[3] = Color.yellow}
                    
                        if guess_line_3[3] == "B"{
                            cols3[4] = Color.yellow}

                        if guess_line_3[3] == "N"{
                            cols3[5] = Color.yellow}

                        if guess_line_3[3] == "M"{
                            cols3[6] = Color.yellow}}}}
                else{
                if guess_line_3[3] == "Q"{
                    cols1[0] = Color.gray}
                
                if guess_line_3[3] == "W"{
                    cols1[1] = Color.gray}
            
                if guess_line_3[3] == "E"{
                    cols1[2] = Color.gray}
        
                if guess_line_3[3] == "R"{
                    cols1[3] = Color.gray}
                
                if guess_line_3[3] == "T"{
                    cols1[4] = Color.gray}
            
                if guess_line_3[3] == "Y"{
                    cols1[5] = Color.gray}

                if guess_line_3[3] == "U"{
                    cols1[6] = Color.gray}

                if guess_line_3[3] == "I"{
                    cols1[7] = Color.gray}

                if guess_line_3[3] == "O"{
                    cols1[8] = Color.gray}
            
                if guess_line_3[3] == "P"{
                    cols1[9] = Color.gray}
            
                
                
                
                
                if guess_line_3[3] == "A"{
                    cols2[0] = Color.gray}
                
                if guess_line_3[3] == "S"{
                    cols2[1] = Color.gray}
            
                if guess_line_3[3] == "D"{
                    cols2[2] = Color.gray}
        
                if guess_line_3[3] == "F"{
                    cols2[3] = Color.gray}
                
                if guess_line_3[3] == "G"{
                    cols2[4] = Color.gray}
            
                if guess_line_3[3] == "H"{
                    cols2[5] = Color.gray}

                if guess_line_3[3] == "J"{
                    cols2[6] = Color.gray}

                if guess_line_3[3] == "K"{
                    cols2[7] = Color.gray}

                if guess_line_3[3] == "L"{
                    cols2[8] = Color.gray}
            
        
                if guess_line_3[3] == "Z"{
                    cols3[0] = Color.gray}
            
                if guess_line_3[3] == "X"{
                    cols3[1] = Color.gray}
        
                if guess_line_3[3] == "C"{
                    cols3[2] = Color.gray}
                
                if guess_line_3[3] == "V"{
                    cols3[3] = Color.gray}
            
                if guess_line_3[3] == "B"{
                    cols3[4] = Color.gray}

                if guess_line_3[3] == "N"{
                    cols3[5] = Color.gray}

                if guess_line_3[3] == "M"{
                    cols3[6] = Color.gray}}}
                
                if word.contains(guess_line_3[3].uppercased()) && two == false{
                    
                    if guess_line_3[3].uppercased() == String(word[index2]) && pos2 == false{
                        pos2 = true
                        gl3c[3] = Color.green
                        if guess_line_3[3] == "Q"{
                            cols1[0] = Color.green}
                        
                        if guess_line_3[3] == "W"{
                            cols1[1] = Color.green}
                    
                        if guess_line_3[3] == "E"{
                            cols1[2] = Color.green}
                
                        if guess_line_3[3] == "R"{
                            cols1[3] = Color.green}
                        
                        if guess_line_3[3] == "T"{
                            cols1[4] = Color.green}
                    
                        if guess_line_3[3] == "Y"{
                            cols1[5] = Color.green}

                        if guess_line_3[3] == "U"{
                            cols1[6] = Color.green}

                        if guess_line_3[3] == "I"{
                            cols1[7] = Color.green}

                        if guess_line_3[3] == "O"{
                            cols1[8] = Color.green}
                    
                        if guess_line_3[3] == "P"{
                            cols1[9] = Color.green}
                    
                        
                        
                        
                        
                        if guess_line_3[3] == "A"{
                            cols2[0] = Color.green}
                        
                        if guess_line_3[3] == "S"{
                            cols2[1] = Color.green}
                    
                        if guess_line_3[3] == "D"{
                            cols2[2] = Color.green}
                
                        if guess_line_3[3] == "F"{
                            cols2[3] = Color.green}
                        
                        if guess_line_3[3] == "G"{
                            cols2[4] = Color.green}
                    
                        if guess_line_3[3] == "H"{
                            cols2[5] = Color.green}

                        if guess_line_3[3] == "J"{
                            cols2[6] = Color.green}

                        if guess_line_3[3] == "K"{
                            cols2[7] = Color.green}

                        if guess_line_3[3] == "L"{
                            cols2[8] = Color.green}
                    
                
                        if guess_line_3[3] == "Z"{
                            cols3[0] = Color.green}
                    
                        if guess_line_3[3] == "X"{
                            cols3[1] = Color.green}
                
                        if guess_line_3[3] == "C"{
                            cols3[2] = Color.green}
                        
                        if guess_line_3[3] == "V"{
                            cols3[3] = Color.green}
                    
                        if guess_line_3[3] == "B"{
                            cols3[4] = Color.green}

                        if guess_line_3[3] == "N"{
                            cols3[5] = Color.green}

                        if guess_line_3[3] == "M"{
                            cols3[6] = Color.green}}
                    else if guess_line_3[3].uppercased() == String(word.prefix(upTo: index)) && pos1 == false{
                        pos1 = true
                        gl3c[3] = Color.yellow
                        if guess_line_3[3] == "Q" && cols1[0] != Color.green{
                            cols1[0] = Color.yellow}
                        
                        if guess_line_3[3] == "W" && cols1[1] != Color.green{
                            cols1[1] = Color.yellow}
                    
                        if guess_line_3[3] == "E" && cols1[2] != Color.green{
                            cols1[2] = Color.yellow}
                
                        if guess_line_3[3] == "R" && cols1[3] != Color.green{
                            cols1[3] = Color.yellow}
                        
                        if guess_line_3[3] == "T" && cols1[4] != Color.green{
                            cols1[4] = Color.yellow}
                    
                        if guess_line_3[3] == "Y" && cols1[5] != Color.green{
                            cols1[5] = Color.yellow}

                        if guess_line_3[3] == "U" && cols1[6] != Color.green{
                            cols1[6] = Color.yellow}

                        if guess_line_3[3] == "I" && cols1[7] != Color.green{
                            cols1[7] = Color.yellow}

                        if guess_line_3[3] == "O" && cols1[8] != Color.green{
                            cols1[8] = Color.yellow}
                    
                        if guess_line_3[3] == "P" && cols1[9] != Color.green{
                            cols1[9] = Color.yellow}
                    
                        
                        
                        
                        
                        if guess_line_3[3] == "A"  && cols2[0] != Color.green{
                            cols2[0] = Color.yellow}
                        
                        if guess_line_3[3] == "S" && cols2[1] != Color.green{
                            cols2[1] = Color.yellow}
                    
                        if guess_line_3[3] == "D" && cols2[2] != Color.green{
                            cols2[2] = Color.yellow}
                
                        if guess_line_3[3] == "F" && cols2[3] != Color.green{
                            cols2[3] = Color.yellow}
                        
                        if guess_line_3[3] == "G" && cols2[4] != Color.green{
                            cols2[4] = Color.yellow}
                    
                        if guess_line_3[3] == "H" && cols2[5] != Color.green{
                            cols2[5] = Color.yellow}

                        if guess_line_3[3] == "J" && cols2[6] != Color.green{
                            cols2[6] = Color.yellow}

                        if guess_line_3[3] == "K" && cols2[7] != Color.green{
                            cols2[7] = Color.yellow}

                        if guess_line_3[3] == "L" && cols2[8] != Color.green{
                            cols2[8] = Color.yellow}
                    
                
                        if guess_line_3[3] == "Z" && cols3[0] != Color.green{
                            cols3[0] = Color.yellow}
                    
                        if guess_line_3[3] == "X" && cols3[1] != Color.green{
                            cols3[1] = Color.yellow}
                
                        if guess_line_3[3] == "C" && cols3[2] != Color.green{
                            cols3[2] = Color.yellow}
                        
                        if guess_line_3[3] == "V" && cols3[3] != Color.green{
                            cols3[3] = Color.yellow}
                    
                        if guess_line_3[3] == "B" && cols3[4] != Color.green{
                            cols3[4] = Color.yellow}

                        if guess_line_3[3] == "N" && cols3[5] != Color.green{
                            cols3[5] = Color.yellow}

                        if guess_line_3[3] == "M" && cols3[6] != Color.green{
                            cols3[6] = Color.yellow}}
                    else if guess_line_3[3].uppercased() == String(word[index3])  && pos3 == false{
                        pos3 = true
                        gl3c[3] = Color.yellow
                        if guess_line_3[3] == "Q" && cols1[0] != Color.green{
                            cols1[0] = Color.yellow}
                        
                        if guess_line_3[3] == "W" && cols1[1] != Color.green{
                            cols1[1] = Color.yellow}
                    
                        if guess_line_3[3] == "E" && cols1[2] != Color.green{
                            cols1[2] = Color.yellow}
                
                        if guess_line_3[3] == "R" && cols1[3] != Color.green{
                            cols1[3] = Color.yellow}
                        
                        if guess_line_3[3] == "T" && cols1[4] != Color.green{
                            cols1[4] = Color.yellow}
                    
                        if guess_line_3[3] == "Y" && cols1[5] != Color.green{
                            cols1[5] = Color.yellow}

                        if guess_line_3[3] == "U" && cols1[6] != Color.green{
                            cols1[6] = Color.yellow}

                        if guess_line_3[3] == "I" && cols1[7] != Color.green{
                            cols1[7] = Color.yellow}

                        if guess_line_3[3] == "O" && cols1[8] != Color.green{
                            cols1[8] = Color.yellow}
                    
                        if guess_line_3[3] == "P" && cols1[9] != Color.green{
                            cols1[9] = Color.yellow}
                    
                        
                        
                        
                        
                        if guess_line_3[3] == "A"  && cols2[0] != Color.green{
                            cols2[0] = Color.yellow}
                        
                        if guess_line_3[3] == "S"  && cols2[1] != Color.green{
                            cols2[1] = Color.yellow}
                    
                        if guess_line_3[3] == "D"  && cols2[2] != Color.green{
                            cols2[2] = Color.yellow}
                
                        if guess_line_3[3] == "F" && cols2[3] != Color.green{
                            cols2[3] = Color.yellow}
                        
                        if guess_line_3[3] == "G" && cols2[4] != Color.green{
                            cols2[4] = Color.yellow}
                    
                        if guess_line_3[3] == "H" && cols2[5] != Color.green{
                            cols2[5] = Color.yellow}

                        if guess_line_3[3] == "J" && cols2[6] != Color.green{
                            cols2[6] = Color.yellow}

                        if guess_line_3[3] == "K" && cols2[7] != Color.green{
                            cols2[7] = Color.yellow}

                        if guess_line_3[3] == "L" && cols2[8] != Color.green{
                            cols2[8] = Color.yellow}
                    
                
                        if guess_line_3[3] == "Z" && cols3[0] != Color.green{
                            cols3[0] = Color.yellow}
                    
                        if guess_line_3[3] == "X" && cols3[1] != Color.green{
                            cols3[1] = Color.yellow}
                
                        if guess_line_3[3] == "C" && cols3[2] != Color.green{
                            cols3[2] = Color.yellow}
                        
                        if guess_line_3[3] == "V" && cols3[3] != Color.green{
                            cols3[3] = Color.yellow}
                    
                        if guess_line_3[3] == "B" && cols3[4] != Color.green{
                            cols3[4] = Color.yellow}

                        if guess_line_3[3] == "N" && cols3[5] != Color.green{
                            cols3[5] = Color.yellow}

                        if guess_line_3[3] == "M" && cols3[6] != Color.green{
                            cols3[6] = Color.yellow}}}
                else{
                    if two == false{
                if guess_line_3[3] == "Q"{
                    cols1[0] = Color.gray}
                
                if guess_line_3[3] == "W"{
                    cols1[1] = Color.gray}
            
                if guess_line_3[3] == "E"{
                    cols1[2] = Color.gray}
        
                if guess_line_3[3] == "R"{
                    cols1[3] = Color.gray}
                
                if guess_line_3[3] == "T"{
                    cols1[4] = Color.gray}
            
                if guess_line_3[3] == "Y"{
                    cols1[5] = Color.gray}

                if guess_line_3[3] == "U"{
                    cols1[6] = Color.gray}

                if guess_line_3[3] == "I"{
                    cols1[7] = Color.gray}

                if guess_line_3[3] == "O"{
                    cols1[8] = Color.gray}
            
                if guess_line_3[3] == "P"{
                    cols1[9] = Color.gray}
            
                
                
                
                
                if guess_line_3[3] == "A"{
                    cols2[0] = Color.gray}
                
                if guess_line_3[3] == "S"{
                    cols2[1] = Color.gray}
            
                if guess_line_3[3] == "D"{
                    cols2[2] = Color.gray}
        
                if guess_line_3[3] == "F"{
                    cols2[3] = Color.gray}
                
                if guess_line_3[3] == "G"{
                    cols2[4] = Color.gray}
            
                if guess_line_3[3] == "H"{
                    cols2[5] = Color.gray}

                if guess_line_3[3] == "J"{
                    cols2[6] = Color.gray}

                if guess_line_3[3] == "K"{
                    cols2[7] = Color.gray}

                if guess_line_3[3] == "L"{
                    cols2[8] = Color.gray}
            
        
                if guess_line_3[3] == "Z"{
                    cols3[0] = Color.gray}
            
                if guess_line_3[3] == "X"{
                    cols3[1] = Color.gray}
        
                if guess_line_3[3] == "C"{
                    cols3[2] = Color.gray}
                
                if guess_line_3[3] == "V"{
                    cols3[3] = Color.gray}
            
                if guess_line_3[3] == "B"{
                    cols3[4] = Color.gray}

                if guess_line_3[3] == "N"{
                    cols3[5] = Color.gray}

                if guess_line_3[3] == "M"{
                    cols3[6] = Color.gray}}
                
                    
                if word.contains(guess_line_3[3].uppercased()){
                    if pos2 == false{
                    if guess_line_3[3].uppercased() == String(word[index2]) && pos2 == false{
                        pos2 = true
                        gl3c[3] = Color.green
                        if guess_line_3[3] == "Q"{
                            cols1[0] = Color.green}
                        
                        if guess_line_3[3] == "W"{
                            cols1[1] = Color.green}
                    
                        if guess_line_3[3] == "E"{
                            cols1[2] = Color.green}
                
                        if guess_line_3[3] == "R"{
                            cols1[3] = Color.green}
                        
                        if guess_line_3[3] == "T"{
                            cols1[4] = Color.green}
                    
                        if guess_line_3[3] == "Y"{
                            cols1[5] = Color.green}

                        if guess_line_3[3] == "U"{
                            cols1[6] = Color.green}

                        if guess_line_3[3] == "I"{
                            cols1[7] = Color.green}

                        if guess_line_3[3] == "O"{
                            cols1[8] = Color.green}
                    
                        if guess_line_3[3] == "P"{
                            cols1[9] = Color.green}
                    
                        
                        
                        
                        
                        if guess_line_3[3] == "A"{
                            cols2[0] = Color.green}
                        
                        if guess_line_3[3] == "S"{
                            cols2[1] = Color.green}
                    
                        if guess_line_3[3] == "D"{
                            cols2[2] = Color.green}
                
                        if guess_line_3[3] == "F"{
                            cols2[3] = Color.green}
                        
                        if guess_line_3[3] == "G"{
                            cols2[4] = Color.green}
                    
                        if guess_line_3[3] == "H"{
                            cols2[5] = Color.green}

                        if guess_line_3[3] == "J"{
                            cols2[6] = Color.green}

                        if guess_line_3[3] == "K"{
                            cols2[7] = Color.green}

                        if guess_line_3[3] == "L"{
                            cols2[8] = Color.green}
                    
                
                        if guess_line_3[3] == "Z"{
                            cols3[0] = Color.green}
                    
                        if guess_line_3[3] == "X"{
                            cols3[1] = Color.green}
                
                        if guess_line_3[3] == "C"{
                            cols3[2] = Color.green}
                        
                        if guess_line_3[3] == "V"{
                            cols3[3] = Color.green}
                    
                        if guess_line_3[3] == "B"{
                            cols3[4] = Color.green}

                        if guess_line_3[3] == "N"{
                            cols3[5] = Color.green}

                        if guess_line_3[3] == "M"{
                            cols3[6] = Color.green}}
                    else if guess_line_3[3].uppercased() == String(word.prefix(upTo: index)) && pos1 == false{
                        pos1 = true
                        gl3c[3] = Color.yellow
                        if guess_line_3[3] == "Q" && cols1[0] != Color.green{
                            cols1[0] = Color.yellow}
                        
                        if guess_line_3[3] == "W" && cols1[1] != Color.green{
                            cols1[1] = Color.yellow}
                    
                        if guess_line_3[3] == "E" && cols1[2] != Color.green{
                            cols1[2] = Color.yellow}
                
                        if guess_line_3[3] == "R" && cols1[3] != Color.green{
                            cols1[3] = Color.yellow}
                        
                        if guess_line_3[3] == "T" && cols1[4] != Color.green{
                            cols1[4] = Color.yellow}
                    
                        if guess_line_3[3] == "Y" && cols1[5] != Color.green{
                            cols1[5] = Color.yellow}

                        if guess_line_3[3] == "U" && cols1[6] != Color.green{
                            cols1[6] = Color.yellow}

                        if guess_line_3[3] == "I" && cols1[7] != Color.green{
                            cols1[7] = Color.yellow}

                        if guess_line_3[3] == "O" && cols1[8] != Color.green{
                            cols1[8] = Color.yellow}
                    
                        if guess_line_3[3] == "P" && cols1[9] != Color.green{
                            cols1[9] = Color.yellow}
                    
                        
                        
                        
                        
                        if guess_line_3[3] == "A"{
                            cols2[0] = Color.yellow}
                        
                        if guess_line_3[3] == "S"{
                            cols2[1] = Color.yellow}
                    
                        if guess_line_3[3] == "D"{
                            cols2[2] = Color.yellow}
                
                        if guess_line_3[3] == "F"{
                            cols2[3] = Color.yellow}
                        
                        if guess_line_3[3] == "G"{
                            cols2[4] = Color.yellow}
                    
                        if guess_line_3[3] == "H"{
                            cols2[5] = Color.yellow}

                        if guess_line_3[3] == "J"{
                            cols2[6] = Color.yellow}

                        if guess_line_3[3] == "K"{
                            cols2[7] = Color.yellow}

                        if guess_line_3[3] == "L"{
                            cols2[8] = Color.yellow}
                    
                
                        if guess_line_3[3] == "Z"{
                            cols3[0] = Color.yellow}
                    
                        if guess_line_3[3] == "X"{
                            cols3[1] = Color.yellow}
                
                        if guess_line_3[3] == "C"{
                            cols3[2] = Color.yellow}
                        
                        if guess_line_3[3] == "V"{
                            cols3[3] = Color.yellow}
                    
                        if guess_line_3[3] == "B"{
                            cols3[4] = Color.yellow}

                        if guess_line_3[3] == "N"{
                            cols3[5] = Color.yellow}

                        if guess_line_3[3] == "M"{
                            cols3[6] = Color.yellow}}
                    else if guess_line_3[3].uppercased() == String(word[index3])  && pos3 == false{
                        pos3 = true
                        gl3c[3] = Color.yellow
                        if guess_line_3[3] == "Q" && cols1[0] != Color.green{
                            cols1[0] = Color.yellow}
                        
                        if guess_line_3[3] == "W"{
                            cols1[1] = Color.yellow}
                    
                        if guess_line_3[3] == "E"{
                            cols1[2] = Color.yellow}
                
                        if guess_line_3[3] == "R"{
                            cols1[3] = Color.yellow}
                        
                        if guess_line_3[3] == "T"{
                            cols1[4] = Color.yellow}
                    
                        if guess_line_3[3] == "Y"{
                            cols1[5] = Color.yellow}

                        if guess_line_3[3] == "U"{
                            cols1[6] = Color.yellow}

                        if guess_line_3[3] == "I"{
                            cols1[7] = Color.yellow}

                        if guess_line_3[3] == "O"{
                            cols1[8] = Color.yellow}
                    
                        if guess_line_3[3] == "P"{
                            cols1[9] = Color.yellow}
                    
                        
                        
                        
                        
                        if guess_line_3[3] == "A"{
                            cols2[0] = Color.yellow}
                        
                        if guess_line_3[3] == "S"{
                            cols2[1] = Color.yellow}
                    
                        if guess_line_3[3] == "D"{
                            cols2[2] = Color.yellow}
                
                        if guess_line_3[3] == "F"{
                            cols2[3] = Color.yellow}
                        
                        if guess_line_3[3] == "G"{
                            cols2[4] = Color.yellow}
                    
                        if guess_line_3[3] == "H"{
                            cols2[5] = Color.yellow}

                        if guess_line_3[3] == "J"{
                            cols2[6] = Color.yellow}

                        if guess_line_3[3] == "K"{
                            cols2[7] = Color.yellow}

                        if guess_line_3[3] == "L"{
                            cols2[8] = Color.yellow}
                    
                
                        if guess_line_3[3] == "Z"{
                            cols3[0] = Color.yellow}
                    
                        if guess_line_3[3] == "X"{
                            cols3[1] = Color.yellow}
                
                        if guess_line_3[3] == "C"{
                            cols3[2] = Color.yellow}
                        
                        if guess_line_3[3] == "V"{
                            cols3[3] = Color.yellow}
                    
                        if guess_line_3[3] == "B"{
                            cols3[4] = Color.yellow}

                        if guess_line_3[3] == "N"{
                            cols3[5] = Color.yellow}

                        if guess_line_3[3] == "M"{
                            cols3[6] = Color.yellow}}}}
                else{
                if guess_line_3[3] == "Q"{
                    cols1[0] = Color.gray}
                
                if guess_line_3[3] == "W"{
                    cols1[1] = Color.gray}
            
                if guess_line_3[3] == "E"{
                    cols1[2] = Color.gray}
        
                if guess_line_3[3] == "R"{
                    cols1[3] = Color.gray}
                
                if guess_line_3[3] == "T"{
                    cols1[4] = Color.gray}
            
                if guess_line_3[3] == "Y"{
                    cols1[5] = Color.gray}

                if guess_line_3[3] == "U"{
                    cols1[6] = Color.gray}

                if guess_line_3[3] == "I"{
                    cols1[7] = Color.gray}

                if guess_line_3[3] == "O"{
                    cols1[8] = Color.gray}
            
                if guess_line_3[3] == "P"{
                    cols1[9] = Color.gray}
            
                
                
                
                
                if guess_line_3[3] == "A"{
                    cols2[0] = Color.gray}
                
                if guess_line_3[3] == "S"{
                    cols2[1] = Color.gray}
            
                if guess_line_3[3] == "D"{
                    cols2[2] = Color.gray}
        
                if guess_line_3[3] == "F"{
                    cols2[3] = Color.gray}
                
                if guess_line_3[3] == "G"{
                    cols2[4] = Color.gray}
            
                if guess_line_3[3] == "H"{
                    cols2[5] = Color.gray}

                if guess_line_3[3] == "J"{
                    cols2[6] = Color.gray}

                if guess_line_3[3] == "K"{
                    cols2[7] = Color.gray}

                if guess_line_3[3] == "L"{
                    cols2[8] = Color.gray}
            
        
                if guess_line_3[3] == "Z"{
                    cols3[0] = Color.gray}
            
                if guess_line_3[3] == "X"{
                    cols3[1] = Color.gray}
        
                if guess_line_3[3] == "C"{
                    cols3[2] = Color.gray}
                
                if guess_line_3[3] == "V"{
                    cols3[3] = Color.gray}
            
                if guess_line_3[3] == "B"{
                    cols3[4] = Color.gray}

                if guess_line_3[3] == "N"{
                    cols3[5] = Color.gray}

                if guess_line_3[3] == "M"{
                    cols3[6] = Color.gray}}}
                
                
                
                if word.contains(guess_line_3[4].uppercased()) && three == false{
                   
                    if guess_line_3[4].uppercased() == String(word[index3]) && pos3 == false{
                        pos3 = true
                        gl3c[4] = Color.green
                        if guess_line_3[4] == "Q"{
                            cols1[0] = Color.green}
                        
                        if guess_line_3[4] == "W"{
                            cols1[1] = Color.green}
                    
                        if guess_line_3[4] == "E"{
                            cols1[2] = Color.green}
                
                        if guess_line_3[4] == "R"{
                            cols1[3] = Color.green}
                        
                        if guess_line_3[4] == "T"{
                            cols1[4] = Color.green}
                    
                        if guess_line_3[4] == "Y"{
                            cols1[5] = Color.green}

                        if guess_line_3[4] == "U"{
                            cols1[6] = Color.green}

                        if guess_line_3[4] == "I"{
                            cols1[7] = Color.green}

                        if guess_line_3[4] == "O"{
                            cols1[8] = Color.green}
                    
                        if guess_line_3[4] == "P"{
                            cols1[9] = Color.green}
                    
                        
                        
                        
                        
                        if guess_line_3[4] == "A"{
                            cols2[0] = Color.green}
                        
                        if guess_line_3[4] == "S"{
                            cols2[1] = Color.green}
                    
                        if guess_line_3[4] == "D"{
                            cols2[2] = Color.green}
                
                        if guess_line_3[4] == "F"{
                            cols2[3] = Color.green}
                        
                        if guess_line_3[4] == "G"{
                            cols2[4] = Color.green}
                    
                        if guess_line_3[4] == "H"{
                            cols2[5] = Color.green}

                        if guess_line_3[4] == "J"{
                            cols2[6] = Color.green}

                        if guess_line_3[4] == "K"{
                            cols2[7] = Color.green}

                        if guess_line_3[4] == "L"{
                            cols2[8] = Color.green}
                    
                
                        if guess_line_3[4] == "Z"{
                            cols3[0] = Color.green}
                    
                        if guess_line_3[4] == "X"{
                            cols3[1] = Color.green}
                
                        if guess_line_3[4] == "C"{
                            cols3[2] = Color.green}
                        
                        if guess_line_3[4] == "V"{
                            cols3[3] = Color.green}
                    
                        if guess_line_3[4] == "B"{
                            cols3[4] = Color.green}

                        if guess_line_3[4] == "N"{
                            cols3[5] = Color.green}

                        if guess_line_3[4] == "M"{
                            cols3[6] = Color.green}}
                    else if guess_line_3[4].uppercased() == String(word.prefix(upTo: index))  && pos1 == false{
                        pos1 = true
                        gl3c[4] = Color.yellow
                        if guess_line_3[4] == "Q"{
                            cols1[0] = Color.yellow}
                        
                        if guess_line_3[4] == "W"{
                            cols1[1] = Color.yellow}
                    
                        if guess_line_3[4] == "E"{
                            cols1[2] = Color.yellow}
                
                        if guess_line_3[4] == "R"{
                            cols1[3] = Color.yellow}
                        
                        if guess_line_3[4] == "T"{
                            cols1[4] = Color.yellow}
                    
                        if guess_line_3[4] == "Y"{
                            cols1[5] = Color.yellow}

                        if guess_line_3[4] == "U"{
                            cols1[6] = Color.yellow}

                        if guess_line_3[4] == "I"{
                            cols1[7] = Color.yellow}

                        if guess_line_3[4] == "O"{
                            cols1[8] = Color.yellow}
                    
                        if guess_line_3[4] == "P"{
                            cols1[9] = Color.yellow}
                    
                        
                        
                        
                        
                        if guess_line_3[4] == "A"{
                            cols2[0] = Color.yellow}
                        
                        if guess_line_3[4] == "S"{
                            cols2[1] = Color.yellow}
                    
                        if guess_line_3[4] == "D"{
                            cols2[2] = Color.yellow}
                
                        if guess_line_3[4] == "F"{
                            cols2[3] = Color.yellow}
                        
                        if guess_line_3[4] == "G"{
                            cols2[4] = Color.yellow}
                    
                        if guess_line_3[4] == "H"{
                            cols2[5] = Color.yellow}

                        if guess_line_3[4] == "J"{
                            cols2[6] = Color.yellow}

                        if guess_line_3[4] == "K"{
                            cols2[7] = Color.yellow}

                        if guess_line_3[4] == "L"{
                            cols2[8] = Color.yellow}
                    
                
                        if guess_line_3[4] == "Z"{
                            cols3[0] = Color.yellow}
                    
                        if guess_line_3[4] == "X"{
                            cols3[1] = Color.yellow}
                
                        if guess_line_3[4] == "C"{
                            cols3[2] = Color.yellow}
                        
                        if guess_line_3[4] == "V"{
                            cols3[3] = Color.yellow}
                    
                        if guess_line_3[4] == "B"{
                            cols3[4] = Color.yellow}

                        if guess_line_3[4] == "N"{
                            cols3[5] = Color.yellow}

                        if guess_line_3[4] == "M"{
                            cols3[6] = Color.yellow}}
                    else if guess_line_3[4].uppercased() == String(word[index2])  && pos2 == false{
                        pos2 = true
                        gl3c[4] = Color.yellow
                        if guess_line_3[4] == "Q"{
                            cols1[0] = Color.yellow}
                        
                        if guess_line_3[4] == "W"{
                            cols1[1] = Color.yellow}
                    
                        if guess_line_3[4] == "E"{
                            cols1[2] = Color.yellow}
                
                        if guess_line_3[4] == "R"{
                            cols1[3] = Color.yellow}
                        
                        if guess_line_3[4] == "T"{
                            cols1[4] = Color.yellow}
                    
                        if guess_line_3[4] == "Y"{
                            cols1[5] = Color.yellow}

                        if guess_line_3[4] == "U"{
                            cols1[6] = Color.yellow}

                        if guess_line_3[4] == "I"{
                            cols1[7] = Color.yellow}

                        if guess_line_3[4] == "O"{
                            cols1[8] = Color.yellow}
                    
                        if guess_line_3[4] == "P"{
                            cols1[9] = Color.yellow}
                    
                        
                        
                        
                        
                        if guess_line_3[4] == "A"{
                            cols2[0] = Color.yellow}
                        
                        if guess_line_3[4] == "S"{
                            cols2[1] = Color.yellow}
                    
                        if guess_line_3[4] == "D"{
                            cols2[2] = Color.yellow}
                
                        if guess_line_3[4] == "F"{
                            cols2[3] = Color.yellow}
                        
                        if guess_line_3[4] == "G"{
                            cols2[4] = Color.yellow}
                    
                        if guess_line_3[4] == "H"{
                            cols2[5] = Color.yellow}

                        if guess_line_3[4] == "J"{
                            cols2[6] = Color.yellow}

                        if guess_line_3[4] == "K"{
                            cols2[7] = Color.yellow}

                        if guess_line_3[4] == "L"{
                            cols2[8] = Color.yellow}
                    
                
                        if guess_line_3[4] == "Z"{
                            cols3[0] = Color.yellow}
                    
                        if guess_line_3[4] == "X"{
                            cols3[1] = Color.yellow}
                
                        if guess_line_3[4] == "C"{
                            cols3[2] = Color.yellow}
                        
                        if guess_line_3[4] == "V"{
                            cols3[3] = Color.yellow}
                    
                        if guess_line_3[4] == "B"{
                            cols3[4] = Color.yellow}

                        if guess_line_3[4] == "N"{
                            cols3[5] = Color.yellow}

                        if guess_line_3[4] == "M"{
                            cols3[6] = Color.yellow}}}
                else{
                    if three == false{
                if guess_line_3[4] == "Q"{
                    cols1[0] = Color.gray}
                
                if guess_line_3[4] == "W"{
                    cols1[1] = Color.gray}
            
                if guess_line_3[4] == "E"{
                    cols1[2] = Color.gray}
        
                if guess_line_3[4] == "R"{
                    cols1[3] = Color.gray}
                
                if guess_line_3[4] == "T"{
                    cols1[4] = Color.gray}
            
                if guess_line_3[4] == "Y"{
                    cols1[5] = Color.gray}

                if guess_line_3[4] == "U"{
                    cols1[6] = Color.gray}

                if guess_line_3[4] == "I"{
                    cols1[7] = Color.gray}

                if guess_line_3[4] == "O"{
                    cols1[8] = Color.gray}
            
                if guess_line_3[4] == "P"{
                    cols1[9] = Color.gray}
            
                
                
                
                
                if guess_line_3[4] == "A"{
                    cols2[0] = Color.gray}
                
                if guess_line_3[4] == "S"{
                    cols2[1] = Color.gray}
            
                if guess_line_3[4] == "D"{
                    cols2[2] = Color.gray}
        
                if guess_line_3[4] == "F"{
                    cols2[3] = Color.gray}
                
                if guess_line_3[4] == "G"{
                    cols2[4] = Color.gray}
            
                if guess_line_3[4] == "H"{
                    cols2[5] = Color.gray}

                if guess_line_3[4] == "J"{
                    cols2[6] = Color.gray}

                if guess_line_3[4] == "K"{
                    cols2[7] = Color.gray}

                if guess_line_3[4] == "L"{
                    cols2[8] = Color.gray}
            
        
                if guess_line_3[4] == "Z"{
                    cols3[0] = Color.gray}
            
                if guess_line_3[4] == "X"{
                    cols3[1] = Color.gray}
        
                if guess_line_3[4] == "C"{
                    cols3[2] = Color.gray}
                
                if guess_line_3[4] == "V"{
                    cols3[3] = Color.gray}
            
                if guess_line_3[4] == "B"{
                    cols3[4] = Color.gray}

                if guess_line_3[4] == "N"{
                    cols3[5] = Color.gray}

                if guess_line_3[4] == "M"{
                    cols3[6] = Color.gray}}}
                
                if gl3c[2] == Color.white{
                    gl3c[2] = Color.gray
                }
                
                if gl3c[3] == Color.white{
                    gl3c[3] = Color.gray
                }
                
                if gl3c[4] == Color.white{
                    gl3c[4] = Color.gray
                }
                
            }
            
            if Try == 4{
                if guess_line_4[2].uppercased() == String(word.prefix(upTo: index)){
                    gl4c[2] = Color.green
                    one = true
                    pos1 = true
                    if guess_line_4[2] == "Q"{
                        cols1[0] = Color.green}
                    
                    if guess_line_4[2] == "W"{
                        cols1[1] = Color.green}
                
                    if guess_line_4[2] == "E"{
                        cols1[2] = Color.green}
            
                    if guess_line_4[2] == "R"{
                        cols1[3] = Color.green}
                    
                    if guess_line_4[2] == "T"{
                        cols1[4] = Color.green}
                
                    if guess_line_4[2] == "Y"{
                        cols1[5] = Color.green}

                    if guess_line_4[2] == "U"{
                        cols1[6] = Color.green}

                    if guess_line_4[2] == "I"{
                        cols1[7] = Color.green}

                    if guess_line_4[2] == "O"{
                        cols1[8] = Color.green}
                
                    if guess_line_4[2] == "P"{
                        cols1[9] = Color.green}
                
                    
                    
                    
                    
                    if guess_line_4[2] == "A"{
                        cols2[0] = Color.green}
                    
                    if guess_line_4[2] == "S"{
                        cols2[1] = Color.green}
                
                    if guess_line_4[2] == "D"{
                        cols2[2] = Color.green}
            
                    if guess_line_4[2] == "F"{
                        cols2[3] = Color.green}
                    
                    if guess_line_4[2] == "G"{
                        cols2[4] = Color.green}
                
                    if guess_line_4[2] == "H"{
                        cols2[5] = Color.green}

                    if guess_line_4[2] == "J"{
                        cols2[6] = Color.green}

                    if guess_line_4[2] == "K"{
                        cols2[7] = Color.green}

                    if guess_line_4[2] == "L"{
                        cols2[8] = Color.green}
                
            
                    if guess_line_4[2] == "Z"{
                        cols3[0] = Color.green}
                
                    if guess_line_4[2] == "X"{
                        cols3[1] = Color.green}
            
                    if guess_line_4[2] == "C"{
                        cols3[2] = Color.green}
                    
                    if guess_line_4[2] == "V"{
                        cols3[3] = Color.green}
                
                    if guess_line_4[2] == "B"{
                        cols3[4] = Color.green}

                    if guess_line_4[2] == "N"{
                        cols3[5] = Color.green}

                    if guess_line_4[2] == "M"{
                        cols3[6] = Color.green}}
                if guess_line_4[3].uppercased() == String(word[index2]){
                    two = true
                    pos2 = true
                    gl4c[3] = Color.green
                    if guess_line_4[3] == "Q"{
                        cols1[0] = Color.green}
                    
                    if guess_line_4[3] == "W"{
                        cols1[1] = Color.green}
                
                    if guess_line_4[3] == "E"{
                        cols1[2] = Color.green}
            
                    if guess_line_4[3] == "R"{
                        cols1[3] = Color.green}
                    
                    if guess_line_4[3] == "T"{
                        cols1[4] = Color.green}
                
                    if guess_line_4[3] == "Y"{
                        cols1[5] = Color.green}

                    if guess_line_4[3] == "U"{
                        cols1[6] = Color.green}

                    if guess_line_4[3] == "I"{
                        cols1[7] = Color.green}

                    if guess_line_4[3] == "O"{
                        cols1[8] = Color.green}
                
                    if guess_line_4[3] == "P"{
                        cols1[9] = Color.green}
                
                    
                    
                    
                    
                    if guess_line_4[3] == "A"{
                        cols2[0] = Color.green}
                    
                    if guess_line_4[3] == "S"{
                        cols2[1] = Color.green}
                
                    if guess_line_4[3] == "D"{
                        cols2[2] = Color.green}
            
                    if guess_line_4[3] == "F"{
                        cols2[3] = Color.green}
                    
                    if guess_line_4[3] == "G"{
                        cols2[4] = Color.green}
                
                    if guess_line_4[3] == "H"{
                        cols2[5] = Color.green}

                    if guess_line_4[3] == "J"{
                        cols2[6] = Color.green}

                    if guess_line_4[3] == "K"{
                        cols2[7] = Color.green}

                    if guess_line_4[3] == "L"{
                        cols2[8] = Color.green}
                
            
                    if guess_line_4[3] == "Z"{
                        cols3[0] = Color.green}
                
                    if guess_line_4[3] == "X"{
                        cols3[1] = Color.green}
            
                    if guess_line_4[3] == "C"{
                        cols3[2] = Color.green}
                    
                    if guess_line_4[3] == "V"{
                        cols3[3] = Color.green}
                
                    if guess_line_4[3] == "B"{
                        cols3[4] = Color.green}

                    if guess_line_4[3] == "N"{
                        cols3[5] = Color.green}

                    if guess_line_4[3] == "M"{
                        cols3[6] = Color.green}}
                if guess_line_4[4].uppercased() == String(word[index3]){
                    three = true
                    pos3 = true
                    gl4c[4] = Color.green
                    if guess_line_4[4] == "Q"{
                        cols1[0] = Color.green}
                    
                    if guess_line_4[4] == "W"{
                        cols1[1] = Color.green}
                
                    if guess_line_4[4] == "E"{
                        cols1[2] = Color.green}
            
                    if guess_line_4[4] == "R"{
                        cols1[3] = Color.green}
                    
                    if guess_line_4[4] == "T"{
                        cols1[4] = Color.green}
                
                    if guess_line_4[4] == "Y"{
                        cols1[5] = Color.green}

                    if guess_line_4[4] == "U"{
                        cols1[6] = Color.green}

                    if guess_line_4[4] == "I"{
                        cols1[7] = Color.green}

                    if guess_line_4[4] == "O"{
                        cols1[8] = Color.green}
                
                    if guess_line_4[4] == "P"{
                        cols1[9] = Color.green}
                
                    
                    
                    
                    
                    if guess_line_4[4] == "A"{
                        cols2[0] = Color.green}
                    
                    if guess_line_4[4] == "S"{
                        cols2[1] = Color.green}
                
                    if guess_line_4[4] == "D"{
                        cols2[2] = Color.green}
            
                    if guess_line_4[4] == "F"{
                        cols2[3] = Color.green}
                    
                    if guess_line_4[4] == "G"{
                        cols2[4] = Color.green}
                
                    if guess_line_4[4] == "H"{
                        cols2[5] = Color.green}

                    if guess_line_4[4] == "J"{
                        cols2[6] = Color.green}

                    if guess_line_4[4] == "K"{
                        cols2[7] = Color.green}

                    if guess_line_4[4] == "L"{
                        cols2[8] = Color.green}
                
            
                    if guess_line_4[4] == "Z"{
                        cols3[0] = Color.green}
                
                    if guess_line_4[4] == "X"{
                        cols3[1] = Color.green}
            
                    if guess_line_4[4] == "C"{
                        cols3[2] = Color.green}
                    
                    if guess_line_4[4] == "V"{
                        cols3[3] = Color.green}
                
                    if guess_line_4[4] == "B"{
                        cols3[4] = Color.green}

                    if guess_line_4[4] == "N"{
                        cols3[5] = Color.green}

                    if guess_line_4[4] == "M"{
                        cols3[6] = Color.green}}
                
                
                if word.contains(guess_line_4[2].uppercased()) && one  == false{
                    
                    if guess_line_4[2].uppercased() == String(word.prefix(upTo: index)) && pos1 == false{
                        pos1 = true
                        gl4c[2] = Color.green
                        if guess_line_4[2] == "Q"{
                            cols1[0] = Color.green}
                        
                        if guess_line_4[2] == "W"{
                            cols1[1] = Color.green}
                    
                        if guess_line_4[2] == "E"{
                            cols1[2] = Color.green}
                
                        if guess_line_4[2] == "R"{
                            cols1[3] = Color.green}
                        
                        if guess_line_4[2] == "T"{
                            cols1[4] = Color.green}
                    
                        if guess_line_4[2] == "Y"{
                            cols1[5] = Color.green}

                        if guess_line_4[2] == "U"{
                            cols1[6] = Color.green}

                        if guess_line_4[2] == "I"{
                            cols1[7] = Color.green}

                        if guess_line_4[2] == "O"{
                            cols1[8] = Color.green}
                    
                        if guess_line_4[2] == "P"{
                            cols1[9] = Color.green}
                    
                        
                        
                        
                        
                        if guess_line_4[2] == "A"{
                            cols2[0] = Color.green}
                        
                        if guess_line_4[2] == "S"{
                            cols2[1] = Color.green}
                    
                        if guess_line_4[2] == "D"{
                            cols2[2] = Color.green}
                
                        if guess_line_4[2] == "F"{
                            cols2[3] = Color.green}
                        
                        if guess_line_4[2] == "G"{
                            cols2[4] = Color.green}
                    
                        if guess_line_4[2] == "H"{
                            cols2[5] = Color.green}

                        if guess_line_4[2] == "J"{
                            cols2[6] = Color.green}

                        if guess_line_4[2] == "K"{
                            cols2[7] = Color.green}

                        if guess_line_4[2] == "L"{
                            cols2[8] = Color.green}
                    
                
                        if guess_line_4[2] == "Z"{
                            cols3[0] = Color.green}
                    
                        if guess_line_4[2] == "X"{
                            cols3[1] = Color.green}
                
                        if guess_line_4[2] == "C"{
                            cols3[2] = Color.green}
                        
                        if guess_line_4[2] == "V"{
                            cols3[3] = Color.green}
                    
                        if guess_line_4[2] == "B"{
                            cols3[4] = Color.green}

                        if guess_line_4[2] == "N"{
                            cols3[5] = Color.green}

                        if guess_line_4[2] == "M"{
                            cols3[6] = Color.green}}
                    else if guess_line_4[2].uppercased() == String(word[index2]) && pos2 == false{
                        pos2 = true
                        gl4c[2] = Color.yellow
                        if guess_line_4[2] == "Q" && cols1[0] != Color.green{
                            cols1[0] = Color.yellow}
                        
                        if guess_line_4[2] == "W" && cols1[1] != Color.green{
                            cols1[1] = Color.yellow}
                    
                        if guess_line_4[2] == "E" && cols1[2] != Color.green{
                            cols1[2] = Color.yellow}
                
                        if guess_line_4[2] == "R" && cols1[3] != Color.green{
                            cols1[3] = Color.yellow}
                        
                        if guess_line_4[2] == "T" && cols1[4] != Color.green{
                            cols1[4] = Color.yellow}
                    
                        if guess_line_4[2] == "Y" && cols1[5] != Color.green{
                            cols1[5] = Color.yellow}

                        if guess_line_4[2] == "U" && cols1[6] != Color.green{
                            cols1[6] = Color.yellow}

                        if guess_line_4[2] == "I" && cols1[7] != Color.green{
                            cols1[7] = Color.yellow}

                        if guess_line_4[2] == "O" && cols1[8] != Color.green{
                            cols1[8] = Color.yellow}
                    
                        if guess_line_4[2] == "P" && cols1[9] != Color.green{
                            cols1[9] = Color.yellow}
                    
                        
                        
                        
                        
                        if guess_line_4[2] == "A"  && cols2[0] != Color.green{
                            cols2[0] = Color.yellow}
                        
                        if guess_line_4[2] == "S" && cols2[1] != Color.green{
                            cols2[1] = Color.yellow}
                    
                        if guess_line_4[2] == "D" && cols2[2] != Color.green{
                            cols2[2] = Color.yellow}
                
                        if guess_line_4[2] == "F" && cols2[3] != Color.green{
                            cols2[3] = Color.yellow}
                        
                        if guess_line_4[2] == "G" && cols2[4] != Color.green{
                            cols2[4] = Color.yellow}
                    
                        if guess_line_4[2] == "H" && cols2[5] != Color.green{
                            cols2[5] = Color.yellow}

                        if guess_line_4[2] == "J" && cols2[6] != Color.green{
                            cols2[6] = Color.yellow}

                        if guess_line_4[2] == "K" && cols2[7] != Color.green{
                            cols2[7] = Color.yellow}

                        if guess_line_4[2] == "L" && cols2[8] != Color.green{
                            cols2[8] = Color.yellow}
                    
                
                        if guess_line_4[2] == "Z" && cols3[0] != Color.green{
                            cols3[0] = Color.yellow}
                    
                        if guess_line_4[2] == "X" && cols3[1] != Color.green{
                            cols3[1] = Color.yellow}
                
                        if guess_line_4[2] == "C" && cols3[2] != Color.green{
                            cols3[2] = Color.yellow}
                        
                        if guess_line_4[2] == "V" && cols3[3] != Color.green{
                            cols3[3] = Color.yellow}
                    
                        if guess_line_4[2] == "B" && cols3[4] != Color.green{
                            cols3[4] = Color.yellow}

                        if guess_line_4[2] == "N" && cols3[5] != Color.green{
                            cols3[5] = Color.yellow}

                        if guess_line_4[2] == "M" && cols3[6] != Color.green{
                            cols3[6] = Color.yellow}}
                    else if guess_line_4[2].uppercased() == String(word[index3]) && pos3 == false{
                        pos3 = true
                        gl4c[2] = Color.yellow
                        if guess_line_4[2] == "Q" && cols1[0] != Color.green{
                            cols1[0] = Color.yellow}
                        
                        if guess_line_4[2] == "W" && cols1[1] != Color.green{
                            cols1[1] = Color.yellow}
                    
                        if guess_line_4[2] == "E" && cols1[2] != Color.green{
                            cols1[2] = Color.yellow}
                
                        if guess_line_4[2] == "R" && cols1[3] != Color.green{
                            cols1[3] = Color.yellow}
                        
                        if guess_line_4[2] == "T" && cols1[4] != Color.green{
                            cols1[4] = Color.yellow}
                    
                        if guess_line_4[2] == "Y" && cols1[5] != Color.green{
                            cols1[5] = Color.yellow}

                        if guess_line_4[2] == "U" && cols1[6] != Color.green{
                            cols1[6] = Color.yellow}

                        if guess_line_4[2] == "I" && cols1[7] != Color.green{
                            cols1[7] = Color.yellow}

                        if guess_line_4[2] == "O" && cols1[8] != Color.green{
                            cols1[8] = Color.yellow}
                    
                        if guess_line_4[2] == "P" && cols1[9] != Color.green{
                            cols1[9] = Color.yellow}
                    
                        
                        
                        
                        
                        if guess_line_4[2] == "A"  && cols2[0] != Color.green{
                            cols2[0] = Color.yellow}
                        
                        if guess_line_4[2] == "S"  && cols2[1] != Color.green{
                            cols2[1] = Color.yellow}
                    
                        if guess_line_4[2] == "D"  && cols2[2] != Color.green{
                            cols2[2] = Color.yellow}
                
                        if guess_line_4[2] == "F" && cols2[3] != Color.green{
                            cols2[3] = Color.yellow}
                        
                        if guess_line_4[2] == "G" && cols2[4] != Color.green{
                            cols2[4] = Color.yellow}
                    
                        if guess_line_4[2] == "H" && cols2[5] != Color.green{
                            cols2[5] = Color.yellow}

                        if guess_line_4[2] == "J" && cols2[6] != Color.green{
                            cols2[6] = Color.yellow}

                        if guess_line_4[2] == "K" && cols2[7] != Color.green{
                            cols2[7] = Color.yellow}

                        if guess_line_4[2] == "L" && cols2[8] != Color.green{
                            cols2[8] = Color.yellow}
                    
                
                        if guess_line_4[2] == "Z" && cols3[0] != Color.green{
                            cols3[0] = Color.yellow}
                    
                        if guess_line_4[2] == "X" && cols3[1] != Color.green{
                            cols3[1] = Color.yellow}
                
                        if guess_line_4[2] == "C" && cols3[2] != Color.green{
                            cols3[2] = Color.yellow}
                        
                        if guess_line_4[2] == "V" && cols3[3] != Color.green{
                            cols3[3] = Color.yellow}
                    
                        if guess_line_4[2] == "B" && cols3[4] != Color.green{
                            cols3[4] = Color.yellow}

                        if guess_line_4[2] == "N" && cols3[5] != Color.green{
                            cols3[5] = Color.yellow}

                        if guess_line_4[2] == "M" && cols3[6] != Color.green{
                            cols3[6] = Color.yellow}}}
                else{
                    if one == false{
                if guess_line_4[2] == "Q"{
                    cols1[0] = Color.gray}
                
                if guess_line_4[2] == "W"{
                    cols1[1] = Color.gray}
            
                if guess_line_4[2] == "E"{
                    cols1[2] = Color.gray}
        
                if guess_line_4[2] == "R"{
                    cols1[3] = Color.gray}
                
                if guess_line_4[2] == "T"{
                    cols1[4] = Color.gray}
            
                if guess_line_4[2] == "Y"{
                    cols1[5] = Color.gray}

                if guess_line_4[2] == "U"{
                    cols1[6] = Color.gray}

                if guess_line_4[2] == "I"{
                    cols1[7] = Color.gray}

                if guess_line_4[2] == "O"{
                    cols1[8] = Color.gray}
            
                if guess_line_4[2] == "P"{
                    cols1[9] = Color.gray}
            
                
                
                
                
                if guess_line_4[2] == "A"{
                    cols2[0] = Color.gray}
                
                if guess_line_4[2] == "S"{
                    cols2[1] = Color.gray}
            
                if guess_line_4[2] == "D"{
                    cols2[2] = Color.gray}
        
                if guess_line_4[2] == "F"{
                    cols2[3] = Color.gray}
                
                if guess_line_4[2] == "G"{
                    cols2[4] = Color.gray}
            
                if guess_line_4[2] == "H"{
                    cols2[5] = Color.gray}

                if guess_line_4[2] == "J"{
                    cols2[6] = Color.gray}

                if guess_line_4[2] == "K"{
                    cols2[7] = Color.gray}

                if guess_line_4[2] == "L"{
                    cols2[8] = Color.gray}
            
        
                if guess_line_4[2] == "Z"{
                    cols3[0] = Color.gray}
            
                if guess_line_4[2] == "X"{
                    cols3[1] = Color.gray}
        
                if guess_line_4[2] == "C"{
                    cols3[2] = Color.gray}
                
                if guess_line_4[2] == "V"{
                    cols3[3] = Color.gray}
            
                if guess_line_4[2] == "B"{
                    cols3[4] = Color.gray}

                if guess_line_4[2] == "N"{
                    cols3[5] = Color.gray}

                if guess_line_4[2] == "M"{
                    cols3[6] = Color.gray}}}
                
                    
                if word.contains(guess_line_4[3].uppercased()) && two == false{
                    
                    if guess_line_4[3].uppercased() == String(word[index2]) && pos2 == false{
                        pos2 = true
                        gl4c[3] = Color.green
                        if guess_line_4[3] == "Q"{
                            cols1[0] = Color.green}
                        
                        if guess_line_4[3] == "W"{
                            cols1[1] = Color.green}
                    
                        if guess_line_4[3] == "E"{
                            cols1[2] = Color.green}
                
                        if guess_line_4[3] == "R"{
                            cols1[3] = Color.green}
                        
                        if guess_line_4[3] == "T"{
                            cols1[4] = Color.green}
                    
                        if guess_line_4[3] == "Y"{
                            cols1[5] = Color.green}

                        if guess_line_4[3] == "U"{
                            cols1[6] = Color.green}

                        if guess_line_4[3] == "I"{
                            cols1[7] = Color.green}

                        if guess_line_4[3] == "O"{
                            cols1[8] = Color.green}
                    
                        if guess_line_4[3] == "P"{
                            cols1[9] = Color.green}
                    
                        
                        
                        
                        
                        if guess_line_4[3] == "A"{
                            cols2[0] = Color.green}
                        
                        if guess_line_4[3] == "S"{
                            cols2[1] = Color.green}
                    
                        if guess_line_4[3] == "D"{
                            cols2[2] = Color.green}
                
                        if guess_line_4[3] == "F"{
                            cols2[3] = Color.green}
                        
                        if guess_line_4[3] == "G"{
                            cols2[4] = Color.green}
                    
                        if guess_line_4[3] == "H"{
                            cols2[5] = Color.green}

                        if guess_line_4[3] == "J"{
                            cols2[6] = Color.green}

                        if guess_line_4[3] == "K"{
                            cols2[7] = Color.green}

                        if guess_line_4[3] == "L"{
                            cols2[8] = Color.green}
                    
                
                        if guess_line_4[3] == "Z"{
                            cols3[0] = Color.green}
                    
                        if guess_line_4[3] == "X"{
                            cols3[1] = Color.green}
                
                        if guess_line_4[3] == "C"{
                            cols3[2] = Color.green}
                        
                        if guess_line_4[3] == "V"{
                            cols3[3] = Color.green}
                    
                        if guess_line_4[3] == "B"{
                            cols3[4] = Color.green}

                        if guess_line_4[3] == "N"{
                            cols3[5] = Color.green}

                        if guess_line_4[3] == "M"{
                            cols3[6] = Color.green}}
                    else if guess_line_4[3].uppercased() == String(word.prefix(upTo: index)) && pos1 == false{
                        pos1 = true
                        gl4c[3] = Color.yellow
                        if guess_line_4[3] == "Q" && cols1[0] != Color.green{
                            cols1[0] = Color.yellow}
                        
                        if guess_line_4[3] == "W" && cols1[1] != Color.green{
                            cols1[1] = Color.yellow}
                    
                        if guess_line_4[3] == "E" && cols1[2] != Color.green{
                            cols1[2] = Color.yellow}
                
                        if guess_line_4[3] == "R" && cols1[3] != Color.green{
                            cols1[3] = Color.yellow}
                        
                        if guess_line_4[3] == "T" && cols1[4] != Color.green{
                            cols1[4] = Color.yellow}
                    
                        if guess_line_4[3] == "Y" && cols1[5] != Color.green{
                            cols1[5] = Color.yellow}

                        if guess_line_4[3] == "U" && cols1[6] != Color.green{
                            cols1[6] = Color.yellow}

                        if guess_line_4[3] == "I" && cols1[7] != Color.green{
                            cols1[7] = Color.yellow}

                        if guess_line_4[3] == "O" && cols1[8] != Color.green{
                            cols1[8] = Color.yellow}
                    
                        if guess_line_4[3] == "P" && cols1[9] != Color.green{
                            cols1[9] = Color.yellow}
                    
                        
                        
                        
                        
                        if guess_line_4[3] == "A"{
                            cols2[0] = Color.yellow}
                        
                        if guess_line_4[3] == "S"{
                            cols2[1] = Color.yellow}
                    
                        if guess_line_4[3] == "D"{
                            cols2[2] = Color.yellow}
                
                        if guess_line_4[3] == "F"{
                            cols2[3] = Color.yellow}
                        
                        if guess_line_4[2] == "G"{
                            cols2[4] = Color.yellow}
                    
                        if guess_line_4[3] == "H"{
                            cols2[5] = Color.yellow}

                        if guess_line_4[3] == "J"{
                            cols2[6] = Color.yellow}

                        if guess_line_4[3] == "K"{
                            cols2[7] = Color.yellow}

                        if guess_line_4[3] == "L"{
                            cols2[8] = Color.yellow}
                    
                
                        if guess_line_4[3] == "Z"{
                            cols3[0] = Color.yellow}
                    
                        if guess_line_4[3] == "X"{
                            cols3[1] = Color.yellow}
                
                        if guess_line_4[3] == "C"{
                            cols3[2] = Color.yellow}
                        
                        if guess_line_4[3] == "V"{
                            cols3[3] = Color.yellow}
                    
                        if guess_line_4[3] == "B"{
                            cols3[4] = Color.yellow}

                        if guess_line_4[3] == "N"{
                            cols3[5] = Color.yellow}

                        if guess_line_4[3] == "M"{
                            cols3[6] = Color.yellow}}
                    else if guess_line_4[3].uppercased() == String(word[index3]) && pos3 == false{
                        pos3 = true
                        gl4c[3] = Color.yellow
                        if guess_line_4[3] == "Q" && cols1[0] != Color.green{
                            cols1[0] = Color.yellow}
                        
                        if guess_line_4[3] == "W"{
                            cols1[1] = Color.yellow}
                    
                        if guess_line_4[3] == "E"{
                            cols1[2] = Color.yellow}
                
                        if guess_line_4[3] == "R"{
                            cols1[3] = Color.yellow}
                        
                        if guess_line_4[3] == "T"{
                            cols1[4] = Color.yellow}
                    
                        if guess_line_4[3] == "Y"{
                            cols1[5] = Color.yellow}

                        if guess_line_4[3] == "U"{
                            cols1[6] = Color.yellow}

                        if guess_line_4[3] == "I"{
                            cols1[7] = Color.yellow}

                        if guess_line_4[3] == "O"{
                            cols1[8] = Color.yellow}
                    
                        if guess_line_4[3] == "P"{
                            cols1[9] = Color.yellow}
                    
                        
                        
                        
                        
                        if guess_line_4[3] == "A"{
                            cols2[0] = Color.yellow}
                        
                        if guess_line_4[3] == "S"{
                            cols2[1] = Color.yellow}
                    
                        if guess_line_4[3] == "D"{
                            cols2[2] = Color.yellow}
                
                        if guess_line_4[3] == "F"{
                            cols2[3] = Color.yellow}
                        
                        if guess_line_4[3] == "G"{
                            cols2[4] = Color.yellow}
                    
                        if guess_line_4[3] == "H"{
                            cols2[5] = Color.yellow}

                        if guess_line_4[3] == "J"{
                            cols2[6] = Color.yellow}

                        if guess_line_4[3] == "K"{
                            cols2[7] = Color.yellow}

                        if guess_line_4[3] == "L"{
                            cols2[8] = Color.yellow}
                    
                
                        if guess_line_4[3] == "Z"{
                            cols3[0] = Color.yellow}
                    
                        if guess_line_4[3] == "X"{
                            cols3[1] = Color.yellow}
                
                        if guess_line_4[3] == "C"{
                            cols3[2] = Color.yellow}
                        
                        if guess_line_4[3] == "V"{
                            cols3[3] = Color.yellow}
                    
                        if guess_line_4[3] == "B"{
                            cols3[4] = Color.yellow}

                        if guess_line_4[3] == "N"{
                            cols3[5] = Color.yellow}

                        if guess_line_4[3] == "M"{
                            cols3[6] = Color.yellow}}}
                else{
                    if two == false{
                if guess_line_4[3] == "Q"{
                    cols1[0] = Color.gray}
                
                if guess_line_4[3] == "W"{
                    cols1[1] = Color.gray}
            
                if guess_line_4[3] == "E"{
                    cols1[2] = Color.gray}
        
                if guess_line_4[3] == "R"{
                    cols1[3] = Color.gray}
                
                if guess_line_4[3] == "T"{
                    cols1[4] = Color.gray}
            
                if guess_line_4[3] == "Y"{
                    cols1[5] = Color.gray}

                if guess_line_4[3] == "U"{
                    cols1[6] = Color.gray}

                if guess_line_4[3] == "I"{
                    cols1[7] = Color.gray}

                if guess_line_4[3] == "O"{
                    cols1[8] = Color.gray}
            
                if guess_line_4[3] == "P"{
                    cols1[9] = Color.gray}
            
                
                
                
                
                if guess_line_4[3] == "A"{
                    cols2[0] = Color.gray}
                
                if guess_line_4[3] == "S"{
                    cols2[1] = Color.gray}
            
                if guess_line_4[3] == "D"{
                    cols2[2] = Color.gray}
        
                if guess_line_4[3] == "F"{
                    cols2[3] = Color.gray}
                
                if guess_line_4[3] == "G"{
                    cols2[4] = Color.gray}
            
                if guess_line_4[3] == "H"{
                    cols2[5] = Color.gray}

                if guess_line_4[3] == "J"{
                    cols2[6] = Color.gray}

                if guess_line_4[3] == "K"{
                    cols2[7] = Color.gray}

                if guess_line_4[3] == "L"{
                    cols2[8] = Color.gray}
            
        
                if guess_line_4[3] == "Z"{
                    cols3[0] = Color.gray}
            
                if guess_line_4[3] == "X"{
                    cols3[1] = Color.gray}
        
                if guess_line_4[3] == "C"{
                    cols3[2] = Color.gray}
                
                if guess_line_4[3] == "V"{
                    cols3[3] = Color.gray}
            
                if guess_line_4[3] == "B"{
                    cols3[4] = Color.gray}

                if guess_line_4[3] == "N"{
                    cols3[5] = Color.gray}

                if guess_line_4[3] == "M"{
                    cols3[6] = Color.gray}}}
                
                
                if word.contains(guess_line_4[4].uppercased()) && three == false{
                    
                    if guess_line_4[4].uppercased() == String(word[index3]) && pos3 == false{
                        gl4c[4] = Color.green
                        if guess_line_4[4] == "Q"{
                            cols1[0] = Color.green}
                        
                        if guess_line_4[4] == "W"{
                            cols1[1] = Color.green}
                    
                        if guess_line_4[4] == "E"{
                            cols1[2] = Color.green}
                
                        if guess_line_4[4] == "R"{
                            cols1[3] = Color.green}
                        
                        if guess_line_4[4] == "T"{
                            cols1[4] = Color.green}
                    
                        if guess_line_4[4] == "Y"{
                            cols1[5] = Color.green}

                        if guess_line_4[4] == "U"{
                            cols1[6] = Color.green}

                        if guess_line_4[4] == "I"{
                            cols1[7] = Color.green}

                        if guess_line_4[4] == "O"{
                            cols1[8] = Color.green}
                    
                        if guess_line_4[4] == "P"{
                            cols1[9] = Color.green}
                    
                        
                        
                        
                        
                        if guess_line_4[4] == "A"{
                            cols2[0] = Color.green}
                        
                        if guess_line_4[4] == "S"{
                            cols2[1] = Color.green}
                    
                        if guess_line_4[4] == "D"{
                            cols2[2] = Color.green}
                
                        if guess_line_4[4] == "F"{
                            cols2[3] = Color.green}
                        
                        if guess_line_4[4] == "G"{
                            cols2[4] = Color.green}
                    
                        if guess_line_4[4] == "H"{
                            cols2[5] = Color.green}

                        if guess_line_4[4] == "J"{
                            cols2[6] = Color.green}

                        if guess_line_4[4] == "K"{
                            cols2[7] = Color.green}

                        if guess_line_4[4] == "L"{
                            cols2[8] = Color.green}
                    
                
                        if guess_line_4[4] == "Z"{
                            cols3[0] = Color.green}
                    
                        if guess_line_4[4] == "X"{
                            cols3[1] = Color.green}
                
                        if guess_line_4[4] == "C"{
                            cols3[2] = Color.green}
                        
                        if guess_line_4[4] == "V"{
                            cols3[3] = Color.green}
                    
                        if guess_line_4[4] == "B"{
                            cols3[4] = Color.green}

                        if guess_line_4[4] == "N"{
                            cols3[5] = Color.green}

                        if guess_line_4[4] == "M"{
                            cols3[6] = Color.green}}
                    else if guess_line_4[4].uppercased() == String(word.prefix(upTo: index)) && pos1 == false{
                        gl4c[4] = Color.yellow
                        if guess_line_4[4] == "Q"{
                            cols1[0] = Color.yellow}
                        
                        if guess_line_4[4] == "W"{
                            cols1[1] = Color.yellow}
                    
                        if guess_line_4[4] == "E"{
                            cols1[2] = Color.yellow}
                
                        if guess_line_4[4] == "R"{
                            cols1[3] = Color.yellow}
                        
                        if guess_line_4[4] == "T"{
                            cols1[4] = Color.yellow}
                    
                        if guess_line_4[4] == "Y"{
                            cols1[5] = Color.yellow}

                        if guess_line_4[4] == "U"{
                            cols1[6] = Color.yellow}

                        if guess_line_4[4] == "I"{
                            cols1[7] = Color.yellow}

                        if guess_line_4[4] == "O"{
                            cols1[8] = Color.yellow}
                    
                        if guess_line_4[4] == "P"{
                            cols1[9] = Color.yellow}
                    
                        
                        
                        
                        
                        if guess_line_4[4] == "A"{
                            cols2[0] = Color.yellow}
                        
                        if guess_line_4[4] == "S"{
                            cols2[1] = Color.yellow}
                    
                        if guess_line_4[4] == "D"{
                            cols2[2] = Color.yellow}
                
                        if guess_line_4[4] == "F"{
                            cols2[3] = Color.yellow}
                        
                        if guess_line_4[4] == "G"{
                            cols2[4] = Color.yellow}
                    
                        if guess_line_4[4] == "H"{
                            cols2[5] = Color.yellow}

                        if guess_line_4[4] == "J"{
                            cols2[6] = Color.yellow}

                        if guess_line_4[4] == "K"{
                            cols2[7] = Color.yellow}

                        if guess_line_4[4] == "L"{
                            cols2[8] = Color.yellow}
                    
                
                        if guess_line_4[4] == "Z"{
                            cols3[0] = Color.yellow}
                    
                        if guess_line_4[4] == "X"{
                            cols3[1] = Color.yellow}
                
                        if guess_line_4[4] == "C"{
                            cols3[2] = Color.yellow}
                        
                        if guess_line_4[4] == "V"{
                            cols3[3] = Color.yellow}
                    
                        if guess_line_4[4] == "B"{
                            cols3[4] = Color.yellow}

                        if guess_line_4[4] == "N"{
                            cols3[5] = Color.yellow}

                        if guess_line_4[4] == "M"{
                            cols3[6] = Color.yellow}}
                    else if guess_line_4[4].uppercased() == String(word[index2]) && pos2 == false{
                        gl4c[4] = Color.yellow
                        if guess_line_4[4] == "Q"{
                            cols1[0] = Color.yellow}
                        
                        if guess_line_4[4] == "W"{
                            cols1[1] = Color.yellow}
                    
                        if guess_line_4[4] == "E"{
                            cols1[2] = Color.yellow}
                
                        if guess_line_4[4] == "R"{
                            cols1[3] = Color.yellow}
                        
                        if guess_line_4[4] == "T"{
                            cols1[4] = Color.yellow}
                    
                        if guess_line_4[4] == "Y"{
                            cols1[5] = Color.yellow}

                        if guess_line_4[4] == "U"{
                            cols1[6] = Color.yellow}

                        if guess_line_4[4] == "I"{
                            cols1[7] = Color.yellow}

                        if guess_line_4[4] == "O"{
                            cols1[8] = Color.yellow}
                    
                        if guess_line_4[4] == "P"{
                            cols1[9] = Color.yellow}
                    
                        
                        
                        
                        
                        if guess_line_4[4] == "A"{
                            cols2[0] = Color.yellow}
                        
                        if guess_line_4[4] == "S"{
                            cols2[1] = Color.yellow}
                    
                        if guess_line_4[4] == "D"{
                            cols2[2] = Color.yellow}
                
                        if guess_line_4[4] == "F"{
                            cols2[3] = Color.yellow}
                        
                        if guess_line_4[4] == "G"{
                            cols2[4] = Color.yellow}
                    
                        if guess_line_4[4] == "H"{
                            cols2[5] = Color.yellow}

                        if guess_line_4[4] == "J"{
                            cols2[6] = Color.yellow}

                        if guess_line_4[4] == "K"{
                            cols2[7] = Color.yellow}

                        if guess_line_4[4] == "L"{
                            cols2[8] = Color.yellow}
                    
                
                        if guess_line_4[4] == "Z"{
                            cols3[0] = Color.yellow}
                    
                        if guess_line_4[4] == "X"{
                            cols3[1] = Color.yellow}
                
                        if guess_line_4[4] == "C"{
                            cols3[2] = Color.yellow}
                        
                        if guess_line_4[4] == "V"{
                            cols3[3] = Color.yellow}
                    
                        if guess_line_4[4] == "B"{
                            cols3[4] = Color.yellow}

                        if guess_line_4[4] == "N"{
                            cols3[5] = Color.yellow}

                        if guess_line_4[4] == "M"{
                            cols3[6] = Color.yellow}}}
                else{
                    if three == false{
                if guess_line_4[4] == "Q"{
                    cols1[0] = Color.gray}
                
                if guess_line_4[4] == "W"{
                    cols1[1] = Color.gray}
            
                if guess_line_4[4] == "E"{
                    cols1[2] = Color.gray}
        
                if guess_line_4[4] == "R"{
                    cols1[3] = Color.gray}
                
                if guess_line_4[4] == "T"{
                    cols1[4] = Color.gray}
            
                if guess_line_4[4] == "Y"{
                    cols1[5] = Color.gray}

                if guess_line_4[4] == "U"{
                    cols1[6] = Color.gray}

                if guess_line_4[4] == "I"{
                    cols1[7] = Color.gray}

                if guess_line_4[4] == "O"{
                    cols1[8] = Color.gray}
            
                if guess_line_4[4] == "P"{
                    cols1[9] = Color.gray}
            
                
                
                
                
                if guess_line_4[4] == "A"{
                    cols2[0] = Color.gray}
                
                if guess_line_4[4] == "S"{
                    cols2[1] = Color.gray}
            
                if guess_line_4[4] == "D"{
                    cols2[2] = Color.gray}
        
                if guess_line_4[4] == "F"{
                    cols2[3] = Color.gray}
                
                if guess_line_4[4] == "G"{
                    cols2[4] = Color.gray}
            
                if guess_line_4[4] == "H"{
                    cols2[5] = Color.gray}

                if guess_line_4[4] == "J"{
                    cols2[6] = Color.gray}

                if guess_line_4[4] == "K"{
                    cols2[7] = Color.gray}

                if guess_line_4[4] == "L"{
                    cols2[8] = Color.gray}
            
        
                if guess_line_4[4] == "Z"{
                    cols3[0] = Color.gray}
            
                if guess_line_4[4] == "X"{
                    cols3[1] = Color.gray}
        
                if guess_line_4[4] == "C"{
                    cols3[2] = Color.gray}
                
                if guess_line_4[4] == "V"{
                    cols3[3] = Color.gray}
            
                if guess_line_4[4] == "B"{
                    cols3[4] = Color.gray}

                if guess_line_4[4] == "N"{
                    cols3[5] = Color.gray}

                if guess_line_4[4] == "M"{
                    cols3[6] = Color.gray}}
                
                if gl4c[2] == Color.white{
                    gl4c[2] = Color.gray
                }
                
                if gl4c[3] == Color.white{
                    gl4c[3] = Color.gray
                }
                
                if gl4c[4] == Color.white{
                    gl4c[4] = Color.gray
                }
                }}
            
            if Try == 5{
                if guess_line_5[2].uppercased() == String(word.prefix(upTo: index)){
                    one = true
                    pos1 = true
                    gl5c[2] = Color.green
                    if guess_line_5[2] == "Q"{
                        cols1[0] = Color.green}
                    
                    if guess_line_5[2] == "W"{
                        cols1[1] = Color.green}
                
                    if guess_line_5[2] == "E"{
                        cols1[2] = Color.green}
            
                    if guess_line_5[2] == "R"{
                        cols1[3] = Color.green}
                    
                    if guess_line_5[2] == "T"{
                        cols1[4] = Color.green}
                
                    if guess_line_5[2] == "Y"{
                        cols1[5] = Color.green}

                    if guess_line_5[2] == "U"{
                        cols1[6] = Color.green}

                    if guess_line_5[2] == "I"{
                        cols1[7] = Color.green}

                    if guess_line_5[2] == "O"{
                        cols1[8] = Color.green}
                
                    if guess_line_5[2] == "P"{
                        cols1[9] = Color.green}
                
                    
                    
                    
                    
                    if guess_line_5[2] == "A"{
                        cols2[0] = Color.green}
                    
                    if guess_line_5[2] == "S"{
                        cols2[1] = Color.green}
                
                    if guess_line_5[2] == "D"{
                        cols2[2] = Color.green}
            
                    if guess_line_5[2] == "F"{
                        cols2[3] = Color.green}
                    
                    if guess_line_5[2] == "G"{
                        cols2[4] = Color.green}
                
                    if guess_line_5[2] == "H"{
                        cols2[5] = Color.green}

                    if guess_line_5[2] == "J"{
                        cols2[6] = Color.green}

                    if guess_line_5[2] == "K"{
                        cols2[7] = Color.green}

                    if guess_line_5[2] == "L"{
                        cols2[8] = Color.green}
                
            
                    if guess_line_5[2] == "Z"{
                        cols3[0] = Color.green}
                
                    if guess_line_5[2] == "X"{
                        cols3[1] = Color.green}
            
                    if guess_line_5[2] == "C"{
                        cols3[2] = Color.green}
                    
                    if guess_line_5[2] == "V"{
                        cols3[3] = Color.green}
                
                    if guess_line_5[2] == "B"{
                        cols3[4] = Color.green}

                    if guess_line_5[2] == "N"{
                        cols3[5] = Color.green}

                    if guess_line_5[2] == "M"{
                        cols3[6] = Color.green}}
                if guess_line_5[3].uppercased() == String(word[index2]){
                    two = true
                    pos2 = true
                    gl5c[3] = Color.green
                    if guess_line_5[3] == "Q"{
                        cols1[0] = Color.green}
                    
                    if guess_line_5[3] == "W"{
                        cols1[1] = Color.green}
                
                    if guess_line_5[3] == "E"{
                        cols1[2] = Color.green}
            
                    if guess_line_5[3] == "R"{
                        cols1[3] = Color.green}
                    
                    if guess_line_5[3] == "T"{
                        cols1[4] = Color.green}
                
                    if guess_line_5[3] == "Y"{
                        cols1[5] = Color.green}

                    if guess_line_5[3] == "U"{
                        cols1[6] = Color.green}

                    if guess_line_5[3] == "I"{
                        cols1[7] = Color.green}

                    if guess_line_5[3] == "O"{
                        cols1[8] = Color.green}
                
                    if guess_line_5[3] == "P"{
                        cols1[9] = Color.green}
                
                    
                    
                    
                    
                    if guess_line_5[3] == "A"{
                        cols2[0] = Color.green}
                    
                    if guess_line_5[3] == "S"{
                        cols2[1] = Color.green}
                
                    if guess_line_5[3] == "D"{
                        cols2[2] = Color.green}
            
                    if guess_line_5[3] == "F"{
                        cols2[3] = Color.green}
                    
                    if guess_line_5[3] == "G"{
                        cols2[4] = Color.green}
                
                    if guess_line_5[3] == "H"{
                        cols2[5] = Color.green}

                    if guess_line_5[3] == "J"{
                        cols2[6] = Color.green}

                    if guess_line_5[3] == "K"{
                        cols2[7] = Color.green}

                    if guess_line_5[3] == "L"{
                        cols2[8] = Color.green}
                
            
                    if guess_line_5[3] == "Z"{
                        cols3[0] = Color.green}
                
                    if guess_line_5[3] == "X"{
                        cols3[1] = Color.green}
            
                    if guess_line_5[3] == "C"{
                        cols3[2] = Color.green}
                    
                    if guess_line_5[3] == "V"{
                        cols3[3] = Color.green}
                
                    if guess_line_5[3] == "B"{
                        cols3[4] = Color.green}

                    if guess_line_5[3] == "N"{
                        cols3[5] = Color.green}

                    if guess_line_5[3] == "M"{
                        cols3[6] = Color.green}}
                if guess_line_5[4].uppercased() == String(word[index3]){
                    three = true
                    pos3 = true
                    gl5c[4] = Color.green
                    if guess_line_5[4] == "Q"{
                        cols1[0] = Color.green}
                    
                    if guess_line_5[4] == "W"{
                        cols1[1] = Color.green}
                
                    if guess_line_5[4] == "E"{
                        cols1[2] = Color.green}
            
                    if guess_line_5[4] == "R"{
                        cols1[3] = Color.green}
                    
                    if guess_line_5[4] == "T"{
                        cols1[4] = Color.green}
                
                    if guess_line_5[4] == "Y"{
                        cols1[5] = Color.green}

                    if guess_line_5[4] == "U"{
                        cols1[6] = Color.green}

                    if guess_line_5[4] == "I"{
                        cols1[7] = Color.green}

                    if guess_line_5[4] == "O"{
                        cols1[8] = Color.green}
                
                    if guess_line_5[4] == "P"{
                        cols1[9] = Color.green}
                
                    
                    
                    
                    
                    if guess_line_5[4] == "A"{
                        cols2[0] = Color.green}
                    
                    if guess_line_5[4] == "S"{
                        cols2[1] = Color.green}
                
                    if guess_line_5[4] == "D"{
                        cols2[2] = Color.green}
            
                    if guess_line_5[4] == "F"{
                        cols2[3] = Color.green}
                    
                    if guess_line_5[4] == "G"{
                        cols2[4] = Color.green}
                
                    if guess_line_5[4] == "H"{
                        cols2[5] = Color.green}

                    if guess_line_5[4] == "J"{
                        cols2[6] = Color.green}

                    if guess_line_5[4] == "K"{
                        cols2[7] = Color.green}

                    if guess_line_5[4] == "L"{
                        cols2[8] = Color.green}
                
            
                    if guess_line_5[4] == "Z"{
                        cols3[0] = Color.green}
                
                    if guess_line_5[4] == "X"{
                        cols3[1] = Color.green}
            
                    if guess_line_5[4] == "C"{
                        cols3[2] = Color.green}
                    
                    if guess_line_5[4] == "V"{
                        cols3[3] = Color.green}
                
                    if guess_line_5[4] == "B"{
                        cols3[4] = Color.green}

                    if guess_line_5[4] == "N"{
                        cols3[5] = Color.green}

                    if guess_line_5[4] == "M"{
                        cols3[6] = Color.green}}
                
                if word.contains(guess_line_5[2].uppercased()) && one == false{
                   
                    if guess_line_5[2].uppercased() == String(word.prefix(upTo: index)) && pos1 == false{
                        pos1 = true
                        gl5c[2] = Color.green
                        if guess_line_5[2] == "Q"{
                            cols1[0] = Color.green}
                        
                        if guess_line_5[2] == "W"{
                            cols1[1] = Color.green}
                    
                        if guess_line_5[2] == "E"{
                            cols1[2] = Color.green}
                
                        if guess_line_5[2] == "R"{
                            cols1[3] = Color.green}
                        
                        if guess_line_5[2] == "T"{
                            cols1[4] = Color.green}
                    
                        if guess_line_5[2] == "Y"{
                            cols1[5] = Color.green}

                        if guess_line_5[2] == "U"{
                            cols1[6] = Color.green}

                        if guess_line_5[2] == "I"{
                            cols1[7] = Color.green}

                        if guess_line_5[2] == "O"{
                            cols1[8] = Color.green}
                    
                        if guess_line_5[2] == "P"{
                            cols1[9] = Color.green}
                    
                        
                        
                        
                        
                        if guess_line_5[2] == "A"{
                            cols2[0] = Color.green}
                        
                        if guess_line_5[2] == "S"{
                            cols2[1] = Color.green}
                    
                        if guess_line_5[2] == "D"{
                            cols2[2] = Color.green}
                
                        if guess_line_5[2] == "F"{
                            cols2[3] = Color.green}
                        
                        if guess_line_5[2] == "G"{
                            cols2[4] = Color.green}
                    
                        if guess_line_5[2] == "H"{
                            cols2[5] = Color.green}

                        if guess_line_5[2] == "J"{
                            cols2[6] = Color.green}

                        if guess_line_5[2] == "K"{
                            cols2[7] = Color.green}

                        if guess_line_5[2] == "L"{
                            cols2[8] = Color.green}
                    
                
                        if guess_line_5[2] == "Z"{
                            cols3[0] = Color.green}
                    
                        if guess_line_5[2] == "X"{
                            cols3[1] = Color.green}
                
                        if guess_line_5[2] == "C"{
                            cols3[2] = Color.green}
                        
                        if guess_line_5[2] == "V"{
                            cols3[3] = Color.green}
                    
                        if guess_line_5[2] == "B"{
                            cols3[4] = Color.green}

                        if guess_line_5[2] == "N"{
                            cols3[5] = Color.green}

                        if guess_line_5[2] == "M"{
                            cols3[6] = Color.green}}
                    else if guess_line_5[2].uppercased() == String(word[index2]) && pos2 == false{
                        pos2 = true
                        gl5c[2] = Color.yellow
                        if guess_line_5[2] == "Q" && cols1[0] != Color.green{
                            cols1[0] = Color.yellow}
                        
                        if guess_line_5[2] == "W" && cols1[1] != Color.green{
                            cols1[1] = Color.yellow}
                    
                        if guess_line_5[2] == "E" && cols1[2] != Color.green{
                            cols1[2] = Color.yellow}
                
                        if guess_line_5[2] == "R" && cols1[3] != Color.green{
                            cols1[3] = Color.yellow}
                        
                        if guess_line_5[2] == "T" && cols1[4] != Color.green{
                            cols1[4] = Color.yellow}
                    
                        if guess_line_5[2] == "Y" && cols1[5] != Color.green{
                            cols1[5] = Color.yellow}

                        if guess_line_5[2] == "U" && cols1[6] != Color.green{
                            cols1[6] = Color.yellow}

                        if guess_line_5[2] == "I" && cols1[7] != Color.green{
                            cols1[7] = Color.yellow}

                        if guess_line_5[2] == "O" && cols1[8] != Color.green{
                            cols1[8] = Color.yellow}
                    
                        if guess_line_5[2] == "P" && cols1[9] != Color.green{
                            cols1[9] = Color.yellow}
                    
                        
                        
                        
                        
                        if guess_line_5[2] == "A"  && cols2[0] != Color.green{
                            cols2[0] = Color.yellow}
                        
                        if guess_line_5[2] == "S" && cols2[1] != Color.green{
                            cols2[1] = Color.yellow}
                    
                        if guess_line_5[2] == "D" && cols2[2] != Color.green{
                            cols2[2] = Color.yellow}
                
                        if guess_line_5[2] == "F" && cols2[3] != Color.green{
                            cols2[3] = Color.yellow}
                        
                        if guess_line_5[2] == "G" && cols2[4] != Color.green{
                            cols2[4] = Color.yellow}
                    
                        if guess_line_5[2] == "H" && cols2[5] != Color.green{
                            cols2[5] = Color.yellow}

                        if guess_line_5[2] == "J" && cols2[6] != Color.green{
                            cols2[6] = Color.yellow}

                        if guess_line_5[2] == "K" && cols2[7] != Color.green{
                            cols2[7] = Color.yellow}

                        if guess_line_5[2] == "L" && cols2[8] != Color.green{
                            cols2[8] = Color.yellow}
                    
                
                        if guess_line_5[2] == "Z" && cols3[0] != Color.green{
                            cols3[0] = Color.yellow}
                    
                        if guess_line_5[2] == "X" && cols3[1] != Color.green{
                            cols3[1] = Color.yellow}
                
                        if guess_line_5[2] == "C" && cols3[2] != Color.green{
                            cols3[2] = Color.yellow}
                        
                        if guess_line_5[2] == "V" && cols3[3] != Color.green{
                            cols3[3] = Color.yellow}
                    
                        if guess_line_5[2] == "B" && cols3[4] != Color.green{
                            cols3[4] = Color.yellow}

                        if guess_line_5[2] == "N" && cols3[5] != Color.green{
                            cols3[5] = Color.yellow}

                        if guess_line_5[2] == "M" && cols3[6] != Color.green{
                            cols3[6] = Color.yellow}}
                    else if guess_line_5[2].uppercased() == String(word[index3]) && pos3 == false{
                        pos3 = true
                        gl5c[2] = Color.yellow
                        if guess_line_5[2] == "Q" && cols1[0] != Color.green{
                            cols1[0] = Color.yellow}
                        
                        if guess_line_5[2] == "W" && cols1[1] != Color.green{
                            cols1[1] = Color.yellow}
                    
                        if guess_line_5[2] == "E" && cols1[2] != Color.green{
                            cols1[2] = Color.yellow}
                
                        if guess_line_5[2] == "R" && cols1[3] != Color.green{
                            cols1[3] = Color.yellow}
                        
                        if guess_line_5[2] == "T" && cols1[4] != Color.green{
                            cols1[4] = Color.yellow}
                    
                        if guess_line_5[2] == "Y" && cols1[5] != Color.green{
                            cols1[5] = Color.yellow}

                        if guess_line_5[2] == "U" && cols1[6] != Color.green{
                            cols1[6] = Color.yellow}

                        if guess_line_5[2] == "I" && cols1[7] != Color.green{
                            cols1[7] = Color.yellow}

                        if guess_line_5[2] == "O" && cols1[8] != Color.green{
                            cols1[8] = Color.yellow}
                    
                        if guess_line_5[2] == "P" && cols1[9] != Color.green{
                            cols1[9] = Color.yellow}
                    
                        
                        
                        
                        
                        if guess_line_5[2] == "A"  && cols2[0] != Color.green{
                            cols2[0] = Color.yellow}
                        
                        if guess_line_5[2] == "S"  && cols2[1] != Color.green{
                            cols2[1] = Color.yellow}
                    
                        if guess_line_5[2] == "D"  && cols2[2] != Color.green{
                            cols2[2] = Color.yellow}
                
                        if guess_line_5[2] == "F" && cols2[3] != Color.green{
                            cols2[3] = Color.yellow}
                        
                        if guess_line_5[2] == "G" && cols2[4] != Color.green{
                            cols2[4] = Color.yellow}
                    
                        if guess_line_5[2] == "H" && cols2[5] != Color.green{
                            cols2[5] = Color.yellow}

                        if guess_line_5[2] == "J" && cols2[6] != Color.green{
                            cols2[6] = Color.yellow}

                        if guess_line_5[2] == "K" && cols2[7] != Color.green{
                            cols2[7] = Color.yellow}

                        if guess_line_5[2] == "L" && cols2[8] != Color.green{
                            cols2[8] = Color.yellow}
                    
                
                        if guess_line_5[2] == "Z" && cols3[0] != Color.green{
                            cols3[0] = Color.yellow}
                    
                        if guess_line_5[2] == "X" && cols3[1] != Color.green{
                            cols3[1] = Color.yellow}
                
                        if guess_line_5[2] == "C" && cols3[2] != Color.green{
                            cols3[2] = Color.yellow}
                        
                        if guess_line_5[2] == "V" && cols3[3] != Color.green{
                            cols3[3] = Color.yellow}
                    
                        if guess_line_5[2] == "B" && cols3[4] != Color.green{
                            cols3[4] = Color.yellow}

                        if guess_line_5[2] == "N" && cols3[5] != Color.green{
                            cols3[5] = Color.yellow}

                        if guess_line_5[2] == "M" && cols3[6] != Color.green{
                            cols3[6] = Color.yellow}}}
                else{
                    
                    if one == false{
                if guess_line_5[2] == "Q"{
                    cols1[0] = Color.gray}
                
                if guess_line_5[2] == "W"{
                    cols1[1] = Color.gray}
            
                if guess_line_5[2] == "E"{
                    cols1[2] = Color.gray}
        
                if guess_line_5[2] == "R"{
                    cols1[3] = Color.gray}
                
                if guess_line_5[2] == "T"{
                    cols1[4] = Color.gray}
            
                if guess_line_5[2] == "Y"{
                    cols1[5] = Color.gray}

                if guess_line_5[2] == "U"{
                    cols1[6] = Color.gray}

                if guess_line_5[2] == "I"{
                    cols1[7] = Color.gray}

                if guess_line_5[2] == "O"{
                    cols1[8] = Color.gray}
            
                if guess_line_5[2] == "P"{
                    cols1[9] = Color.gray}
            
                
                
                
                
                if guess_line_5[2] == "A"{
                    cols2[0] = Color.gray}
                
                if guess_line_5[2] == "S"{
                    cols2[1] = Color.gray}
            
                if guess_line_5[2] == "D"{
                    cols2[2] = Color.gray}
        
                if guess_line_5[2] == "F"{
                    cols2[3] = Color.gray}
                
                if guess_line_5[2] == "G"{
                    cols2[4] = Color.gray}
            
                if guess_line_5[2] == "H"{
                    cols2[5] = Color.gray}

                if guess_line_5[2] == "J"{
                    cols2[6] = Color.gray}

                if guess_line_5[2] == "K"{
                    cols2[7] = Color.gray}

                if guess_line_5[2] == "L"{
                    cols2[8] = Color.gray}
            
        
                if guess_line_5[2] == "Z"{
                    cols3[0] = Color.gray}
            
                if guess_line_5[2] == "X"{
                    cols3[1] = Color.gray}
        
                if guess_line_5[2] == "C"{
                    cols3[2] = Color.gray}
                
                if guess_line_5[2] == "V"{
                    cols3[3] = Color.gray}
            
                if guess_line_5[2] == "B"{
                    cols3[4] = Color.gray}

                if guess_line_5[2] == "N"{
                    cols3[5] = Color.gray}

                if guess_line_5[2] == "M"{
                    cols3[6] = Color.gray}}}
                
                    
                if word.contains(guess_line_5[3].uppercased()) && two == false{
                    
                    if guess_line_5[3].uppercased() == String(word[index2]) && pos2 == false{
                        pos2 = true
                        gl5c[3] = Color.green
                        if guess_line_5[3] == "Q"{
                            cols1[0] = Color.green}
                        
                        if guess_line_5[3] == "W"{
                            cols1[1] = Color.green}
                    
                        if guess_line_5[3] == "E"{
                            cols1[2] = Color.green}
                
                        if guess_line_5[3] == "R"{
                            cols1[3] = Color.green}
                        
                        if guess_line_5[3] == "T"{
                            cols1[4] = Color.green}
                    
                        if guess_line_5[3] == "Y"{
                            cols1[5] = Color.green}

                        if guess_line_5[3] == "U"{
                            cols1[6] = Color.green}

                        if guess_line_5[3] == "I"{
                            cols1[7] = Color.green}

                        if guess_line_5[3] == "O"{
                            cols1[8] = Color.green}
                    
                        if guess_line_5[3] == "P"{
                            cols1[9] = Color.green}
                    
                        
                        
                        
                        
                        if guess_line_5[3] == "A"{
                            cols2[0] = Color.green}
                        
                        if guess_line_5[3] == "S"{
                            cols2[1] = Color.green}
                    
                        if guess_line_5[3] == "D"{
                            cols2[2] = Color.green}
                
                        if guess_line_5[3] == "F"{
                            cols2[3] = Color.green}
                        
                        if guess_line_5[3] == "G"{
                            cols2[4] = Color.green}
                    
                        if guess_line_5[3] == "H"{
                            cols2[5] = Color.green}

                        if guess_line_5[3] == "J"{
                            cols2[6] = Color.green}

                        if guess_line_5[3] == "K"{
                            cols2[7] = Color.green}

                        if guess_line_5[3] == "L"{
                            cols2[8] = Color.green}
                    
                
                        if guess_line_5[3] == "Z"{
                            cols3[0] = Color.green}
                    
                        if guess_line_5[3] == "X"{
                            cols3[1] = Color.green}
                
                        if guess_line_5[3] == "C"{
                            cols3[2] = Color.green}
                        
                        if guess_line_5[3] == "V"{
                            cols3[3] = Color.green}
                    
                        if guess_line_5[3] == "B"{
                            cols3[4] = Color.green}

                        if guess_line_5[3] == "N"{
                            cols3[5] = Color.green}

                        if guess_line_5[3] == "M"{
                            cols3[6] = Color.green}}
                    else if guess_line_5[3].uppercased() == String(word.prefix(upTo: index)) && pos1 == false{
                        pos1 = true
                        gl5c[3] = Color.yellow
                        if guess_line_5[3] == "Q" && cols1[0] != Color.green{
                            cols1[0] = Color.yellow}
                        
                        if guess_line_5[3] == "W" && cols1[1] != Color.green{
                            cols1[1] = Color.yellow}
                    
                        if guess_line_5[3] == "E" && cols1[2] != Color.green{
                            cols1[2] = Color.yellow}
                
                        if guess_line_5[3] == "R" && cols1[3] != Color.green{
                            cols1[3] = Color.yellow}
                        
                        if guess_line_5[3] == "T" && cols1[4] != Color.green{
                            cols1[4] = Color.yellow}
                    
                        if guess_line_5[3] == "Y" && cols1[5] != Color.green{
                            cols1[5] = Color.yellow}

                        if guess_line_5[3] == "U" && cols1[6] != Color.green{
                            cols1[6] = Color.yellow}

                        if guess_line_5[3] == "I" && cols1[7] != Color.green{
                            cols1[7] = Color.yellow}

                        if guess_line_5[3] == "O" && cols1[8] != Color.green{
                            cols1[8] = Color.yellow}
                    
                        if guess_line_5[3] == "P" && cols1[9] != Color.green{
                            cols1[9] = Color.yellow}
                    
                        
                        
                        
                        
                        if guess_line_5[3] == "A"{
                            cols2[0] = Color.yellow}
                        
                        if guess_line_5[3] == "S"{
                            cols2[1] = Color.yellow}
                    
                        if guess_line_5[3] == "D"{
                            cols2[2] = Color.yellow}
                
                        if guess_line_5[3] == "F"{
                            cols2[3] = Color.yellow}
                        
                        if guess_line_5[3] == "G"{
                            cols2[4] = Color.yellow}
                    
                        if guess_line_5[3] == "H"{
                            cols2[5] = Color.yellow}

                        if guess_line_5[3] == "J"{
                            cols2[6] = Color.yellow}

                        if guess_line_5[3] == "K"{
                            cols2[7] = Color.yellow}

                        if guess_line_5[3] == "L"{
                            cols2[8] = Color.yellow}
                    
                
                        if guess_line_5[3] == "Z"{
                            cols3[0] = Color.yellow}
                    
                        if guess_line_5[3] == "X"{
                            cols3[1] = Color.yellow}
                
                        if guess_line_5[3] == "C"{
                            cols3[2] = Color.yellow}
                        
                        if guess_line_5[3] == "V"{
                            cols3[3] = Color.yellow}
                    
                        if guess_line_5[3] == "B"{
                            cols3[4] = Color.yellow}

                        if guess_line_5[3] == "N"{
                            cols3[5] = Color.yellow}

                        if guess_line_5[3] == "M"{
                            cols3[6] = Color.yellow}}
                    else if guess_line_5[3].uppercased() == String(word[index3]) && pos3 == false{
                        pos3 = true
                        gl5c[3] = Color.yellow
                        if guess_line_5[3] == "Q" && cols1[0] != Color.green{
                            cols1[0] = Color.yellow}
                        
                        if guess_line_5[3] == "W"{
                            cols1[1] = Color.yellow}
                    
                        if guess_line_5[3] == "E"{
                            cols1[2] = Color.yellow}
                
                        if guess_line_5[3] == "R"{
                            cols1[3] = Color.yellow}
                        
                        if guess_line_5[3] == "T"{
                            cols1[4] = Color.yellow}
                    
                        if guess_line_5[3] == "Y"{
                            cols1[5] = Color.yellow}

                        if guess_line_5[3] == "U"{
                            cols1[6] = Color.yellow}

                        if guess_line_5[3] == "I"{
                            cols1[7] = Color.yellow}

                        if guess_line_5[3] == "O"{
                            cols1[8] = Color.yellow}
                    
                        if guess_line_5[3] == "P"{
                            cols1[9] = Color.yellow}
                    
                        
                        
                        
                        
                        if guess_line_5[3] == "A"{
                            cols2[0] = Color.yellow}
                        
                        if guess_line_5[3] == "S"{
                            cols2[1] = Color.yellow}
                    
                        if guess_line_5[3] == "D"{
                            cols2[2] = Color.yellow}
                
                        if guess_line_5[3] == "F"{
                            cols2[3] = Color.yellow}
                        
                        if guess_line_5[3] == "G"{
                            cols2[4] = Color.yellow}
                    
                        if guess_line_5[3] == "H"{
                            cols2[5] = Color.yellow}

                        if guess_line_5[3] == "J"{
                            cols2[6] = Color.yellow}

                        if guess_line_5[3] == "K"{
                            cols2[7] = Color.yellow}

                        if guess_line_5[3] == "L"{
                            cols2[8] = Color.yellow}
                    
                
                        if guess_line_5[3] == "Z"{
                            cols3[0] = Color.yellow}
                    
                        if guess_line_5[3] == "X"{
                            cols3[1] = Color.yellow}
                
                        if guess_line_5[3] == "C"{
                            cols3[2] = Color.yellow}
                        
                        if guess_line_5[3] == "V"{
                            cols3[3] = Color.yellow}
                    
                        if guess_line_5[3] == "B"{
                            cols3[4] = Color.yellow}

                        if guess_line_5[3] == "N"{
                            cols3[5] = Color.yellow}

                        if guess_line_5[3] == "M"{
                            cols3[6] = Color.yellow}}}
                else{
                    if two == false{
                if guess_line_5[3] == "Q"{
                    cols1[0] = Color.gray}
                
                if guess_line_5[3] == "W"{
                    cols1[1] = Color.gray}
            
                if guess_line_5[3] == "E"{
                    cols1[2] = Color.gray}
        
                if guess_line_5[3] == "R"{
                    cols1[3] = Color.gray}
                
                if guess_line_5[3] == "T"{
                    cols1[4] = Color.gray}
            
                if guess_line_5[3] == "Y"{
                    cols1[5] = Color.gray}

                if guess_line_5[3] == "U"{
                    cols1[6] = Color.gray}

                if guess_line_5[3] == "I"{
                    cols1[7] = Color.gray}

                if guess_line_5[3] == "O"{
                    cols1[8] = Color.gray}
            
                if guess_line_5[3] == "P"{
                    cols1[9] = Color.gray}
            
                
                
                
                
                if guess_line_5[3] == "A"{
                    cols2[0] = Color.gray}
                
                if guess_line_5[3] == "S"{
                    cols2[1] = Color.gray}
            
                if guess_line_5[3] == "D"{
                    cols2[2] = Color.gray}
        
                if guess_line_5[3] == "F"{
                    cols2[3] = Color.gray}
                
                if guess_line_5[3] == "G"{
                    cols2[4] = Color.gray}
            
                if guess_line_5[3] == "H"{
                    cols2[5] = Color.gray}

                if guess_line_5[3] == "J"{
                    cols2[6] = Color.gray}

                if guess_line_5[3] == "K"{
                    cols2[7] = Color.gray}

                if guess_line_5[3] == "L"{
                    cols2[8] = Color.gray}
            
        
                if guess_line_5[3] == "Z"{
                    cols3[0] = Color.gray}
            
                if guess_line_5[3] == "X"{
                    cols3[1] = Color.gray}
        
                if guess_line_5[3] == "C"{
                    cols3[2] = Color.gray}
                
                if guess_line_5[3] == "V"{
                    cols3[3] = Color.gray}
            
                if guess_line_5[3] == "B"{
                    cols3[4] = Color.gray}

                if guess_line_5[3] == "N"{
                    cols3[5] = Color.gray}

                if guess_line_5[3] == "M"{
                    cols3[6] = Color.gray}}}
                
                if word.contains(guess_line_5[4].uppercased()) && three == false{
                   
                    if guess_line_5[4].uppercased() == String(word[index3]) && pos3 == false{
                        pos3 = true
                        gl5c[4] = Color.green
                        if guess_line_5[4] == "Q"{
                            cols1[0] = Color.green}
                        
                        if guess_line_5[4] == "W"{
                            cols1[1] = Color.green}
                    
                        if guess_line_5[4] == "E"{
                            cols1[2] = Color.green}
                
                        if guess_line_5[4] == "R"{
                            cols1[3] = Color.green}
                        
                        if guess_line_5[4] == "T"{
                            cols1[4] = Color.green}
                    
                        if guess_line_5[4] == "Y"{
                            cols1[5] = Color.green}

                        if guess_line_5[4] == "U"{
                            cols1[6] = Color.green}

                        if guess_line_5[4] == "I"{
                            cols1[7] = Color.green}

                        if guess_line_5[4] == "O"{
                            cols1[8] = Color.green}
                    
                        if guess_line_5[4] == "P"{
                            cols1[9] = Color.green}
                    
                        
                        
                        
                        
                        if guess_line_5[4] == "A"{
                            cols2[0] = Color.green}
                        
                        if guess_line_5[4] == "S"{
                            cols2[1] = Color.green}
                    
                        if guess_line_5[4] == "D"{
                            cols2[2] = Color.green}
                
                        if guess_line_5[4] == "F"{
                            cols2[3] = Color.green}
                        
                        if guess_line_5[4] == "G"{
                            cols2[4] = Color.green}
                    
                        if guess_line_5[4] == "H"{
                            cols2[5] = Color.green}

                        if guess_line_5[4] == "J"{
                            cols2[6] = Color.green}

                        if guess_line_5[4] == "K"{
                            cols2[7] = Color.green}

                        if guess_line_5[4] == "L"{
                            cols2[8] = Color.green}
                    
                
                        if guess_line_5[4] == "Z"{
                            cols3[0] = Color.green}
                    
                        if guess_line_5[4] == "X"{
                            cols3[1] = Color.green}
                
                        if guess_line_5[4] == "C"{
                            cols3[2] = Color.green}
                        
                        if guess_line_5[4] == "V"{
                            cols3[3] = Color.green}
                    
                        if guess_line_5[4] == "B"{
                            cols3[4] = Color.green}

                        if guess_line_5[4] == "N"{
                            cols3[5] = Color.green}

                        if guess_line_5[4] == "M"{
                            cols3[6] = Color.green}}
                    else if guess_line_5[4].uppercased() == String(word.prefix(upTo: index)) && pos1 == false{
                        pos1 = true
                        gl5c[4] = Color.yellow
                        if guess_line_5[4] == "Q"{
                            cols1[0] = Color.yellow}
                        
                        if guess_line_5[4] == "W"{
                            cols1[1] = Color.yellow}
                    
                        if guess_line_5[4] == "E"{
                            cols1[2] = Color.yellow}
                
                        if guess_line_5[4] == "R"{
                            cols1[3] = Color.yellow}
                        
                        if guess_line_5[4] == "T"{
                            cols1[4] = Color.yellow}
                    
                        if guess_line_5[4] == "Y"{
                            cols1[5] = Color.yellow}

                        if guess_line_5[4] == "U"{
                            cols1[6] = Color.yellow}

                        if guess_line_5[4] == "I"{
                            cols1[7] = Color.yellow}

                        if guess_line_5[4] == "O"{
                            cols1[8] = Color.yellow}
                    
                        if guess_line_5[4] == "P"{
                            cols1[9] = Color.yellow}
                    
                        
                        
                        
                        
                        if guess_line_5[4] == "A"{
                            cols2[0] = Color.yellow}
                        
                        if guess_line_5[4] == "S"{
                            cols2[1] = Color.yellow}
                    
                        if guess_line_5[4] == "D"{
                            cols2[2] = Color.yellow}
                
                        if guess_line_5[4] == "F"{
                            cols2[3] = Color.yellow}
                        
                        if guess_line_5[4] == "G"{
                            cols2[4] = Color.yellow}
                    
                        if guess_line_5[4] == "H"{
                            cols2[5] = Color.yellow}

                        if guess_line_5[4] == "J"{
                            cols2[6] = Color.yellow}

                        if guess_line_5[4] == "K"{
                            cols2[7] = Color.yellow}

                        if guess_line_5[4] == "L"{
                            cols2[8] = Color.yellow}
                    
                
                        if guess_line_5[4] == "Z"{
                            cols3[0] = Color.yellow}
                    
                        if guess_line_5[4] == "X"{
                            cols3[1] = Color.yellow}
                
                        if guess_line_5[4] == "C"{
                            cols3[2] = Color.yellow}
                        
                        if guess_line_5[4] == "V"{
                            cols3[3] = Color.yellow}
                    
                        if guess_line_5[4] == "B"{
                            cols3[4] = Color.yellow}

                        if guess_line_5[4] == "N"{
                            cols3[5] = Color.yellow}

                        if guess_line_5[4] == "M"{
                            cols3[6] = Color.yellow}}
                    else if guess_line_5[4].uppercased() == String(word[index2]) && pos2 == false{
                        pos2 = true
                        gl5c[4] = Color.yellow
                        if guess_line_5[4] == "Q"{
                            cols1[0] = Color.yellow}
                        
                        if guess_line_5[4] == "W"{
                            cols1[1] = Color.yellow}
                    
                        if guess_line_5[4] == "E"{
                            cols1[2] = Color.yellow}
                
                        if guess_line_5[4] == "R"{
                            cols1[3] = Color.yellow}
                        
                        if guess_line_5[4] == "T"{
                            cols1[4] = Color.yellow}
                    
                        if guess_line_5[4] == "Y"{
                            cols1[5] = Color.yellow}

                        if guess_line_5[4] == "U"{
                            cols1[6] = Color.yellow}

                        if guess_line_5[4] == "I"{
                            cols1[7] = Color.yellow}

                        if guess_line_5[4] == "O"{
                            cols1[8] = Color.yellow}
                    
                        if guess_line_5[4] == "P"{
                            cols1[9] = Color.yellow}
                    
                        
                        
                        
                        
                        if guess_line_5[4] == "A"{
                            cols2[0] = Color.yellow}
                        
                        if guess_line_5[4] == "S"{
                            cols2[1] = Color.yellow}
                    
                        if guess_line_5[4] == "D"{
                            cols2[2] = Color.yellow}
                
                        if guess_line_5[4] == "F"{
                            cols2[3] = Color.yellow}
                        
                        if guess_line_5[4] == "G"{
                            cols2[4] = Color.yellow}
                    
                        if guess_line_5[4] == "H"{
                            cols2[5] = Color.yellow}

                        if guess_line_5[4] == "J"{
                            cols2[6] = Color.yellow}

                        if guess_line_5[4] == "K"{
                            cols2[7] = Color.yellow}

                        if guess_line_5[4] == "L"{
                            cols2[8] = Color.yellow}
                    
                
                        if guess_line_5[4] == "Z"{
                            cols3[0] = Color.yellow}
                    
                        if guess_line_5[4] == "X"{
                            cols3[1] = Color.yellow}
                
                        if guess_line_5[4] == "C"{
                            cols3[2] = Color.yellow}
                        
                        if guess_line_5[4] == "V"{
                            cols3[3] = Color.yellow}
                    
                        if guess_line_5[4] == "B"{
                            cols3[4] = Color.yellow}

                        if guess_line_5[4] == "N"{
                            cols3[5] = Color.yellow}

                        if guess_line_5[4] == "M"{
                            cols3[6] = Color.yellow}}}
                else{
                    if three == false{
                if guess_line_5[4] == "Q"{
                    cols1[0] = Color.gray}
                
                if guess_line_5[4] == "W"{
                    cols1[1] = Color.gray}
            
                if guess_line_5[4] == "E"{
                    cols1[2] = Color.gray}
        
                if guess_line_5[4] == "R"{
                    cols1[3] = Color.gray}
                
                if guess_line_5[4] == "T"{
                    cols1[4] = Color.gray}
            
                if guess_line_5[4] == "Y"{
                    cols1[5] = Color.gray}

                if guess_line_5[4] == "U"{
                    cols1[6] = Color.gray}

                if guess_line_5[4] == "I"{
                    cols1[7] = Color.gray}

                if guess_line_5[4] == "O"{
                    cols1[8] = Color.gray}
            
                if guess_line_5[4] == "P"{
                    cols1[9] = Color.gray}
            
                
                
                
                
                if guess_line_5[4] == "A"{
                    cols2[0] = Color.gray}
                
                if guess_line_5[4] == "S"{
                    cols2[1] = Color.gray}
            
                if guess_line_5[4] == "D"{
                    cols2[2] = Color.gray}
        
                if guess_line_5[4] == "F"{
                    cols2[3] = Color.gray}
                
                if guess_line_5[4] == "G"{
                    cols2[4] = Color.gray}
            
                if guess_line_5[4] == "H"{
                    cols2[5] = Color.gray}

                if guess_line_5[4] == "J"{
                    cols2[6] = Color.gray}

                if guess_line_5[4] == "K"{
                    cols2[7] = Color.gray}

                if guess_line_5[4] == "L"{
                    cols2[8] = Color.gray}
            
        
                if guess_line_5[4] == "Z"{
                    cols3[0] = Color.gray}
            
                if guess_line_5[4] == "X"{
                    cols3[1] = Color.gray}
        
                if guess_line_5[4] == "C"{
                    cols3[2] = Color.gray}
                
                if guess_line_5[4] == "V"{
                    cols3[3] = Color.gray}
            
                if guess_line_5[4] == "B"{
                    cols3[4] = Color.gray}

                if guess_line_5[4] == "N"{
                    cols3[5] = Color.gray}

                if guess_line_5[4] == "M"{
                    cols3[6] = Color.gray}}}
                
                
                if gl5c[2] == Color.white{
                    gl5c[2] = Color.gray
                }
                
                if gl5c[3] == Color.white{
                    gl5c[3] = Color.gray
                }
                
                if gl5c[4] == Color.white{
                    gl5c[4] = Color.gray
                }
            }
            
            if Try == 6{
                if guess_line_6[2].uppercased() == String(word.prefix(upTo: index)){
                    pos1 = true
                    one = true
                    gl6c[2] = Color.green
                    if guess_line_6[2] == "Q"{
                        cols1[0] = Color.green}
                    
                    if guess_line_6[2] == "W"{
                        cols1[1] = Color.green}
                
                    if guess_line_6[2] == "E"{
                        cols1[2] = Color.green}
            
                    if guess_line_6[2] == "R"{
                        cols1[3] = Color.green}
                    
                    if guess_line_6[2] == "T"{
                        cols1[4] = Color.green}
                
                    if guess_line_6[2] == "Y"{
                        cols1[5] = Color.green}

                    if guess_line_6[2] == "U"{
                        cols1[6] = Color.green}

                    if guess_line_6[2] == "I"{
                        cols1[7] = Color.green}

                    if guess_line_6[2] == "O"{
                        cols1[8] = Color.green}
                
                    if guess_line_6[2] == "P"{
                        cols1[9] = Color.green}
                
                    
                    
                    
                    
                    if guess_line_6[2] == "A"{
                        cols2[0] = Color.green}
                    
                    if guess_line_6[2] == "S"{
                        cols2[1] = Color.green}
                
                    if guess_line_6[2] == "D"{
                        cols2[2] = Color.green}
            
                    if guess_line_6[2] == "F"{
                        cols2[3] = Color.green}
                    
                    if guess_line_6[2] == "G"{
                        cols2[4] = Color.green}
                
                    if guess_line_6[2] == "H"{
                        cols2[5] = Color.green}

                    if guess_line_6[2] == "J"{
                        cols2[6] = Color.green}

                    if guess_line_6[2] == "K"{
                        cols2[7] = Color.green}

                    if guess_line_6[2] == "L"{
                        cols2[8] = Color.green}
                
            
                    if guess_line_6[2] == "Z"{
                        cols3[0] = Color.green}
                
                    if guess_line_6[2] == "X"{
                        cols3[1] = Color.green}
            
                    if guess_line_6[2] == "C"{
                        cols3[2] = Color.green}
                    
                    if guess_line_6[2] == "V"{
                        cols3[3] = Color.green}
                
                    if guess_line_6[2] == "B"{
                        cols3[4] = Color.green}

                    if guess_line_6[2] == "N"{
                        cols3[5] = Color.green}

                    if guess_line_6[2] == "M"{
                        cols3[6] = Color.green}}
                if guess_line_6[3].uppercased() == String(word[index2]){
                    two = true
                    pos2 = true
                    gl6c[3] = Color.green
                    if guess_line_6[3] == "Q"{
                        cols1[0] = Color.green}
                    
                    if guess_line_6[3] == "W"{
                        cols1[1] = Color.green}
                
                    if guess_line_6[3] == "E"{
                        cols1[2] = Color.green}
            
                    if guess_line_6[3] == "R"{
                        cols1[3] = Color.green}
                    
                    if guess_line_6[3] == "T"{
                        cols1[4] = Color.green}
                
                    if guess_line_6[3] == "Y"{
                        cols1[5] = Color.green}

                    if guess_line_6[3] == "U"{
                        cols1[6] = Color.green}

                    if guess_line_6[3] == "I"{
                        cols1[7] = Color.green}

                    if guess_line_6[3] == "O"{
                        cols1[8] = Color.green}
                
                    if guess_line_6[3] == "P"{
                        cols1[9] = Color.green}
                
                    
                    
                    
                    
                    if guess_line_6[3] == "A"{
                        cols2[0] = Color.green}
                    
                    if guess_line_6[3] == "S"{
                        cols2[1] = Color.green}
                
                    if guess_line_6[3] == "D"{
                        cols2[2] = Color.green}
            
                    if guess_line_6[3] == "F"{
                        cols2[3] = Color.green}
                    
                    if guess_line_6[3] == "G"{
                        cols2[4] = Color.green}
                
                    if guess_line_6[3] == "H"{
                        cols2[5] = Color.green}

                    if guess_line_6[3] == "J"{
                        cols2[6] = Color.green}

                    if guess_line_6[3] == "K"{
                        cols2[7] = Color.green}

                    if guess_line_6[3] == "L"{
                        cols2[8] = Color.green}
                
            
                    if guess_line_6[3] == "Z"{
                        cols3[0] = Color.green}
                
                    if guess_line_6[3] == "X"{
                        cols3[1] = Color.green}
            
                    if guess_line_6[3] == "C"{
                        cols3[2] = Color.green}
                    
                    if guess_line_6[3] == "V"{
                        cols3[3] = Color.green}
                
                    if guess_line_6[3] == "B"{
                        cols3[4] = Color.green}

                    if guess_line_6[3] == "N"{
                        cols3[5] = Color.green}

                    if guess_line_6[3] == "M"{
                        cols3[6] = Color.green}}
                if guess_line_6[4].uppercased() == String(word[index3]){
                    three = true
                    pos3 = true
                    gl6c[4] = Color.green
                    if guess_line_6[4] == "Q"{
                        cols1[0] = Color.green}
                    
                    if guess_line_6[4] == "W"{
                        cols1[1] = Color.green}
                
                    if guess_line_6[4] == "E"{
                        cols1[2] = Color.green}
            
                    if guess_line_6[4] == "R"{
                        cols1[3] = Color.green}
                    
                    if guess_line_6[4] == "T"{
                        cols1[4] = Color.green}
                
                    if guess_line_6[4] == "Y"{
                        cols1[5] = Color.green}

                    if guess_line_6[4] == "U"{
                        cols1[6] = Color.green}

                    if guess_line_6[4] == "I"{
                        cols1[7] = Color.green}

                    if guess_line_6[4] == "O"{
                        cols1[8] = Color.green}
                
                    if guess_line_6[4] == "P"{
                        cols1[9] = Color.green}
                
                    
                    
                    
                    
                    if guess_line_6[4] == "A"{
                        cols2[0] = Color.green}
                    
                    if guess_line_6[4] == "S"{
                        cols2[1] = Color.green}
                
                    if guess_line_6[4] == "D"{
                        cols2[2] = Color.green}
            
                    if guess_line_6[4] == "F"{
                        cols2[3] = Color.green}
                    
                    if guess_line_6[4] == "G"{
                        cols2[4] = Color.green}
                
                    if guess_line_6[4] == "H"{
                        cols2[5] = Color.green}

                    if guess_line_6[4] == "J"{
                        cols2[6] = Color.green}

                    if guess_line_6[4] == "K"{
                        cols2[7] = Color.green}

                    if guess_line_6[4] == "L"{
                        cols2[8] = Color.green}
                
            
                    if guess_line_6[4] == "Z"{
                        cols3[0] = Color.green}
                
                    if guess_line_6[4] == "X"{
                        cols3[1] = Color.green}
            
                    if guess_line_6[4] == "C"{
                        cols3[2] = Color.green}
                    
                    if guess_line_6[4] == "V"{
                        cols3[3] = Color.green}
                
                    if guess_line_6[4] == "B"{
                        cols3[4] = Color.green}

                    if guess_line_6[4] == "N"{
                        cols3[5] = Color.green}

                    if guess_line_6[4] == "M"{
                        cols3[6] = Color.green}}
                if word.contains(guess_line_6[2].uppercased()) && one == false{
                   
                    if guess_line_6[2].uppercased() == String(word.prefix(upTo: index)) && pos1 == false{
                        gl6c[2] = Color.green
                        if guess_line_6[2] == "Q"{
                            cols1[0] = Color.green}
                        
                        if guess_line_6[2] == "W"{
                            cols1[1] = Color.green}
                    
                        if guess_line_6[2] == "E"{
                            cols1[2] = Color.green}
                
                        if guess_line_6[2] == "R"{
                            cols1[3] = Color.green}
                        
                        if guess_line_6[2] == "T"{
                            cols1[4] = Color.green}
                    
                        if guess_line_6[2] == "Y"{
                            cols1[5] = Color.green}

                        if guess_line_6[2] == "U"{
                            cols1[6] = Color.green}

                        if guess_line_6[2] == "I"{
                            cols1[7] = Color.green}

                        if guess_line_6[2] == "O"{
                            cols1[8] = Color.green}
                    
                        if guess_line_6[2] == "P"{
                            cols1[9] = Color.green}
                    
                        
                        
                        
                        
                        if guess_line_6[2] == "A"{
                            cols2[0] = Color.green}
                        
                        if guess_line_6[2] == "S"{
                            cols2[1] = Color.green}
                    
                        if guess_line_6[2] == "D"{
                            cols2[2] = Color.green}
                
                        if guess_line_6[2] == "F"{
                            cols2[3] = Color.green}
                        
                        if guess_line_6[2] == "G"{
                            cols2[4] = Color.green}
                    
                        if guess_line_6[2] == "H"{
                            cols2[5] = Color.green}

                        if guess_line_6[2] == "J"{
                            cols2[6] = Color.green}

                        if guess_line_6[2] == "K"{
                            cols2[7] = Color.green}

                        if guess_line_6[2] == "L"{
                            cols2[8] = Color.green}
                    
                
                        if guess_line_6[2] == "Z"{
                            cols3[0] = Color.green}
                    
                        if guess_line_6[2] == "X"{
                            cols3[1] = Color.green}
                
                        if guess_line_6[2] == "C"{
                            cols3[2] = Color.green}
                        
                        if guess_line_6[2] == "V"{
                            cols3[3] = Color.green}
                    
                        if guess_line_6[2] == "B"{
                            cols3[4] = Color.green}

                        if guess_line_6[2] == "N"{
                            cols3[5] = Color.green}

                        if guess_line_6[2] == "M"{
                            cols3[6] = Color.green}}
                    else if guess_line_6[2].uppercased() == String(word[index2]) && pos2 == false{
                        gl6c[2] = Color.yellow
                        if guess_line_6[2] == "Q" && cols1[0] != Color.green{
                            cols1[0] = Color.yellow}
                        
                        if guess_line_6[2] == "W" && cols1[1] != Color.green{
                            cols1[1] = Color.yellow}
                    
                        if guess_line_6[2] == "E" && cols1[2] != Color.green{
                            cols1[2] = Color.yellow}
                
                        if guess_line_6[2] == "R" && cols1[3] != Color.green{
                            cols1[3] = Color.yellow}
                        
                        if guess_line_6[2] == "T" && cols1[4] != Color.green{
                            cols1[4] = Color.yellow}
                    
                        if guess_line_6[2] == "Y" && cols1[5] != Color.green{
                            cols1[5] = Color.yellow}

                        if guess_line_6[2] == "U" && cols1[6] != Color.green{
                            cols1[6] = Color.yellow}

                        if guess_line_6[2] == "I" && cols1[7] != Color.green{
                            cols1[7] = Color.yellow}

                        if guess_line_6[2] == "O" && cols1[8] != Color.green{
                            cols1[8] = Color.yellow}
                    
                        if guess_line_6[2] == "P" && cols1[9] != Color.green{
                            cols1[9] = Color.yellow}
                    
                        
                        
                        
                        
                        if guess_line_6[2] == "A"  && cols2[0] != Color.green{
                            cols2[0] = Color.yellow}
                        
                        if guess_line_6[2] == "S" && cols2[1] != Color.green{
                            cols2[1] = Color.yellow}
                    
                        if guess_line_6[2] == "D" && cols2[2] != Color.green{
                            cols2[2] = Color.yellow}
                
                        if guess_line_6[2] == "F" && cols2[3] != Color.green{
                            cols2[3] = Color.yellow}
                        
                        if guess_line_6[2] == "G" && cols2[4] != Color.green{
                            cols2[4] = Color.yellow}
                    
                        if guess_line_6[2] == "H" && cols2[5] != Color.green{
                            cols2[5] = Color.yellow}

                        if guess_line_6[2] == "J" && cols2[6] != Color.green{
                            cols2[6] = Color.yellow}

                        if guess_line_6[2] == "K" && cols2[7] != Color.green{
                            cols2[7] = Color.yellow}

                        if guess_line_6[2] == "L" && cols2[8] != Color.green{
                            cols2[8] = Color.yellow}
                    
                
                        if guess_line_6[2] == "Z" && cols3[0] != Color.green{
                            cols3[0] = Color.yellow}
                    
                        if guess_line_6[2] == "X" && cols3[1] != Color.green{
                            cols3[1] = Color.yellow}
                
                        if guess_line_6[2] == "C" && cols3[2] != Color.green{
                            cols3[2] = Color.yellow}
                        
                        if guess_line_6[2] == "V" && cols3[3] != Color.green{
                            cols3[3] = Color.yellow}
                    
                        if guess_line_6[2] == "B" && cols3[4] != Color.green{
                            cols3[4] = Color.yellow}

                        if guess_line_6[2] == "N" && cols3[5] != Color.green{
                            cols3[5] = Color.yellow}

                        if guess_line_6[2] == "M" && cols3[6] != Color.green{
                            cols3[6] = Color.yellow}}
                    else if guess_line_6[2].uppercased() == String(word[index3]) && pos3 == false{
                        gl6c[2] = Color.yellow
                        if guess_line_6[2] == "Q" && cols1[0] != Color.green{
                            cols1[0] = Color.yellow}
                        
                        if guess_line_6[2] == "W" && cols1[1] != Color.green{
                            cols1[1] = Color.yellow}
                    
                        if guess_line_6[2] == "E" && cols1[2] != Color.green{
                            cols1[2] = Color.yellow}
                
                        if guess_line_6[2] == "R" && cols1[3] != Color.green{
                            cols1[3] = Color.yellow}
                        
                        if guess_line_6[2] == "T" && cols1[4] != Color.green{
                            cols1[4] = Color.yellow}
                    
                        if guess_line_6[2] == "Y" && cols1[5] != Color.green{
                            cols1[5] = Color.yellow}

                        if guess_line_6[2] == "U" && cols1[6] != Color.green{
                            cols1[6] = Color.yellow}

                        if guess_line_6[2] == "I" && cols1[7] != Color.green{
                            cols1[7] = Color.yellow}

                        if guess_line_6[2] == "O" && cols1[8] != Color.green{
                            cols1[8] = Color.yellow}
                    
                        if guess_line_6[2] == "P" && cols1[9] != Color.green{
                            cols1[9] = Color.yellow}
                    
                        
                        
                        
                        
                        if guess_line_6[2] == "A"  && cols2[0] != Color.green{
                            cols2[0] = Color.yellow}
                        
                        if guess_line_6[2] == "S"  && cols2[1] != Color.green{
                            cols2[1] = Color.yellow}
                    
                        if guess_line_6[2] == "D"  && cols2[2] != Color.green{
                            cols2[2] = Color.yellow}
                
                        if guess_line_6[2] == "F" && cols2[3] != Color.green{
                            cols2[3] = Color.yellow}
                        
                        if guess_line_6[2] == "G" && cols2[4] != Color.green{
                            cols2[4] = Color.yellow}
                    
                        if guess_line_6[2] == "H" && cols2[5] != Color.green{
                            cols2[5] = Color.yellow}

                        if guess_line_6[2] == "J" && cols2[6] != Color.green{
                            cols2[6] = Color.yellow}

                        if guess_line_6[2] == "K" && cols2[7] != Color.green{
                            cols2[7] = Color.yellow}

                        if guess_line_6[2] == "L" && cols2[8] != Color.green{
                            cols2[8] = Color.yellow}
                    
                
                        if guess_line_6[2] == "Z" && cols3[0] != Color.green{
                            cols3[0] = Color.yellow}
                    
                        if guess_line_6[2] == "X" && cols3[1] != Color.green{
                            cols3[1] = Color.yellow}
                
                        if guess_line_6[2] == "C" && cols3[2] != Color.green{
                            cols3[2] = Color.yellow}
                        
                        if guess_line_6[2] == "V" && cols3[3] != Color.green{
                            cols3[3] = Color.yellow}
                    
                        if guess_line_6[2] == "B" && cols3[4] != Color.green{
                            cols3[4] = Color.yellow}

                        if guess_line_6[2] == "N" && cols3[5] != Color.green{
                            cols3[5] = Color.yellow}

                        if guess_line_6[2] == "M" && cols3[6] != Color.green{
                            cols3[6] = Color.yellow}}}
                else{
                    if one == false{
                if guess_line_6[2] == "Q"{
                    cols1[0] = Color.gray}
                
                if guess_line_6[2] == "W"{
                    cols1[1] = Color.gray}
            
                if guess_line_6[2] == "E"{
                    cols1[2] = Color.gray}
        
                if guess_line_6[2] == "R"{
                    cols1[3] = Color.gray}
                
                if guess_line_6[2] == "T"{
                    cols1[4] = Color.gray}
            
                if guess_line_6[2] == "Y"{
                    cols1[5] = Color.gray}

                if guess_line_6[2] == "U"{
                    cols1[6] = Color.gray}

                if guess_line_6[2] == "I"{
                    cols1[7] = Color.gray}

                if guess_line_6[2] == "O"{
                    cols1[8] = Color.gray}
            
                if guess_line_6[2] == "P"{
                    cols1[9] = Color.gray}
            
                
                
                
                
                if guess_line_6[2] == "A"{
                    cols2[0] = Color.gray}
                
                if guess_line_6[2] == "S"{
                    cols2[1] = Color.gray}
            
                if guess_line_6[2] == "D"{
                    cols2[2] = Color.gray}
        
                if guess_line_6[2] == "F"{
                    cols2[3] = Color.gray}
                
                if guess_line_6[2] == "G"{
                    cols2[4] = Color.gray}
            
                if guess_line_6[2] == "H"{
                    cols2[5] = Color.gray}

                if guess_line_6[2] == "J"{
                    cols2[6] = Color.gray}

                if guess_line_6[2] == "K"{
                    cols2[7] = Color.gray}

                if guess_line_6[2] == "L"{
                    cols2[8] = Color.gray}
            
        
                if guess_line_6[2] == "Z"{
                    cols3[0] = Color.gray}
            
                if guess_line_6[2] == "X"{
                    cols3[1] = Color.gray}
        
                if guess_line_6[2] == "C"{
                    cols3[2] = Color.gray}
                
                if guess_line_6[2] == "V"{
                    cols3[3] = Color.gray}
            
                if guess_line_6[2] == "B"{
                    cols3[4] = Color.gray}

                if guess_line_6[2] == "N"{
                    cols3[5] = Color.gray}

                if guess_line_6[2] == "M"{
                    cols3[6] = Color.gray}}}
                
                    
                if word.contains(guess_line_6[3].uppercased()) && two == false{
                
                    if guess_line_6[3].uppercased() == String(word[index2]) && pos2 == false{
                        gl6c[3] = Color.green
                        if guess_line_6[3] == "Q"{
                            cols1[0] = Color.green}
                        
                        if guess_line_6[3] == "W"{
                            cols1[1] = Color.green}
                    
                        if guess_line_6[3] == "E"{
                            cols1[2] = Color.green}
                
                        if guess_line_6[3] == "R"{
                            cols1[3] = Color.green}
                        
                        if guess_line_6[3] == "T"{
                            cols1[4] = Color.green}
                    
                        if guess_line_6[3] == "Y"{
                            cols1[5] = Color.green}

                        if guess_line_6[3] == "U"{
                            cols1[6] = Color.green}

                        if guess_line_6[3] == "I"{
                            cols1[7] = Color.green}

                        if guess_line_6[3] == "O"{
                            cols1[8] = Color.green}
                    
                        if guess_line_6[3] == "P"{
                            cols1[9] = Color.green}
                    
                        
                        
                        
                        
                        if guess_line_6[3] == "A"{
                            cols2[0] = Color.green}
                        
                        if guess_line_6[3] == "S"{
                            cols2[1] = Color.green}
                    
                        if guess_line_6[3] == "D"{
                            cols2[2] = Color.green}
                
                        if guess_line_6[3] == "F"{
                            cols2[3] = Color.green}
                        
                        if guess_line_6[3] == "G"{
                            cols2[4] = Color.green}
                    
                        if guess_line_6[3] == "H"{
                            cols2[5] = Color.green}

                        if guess_line_6[3] == "J"{
                            cols2[6] = Color.green}

                        if guess_line_6[3] == "K"{
                            cols2[7] = Color.green}

                        if guess_line_6[3] == "L"{
                            cols2[8] = Color.green}
                    
                
                        if guess_line_6[3] == "Z"{
                            cols3[0] = Color.green}
                    
                        if guess_line_6[3] == "X"{
                            cols3[1] = Color.green}
                
                        if guess_line_6[3] == "C"{
                            cols3[2] = Color.green}
                        
                        if guess_line_6[3] == "V"{
                            cols3[3] = Color.green}
                    
                        if guess_line_6[3] == "B"{
                            cols3[4] = Color.green}

                        if guess_line_6[3] == "N"{
                            cols3[5] = Color.green}

                        if guess_line_6[3] == "M"{
                            cols3[6] = Color.green}}
                    else if guess_line_6[3].uppercased() == String(word.prefix(upTo: index)) && pos1 == false{
                        gl6c[3] = Color.yellow
                        if guess_line_6[3] == "Q" && cols1[0] != Color.green{
                            cols1[0] = Color.yellow}
                        
                        if guess_line_6[3] == "W" && cols1[1] != Color.green{
                            cols1[1] = Color.yellow}
                    
                        if guess_line_6[3] == "E" && cols1[2] != Color.green{
                            cols1[2] = Color.yellow}
                
                        if guess_line_6[3] == "R" && cols1[3] != Color.green{
                            cols1[3] = Color.yellow}
                        
                        if guess_line_6[3] == "T" && cols1[4] != Color.green{
                            cols1[4] = Color.yellow}
                    
                        if guess_line_6[3] == "Y" && cols1[5] != Color.green{
                            cols1[5] = Color.yellow}

                        if guess_line_6[3] == "U" && cols1[6] != Color.green{
                            cols1[6] = Color.yellow}

                        if guess_line_6[3] == "I" && cols1[7] != Color.green{
                            cols1[7] = Color.yellow}

                        if guess_line_6[3] == "O" && cols1[8] != Color.green{
                            cols1[8] = Color.yellow}
                    
                        if guess_line_6[3] == "P" && cols1[9] != Color.green{
                            cols1[9] = Color.yellow}
                    
                        
                        
                        
                        
                        if guess_line_6[3] == "A"{
                            cols2[0] = Color.yellow}
                        
                        if guess_line_6[3] == "S"{
                            cols2[1] = Color.yellow}
                    
                        if guess_line_6[3] == "D"{
                            cols2[2] = Color.yellow}
                
                        if guess_line_6[3] == "F"{
                            cols2[3] = Color.yellow}
                        
                        if guess_line_6[2] == "G"{
                            cols2[4] = Color.yellow}
                    
                        if guess_line_6[3] == "H"{
                            cols2[5] = Color.yellow}

                        if guess_line_6[3] == "J"{
                            cols2[6] = Color.yellow}

                        if guess_line_6[3] == "K"{
                            cols2[7] = Color.yellow}

                        if guess_line_6[3] == "L"{
                            cols2[8] = Color.yellow}
                    
                
                        if guess_line_6[3] == "Z"{
                            cols3[0] = Color.yellow}
                    
                        if guess_line_6[3] == "X"{
                            cols3[1] = Color.yellow}
                
                        if guess_line_6[3] == "C"{
                            cols3[2] = Color.yellow}
                        
                        if guess_line_6[3] == "V"{
                            cols3[3] = Color.yellow}
                    
                        if guess_line_6[3] == "B"{
                            cols3[4] = Color.yellow}

                        if guess_line_6[3] == "N"{
                            cols3[5] = Color.yellow}

                        if guess_line_6[3] == "M"{
                            cols3[6] = Color.yellow}}
                    else if guess_line_6[3].uppercased() == String(word[index3]) && pos3 == false{
                        gl6c[3] = Color.yellow
                        if guess_line_6[3] == "Q" && cols1[0] != Color.green{
                            cols1[0] = Color.yellow}
                        
                        if guess_line_6[3] == "W"{
                            cols1[1] = Color.yellow}
                    
                        if guess_line_6[3] == "E"{
                            cols1[2] = Color.yellow}
                
                        if guess_line_6[3] == "R"{
                            cols1[3] = Color.yellow}
                        
                        if guess_line_6[3] == "T"{
                            cols1[4] = Color.yellow}
                    
                        if guess_line_6[3] == "Y"{
                            cols1[5] = Color.yellow}

                        if guess_line_6[3] == "U"{
                            cols1[6] = Color.yellow}

                        if guess_line_6[3] == "I"{
                            cols1[7] = Color.yellow}

                        if guess_line_6[3] == "O"{
                            cols1[8] = Color.yellow}
                    
                        if guess_line_6[3] == "P"{
                            cols1[9] = Color.yellow}
                    
                        
                        
                        
                        
                        if guess_line_6[3] == "A"{
                            cols2[0] = Color.yellow}
                        
                        if guess_line_6[3] == "S"{
                            cols2[1] = Color.yellow}
                    
                        if guess_line_6[3] == "D"{
                            cols2[2] = Color.yellow}
                
                        if guess_line_6[3] == "F"{
                            cols2[3] = Color.yellow}
                        
                        if guess_line_6[3] == "G"{
                            cols2[4] = Color.yellow}
                    
                        if guess_line_6[3] == "H"{
                            cols2[5] = Color.yellow}

                        if guess_line_6[3] == "J"{
                            cols2[6] = Color.yellow}

                        if guess_line_6[3] == "K"{
                            cols2[7] = Color.yellow}

                        if guess_line_6[3] == "L"{
                            cols2[8] = Color.yellow}
                    
                
                        if guess_line_6[3] == "Z"{
                            cols3[0] = Color.yellow}
                    
                        if guess_line_6[3] == "X"{
                            cols3[1] = Color.yellow}
                
                        if guess_line_6[3] == "C"{
                            cols3[2] = Color.yellow}
                        
                        if guess_line_6[3] == "V"{
                            cols3[3] = Color.yellow}
                    
                        if guess_line_6[3] == "B"{
                            cols3[4] = Color.yellow}

                        if guess_line_6[3] == "N"{
                            cols3[5] = Color.yellow}

                        if guess_line_6[3] == "M"{
                            cols3[6] = Color.yellow}}}
                else{
                    if two == false{
                if guess_line_6[3] == "Q"{
                    cols1[0] = Color.gray}
                
                if guess_line_6[3] == "W"{
                    cols1[1] = Color.gray}
            
                if guess_line_6[3] == "E"{
                    cols1[2] = Color.gray}
        
                if guess_line_6[3] == "R"{
                    cols1[3] = Color.gray}
                
                if guess_line_6[3] == "T"{
                    cols1[4] = Color.gray}
            
                if guess_line_6[3] == "Y"{
                    cols1[5] = Color.gray}

                if guess_line_6[3] == "U"{
                    cols1[6] = Color.gray}

                if guess_line_6[3] == "I"{
                    cols1[7] = Color.gray}

                if guess_line_6[3] == "O"{
                    cols1[8] = Color.gray}
            
                if guess_line_6[3] == "P"{
                    cols1[9] = Color.gray}
            
                
                
                
                
                if guess_line_6[3] == "A"{
                    cols2[0] = Color.gray}
                
                if guess_line_6[3] == "S"{
                    cols2[1] = Color.gray}
            
                if guess_line_6[3] == "D"{
                    cols2[2] = Color.gray}
        
                if guess_line_6[3] == "F"{
                    cols2[3] = Color.gray}
                
                if guess_line_6[3] == "G"{
                    cols2[4] = Color.gray}
            
                if guess_line_6[3] == "H"{
                    cols2[5] = Color.gray}

                if guess_line_6[3] == "J"{
                    cols2[6] = Color.gray}

                if guess_line_6[3] == "K"{
                    cols2[7] = Color.gray}

                if guess_line_6[3] == "L"{
                    cols2[8] = Color.gray}
            
        
                if guess_line_6[3] == "Z"{
                    cols3[0] = Color.gray}
            
                if guess_line_6[3] == "X"{
                    cols3[1] = Color.gray}
        
                if guess_line_6[3] == "C"{
                    cols3[2] = Color.gray}
                
                if guess_line_6[3] == "V"{
                    cols3[3] = Color.gray}
            
                if guess_line_6[3] == "B"{
                    cols3[4] = Color.gray}

                if guess_line_6[3] == "N"{
                    cols3[5] = Color.gray}

                if guess_line_6[3] == "M"{
                    cols3[6] = Color.gray}}}
                
                if word.contains(guess_line_6[4].uppercased()) && three == false{
                    
                    if guess_line_6[4].uppercased() == String(word[index3]) && pos3 == false{
                        gl6c[4] = Color.green
                        if guess_line_6[4] == "Q"{
                            cols1[0] = Color.green}
                        
                        if guess_line_6[4] == "W"{
                            cols1[1] = Color.green}
                    
                        if guess_line_6[4] == "E"{
                            cols1[2] = Color.green}
                
                        if guess_line_6[4] == "R"{
                            cols1[3] = Color.green}
                        
                        if guess_line_6[4] == "T"{
                            cols1[4] = Color.green}
                    
                        if guess_line_6[4] == "Y"{
                            cols1[5] = Color.green}

                        if guess_line_6[4] == "U"{
                            cols1[6] = Color.green}

                        if guess_line_6[4] == "I"{
                            cols1[7] = Color.green}

                        if guess_line_6[4] == "O"{
                            cols1[8] = Color.green}
                    
                        if guess_line_6[4] == "P"{
                            cols1[9] = Color.green}
                    
                        
                        
                        
                        
                        if guess_line_6[4] == "A"{
                            cols2[0] = Color.green}
                        
                        if guess_line_6[4] == "S"{
                            cols2[1] = Color.green}
                    
                        if guess_line_6[4] == "D"{
                            cols2[2] = Color.green}
                
                        if guess_line_6[4] == "F"{
                            cols2[3] = Color.green}
                        
                        if guess_line_6[4] == "G"{
                            cols2[4] = Color.green}
                    
                        if guess_line_6[4] == "H"{
                            cols2[5] = Color.green}

                        if guess_line_6[4] == "J"{
                            cols2[6] = Color.green}

                        if guess_line_6[4] == "K"{
                            cols2[7] = Color.green}

                        if guess_line_6[4] == "L"{
                            cols2[8] = Color.green}
                    
                
                        if guess_line_6[4] == "Z"{
                            cols3[0] = Color.green}
                    
                        if guess_line_6[4] == "X"{
                            cols3[1] = Color.green}
                
                        if guess_line_6[4] == "C"{
                            cols3[2] = Color.green}
                        
                        if guess_line_6[4] == "V"{
                            cols3[3] = Color.green}
                    
                        if guess_line_6[4] == "B"{
                            cols3[4] = Color.green}

                        if guess_line_6[4] == "N"{
                            cols3[5] = Color.green}

                        if guess_line_6[4] == "M"{
                            cols3[6] = Color.green}}
                    else if guess_line_6[4].uppercased() == String(word.prefix(upTo: index)) && pos1 == false{
                        gl6c[4] = Color.yellow
                        if guess_line_6[4] == "Q"{
                            cols1[0] = Color.yellow}
                        
                        if guess_line_6[4] == "W"{
                            cols1[1] = Color.yellow}
                    
                        if guess_line_6[4] == "E"{
                            cols1[2] = Color.yellow}
                
                        if guess_line_6[4] == "R"{
                            cols1[3] = Color.yellow}
                        
                        if guess_line_6[4] == "T"{
                            cols1[4] = Color.yellow}
                    
                        if guess_line_6[4] == "Y"{
                            cols1[5] = Color.yellow}

                        if guess_line_6[4] == "U"{
                            cols1[6] = Color.yellow}

                        if guess_line_6[4] == "I"{
                            cols1[7] = Color.yellow}

                        if guess_line_6[4] == "O"{
                            cols1[8] = Color.yellow}
                    
                        if guess_line_6[4] == "P"{
                            cols1[9] = Color.yellow}
                    
                        
                        
                        
                        
                        if guess_line_6[4] == "A"{
                            cols2[0] = Color.yellow}
                        
                        if guess_line_6[4] == "S"{
                            cols2[1] = Color.yellow}
                    
                        if guess_line_6[4] == "D"{
                            cols2[2] = Color.yellow}
                
                        if guess_line_6[4] == "F"{
                            cols2[3] = Color.yellow}
                        
                        if guess_line_6[4] == "G"{
                            cols2[4] = Color.yellow}
                    
                        if guess_line_6[4] == "H"{
                            cols2[5] = Color.yellow}

                        if guess_line_6[4] == "J"{
                            cols2[6] = Color.yellow}

                        if guess_line_6[4] == "K"{
                            cols2[7] = Color.yellow}

                        if guess_line_6[4] == "L"{
                            cols2[8] = Color.yellow}
                    
                
                        if guess_line_6[4] == "Z"{
                            cols3[0] = Color.yellow}
                    
                        if guess_line_6[4] == "X"{
                            cols3[1] = Color.yellow}
                
                        if guess_line_6[4] == "C"{
                            cols3[2] = Color.yellow}
                        
                        if guess_line_6[4] == "V"{
                            cols3[3] = Color.yellow}
                    
                        if guess_line_6[4] == "B"{
                            cols3[4] = Color.yellow}

                        if guess_line_6[4] == "N"{
                            cols3[5] = Color.yellow}

                        if guess_line_6[4] == "M"{
                            cols3[6] = Color.yellow}}
                            else if guess_line_6[4].uppercased() == String(word[index2]) && pos2 == false{
                                gl6c[4] = Color.yellow
                                if guess_line_6[4] == "Q"{
                                    cols1[0] = Color.yellow}
                                
                                if guess_line_6[4] == "W"{
                                    cols1[1] = Color.yellow}
                            
                                if guess_line_6[4] == "E"{
                                    cols1[2] = Color.yellow}
                        
                                if guess_line_6[4] == "R"{
                                    cols1[3] = Color.yellow}
                                
                                if guess_line_6[4] == "T"{
                                    cols1[4] = Color.yellow}
                            
                                if guess_line_6[4] == "Y"{
                                    cols1[5] = Color.yellow}
        
                                if guess_line_6[4] == "U"{
                                    cols1[6] = Color.yellow}
        
                                if guess_line_6[4] == "I"{
                                    cols1[7] = Color.yellow}
        
                                if guess_line_6[4] == "O"{
                                    cols1[8] = Color.yellow}
                            
                                if guess_line_6[4] == "P"{
                                    cols1[9] = Color.yellow}
                            
                                
                                
                                
                                
                                if guess_line_6[4] == "A"{
                                    cols2[0] = Color.yellow}
                                
                                if guess_line_6[4] == "S"{
                                    cols2[1] = Color.yellow}
                            
                                if guess_line_6[4] == "D"{
                                    cols2[2] = Color.yellow}
                        
                                if guess_line_6[4] == "F"{
                                    cols2[3] = Color.yellow}
                                
                                if guess_line_6[4] == "G"{
                                    cols2[4] = Color.yellow}
                            
                                if guess_line_6[4] == "H"{
                                    cols2[5] = Color.yellow}
        
                                if guess_line_6[4] == "J"{
                                    cols2[6] = Color.yellow}
        
                                if guess_line_6[4] == "K"{
                                    cols2[7] = Color.yellow}
        
                                if guess_line_6[4] == "L"{
                                    cols2[8] = Color.yellow}
                            
                        
                                if guess_line_6[4] == "Z"{
                                    cols3[0] = Color.yellow}
                            
                                if guess_line_6[4] == "X"{
                                    cols3[1] = Color.yellow}
                        
                                if guess_line_6[4] == "C"{
                                    cols3[2] = Color.yellow}
                                
                                if guess_line_6[4] == "V"{
                                    cols3[3] = Color.yellow}
                            
                                if guess_line_6[4] == "B"{
                                    cols3[4] = Color.yellow}
        
                                if guess_line_6[4] == "N"{
                                    cols3[5] = Color.yellow}
        
                                if guess_line_6[4] == "M"{
                                    cols3[6] = Color.yellow}}}
                else{
                    if three == false{
                if guess_line_6[4] == "Q"{
                    cols1[0] = Color.gray}
                
                if guess_line_6[4] == "W"{
                    cols1[1] = Color.gray}
            
                if guess_line_6[4] == "E"{
                    cols1[2] = Color.gray}
        
                if guess_line_6[4] == "R"{
                    cols1[3] = Color.gray}
                
                if guess_line_6[4] == "T"{
                    cols1[4] = Color.gray}
            
                if guess_line_6[4] == "Y"{
                    cols1[5] = Color.gray}

                if guess_line_6[4] == "U"{
                    cols1[6] = Color.gray}

                if guess_line_6[4] == "I"{
                    cols1[7] = Color.gray}

                if guess_line_6[4] == "O"{
                    cols1[8] = Color.gray}
            
                if guess_line_6[4] == "P"{
                    cols1[9] = Color.gray}
            
                
                
                
                
                if guess_line_6[4] == "A"{
                    cols2[0] = Color.gray}
                
                if guess_line_6[4] == "S"{
                    cols2[1] = Color.gray}
            
                if guess_line_6[4] == "D"{
                    cols2[2] = Color.gray}
        
                if guess_line_6[4] == "F"{
                    cols2[3] = Color.gray}
                
                if guess_line_6[4] == "G"{
                    cols2[4] = Color.gray}
            
                if guess_line_6[4] == "H"{
                    cols2[5] = Color.gray}

                if guess_line_6[4] == "J"{
                    cols2[6] = Color.gray}

                if guess_line_6[4] == "K"{
                    cols2[7] = Color.gray}

                if guess_line_6[4] == "L"{
                    cols2[8] = Color.gray}
            
        
                if guess_line_6[4] == "Z"{
                    cols3[0] = Color.gray}
            
                if guess_line_6[4] == "X"{
                    cols3[1] = Color.gray}
        
                if guess_line_6[4] == "C"{
                    cols3[2] = Color.gray}
                
                if guess_line_6[4] == "V"{
                    cols3[3] = Color.gray}
            
                if guess_line_6[4] == "B"{
                    cols3[4] = Color.gray}

                if guess_line_6[4] == "N"{
                    cols3[5] = Color.gray}

                if guess_line_6[4] == "M"{
                    cols3[6] = Color.gray}}}
                
                if gl6c[2] == Color.white{
                    gl6c[2] = Color.gray
                }
                
                if gl6c[3] == Color.white{
                    gl6c[3] = Color.gray
                }
                
                if gl6c[4] == Color.white{
                    gl6c[4] = Color.gray
                }
                }
            
            
            
            
            if check == word{
                message = "You got it"
                ap = 100
            }
            
            else if Try == 6{
                message = "The word was " + word
                ap = 100
            }
            
            
        
                
            Try = Try + 1
                    
            
            
            
        
            
                        
                
                }
            }
        
        
        
        
    



    var body: some View {
        ZStack{
            CustomColor.be.ignoresSafeArea()


            VStack(alignment: .center, spacing: 3, content:{
            Spacer()
            Spacer()
                
                    Text("Press here to play again")
                    .foregroundColor(.black.opacity(Double(ap)))
                        .font(.custom("KG HAPPY",size:10))
                HStack{
                    Text("")
                    Button("<"){appState.hasOnboared = 2}
                        .foregroundColor(.black.opacity(Double(o)))
                            .font(.custom("KG HAPPY",size:18))
                Spacer()
                Button(message){modes()}
                .foregroundColor(.black)
                    .font(.custom("KG HAPPY",size:20))
                    Text("   ")
                    Spacer()
                    
                    
                
                }
                
                VStack(alignment: .center, spacing: 4, content:{
                HStack(alignment: .center, spacing: 4, content:{
                    Button(guess_line_1[0]){}
                        .frame(width: CGFloat(Word_Length[0]), height: CGFloat(Word_Length[0]))
                        .background(gl1c[0].opacity(100).cornerRadius(0))
                        .font(.custom("KGHAPPY",size:CGFloat(Ts)))
                        .foregroundColor(Color.black)
                        
                        
                    Button(guess_line_1[1]){}
                        .frame(width: CGFloat(Word_Length[1]), height: CGFloat(Word_Length[1]))
                        .background(gl1c[2].opacity(100).cornerRadius(0))
                        .font(.custom("KGHAPPY",size:CGFloat(Ts)))
                        .foregroundColor(Color.black)
                        
                    Button(guess_line_1[2]){}
                        .frame(width: CGFloat(Word_Length[2]), height: CGFloat(Word_Length[2]))
                        .background(gl1c[2].opacity(100).cornerRadius(0))
                        .font(.custom("KGHAPPY",size:CGFloat(Ts)))
                        .foregroundColor(Color.black)
                        
                    Button(guess_line_1[3]){}
                        .frame(width: CGFloat(Word_Length[3]), height: CGFloat(Word_Length[3]))
                        .background(gl1c[3].opacity(100).cornerRadius(0))
                        .font(.custom("KGHAPPY",size:CGFloat(Ts)))
                        .foregroundColor(Color.black)
                    Button(guess_line_1[4]){}
                        .frame(width: CGFloat(Word_Length[4]), height: CGFloat(Word_Length[4]))
                        .background(gl1c[4].opacity(100).cornerRadius(0))
                        .font(.custom("KGHAPPY",size:CGFloat(Ts)))
                        .foregroundColor(Color.black)
                    Button(guess_line_1[5]){}
                        .frame(width: CGFloat(Word_Length[5]), height: CGFloat(Word_Length[5]))
                        .background(gl1c[5].opacity(100).cornerRadius(0))
                        .font(.custom("KGHAPPY",size:CGFloat(Ts)))
                        .foregroundColor(Color.black)
                    Button(guess_line_1[6]){}
                        .frame(width: CGFloat(Word_Length[6]), height: CGFloat(Word_Length[6]))
                        .background(gl1c[6].opacity(100).cornerRadius(0))
                        .font(.custom("KGHAPPY",size:CGFloat(Ts)))
                        .foregroundColor(Color.black)
                })
                 
                HStack(alignment: .center, spacing: 4, content:{
                    Button(guess_line_2[0]){}
                        .frame(width: CGFloat(Word_Length[0]), height: CGFloat(Word_Length[0]))
                        .background(gl2c[0].opacity(100).cornerRadius(0))
                        .font(.custom("KGHAPPY",size:CGFloat(Ts)))
                        .foregroundColor(Color.black)
                    Button(guess_line_2[1]){}
                        .frame(width: CGFloat(Word_Length[1]), height: CGFloat(Word_Length[1]))
                        .background(gl2c[1].opacity(100).cornerRadius(0))
                        .font(.custom("KGHAPPY",size:CGFloat(Ts)))
                        .foregroundColor(Color.black)
                    Button(guess_line_2[2]){}
                        .frame(width: CGFloat(Word_Length[2]), height: CGFloat(Word_Length[2]))
                        .background(gl2c[2].opacity(100).cornerRadius(0))
                        .font(.custom("KGHAPPY",size:CGFloat(Ts)))
                        .foregroundColor(Color.black)
                    Button(guess_line_2[3]){}
                        .frame(width: CGFloat(Word_Length[3]), height: CGFloat(Word_Length[3]))
                        .background(gl2c[3].opacity(100).cornerRadius(0))
                        .font(.custom("KGHAPPY",size:CGFloat(Ts)))
                        .foregroundColor(Color.black)
                    Button(guess_line_2[4]){}
                        .frame(width: CGFloat(Word_Length[4]), height: CGFloat(Word_Length[4]))
                        .background(gl2c[4].opacity(100).cornerRadius(0))
                        .font(.custom("KGHAPPY",size:CGFloat(Ts)))
                        .foregroundColor(Color.black)
                    Button(guess_line_2[5]){}
                        .frame(width: CGFloat(Word_Length[5]), height: CGFloat(Word_Length[5]))
                        .background(gl2c[5].opacity(100).cornerRadius(0))
                        .font(.custom("KGHAPPY",size:CGFloat(Ts)))
                        .foregroundColor(Color.black)
                    Button(guess_line_2[6]){}
                        .frame(width: CGFloat(Word_Length[6]), height: CGFloat(Word_Length[6]))
                        .background(gl2c[6].opacity(100).cornerRadius(0))
                        .font(.custom("KGHAPPY",size:CGFloat(Ts)))
                        .foregroundColor(Color.black)
                })

                HStack(alignment: .center, spacing: 4, content:{
                    Button(guess_line_3[0]){}
                        .frame(width: CGFloat(Word_Length[0]), height: CGFloat(Word_Length[0]))
                        .background(gl3c[0].opacity(100).cornerRadius(0))
                        .font(.custom("KGHAPPY",size:CGFloat(Ts)))
                        .foregroundColor(Color.black)
                    Button(guess_line_3[1]){}
                        .frame(width: CGFloat(Word_Length[1]), height: CGFloat(Word_Length[1]))
                        .background(gl3c[1].opacity(100).cornerRadius(0))
                        .font(.custom("KGHAPPY",size:CGFloat(Ts)))
                        .foregroundColor(Color.black)
                    Button(guess_line_3[2]){}
                        .frame(width: CGFloat(Word_Length[2]), height: CGFloat(Word_Length[2]))
                        .background(gl3c[2].opacity(100).cornerRadius(0))
                        .font(.custom("KGHAPPY",size:CGFloat(Ts)))
                        .foregroundColor(Color.black)
                    Button(guess_line_3[3]){}
                        .frame(width: CGFloat(Word_Length[3]), height: CGFloat(Word_Length[3]))
                        .background(gl3c[3].opacity(100).cornerRadius(0))
                        .font(.custom("KGHAPPY",size:CGFloat(Ts)))
                        .foregroundColor(Color.black)
                    Button(guess_line_3[4]){}
                        .frame(width: CGFloat(Word_Length[4]), height: CGFloat(Word_Length[4]))
                        .background(gl3c[4].opacity(100).cornerRadius(0))
                        .font(.custom("KGHAPPY",size:CGFloat(Ts)))
                        .foregroundColor(Color.black)
                    Button(guess_line_3[5]){}
                        .frame(width: CGFloat(Word_Length[5]), height: CGFloat(Word_Length[5]))
                        .background(gl3c[5].opacity(100).cornerRadius(0))
                        .font(.custom("KGHAPPY",size:CGFloat(Ts)))
                        .foregroundColor(Color.black)
                    Button(guess_line_3[6]){}
                        .frame(width: CGFloat(Word_Length[6]), height: CGFloat(Word_Length[6]))
                        .background(gl3c[6].opacity(100).cornerRadius(0))
                        .font(.custom("KGHAPPY",size:CGFloat(Ts)))
                        .foregroundColor(Color.black)
                })


                HStack(alignment: .center, spacing: 4, content:{
                    Button(guess_line_4[0]){}
                        .frame(width: CGFloat(Word_Length[0]), height: CGFloat(Word_Length[0]))
                        .background(gl4c[0].opacity(100).cornerRadius(0))
                        .font(.custom("KGHAPPY",size:CGFloat(Ts)))
                        .foregroundColor(Color.black)
                    Button(guess_line_4[1]){}
                        .frame(width: CGFloat(Word_Length[1]), height: CGFloat(Word_Length[1]))
                        .background(gl4c[1].opacity(100).cornerRadius(0))
                        .font(.custom("KGHAPPY",size:CGFloat(Ts)))
                        .foregroundColor(Color.black)
                    Button(guess_line_4[2]){}
                        .frame(width: CGFloat(Word_Length[2]), height: CGFloat(Word_Length[2]))
                        .background(gl4c[2].opacity(100).cornerRadius(0))
                        .font(.custom("KGHAPPY",size:CGFloat(Ts)))
                        .foregroundColor(Color.black)
                    Button(guess_line_4[3]){}
                        .frame(width: CGFloat(Word_Length[3]), height: CGFloat(Word_Length[3]))
                        .background(gl4c[3].opacity(100).cornerRadius(0))
                        .font(.custom("KGHAPPY",size:CGFloat(Ts)))
                        .foregroundColor(Color.black)
                    Button(guess_line_4[4]){}
                        .frame(width: CGFloat(Word_Length[4]), height: CGFloat(Word_Length[4]))
                        .background(gl4c[4].opacity(100).cornerRadius(0))
                        .font(.custom("KGHAPPY",size:CGFloat(Ts)))
                        .foregroundColor(Color.black)
                    Button(guess_line_4[5]){}
                        .frame(width: CGFloat(Word_Length[5]), height: CGFloat(Word_Length[5]))
                        .background(gl4c[5].opacity(100).cornerRadius(0))
                        .font(.custom("KGHAPPY",size:CGFloat(Ts)))
                        .foregroundColor(Color.black)
                    Button(guess_line_4[6]){}
                        .frame(width: CGFloat(Word_Length[6]), height: CGFloat(Word_Length[6]))
                        .background(gl4c[6].opacity(100).cornerRadius(0))
                        .font(.custom("KGHAPPY",size:CGFloat(Ts)))
                        .foregroundColor(Color.black)
                })

                HStack(alignment: .center, spacing: 4, content:{
                    Button(guess_line_5[0]){}
                        .frame(width: CGFloat(Word_Length[0]), height: CGFloat(Word_Length[0]))
                        .background(gl5c[0].opacity(100).cornerRadius(0))
                        .font(.custom("KGHAPPY",size:CGFloat(Ts)))
                        .foregroundColor(Color.black)
                    Button(guess_line_5[1]){}
                        .frame(width: CGFloat(Word_Length[1]), height: CGFloat(Word_Length[1]))
                        .background(gl5c[1].opacity(100).cornerRadius(0))
                        .font(.custom("KGHAPPY",size:CGFloat(Ts)))
                        .foregroundColor(Color.black)
                    Button(guess_line_5[2]){}
                        .frame(width: CGFloat(Word_Length[2]), height: CGFloat(Word_Length[2]))
                        .background(gl5c[2].opacity(100).cornerRadius(0))
                        .font(.custom("KGHAPPY",size:CGFloat(Ts)))
                        .foregroundColor(Color.black)
                    Button(guess_line_5[3]){}
                        .frame(width: CGFloat(Word_Length[3]), height: CGFloat(Word_Length[3]))
                        .background(gl5c[3].opacity(100).cornerRadius(0))
                        .font(.custom("KGHAPPY",size:CGFloat(Ts)))
                        .foregroundColor(Color.black)
                    Button(guess_line_5[4]){}
                        .frame(width: CGFloat(Word_Length[4]), height: CGFloat(Word_Length[4]))
                        .background(gl5c[4].opacity(100).cornerRadius(0))
                        .font(.custom("KGHAPPY",size:CGFloat(Ts)))
                        .foregroundColor(Color.black)
                    Button(guess_line_5[5]){}
                        .frame(width: CGFloat(Word_Length[5]), height: CGFloat(Word_Length[5]))
                        .background(gl5c[5].opacity(100).cornerRadius(0))
                        .font(.custom("KGHAPPY",size:CGFloat(Ts)))
                        .foregroundColor(Color.black)
                    Button(guess_line_5[6]){}
                        .frame(width: CGFloat(Word_Length[6]), height: CGFloat(Word_Length[6]))
                        .background(gl5c[6].opacity(100).cornerRadius(0))
                        .font(.custom("KGHAPPY",size:CGFloat(Ts)))
                        .foregroundColor(Color.black)
                })


                HStack(alignment: .center, spacing: 4, content:{
                    Button(guess_line_6[0]){}
                        .frame(width: CGFloat(Word_Length[0]), height: CGFloat(Word_Length[0]))
                        .background(gl6c[0].opacity(100).cornerRadius(0))
                        .font(.custom("KGHAPPY",size:CGFloat(Ts)))
                        .foregroundColor(Color.black)
                    Button(guess_line_6[1]){}
                        .frame(width: CGFloat(Word_Length[1]), height: CGFloat(Word_Length[1]))
                        .background(gl6c[1].opacity(100).cornerRadius(0))
                        .font(.custom("KGHAPPY",size:CGFloat(Ts)))
                        .foregroundColor(Color.black)
                    Button(guess_line_6[2]){}
                        .frame(width: CGFloat(Word_Length[2]), height: CGFloat(Word_Length[2]))
                        .background(gl6c[2].opacity(100).cornerRadius(0))
                        .font(.custom("KGHAPPY",size:CGFloat(Ts)))
                        .foregroundColor(Color.black)
                    Button(guess_line_6[3]){}
                        .frame(width: CGFloat(Word_Length[3]), height: CGFloat(Word_Length[3]))
                        .background(gl6c[3].opacity(100).cornerRadius(0))
                        .font(.custom("KGHAPPY",size:CGFloat(Ts)))
                        .foregroundColor(Color.black)
                    Button(guess_line_6[4]){}
                        .frame(width: CGFloat(Word_Length[4]), height: CGFloat(Word_Length[4]))
                        .background(gl6c[4].opacity(100).cornerRadius(0))
                        .font(.custom("KGHAPPY",size:CGFloat(Ts)))
                        .foregroundColor(Color.black)
                    Button(guess_line_6[5]){}
                        .frame(width: CGFloat(Word_Length[5]), height: CGFloat(Word_Length[5]))
                        .background(gl6c[5].opacity(100).cornerRadius(0))
                        .font(.custom("KGHAPPY",size:CGFloat(Ts)))
                        .foregroundColor(Color.black)
                    Button(guess_line_6[6]){}
                        .frame(width: CGFloat(Word_Length[6]), height: CGFloat(Word_Length[6]))
                        .background(gl6c[6].opacity(100).cornerRadius(0))
                        .font(.custom("KGHAPPY",size:CGFloat(Ts)))
                        .foregroundColor(Color.black)
                })
            })
                    Text(" ")
                VStack{
                    HStack(alignment: .center, spacing: 2, content:{
                        Button("q"){update(letter:"q")}
                            .frame(width:38,height: 45)
                            .background(cols1[0].opacity(100).cornerRadius(0))
                            .font(.custom("KGHAPPY",size:21))
                            .foregroundColor(Color.black)
                        Button("w"){update(letter:"w")}
                            .frame(width:38,height: 45)
                            .background(cols1[1].opacity(100).cornerRadius(0))
                            .font(.custom("KGHAPPY",size:21))
                            .foregroundColor(Color.black)
                        Button("e"){update(letter:"e")}
                            .frame(width:38,height: 45)
                            .background(cols1[2].opacity(100).cornerRadius(0))
                            .font(.custom("KGHAPPY",size:21))
                            .foregroundColor(Color.black)
                        Button("r"){update(letter:"r")}
                            .frame(width:38,height: 45)
                            .background(cols1[3].opacity(100).cornerRadius(0))
                            .font(.custom("KGHAPPY",size:21))
                            .foregroundColor(Color.black)
                        Button("t"){update(letter:"t")}
                            .frame(width:38,height: 45)
                            .background(cols1[4].opacity(100).cornerRadius(0))
                            .font(.custom("KGHAPPY",size:21))
                            .foregroundColor(Color.black)
                        Button("y"){update(letter:"y")}
                            .frame(width:38,height: 45)
                            .background(cols1[5].opacity(100).cornerRadius(0))
                            .font(.custom("KGHAPPY",size:21))
                            .foregroundColor(Color.black)
                        Button("u"){update(letter:"u")}
                            .frame(width:38,height: 45)
                            .background(cols1[6].opacity(100).cornerRadius(0))
                            .font(.custom("KGHAPPY",size:21))
                            .foregroundColor(Color.black)
                        Button("i"){update(letter:"i")}
                            .frame(width:38,height: 45)
                            .background(cols1[7].opacity(100).cornerRadius(0))
                            .font(.custom("KGHAPPY",size:21))
                            .foregroundColor(Color.black)
                        Button("o"){update(letter:"o")}
                            .frame(width:38,height: 45)
                            .background(cols1[8].opacity(100).cornerRadius(0))
                            .font(.custom("KGHAPPY",size:21))
                            .foregroundColor(Color.black)
                        Button("p"){update(letter:"p")}
                            .frame(width:38,height: 45)
                            .background(cols1[9].opacity(100).cornerRadius(0))
                            .font(.custom("KGHAPPY",size:21))
                            .foregroundColor(Color.black)
                    })
                    HStack(alignment: .center, spacing: 2, content:{
                        Button("a"){update(letter:"a")}
                            .frame(width:38,height: 45)
                            .background(cols2[0].opacity(100).cornerRadius(0))
                            .font(.custom("KGHAPPY",size:21))
                            .foregroundColor(Color.black)
                        Button("s"){update(letter:"s")}
                            .frame(width:38,height: 45)
                            .background(cols2[1].opacity(100).cornerRadius(0))
                            .font(.custom("KGHAPPY",size:21))
                            .foregroundColor(Color.black)
                        Button("d"){update(letter:"d")}
                            .frame(width:38,height: 45)
                            .background(cols2[2].opacity(100).cornerRadius(0))
                            .font(.custom("KGHAPPY",size:21))
                            .foregroundColor(Color.black)
                        Button("f"){update(letter:"f")}
                            .frame(width:38,height: 45)
                            .background(cols2[3].opacity(100).cornerRadius(0))
                            .font(.custom("KGHAPPY",size:21))
                            .foregroundColor(Color.black)
                        Button("g"){update(letter:"g")}
                            .frame(width:38,height: 45)
                            .background(cols2[4].opacity(100).cornerRadius(0))
                            .font(.custom("KGHAPPY",size:21))
                            .foregroundColor(Color.black)
                        Button("h"){update(letter:"h")}
                            .frame(width:38,height: 45)
                            .background(cols2[5].opacity(100).cornerRadius(0))
                            .font(.custom("KGHAPPY",size:21))
                            .foregroundColor(Color.black)
                        Button("j"){update(letter:"j")}
                            .frame(width:38,height: 45)
                            .background(cols2[6].opacity(100).cornerRadius(0))
                            .font(.custom("KGHAPPY",size:21))
                            .foregroundColor(Color.black)
                        Button("k"){update(letter:"k")}
                            .frame(width:38,height: 45)
                            .background(cols2[7].opacity(100).cornerRadius(0))
                            .font(.custom("KGHAPPY",size:21))
                            .foregroundColor(Color.black)
                        Button("l"){update(letter:"l")}
                            .frame(width:38,height: 45)
                            .background(cols2[8].opacity(100).cornerRadius(0))
                            .font(.custom("KGHAPPY",size:21))
                            .foregroundColor(Color.black)
                    })
                    HStack(alignment: .center, spacing: 2, content:{
                        HStack(alignment: .center, spacing: 6, content:{
                        Button("Del"){del()}
                            .frame(width:45,height: 45)
                            .background(Color.white.opacity(100).cornerRadius(0))
                            .font(.custom("KGHAPPY",size:15))
                            .foregroundColor(Color.black)
                        Button("z"){update(letter:"z")}
                            .frame(width:38,height: 45)
                            .background(cols3[0].opacity(100).cornerRadius(0))
                            .font(.custom("KGHAPPY",size:21))
                            .foregroundColor(Color.black)})
                        
                        Button("x"){update(letter:"x")}
                            .frame(width:38,height: 45)
                            .background(cols3[1].opacity(100).cornerRadius(0))
                            .font(.custom("KGHAPPY",size:21))
                            .foregroundColor(Color.black)
                        Button("c"){update(letter:"c")}
                            .frame(width:38,height: 45)
                            .background(cols3[2].opacity(100).cornerRadius(0))
                            .font(.custom("KGHAPPY",size:21))
                            .foregroundColor(Color.black)
                        Button("v"){update(letter:"v")}
                            .frame(width:38,height: 45)
                            .background(cols3[3].opacity(100).cornerRadius(0))
                            .font(.custom("KGHAPPY",size:21))
                            .foregroundColor(Color.black)
                        Button("b"){update(letter:"b")}
                            .frame(width:38,height: 45)
                            .background(cols3[4].opacity(100).cornerRadius(0))
                            .font(.custom("KGHAPPY",size:21))
                            .foregroundColor(Color.black)
                        Button("n"){update(letter:"n")}
                            .frame(width:38,height: 45)
                            .background(cols3[5].opacity(100).cornerRadius(0))
                            .font(.custom("KGHAPPY",size:21))
                            .foregroundColor(Color.black)
                        HStack(alignment: .center, spacing: 6, content:{
                        Button("m"){update(letter:"m")}
                            .frame(width:38,height: 45)
                            .background(cols3[6].opacity(100).cornerRadius(0))
                            .font(.custom("KGHAPPY",size:21))
                            .foregroundColor(Color.black)
                        
                        Button("Enter"){done()}
                            .frame(width:47,height: 45)
                            .background(Color.white.opacity(100).cornerRadius(0))
                            .font(.custom("KGHAPPY",size:13))
                            .foregroundColor(Color.black)})
                    })
                    
                }
                Spacer()
                
                
                
            })

        }
    }
}

struct Word_guess_Previews: PreviewProvider {
    static var previews: some View {
        Word_guess()
    }
}
