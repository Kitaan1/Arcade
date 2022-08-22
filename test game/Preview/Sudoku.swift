//
//  Sudoku.swift
//  test game
//
//  Created by Reddy Kitaan on 12/4/22.


import SwiftUI
let defaults = UserDefaults.standard
struct Sudoku: View {
    
    @State var Easy_highScore = defaults.float(forKey: "Easy_highScore")
    @State var Easy_highScore_visual = defaults.string(forKey: "Easy_highScore_visual")
    @State var Medium_highScore = defaults.float(forKey: "Medium_highScore")
    @State var Medium_highScore_visual = defaults.string(forKey: "Medium_highScore_visual")
    @EnvironmentObject var appState: AppState
    @EnvironmentObject var Sets: settings
    @State var M_boards = M_Boards_R.removed
    @State var M_solved = M_Boards_S.Solved
    @State var random_p = 0
    
    @ObservedObject var stopWatchManager = StopWatchManager()
    
    @State var score = 0.0
    let seconds = 2.0
    @State var text = ""
    @State var text2 = ""
    @State var w = 44.5
    @State var h = 44.5
    @State var i = 0
    @State var ii = 0
    @State var iii = 0
    @State var box = 0
    @State var pos = 0
    @State var poss2 = 0
    @State var poss3 = 0
    @State var poss4 = 0
    
    
    @State var s = 18
    @State var n = 0
    @State var b = 0
    @State var l = 0
    @State var help = 0
    @State var g: Int = 0
    @State var state = [Color.white,CustomColor.be]
    @State var selected = [CustomColor.be,CustomColor.be,CustomColor.be,CustomColor.be,CustomColor.be,CustomColor.be,CustomColor.be,CustomColor.be,CustomColor.be]
    @State var temp = 0
    @State var num_selected = 0
    @State var box_selected = 0
    @State var change = false
    @State var solved = false
    @State var game_state = "New Game"
    @State var undo_box = []
    @State var undo_pos = []
    @State var correct = ""
    @State var wrong = 0
    @State var wrong_text = ""
    
    @State var boxes_ = []
    @State var temp1 = [0,0,0,0,0,0,0,0,0]
    @State var temp2 = [0,0,0,0,0,0,0,0,0]
    @State var temp3 = [0,0,0,0,0,0,0,0,0]
    @State var temp9 = [0,0,0,0,0,0,0,0,0]
    @State var temp4 = [0,0,0,0,0,0,0,0,0]
    @State var temp5 = [0,0,0,0,0,0,0,0,0]
    @State var temp6 = [0,0,0,0,0,0,0,0,0]
    @State var temp7 = [0,0,0,0,0,0,0,0,0]
    @State var temp8 = [0,0,0,0,0,0,0,0,0]
    
    @State var right_boxes = 0
    @State var returner = false
    @State var inrange = 0
    @State var boxes__ = [[Int]]()

    
    
    
    
    @State var box1_c = [0,0,0,0,0,0,0,0,0]
    @State var box4_c = [0,0,0,0,0,0,0,0,0]
    @State var box7_c = [0,0,0,0,0,0,0,0,0]
        
    @State var box2_c = [0,0,0,0,0,0,0,0,0]
    @State var box5_c = [0,0,0,0,0,0,0,0,0]
    @State var box8_c = [0,0,0,0,0,0,0,0,0]
        
    @State var box3_c = [0,0,0,0,0,0,0,0,0]
    @State var box6_c = [0,0,0,0,0,0,0,0,0]
    @State var box9_c = [0,0,0,0,0,0,0,0,0]
    
    @State var box1 = [0,0,0,0,0,0,0,0,0]
    @State var box4 = [0,0,0,0,0,0,0,0,0]
    @State var box7 = [0,0,0,0,0,0,0,0,0]
        
    @State var box2 = [0,0,0,0,0,0,0,0,0]
    @State var box5 = [0,0,0,0,0,0,0,0,0]
    @State var box8 = [0,0,0,0,0,0,0,0,0]
        
    @State var box3 = [0,0,0,0,0,0,0,0,0]
    @State var box6 = [0,0,0,0,0,0,0,0,0]
    @State var box9 = [0,0,0,0,0,0,0,0,0]
    
    @State var available = [1,2,3,4,5,6,7,8,9]
    
    @State var remove = [4,2,3,2,3,2,3,3,0]
    @State var remove_m = [4,5,3,4,5,6,4,5,6]
    
    @State var remove_h = [4,5,3,4,5,6,4,5,6]
    
    @State var box_remove = [0,1,2,3,4,5,6,7,8]
    
    
    @State var Box1_Op = [0,0,0,0,0,0,0,0,0]
    @State var Box2_Op = [0,0,0,0,0,0,0,0,0]
    @State var Box3_Op = [0,0,0,0,0,0,0,0,0]

    @State var Box4_Op = [0,0,0,0,0,0,0,0,0]
    @State var Box5_Op = [0,0,0,0,0,0,0,0,0]
    @State var Box6_Op = [0,0,0,0,0,0,0,0,0]
    
    @State var Box7_Op = [0,0,0,0,0,0,0,0,0]
    @State var Box8_Op = [0,0,0,0,0,0,0,0,0]
    @State var Box9_Op = [0,0,0,0,0,0,0,0,0]
    
    @State var Box1_col = [CustomColor.black,CustomColor.black,CustomColor.black,CustomColor.black,CustomColor.black,CustomColor.black,CustomColor.black,CustomColor.black,CustomColor.black]
    @State var Box2_col = [CustomColor.black,CustomColor.black,CustomColor.black,CustomColor.black,CustomColor.black,CustomColor.black,CustomColor.black,CustomColor.black,CustomColor.black]
    @State var Box3_col = [CustomColor.black,CustomColor.black,CustomColor.black,CustomColor.black,CustomColor.black,CustomColor.black,CustomColor.black,CustomColor.black,CustomColor.black]
    @State var Box4_col = [CustomColor.black,CustomColor.black,CustomColor.black,CustomColor.black,CustomColor.black,CustomColor.black,CustomColor.black,CustomColor.black,CustomColor.black]
    @State var Box5_col = [CustomColor.black,CustomColor.black,CustomColor.black,CustomColor.black,CustomColor.black,CustomColor.black,CustomColor.black,CustomColor.black,CustomColor.black]
    @State var Box6_col = [CustomColor.black,CustomColor.black,CustomColor.black,CustomColor.black,CustomColor.black,CustomColor.black,CustomColor.black,CustomColor.black,CustomColor.black]
    @State var Box7_col = [CustomColor.black,CustomColor.black,CustomColor.black,CustomColor.black,CustomColor.black,CustomColor.black,CustomColor.black,CustomColor.black,CustomColor.black]
    @State var Box8_col = [CustomColor.black,CustomColor.black,CustomColor.black,CustomColor.black,CustomColor.black,CustomColor.black,CustomColor.black,CustomColor.black,CustomColor.black]
    @State var Box9_col = [CustomColor.black,CustomColor.black,CustomColor.black,CustomColor.black,CustomColor.black,CustomColor.black,CustomColor.black,CustomColor.black,CustomColor.black]
    
    @State var possible = [1,2,3,4,5,6,7,8,9]
    @State var pass = false
    @State var counter = 0
    
    func shuffle(){
        if Sets.mode == "Easy"{
            counter = 0
            remove.shuffle()
            box_remove.shuffle()
            for i in 0...remove[0]{
                box1[box_remove[i]] = 0
                Box1_Op[box_remove[i]] = 0
                Box1_col[box_remove[i]] = CustomColor.blue
            }
            
            box_remove.shuffle()
            for i in 0...remove[1]{
                box2[box_remove[i]] = 0
                Box2_Op[box_remove[i]] = 0
                Box2_col[box_remove[i]] = CustomColor.blue
            }
            
            box_remove.shuffle()
            for i in 0...remove[2]{
                box3[box_remove[i]] = 0
                Box3_Op[box_remove[i]] = 0
                Box3_col[box_remove[i]] = CustomColor.blue
            }
            
            box_remove.shuffle()
            for i in 0...remove[3]{
                box4[box_remove[i]] = 0
                Box4_Op[box_remove[i]] = 0
                Box4_col[box_remove[i]] = CustomColor.blue
            }
            
            box_remove.shuffle()
            for i in 0...remove[4]{
                box5[box_remove[i]] = 0
                Box5_Op[box_remove[i]] = 0
                Box5_col[box_remove[i]] = CustomColor.blue
            }
            
            box_remove.shuffle()
            for i in 0...remove[5]{
                box6[box_remove[i]] = 0
                Box6_Op[box_remove[i]] = 0
                Box6_col[box_remove[i]] = CustomColor.blue
            }
            
            box_remove.shuffle()
            for i in 0...remove[6]{
                box7[box_remove[i]] = 0
                Box7_Op[box_remove[i]] = 0
                Box7_col[box_remove[i]] = CustomColor.blue
            }
            
            box_remove.shuffle()
            for i in 0...remove[7]{
                box8[box_remove[i]] = 0
                Box8_Op[box_remove[i]] = 0
                Box8_col[box_remove[i]] = CustomColor.blue
            }
            
            box_remove.shuffle()
            for i in 0...remove[0]{
                box9[box_remove[i]] = 0
                Box9_Op[box_remove[i]] = 0
                Box9_col[box_remove[i]] = CustomColor.blue
            }
        }
        
        
        
        if Sets.mode == "Medium"{
            
            box1[0] = M_boards[random_p][0]
            box1[1] = M_boards[random_p][1]
            box1[2] = M_boards[random_p][2]
            box1[3] = M_boards[random_p][3]
            box1[4] = M_boards[random_p][4]
            box1[5] = M_boards[random_p][5]
            box1[6] = M_boards[random_p][6]
            box1[7] = M_boards[random_p][7]
            box1[8] = M_boards[random_p][8]

            box2[0] = M_boards[random_p][9]
            box2[1] = M_boards[random_p][10]
            box2[2] = M_boards[random_p][11]
            box2[3] = M_boards[random_p][12]
            box2[4] = M_boards[random_p][13]
            box2[5] = M_boards[random_p][14]
            box2[6] = M_boards[random_p][15]
            box2[7] = M_boards[random_p][16]
            box2[8] = M_boards[random_p][17]

            box3[0] = M_boards[random_p][18]
            box3[1] = M_boards[random_p][19]
            box3[2] = M_boards[random_p][20]
            box3[3] = M_boards[random_p][21]
            box3[4] = M_boards[random_p][22]
            box3[5] = M_boards[random_p][23]
            box3[6] = M_boards[random_p][24]
            box3[7] = M_boards[random_p][25]
            box3[8] = M_boards[random_p][26]

            box4[0] = M_boards[random_p][27]
            box4[1] = M_boards[random_p][28]
            box4[2] = M_boards[random_p][29]
            box4[3] = M_boards[random_p][30]
            box4[4] = M_boards[random_p][31]
            box4[5] = M_boards[random_p][32]
            box4[6] = M_boards[random_p][33]
            box4[7] = M_boards[random_p][34]
            box4[8] = M_boards[random_p][35]

            box5[0] = M_boards[random_p][36]
            box5[1] = M_boards[random_p][37]
            box5[2] = M_boards[random_p][38]
            box5[3] = M_boards[random_p][39]
            box5[4] = M_boards[random_p][40]
            box5[5] = M_boards[random_p][41]
            box5[6] = M_boards[random_p][42]
            box5[7] = M_boards[random_p][43]
            box5[8] = M_boards[random_p][44]

            box6[0] = M_boards[random_p][45]
            box6[1] = M_boards[random_p][46]
            box6[2] = M_boards[random_p][47]
            box6[3] = M_boards[random_p][48]
            box6[4] = M_boards[random_p][49]
            box6[5] = M_boards[random_p][50]
            box6[6] = M_boards[random_p][51]
            box6[7] = M_boards[random_p][52]
            box6[8] = M_boards[random_p][53]

            box7[0] = M_boards[random_p][54]
            box7[1] = M_boards[random_p][55]
            box7[2] = M_boards[random_p][56]
            box7[3] = M_boards[random_p][57]
            box7[4] = M_boards[random_p][58]
            box7[5] = M_boards[random_p][59]
            box7[6] = M_boards[random_p][60]
            box7[7] = M_boards[random_p][61]
            box7[8] = M_boards[random_p][62]

            box8[0] = M_boards[random_p][63]
            box8[1] = M_boards[random_p][64]
            box8[2] = M_boards[random_p][65]
            box8[3] = M_boards[random_p][66]
            box8[4] = M_boards[random_p][67]
            box8[5] = M_boards[random_p][68]
            box8[6] = M_boards[random_p][69]
            box8[7] = M_boards[random_p][70]
            box8[8] = M_boards[random_p][71]

            box9[0] = M_boards[random_p][72]
            box9[1] = M_boards[random_p][73]
            box9[2] = M_boards[random_p][74]
            box9[3] = M_boards[random_p][75]
            box9[4] = M_boards[random_p][76]
            box9[5] = M_boards[random_p][77]
            box9[6] = M_boards[random_p][78]
            box9[7] = M_boards[random_p][79]
            box9[8] = M_boards[random_p][80]
            
            

            for i in 0...8{
                if box1[i] == 0{
                    Box1_Op[i] = 0
                    Box1_col[i] = CustomColor.blue
                }

                if box2[i] == 0{
                    Box2_Op[i] = 0
                    Box2_col[i] = CustomColor.blue
                }

                if box3[i] == 0{
                    Box3_Op[i] = 0
                    Box3_col[i] = CustomColor.blue
                }

                if box4[i] == 0{
                    Box4_Op[i] = 0
                    Box4_col[i] = CustomColor.blue
                }

                if box5[i] == 0{
                    Box5_Op[i] = 0
                    Box5_col[i] = CustomColor.blue
                }

                if box6[i] == 0{
                    Box6_Op[i] = 0
                    Box6_col[i] = CustomColor.blue
                }

                if box7[i] == 0{
                    Box7_Op[i] = 0
                    Box7_col[i] = CustomColor.blue
                }

                if box8[i] == 0{
                    Box8_Op[i] = 0
                    Box8_col[i] = CustomColor.blue
                }

                if box9[i] == 0{
                    Box9_Op[i] = 0
                    Box9_col[i] = CustomColor.blue
                }





            }

        }
//        if Sets.mode == "Medium"{
//            remove_m.shuffle()
//            box_remove.shuffle()
//            for i in 0...remove_m[0]{
//                box1[box_remove[i]] = 0
//                Box1_Op[box_remove[i]] = 0
//                Box1_col[box_remove[i]] = CustomColor.blue
//            }
//
//            box_remove.shuffle()
//            for i in 0...remove_m[1]{
//                box2[box_remove[i]] = 0
//                Box2_Op[box_remove[i]] = 0
//                Box2_col[box_remove[i]] = CustomColor.blue
//            }
//
//            box_remove.shuffle()
//            for i in 0...remove_m[2]{
//                box3[box_remove[i]] = 0
//                Box3_Op[box_remove[i]] = 0
//                Box3_col[box_remove[i]] = CustomColor.blue
//            }
//
//            box_remove.shuffle()
//            for i in 0...remove_m[3]{
//                box4[box_remove[i]] = 0
//                Box4_Op[box_remove[i]] = 0
//                Box4_col[box_remove[i]] = CustomColor.blue
//            }
//
//            box_remove.shuffle()
//            for i in 0...remove_m[4]{
//                box5[box_remove[i]] = 0
//                Box5_Op[box_remove[i]] = 0
//                Box5_col[box_remove[i]] = CustomColor.blue
//            }
//
//            box_remove.shuffle()
//            for i in 0...remove_m[5]{
//                box6[box_remove[i]] = 0
//                Box6_Op[box_remove[i]] = 0
//                Box6_col[box_remove[i]] = CustomColor.blue
//            }
//
//            box_remove.shuffle()
//            for i in 0...remove_m[6]{
//                box7[box_remove[i]] = 0
//                Box7_Op[box_remove[i]] = 0
//                Box7_col[box_remove[i]] = CustomColor.blue
//            }
//
//            box_remove.shuffle()
//            for i in 0...remove_m[7]{
//                box8[box_remove[i]] = 0
//                Box8_Op[box_remove[i]] = 0
//                Box8_col[box_remove[i]] = CustomColor.blue
//            }
//
//            box_remove.shuffle()
//            for i in 0...remove_m[0]{
//                box9[box_remove[i]] = 0
//                Box9_Op[box_remove[i]] = 0
//                Box9_col[box_remove[i]] = CustomColor.blue
//            }
//        }
//
//
//
//        if Sets.mode == "Hard"{
//            counter = 0
//            remove_h.shuffle()
//            box_remove.shuffle()
//            for i in 0...remove_h[0]{
//                box1[box_remove[i]] = 0
//                Box1_Op[box_remove[i]] = 0
//                Box1_col[box_remove[i]] = CustomColor.blue
//            }
//
//            box_remove.shuffle()
//            for i in 0...remove_h[1]{
//                box2[box_remove[i]] = 0
//                Box2_Op[box_remove[i]] = 0
//                Box2_col[box_remove[i]] = CustomColor.blue
//            }
//
//            box_remove.shuffle()
//            for i in 0...remove_h[2]{
//                box3[box_remove[i]] = 0
//                Box3_Op[box_remove[i]] = 0
//                Box3_col[box_remove[i]] = CustomColor.blue
//            }
//
//            box_remove.shuffle()
//            for i in 0...remove_h[3]{
//                box4[box_remove[i]] = 0
//                Box4_Op[box_remove[i]] = 0
//                Box4_col[box_remove[i]] = CustomColor.blue
//            }
//
//            box_remove.shuffle()
//            for i in 0...remove_h[4]{
//                box5[box_remove[i]] = 0
//                Box5_Op[box_remove[i]] = 0
//                Box5_col[box_remove[i]] = CustomColor.blue
//            }
//
//            box_remove.shuffle()
//            for i in 0...remove_h[5]{
//                box6[box_remove[i]] = 0
//                Box6_Op[box_remove[i]] = 0
//                Box6_col[box_remove[i]] = CustomColor.blue
//            }
//
//            box_remove.shuffle()
//            for i in 0...remove_h[6]{
//                box7[box_remove[i]] = 0
//                Box7_Op[box_remove[i]] = 0
//                Box7_col[box_remove[i]] = CustomColor.blue
//            }
//
//            box_remove.shuffle()
//            for i in 0...remove_h[7]{
//                box8[box_remove[i]] = 0
//                Box8_Op[box_remove[i]] = 0
//                Box8_col[box_remove[i]] = CustomColor.blue
//            }
//
//            box_remove.shuffle()
//            for i in 0...remove_h[0]{
//                box9[box_remove[i]] = 0
//                Box9_Op[box_remove[i]] = 0
//                Box9_col[box_remove[i]] = CustomColor.blue
//            }
//        }
        
        temp1 = box1
        temp2 = box2
        temp3 = box3
        temp4 = box4
        temp5 = box5
        temp6 = box6
        temp7 = box7
        temp8 = box8
        temp9 = box9
        
        
        
        if solver() == false && Sets.mode == "Easy"{
            counter = counter + 1
            boxes()
            
        }
        else{
            
            box1 = temp1
            box2 = temp2
            box3 = temp3
            box4 = temp4
            box5 = temp5
            box6 = temp6
            box7 = temp7
            box8 = temp8
            box9 = temp9
            self.stopWatchManager.stop()
            self.stopWatchManager.start()
//            if counter<150{
//                str_box()
//                str_box2()
//                updater()}
//            counter = 0
//            DispatchQueue.main.asyncAfter(deadline: .now() + seconds) {
//                boxes()
//            }
            
                
            
        }
        
        
        
    }
    func boxes(){
        game_state = "New Game"
        correct = ""
        wrong = 0
        wrong_text = ""
        n = 0
        b = 0
        l = 0
        solved = false
        box1 = [0,0,0,0,0,0,0,0,0]
        box4 = [0,0,0,0,0,0,0,0,0]
        box7 = [0,0,0,0,0,0,0,0,0]
            
        box2 = [0,0,0,0,0,0,0,0,0]
        box5 = [0,0,0,0,0,0,0,0,0]
        box8 = [0,0,0,0,0,0,0,0,0]
            
        box3 = [0,0,0,0,0,0,0,0,0]
        box6 = [0,0,0,0,0,0,0,0,0]
        box9 = [0,0,0,0,0,0,0,0,0]
        
        available = [1,2,3,4,5,6,7,8,9]
        remove = [4,2,3,2,3,2,3,3,0]
        box_remove = [0,1,2,3,4,5,6,7,8]
        
        Box1_Op = [100,100,100,100,100,100,100,100,100]
        Box2_Op = [100,100,100,100,100,100,100,100,100]
        Box3_Op = [100,100,100,100,100,100,100,100,100]

        Box4_Op = [100,100,100,100,100,100,100,100,100]
        Box5_Op = [100,100,100,100,100,100,100,100,100]
        Box6_Op = [100,100,100,100,100,100,100,100,100]
        
        Box7_Op = [100,100,100,100,100,100,100,100,100]
        Box8_Op = [100,100,100,100,100,100,100,100,100]
        Box9_Op = [100,100,100,100,100,100,100,100,100]
        
        selected = [CustomColor.be,CustomColor.be,CustomColor.be,CustomColor.be,CustomColor.be,CustomColor.be,CustomColor.be,CustomColor.be,CustomColor.be]
        
        Box1_col = [CustomColor.black,CustomColor.black,CustomColor.black,CustomColor.black,CustomColor.black,CustomColor.black,CustomColor.black,CustomColor.black,CustomColor.black]
        Box2_col = [CustomColor.black,CustomColor.black,CustomColor.black,CustomColor.black,CustomColor.black,CustomColor.black,CustomColor.black,CustomColor.black,CustomColor.black]
        Box3_col = [CustomColor.black,CustomColor.black,CustomColor.black,CustomColor.black,CustomColor.black,CustomColor.black,CustomColor.black,CustomColor.black,CustomColor.black]

        Box4_col = [CustomColor.black,CustomColor.black,CustomColor.black,CustomColor.black,CustomColor.black,CustomColor.black,CustomColor.black,CustomColor.black,CustomColor.black]
        Box5_col = [CustomColor.black,CustomColor.black,CustomColor.black,CustomColor.black,CustomColor.black,CustomColor.black,CustomColor.black,CustomColor.black,CustomColor.black]
        Box6_col = [CustomColor.black,CustomColor.black,CustomColor.black,CustomColor.black,CustomColor.black,CustomColor.black,CustomColor.black,CustomColor.black,CustomColor.black]
        
        Box7_col = [CustomColor.black,CustomColor.black,CustomColor.black,CustomColor.black,CustomColor.black,CustomColor.black,CustomColor.black,CustomColor.black,CustomColor.black]
        Box8_col = [CustomColor.black,CustomColor.black,CustomColor.black,CustomColor.black,CustomColor.black,CustomColor.black,CustomColor.black,CustomColor.black,CustomColor.black]
        Box9_col = [CustomColor.black,CustomColor.black,CustomColor.black,CustomColor.black,CustomColor.black,CustomColor.black,CustomColor.black,CustomColor.black,CustomColor.black]
        
        
        
        if Sets.mode == "Easy"{
            available.shuffle()
            box1[0] = available[0]
            box1[1] = available[1]
            box1[2] = available[2]
            box1[3] = available[3]
            box1[4] = available[4]
            box1[5] = available[5]
            box1[6] = available[6]
            box1[7] = available[7]
            box1[8] = available[8]
            
            
            box4[0] = box1[1]
            box4[3] = box1[4]
            box4[6] = box1[8]
            box4[1] = box1[2]
            box4[4] = box1[5]
            box4[7] = box1[6]
            box4[2] = box1[0]
            box4[5] = box1[3]
            box4[8] = box1[7]
            
            
            
            box7[0] = box1[2]
            box7[3] = box1[5]
            box7[6] = box1[7]
            box7[1] = box1[0]
            box7[4] = box1[3]
            box7[7] = box1[8]
            box7[2] = box1[1]
            box7[5] = box1[4]
            box7[8] = box1[6]
            
            
            box2[0] = box1[3]
            box2[3] = box1[6]
            box2[6] = box1[0]
            box2[1] = box1[4]
            box2[4] = box1[7]
            box2[7] = box1[1]
            box2[2] = box1[8]
            box2[5] = box1[2]
            box2[8] = box1[5]
            
            
            box5[0] = box1[8]
            box5[3] = box1[1]
            box5[6] = box1[2]
            box5[1] = box1[3]
            box5[4] = box1[0]
            box5[7] = box1[5]
            box5[2] = box1[6]
            box5[5] = box1[7]
            box5[8] = box1[4]
            
            box8[0] = box1[4]
            box8[3] = box1[7]
            box8[6] = box1[5]
            box8[1] = box1[6]
            box8[4] = box1[8]
            box8[7] = box1[2]
            box8[2] = box1[3]
            box8[5] = box1[0]
            box8[8] = box1[1]
            
            
            box3[0] = box1[6]
            box3[1] = box1[7]
            box3[2] = box1[5]
            box3[3] = box1[8]
            box3[4] = box1[0]
            box3[5] = box1[1]
            box3[6] = box1[3]
            box3[7] = box1[2]
            box3[8] = box1[4]
            
            box6[0] = box1[5]
            box6[1] = box1[4]
            box6[2] = box1[7]
            box6[3] = box1[2]
            box6[4] = box1[8]
            box6[5] = box1[6]
            box6[6] = box1[0]
            box6[7] = box1[1]
            box6[8] = box1[3]
            
            box9[0] = box1[7]
            box9[1] = box1[5]
            box9[2] = box1[8]
            box9[3] = box1[1]
            box9[4] = box1[6]
            box9[5] = box1[2]
            box9[6] = box1[4]
            box9[7] = box1[3]
            box9[8] = box1[0]
        }
        
        if Sets.mode == "Medium"{
            random_p = Int.random(in: 0...210)
            box1[0] = M_solved[random_p][0]
            box1[1] = M_solved[random_p][1]
            box1[2] = M_solved[random_p][2]
            box1[3] = M_solved[random_p][3]
            box1[4] = M_solved[random_p][4]
            box1[5] = M_solved[random_p][5]
            box1[6] = M_solved[random_p][6]
            box1[7] = M_solved[random_p][7]
            box1[8] = M_solved[random_p][8]

            box2[0] = M_solved[random_p][9]
            box2[1] = M_solved[random_p][10]
            box2[2] = M_solved[random_p][11]
            box2[3] = M_solved[random_p][12]
            box2[4] = M_solved[random_p][13]
            box2[5] = M_solved[random_p][14]
            box2[6] = M_solved[random_p][15]
            box2[7] = M_solved[random_p][16]
            box2[8] = M_solved[random_p][17]

            box3[0] = M_solved[random_p][18]
            box3[1] = M_solved[random_p][19]
            box3[2] = M_solved[random_p][20]
            box3[3] = M_solved[random_p][21]
            box3[4] = M_solved[random_p][22]
            box3[5] = M_solved[random_p][23]
            box3[6] = M_solved[random_p][24]
            box3[7] = M_solved[random_p][25]
            box3[8] = M_solved[random_p][26]

            box4[0] = M_solved[random_p][27]
            box4[1] = M_solved[random_p][28]
            box4[2] = M_solved[random_p][29]
            box4[3] = M_solved[random_p][30]
            box4[4] = M_solved[random_p][31]
            box4[5] = M_solved[random_p][32]
            box4[6] = M_solved[random_p][33]
            box4[7] = M_solved[random_p][34]
            box4[8] = M_solved[random_p][35]

            box5[0] = M_solved[random_p][36]
            box5[1] = M_solved[random_p][37]
            box5[2] = M_solved[random_p][38]
            box5[3] = M_solved[random_p][39]
            box5[4] = M_solved[random_p][40]
            box5[5] = M_solved[random_p][41]
            box5[6] = M_solved[random_p][42]
            box5[7] = M_solved[random_p][43]
            box5[8] = M_solved[random_p][44]

            box6[0] = M_solved[random_p][45]
            box6[1] = M_solved[random_p][46]
            box6[2] = M_solved[random_p][47]
            box6[3] = M_solved[random_p][48]
            box6[4] = M_solved[random_p][49]
            box6[5] = M_solved[random_p][50]
            box6[6] = M_solved[random_p][51]
            box6[7] = M_solved[random_p][52]
            box6[8] = M_solved[random_p][53]

            box7[0] = M_solved[random_p][54]
            box7[1] = M_solved[random_p][55]
            box7[2] = M_solved[random_p][56]
            box7[3] = M_solved[random_p][57]
            box7[4] = M_solved[random_p][58]
            box7[5] = M_solved[random_p][59]
            box7[6] = M_solved[random_p][60]
            box7[7] = M_solved[random_p][61]
            box7[8] = M_solved[random_p][62]

            box8[0] = M_solved[random_p][63]
            box8[1] = M_solved[random_p][64]
            box8[2] = M_solved[random_p][65]
            box8[3] = M_solved[random_p][66]
            box8[4] = M_solved[random_p][67]
            box8[5] = M_solved[random_p][68]
            box8[6] = M_solved[random_p][69]
            box8[7] = M_solved[random_p][70]
            box8[8] = M_solved[random_p][71]

            box9[0] = M_solved[random_p][72]
            box9[1] = M_solved[random_p][73]
            box9[2] = M_solved[random_p][74]
            box9[3] = M_solved[random_p][75]
            box9[4] = M_solved[random_p][76]
            box9[5] = M_solved[random_p][77]
            box9[6] = M_solved[random_p][78]
            box9[7] = M_solved[random_p][79]
            box9[8] = M_solved[random_p][80]

        }
        
        
        box1_c = box1
        box2_c = box2
        box3_c = box3
        box4_c = box4
        box5_c = box5
        box6_c = box6
        box7_c = box7
        box8_c = box8
        box9_c = box9
        shuffle()
    }
    func Select(a:Int){
        selected[temp] = state[1]
        selected[a] = state[0]
        temp = a
        num_selected = 1
    }
    func Undo(){
        g = undo_box.count
        if g>0{
            if undo_box[g-1] as! Int == 1{
                box1[undo_pos[g-1] as! Int] = 0
                Box1_Op[undo_pos[g-1] as! Int] = 0
                
            }
            
            if undo_box[g-1] as! Int == 2{
                box2[undo_pos[g-1] as! Int] = 0
                Box2_Op[undo_pos[g-1] as! Int] = 0
                
            }

            if undo_box[g-1] as! Int == 3{
                box3[undo_pos[g-1] as! Int] = 0
                Box3_Op[undo_pos[g-1] as! Int] = 0
                
            }

            if undo_box[g-1] as! Int == 4{
                box4[undo_pos[g-1] as! Int] = 0
                Box4_Op[undo_pos[g-1] as! Int] = 0
                
            }

            if undo_box[g-1] as! Int == 5{
                box5[undo_pos[g-1] as! Int] = 0
                Box5_Op[undo_pos[g-1] as! Int] = 0
                
            }

            if undo_box[g-1] as! Int == 6{
                box6[undo_pos[g-1] as! Int] = 0
                Box6_Op[undo_pos[g-1] as! Int] = 0
                
            }

            if undo_box[g-1] as! Int == 7{
                box7[undo_pos[g-1] as! Int] = 0
                Box7_Op[undo_pos[g-1] as! Int] = 0
                
            }

            if undo_box[g-1] as! Int == 8{
                box8[undo_pos[g-1] as! Int] = 0
                Box8_Op[undo_pos[g-1] as! Int] = 0
                
            }

            if undo_box[g-1] as! Int == 9{
                box9[undo_pos[g-1] as! Int] = 0
                Box9_Op[undo_pos[g-1] as! Int] = 0
                
            }
            undo_box.remove(at: g-1)
            undo_pos.remove(at: g-1)
            
        }
    }
    func box_check(d:Int,e:Int){
        
        box_selected = 1
        if num_selected == 1{
            
            
            if d == 1 && Box1_col[e] == CustomColor.blue{
                box1[e] = temp+1
                Box1_Op[e] =  100
                undo_box.append(1)
                undo_pos.append(e)
            }
            
            if d == 2 && Box2_col[e] == CustomColor.blue{
                box2[e] = temp+1
                Box2_Op[e] =  100
                undo_box.append(2)
                undo_pos.append(e)
            }
            
            if d == 3 && Box3_col[e] == CustomColor.blue{
                box3[e] = temp+1
                Box3_Op[e] =  100
                undo_box.append(3)
                undo_pos.append(e)
            }
            
            if d == 4 && Box4_col[e] == CustomColor.blue{
                box4[e] = temp+1
                Box4_Op[e] =  100
                undo_box.append(4)
                undo_pos.append(e)
            }
            
            
            if d == 5 && Box5_col[e] == CustomColor.blue{
                box5[e] = temp+1
                Box5_Op[e] =  100
                undo_box.append(5)
                undo_pos.append(e)
            }
            
            if d == 6 && Box6_col[e] == CustomColor.blue{
                box6[e] = temp+1
                Box6_Op[e] =  100
                undo_box.append(6)
                undo_pos.append(e)
            }
            
            
            if d == 7 && Box7_col[e] == CustomColor.blue{
                box7[e] = temp+1
                Box7_Op[e] =  100
                undo_box.append(7)
                undo_pos.append(e)
            }
            
            
            if d == 8 && Box8_col[e] == CustomColor.blue {
                box8[e] = temp+1
                Box8_Op[e] =  100
                undo_box.append(8)
                undo_pos.append(e)
            }
            
            
            if d == 9 && Box9_col[e] == CustomColor.blue{
                box9[e] = temp+1
                Box9_Op[e] =  100
                undo_box.append(9)
                undo_pos.append(e)
            }
        }
        
        
        if solved == false{
            var tag = true
            if box1.contains(0){
                tag = false
                 
            }
            if box2.contains(0){
                tag = false
            }
            if box3.contains(0){
                tag = false
            }
            if box4.contains(0){
                tag = false
            }
            if box5.contains(0){
                tag = false
            }
            if box6.contains(0){
                tag = false
            }
            if box7.contains(0){
                tag = false
            }
            if box8.contains(0){
                tag = false
            }
            if box9.contains(0){
                tag = false
            }
            if tag == true{
                solved = true
                l = 100
            }
            
            
        }
    }
    func checker(){
        
        
        self.stopWatchManager.pause()
        score = floor(stopWatchManager.secondsElapsed)
        
        
        
        if box1 == box1_c{
            wrong = wrong+1
        }
        
        if box2 == box2_c{
            wrong = wrong+1
        }
        
        if box3 == box3_c{
            wrong = wrong+1
        }
        
        if box4 == box4_c{
            wrong = wrong+1
        }
        
        if box5 == box5_c{
            wrong = wrong+1
        }
        
        if box6 == box6_c{
            wrong = wrong+1
        }
        
        if box7 == box7_c{
            wrong = wrong+1
        }
        
        if box8 == box8_c{
            wrong = wrong+1
        }
        
        if box9 == box9_c{
            wrong = wrong+1
        }
          
        
        if wrong == 9{
            b = 100
            n = 17
            correct = "All correct,"
            wrong_text = "Good Job!"
            
            if Sets.mode == "Easy"{
                if Float(score) < Easy_highScore {Easy_highScore = Float(score)
                UserDefaults.standard.set(Easy_highScore, forKey: "Easy_highScore")
                
                    
                }
                
            }
            
            if Sets.mode == "Medium"{
                
                
                if Float(score) < Medium_highScore {Medium_highScore = Float(score)
                UserDefaults.standard.set(Medium_highScore, forKey: "Medium_highScore")
                
                    
                }
                
            }
        }
        
        if wrong<9{
            b = 100
            n = 17
            correct = "You messed up, "
            wrong_text = "Good try!"
        }
    }
    func BoxesArrayUpdate(){
        boxes__.append(box1)
        boxes__.append(box2)
        boxes__.append(box3)
        boxes__.append(box4)
        boxes__.append(box5)
        boxes__.append(box6)
        boxes__.append(box7)
        boxes__.append(box8)
        boxes__.append(box9)
    }
    func solver() -> Bool{
        
        returner = false
        right_boxes = 0
        
        if Sets.mode == "Easy"{
            inrange = 1
        }
        
        if Sets.mode == "Medium"{
            inrange = 5
        }
        
        if Sets.mode == "Hard"{
            inrange = 7
        }
        
        boxes__.removeAll()
        BoxesArrayUpdate()
        

        
        
            
        if Sets.mode == "Easy"{
            boxes_solver()
        }
        
            
            
            
            
            
            
            
        
        
        if boxes__[0] == box1_c{
            right_boxes = right_boxes + 1
        }
        if boxes__[1] == box2_c{
            right_boxes = right_boxes + 1
        }
        if boxes__[2] == box3_c{
            right_boxes = right_boxes + 1
        }
        if boxes__[3] == box4_c{
            right_boxes = right_boxes + 1
        }
        if boxes__[4] == box5_c{
            right_boxes = right_boxes + 1
        }
        if boxes__[5] == box6_c{
            right_boxes = right_boxes + 1
        }
        if boxes__[6] == box7_c{
            right_boxes = right_boxes + 1
        }
        if boxes__[7] == box8_c{
            right_boxes = right_boxes + 1
        }
        if boxes__[8] == box9_c{
            right_boxes = right_boxes + 1
        }
        if right_boxes == 9{
            returner = true
        }
        
        else{
            returner = false
        }
            
         return returner
            
    }
    func updater(){
        
        

        let fileURL = URL( fileURLWithPath: "/Users/reddykitaan/Desktop/Sudoku_board_storage.txt" )

        //writing
        do {
            try text.write(to: fileURL, atomically: true, encoding: .utf8)
        }
        catch {}
        
        
        let fileURL2 = URL( fileURLWithPath: "/Users/reddykitaan/Desktop/Boardss.txt" )

        //writing
        do {
            try text2.write(to: fileURL2, atomically: true, encoding: .utf8)
        }
        catch {}
            
        
    }
    func str_box(){
        text = text + "["
        for i in 0...8{
            text = text + String(box1[i])
            text = text + ","
        }
        
        for i in 0...8{
            text = text + String(box2[i])
            text = text + ","
        }
        
        for i in 0...8{
            text = text + String(box3[i])
            text = text + ","
        }
        
        for i in 0...8{
            text = text + String(box4[i])
            text = text + ","
        }
        
        for i in 0...8{
            text = text + String(box5[i])
            text = text + ","
        }
        
        for i in 0...8{
            text = text + String(box6[i])
            text = text + ","
        }
        
        for i in 0...8{
            text = text + String(box7[i])
            text = text + ","
        }
        
        for i in 0...8{
            text = text + String(box8[i])
            text = text + ","
        }
        
        for i in 0...8{
            text = text + String(box9[i])
            if i != 8{
                text = text + ","}
        }
        
        text = text + "],"
       
    }
    func str_box2(){
        text2 = text2 + "["
        for i in 0...8{
            text2 = text2 + String(boxes__[0][i])
            text2 = text2 + ","
        }
        
        for i in 0...8{
            text2 = text2 + String(boxes__[1][i])
            text2 = text2 + ","
        }
        
        for i in 0...8{
            text2 = text2 + String(boxes__[2][i])
            text2 = text2 + ","
        }
        
        for i in 0...8{
            text2 = text2 + String(boxes__[3][i])
            text2 = text2 + ","
        }
        
        for i in 0...8{
            text2 = text2 + String(boxes__[4][i])
            text2 = text2 + ","
        }
        
        for i in 0...8{
            text2 = text2 + String(boxes__[5][i])
            text2 = text2 + ","
        }
        
        for i in 0...8{
            text2 = text2 + String(boxes__[6][i])
            text2 = text2 + ","
        }
        
        for i in 0...8{
            text2 = text2 + String(boxes__[7][i])
            text2 = text2 + ","
        }
        
        for i in 0...8{
            text2 = text2 + String(boxes__[8][i])
            if i != 8{
                text2 = text2 + ","}
        }
        
        text2 = text2 + "],"
       
    }
    func boxes_solver(){
        for _ in 0...inrange{
        for box in 0...8{
        //BOX1[0]
        possible = [1,2,3,4,5,6,7,8,9]
        possible = possible.filter(){$0 != boxes__[box][1]}
        possible = possible.filter(){$0 != boxes__[box][2]}
        possible = possible.filter(){$0 != boxes__[box][3]}
        possible = possible.filter(){$0 != boxes__[box][4]}
        possible = possible.filter(){$0 != boxes__[box][5]}
        possible = possible.filter(){$0 != boxes__[box][6]}
        possible = possible.filter(){$0 != boxes__[box][7]}
        possible = possible.filter(){$0 != boxes__[box][8]}
        
            if box == 6 || box == 7 || box == 8{
                pos = box - 6
            }
            
            if box == 3 || box == 4 || box == 5{
                pos = box - 3
            }
            
            if box == 0 || box == 1 || box == 2{
                pos = box + 3
            }
            
            
        possible = possible.filter(){$0 != boxes__[pos][0]}
        possible = possible.filter(){$0 != boxes__[pos][3]}
        possible = possible.filter(){$0 != boxes__[pos][6]}

            if box == 6 || box == 7 || box == 8{
                poss2 = box - 3
            }
            
            if box == 3 || box == 4 || box == 5{
                poss2 = box + 3
            }
            
            if box == 0 || box == 1 || box == 2{
                poss2 = box + 6
            }
            
            
            
            
        possible = possible.filter(){$0 != boxes__[poss2][0]}
        possible = possible.filter(){$0 != boxes__[poss2][3]}
        possible = possible.filter(){$0 != boxes__[poss2][6]}
    
            
            if box == 0 || box == 3 || box == 6{
                poss3 = box + 1
            }
            
            if box == 1 || box == 4 || box == 7{
                poss3 = box + 1
            }
            
            if box ==  2 || box == 5 || box == 8{
                poss3 = box - 1
            }
            
        possible = possible.filter(){$0 != boxes__[poss3][0]}
        possible = possible.filter(){$0 != boxes__[poss3][1]}
        possible = possible.filter(){$0 != boxes__[poss3][2]}

            if box == 0 || box == 3 || box == 6{
                poss4 = box + 2
            }
            
            if box == 1 || box == 4 || box == 7{
                poss4 = box - 1
            }
            
            if box ==  2 || box == 5 || box == 8{
                poss4 = box - 2
            }
        possible = possible.filter(){$0 != boxes__[poss4][0]}
        possible = possible.filter(){$0 != boxes__[poss4][1]}
        possible = possible.filter(){$0 != boxes__[poss4][2]}
    
    
        
        if possible.count == 1{
            boxes__[box][0] = possible[0]
            
        }
        
        
        
        
        
            //BOX1[1]
            possible = [1,2,3,4,5,6,7,8,9]
            possible = possible.filter(){$0 != boxes__[box][0]}
            possible = possible.filter(){$0 != boxes__[box][2]}
            possible = possible.filter(){$0 != boxes__[box][3]}
            possible = possible.filter(){$0 != boxes__[box][4]}
            possible = possible.filter(){$0 != boxes__[box][5]}
            possible = possible.filter(){$0 != boxes__[box][6]}
            possible = possible.filter(){$0 != boxes__[box][7]}
            possible = possible.filter(){$0 != boxes__[box][8]}
                
            possible = possible.filter(){$0 != boxes__[pos][1]}
            possible = possible.filter(){$0 != boxes__[pos][4]}
            possible = possible.filter(){$0 != boxes__[pos][7]}

            possible = possible.filter(){$0 != boxes__[poss2][1]}
            possible = possible.filter(){$0 != boxes__[poss2][4]}
            possible = possible.filter(){$0 != boxes__[poss2][7]}
        
            possible = possible.filter(){$0 != boxes__[poss3][0]}
            possible = possible.filter(){$0 != boxes__[poss3][1]}
            possible = possible.filter(){$0 != boxes__[poss3][2]}

            possible = possible.filter(){$0 != boxes__[poss4][0]}
            possible = possible.filter(){$0 != boxes__[poss4][1]}
            possible = possible.filter(){$0 != boxes__[poss4][2]}
        
        
            
            if possible.count == 1{
                boxes__[box][1] = possible[0]
                
            }
        
        
            //BOX1[2]
            possible = [1,2,3,4,5,6,7,8,9]
            possible = possible.filter(){$0 != boxes__[box][0]}
            possible = possible.filter(){$0 != boxes__[box][1]}
            possible = possible.filter(){$0 != boxes__[box][3]}
            possible = possible.filter(){$0 != boxes__[box][4]}
            possible = possible.filter(){$0 != boxes__[box][5]}
            possible = possible.filter(){$0 != boxes__[box][6]}
            possible = possible.filter(){$0 != boxes__[box][7]}
            possible = possible.filter(){$0 != boxes__[box][8]}
                
            possible = possible.filter(){$0 != boxes__[pos][2]}
            possible = possible.filter(){$0 != boxes__[pos][5]}
            possible = possible.filter(){$0 != boxes__[pos][8]}
    
            possible = possible.filter(){$0 != boxes__[poss2][2]}
            possible = possible.filter(){$0 != boxes__[poss2][5]}
            possible = possible.filter(){$0 != boxes__[poss2][8]}
        
            possible = possible.filter(){$0 != boxes__[poss3][0]}
            possible = possible.filter(){$0 != boxes__[poss3][1]}
            possible = possible.filter(){$0 != boxes__[poss3][2]}
    
            possible = possible.filter(){$0 != boxes__[poss4][0]}
            possible = possible.filter(){$0 != boxes__[poss4][1]}
            possible = possible.filter(){$0 != boxes__[poss4][2]}
            
            if possible.count == 1{
                boxes__[box][2] = possible[0]
                
            }
        
        
            //BOX1[3]
            possible = [1,2,3,4,5,6,7,8,9]
            possible = possible.filter(){$0 != boxes__[box][0]}
            possible = possible.filter(){$0 != boxes__[box][1]}
            possible = possible.filter(){$0 != boxes__[box][2]}
            possible = possible.filter(){$0 != boxes__[box][4]}
            possible = possible.filter(){$0 != boxes__[box][5]}
            possible = possible.filter(){$0 != boxes__[box][6]}
            possible = possible.filter(){$0 != boxes__[box][7]}
            possible = possible.filter(){$0 != boxes__[box][8]}
                
            possible = possible.filter(){$0 != boxes__[pos][0]}
            possible = possible.filter(){$0 != boxes__[pos][3]}
            possible = possible.filter(){$0 != boxes__[pos][6]}
    
            possible = possible.filter(){$0 != boxes__[poss2][0]}
            possible = possible.filter(){$0 != boxes__[poss2][3]}
            possible = possible.filter(){$0 != boxes__[poss2][6]}
            
            
            possible = possible.filter(){$0 != boxes__[poss3][3]}
            possible = possible.filter(){$0 != boxes__[poss3][4]}
            possible = possible.filter(){$0 != boxes__[poss3][5]}
    
            possible = possible.filter(){$0 != boxes__[poss4][3]}
            possible = possible.filter(){$0 != boxes__[poss4][4]}
            possible = possible.filter(){$0 != boxes__[poss4][5]}
        
            if possible.count == 1{
                boxes__[box][3] = possible[0]
               
            }
        
        
            //BOX1[4]
            possible = [1,2,3,4,5,6,7,8,9]
            possible = possible.filter(){$0 != boxes__[box][0]}
            possible = possible.filter(){$0 != boxes__[box][1]}
            possible = possible.filter(){$0 != boxes__[box][2]}
            possible = possible.filter(){$0 != boxes__[box][3]}
            possible = possible.filter(){$0 != boxes__[box][5]}
            possible = possible.filter(){$0 != boxes__[box][6]}
            possible = possible.filter(){$0 != boxes__[box][7]}
            possible = possible.filter(){$0 != boxes__[box][8]}
                
            possible = possible.filter(){$0 != boxes__[pos][1]}
            possible = possible.filter(){$0 != boxes__[pos][4]}
            possible = possible.filter(){$0 != boxes__[pos][7]}
    
            possible = possible.filter(){$0 != boxes__[poss2][1]}
            possible = possible.filter(){$0 != boxes__[poss2][4]}
            possible = possible.filter(){$0 != boxes__[poss2][7]}
            
        
            possible = possible.filter(){$0 != boxes__[poss3][3]}
            possible = possible.filter(){$0 != boxes__[poss3][4]}
            possible = possible.filter(){$0 != boxes__[poss3][5]}
    
            possible = possible.filter(){$0 != boxes__[poss4][3]}
            possible = possible.filter(){$0 != boxes__[poss4][4]}
            possible = possible.filter(){$0 != boxes__[poss4][5]}
        
            if possible.count == 1{
                boxes__[box][4] = possible[0]
                
            }
        
            //BOX1[5]
            possible = [1,2,3,4,5,6,7,8,9]
            possible = possible.filter(){$0 != boxes__[box][0]}
            possible = possible.filter(){$0 != boxes__[box][1]}
            possible = possible.filter(){$0 != boxes__[box][2]}
            possible = possible.filter(){$0 != boxes__[box][3]}
            possible = possible.filter(){$0 != boxes__[box][4]}
            possible = possible.filter(){$0 != boxes__[box][6]}
            possible = possible.filter(){$0 != boxes__[box][7]}
            possible = possible.filter(){$0 != boxes__[box][8]}
                
            possible = possible.filter(){$0 != boxes__[pos][2]}
            possible = possible.filter(){$0 != boxes__[pos][5]}
            possible = possible.filter(){$0 != boxes__[pos][8]}
    
            possible = possible.filter(){$0 != boxes__[poss2][2]}
            possible = possible.filter(){$0 != boxes__[poss2][5]}
            possible = possible.filter(){$0 != boxes__[poss2][8]}
            
        
            possible = possible.filter(){$0 != boxes__[poss3][3]}
            possible = possible.filter(){$0 != boxes__[poss3][4]}
            possible = possible.filter(){$0 != boxes__[poss3][5]}
    
            possible = possible.filter(){$0 != boxes__[poss4][3]}
            possible = possible.filter(){$0 != boxes__[poss4][4]}
            possible = possible.filter(){$0 != boxes__[poss4][5]}
        
            if possible.count == 1{
                boxes__[box][5] = possible[0]
                
            }
        
        
        //BOX1[6]
        possible = [1,2,3,4,5,6,7,8,9]
            possible = possible.filter(){$0 != boxes__[box][0]}
            possible = possible.filter(){$0 != boxes__[box][1]}
            possible = possible.filter(){$0 != boxes__[box][2]}
            possible = possible.filter(){$0 != boxes__[box][3]}
            possible = possible.filter(){$0 != boxes__[box][4]}
            possible = possible.filter(){$0 != boxes__[box][5]}
            possible = possible.filter(){$0 != boxes__[box][7]}
            possible = possible.filter(){$0 != boxes__[box][8]}
            
        possible = possible.filter(){$0 != boxes__[pos][0]}
        possible = possible.filter(){$0 != boxes__[pos][3]}
        possible = possible.filter(){$0 != boxes__[pos][6]}

        possible = possible.filter(){$0 != boxes__[poss2][0]}
        possible = possible.filter(){$0 != boxes__[poss2][3]}
        possible = possible.filter(){$0 != boxes__[poss2][6]}
    
    
        possible = possible.filter(){$0 != boxes__[poss3][6]}
        possible = possible.filter(){$0 != boxes__[poss3][7]}
        possible = possible.filter(){$0 != boxes__[poss3][8]}

        possible = possible.filter(){$0 != boxes__[poss4][6]}
        possible = possible.filter(){$0 != boxes__[poss4][7]}
        possible = possible.filter(){$0 != boxes__[poss4][8]}
    
        if possible.count == 1{
            boxes__[box][6] = possible[0]
            
        }
          
        
        
        //BOX1[7]
        possible = [1,2,3,4,5,6,7,8,9]
            possible = possible.filter(){$0 != boxes__[box][0]}
            possible = possible.filter(){$0 != boxes__[box][1]}
            possible = possible.filter(){$0 != boxes__[box][2]}
            possible = possible.filter(){$0 != boxes__[box][3]}
            possible = possible.filter(){$0 != boxes__[box][4]}
            possible = possible.filter(){$0 != boxes__[box][5]}
            possible = possible.filter(){$0 != boxes__[box][6]}
            possible = possible.filter(){$0 != boxes__[box][8]}
            
        possible = possible.filter(){$0 != boxes__[pos][1]}
        possible = possible.filter(){$0 != boxes__[pos][4]}
        possible = possible.filter(){$0 != boxes__[pos][7]}

        possible = possible.filter(){$0 != boxes__[poss2][1]}
        possible = possible.filter(){$0 != boxes__[poss2][4]}
        possible = possible.filter(){$0 != boxes__[poss2][7]}
        
    
        possible = possible.filter(){$0 != boxes__[poss3][6]}
        possible = possible.filter(){$0 != boxes__[poss3][7]}
        possible = possible.filter(){$0 != boxes__[poss3][8]}

        possible = possible.filter(){$0 != boxes__[poss4][6]}
        possible = possible.filter(){$0 != boxes__[poss4][7]}
        possible = possible.filter(){$0 != boxes__[poss4][8]}
    
        if possible.count == 1{
            boxes__[box][7] = possible[0]
            
        }
        
        
        //BOX1[8]
        possible = [1,2,3,4,5,6,7,8,9]
            possible = possible.filter(){$0 != boxes__[box][0]}
            possible = possible.filter(){$0 != boxes__[box][1]}
            possible = possible.filter(){$0 != boxes__[box][2]}
            possible = possible.filter(){$0 != boxes__[box][3]}
            possible = possible.filter(){$0 != boxes__[box][4]}
            possible = possible.filter(){$0 != boxes__[box][5]}
            possible = possible.filter(){$0 != boxes__[box][6]}
            possible = possible.filter(){$0 != boxes__[box][7]}
            
        possible = possible.filter(){$0 != boxes__[pos][2]}
        possible = possible.filter(){$0 != boxes__[pos][5]}
        possible = possible.filter(){$0 != boxes__[pos][8]}

        possible = possible.filter(){$0 != boxes__[poss2][2]}
        possible = possible.filter(){$0 != boxes__[poss2][5]}
        possible = possible.filter(){$0 != boxes__[poss2][8]}
        
    
        possible = possible.filter(){$0 != boxes__[poss3][6]}
        possible = possible.filter(){$0 != boxes__[poss3][7]}
        possible = possible.filter(){$0 != boxes__[poss3][8]}

        possible = possible.filter(){$0 != boxes__[poss4][6]}
        possible = possible.filter(){$0 != boxes__[poss4][7]}
        possible = possible.filter(){$0 != boxes__[poss4][8]}
    
        if possible.count == 1{
            boxes__[box][8] = possible[0]
           
        }
            
        }
            Column1()
            Column2()
            Column3()
            Column4()
            Column5()
            Column6()
            Column7()
            Column8()
            Column9()
//
//            row1()
//            row2()
//            row3()
//            row4()
//            row5()
//            row6()
//            row7()
//            row8()
//            row9()
        
        }
        
    }
    func Column1(){
        
        possible = [1,2,3,4,5,6,7,8,9]
        possible = possible.filter(){$0 != boxes__[0][0]}
        possible = possible.filter(){$0 != boxes__[0][3]}
        possible = possible.filter(){$0 != boxes__[0][6]}
        
        possible = possible.filter(){$0 != boxes__[3][0]}
        possible = possible.filter(){$0 != boxes__[3][3]}
        possible = possible.filter(){$0 != boxes__[3][6]}
        
        possible = possible.filter(){$0 != boxes__[6][0]}
        possible = possible.filter(){$0 != boxes__[6][3]}
        possible = possible.filter(){$0 != boxes__[6][6]}
        
        if possible.count == 1{
            if boxes__[0][0] == 0{
                boxes__[0][0] = possible[0]
            }
            
            if boxes__[0][3] == 0{
                boxes__[0][3] = possible[0]
            }
            
            if boxes__[0][6] == 0{
                boxes__[0][6] = possible[0]
            }
            
            
            if boxes__[3][0] == 0{
                boxes__[3][0] = possible[0]
            }
            
            if boxes__[3][3] == 0{
                boxes__[3][3] = possible[0]
            }
            
            if boxes__[3][6] == 0{
                boxes__[3][6] = possible[0]
            }
            
            
            
            if boxes__[6][0] == 0{
                boxes__[6][0] = possible[0]
            }
            
            if boxes__[6][3] == 0{
                boxes__[6][3] = possible[0]
            }
            
            if boxes__[6][6] == 0{
                boxes__[6][6] = possible[0]
            }
            
            
            
        }
    }
    func Column2(){
        possible = [1,2,3,4,5,6,7,8,9]
        possible = possible.filter(){$0 != boxes__[0][1]}
        possible = possible.filter(){$0 != boxes__[0][4]}
        possible = possible.filter(){$0 != boxes__[0][7]}
        
        possible = possible.filter(){$0 != boxes__[3][1]}
        possible = possible.filter(){$0 != boxes__[3][4]}
        possible = possible.filter(){$0 != boxes__[3][7]}
        
        possible = possible.filter(){$0 != boxes__[6][1]}
        possible = possible.filter(){$0 != boxes__[6][4]}
        possible = possible.filter(){$0 != boxes__[6][7]}
        
        if possible.count == 1{
            
            if boxes__[0][1] == 0{
                boxes__[0][1] = possible[0]
            }
            
            if boxes__[0][4] == 0{
                boxes__[0][4] = possible[0]
            }
            
            if boxes__[0][7] == 0{
                boxes__[0][7] = possible[0]
            }
            
            
            if boxes__[3][1] == 0{
                boxes__[3][1] = possible[0]
            }
            
            if boxes__[3][4] == 0{
                boxes__[3][4] = possible[0]
            }
            
            if boxes__[3][7] == 0{
                boxes__[3][7] = possible[0]
            }
            
            
            
            if boxes__[6][1] == 0{
                boxes__[6][1] = possible[0]
            }
            
            if boxes__[6][4] == 0{
                boxes__[6][4] = possible[0]
            }
            
            if boxes__[6][7] == 0{
                boxes__[6][7] = possible[0]
            }
            
            
            
        }
    }
    func Column3(){
        possible = [1,2,3,4,5,6,7,8,9]
        possible = possible.filter(){$0 != boxes__[0][2]}
        possible = possible.filter(){$0 != boxes__[0][5]}
        possible = possible.filter(){$0 != boxes__[0][8]}
        
        possible = possible.filter(){$0 != boxes__[3][2]}
        possible = possible.filter(){$0 != boxes__[3][5]}
        possible = possible.filter(){$0 != boxes__[3][8]}
        
        possible = possible.filter(){$0 != boxes__[6][2]}
        possible = possible.filter(){$0 != boxes__[6][5]}
        possible = possible.filter(){$0 != boxes__[6][8]}
        
        if possible.count == 1{
            if boxes__[0][2] == 0{
                boxes__[0][2] = possible[0]
            }
            
            if boxes__[0][5] == 0{
                boxes__[0][5] = possible[0]
            }
            
            if boxes__[0][8] == 0{
                boxes__[0][8] = possible[0]
            }
            
            
            if boxes__[3][2] == 0{
                boxes__[3][2] = possible[0]
            }
            
            if boxes__[3][5] == 0{
                boxes__[3][5] = possible[0]
            }
            
            if boxes__[3][8] == 0{
                boxes__[3][8] = possible[0]
            }
            
            
            
            if boxes__[6][2] == 0{
                boxes__[6][2] = possible[0]
            }
            
            if boxes__[6][5] == 0{
                boxes__[6][5] = possible[0]
            }
            
            if boxes__[6][8] == 0{
                boxes__[6][8] = possible[0]
            }
            
            
            
        }
    }
    func Column4(){
        
        possible = [1,2,3,4,5,6,7,8,9]
        possible = possible.filter(){$0 != boxes__[1][0]}
        possible = possible.filter(){$0 != boxes__[1][3]}
        possible = possible.filter(){$0 != boxes__[1][6]}
        
        possible = possible.filter(){$0 != boxes__[4][0]}
        possible = possible.filter(){$0 != boxes__[4][3]}
        possible = possible.filter(){$0 != boxes__[4][6]}
        
        possible = possible.filter(){$0 != boxes__[7][0]}
        possible = possible.filter(){$0 != boxes__[7][3]}
        possible = possible.filter(){$0 != boxes__[7][6]}
        
        if possible.count == 1{
            if boxes__[1][0] == 0{
                boxes__[1][0] = possible[0]
            }
            
            if boxes__[1][3] == 0{
                boxes__[1][3] = possible[0]
            }
            
            if boxes__[1][6] == 0{
                boxes__[1][6] = possible[0]
            }
            
            
            if boxes__[4][0] == 0{
                boxes__[4][0] = possible[0]
            }
            
            if boxes__[4][3] == 0{
                boxes__[4][3] = possible[0]
            }
            
            if boxes__[4][6] == 0{
                boxes__[4][6] = possible[0]
            }
            
            
            
            if boxes__[7][0] == 0{
                boxes__[7][0] = possible[0]
            }
            
            if boxes__[7][3] == 0{
                boxes__[7][3] = possible[0]
            }
            
            if boxes__[7][6] == 0{
                boxes__[7][6] = possible[0]
            }
            
            
            
        }
    }
    func Column5(){
        possible = [1,2,3,4,5,6,7,8,9]
        possible = possible.filter(){$0 != boxes__[1][1]}
        possible = possible.filter(){$0 != boxes__[1][4]}
        possible = possible.filter(){$0 != boxes__[1][7]}
        
        possible = possible.filter(){$0 != boxes__[4][1]}
        possible = possible.filter(){$0 != boxes__[4][4]}
        possible = possible.filter(){$0 != boxes__[4][7]}
        
        possible = possible.filter(){$0 != boxes__[7][1]}
        possible = possible.filter(){$0 != boxes__[7][4]}
        possible = possible.filter(){$0 != boxes__[7][7]}
        
        if possible.count == 1{
            if boxes__[1][1] == 0{
                boxes__[1][1] = possible[0]
            }
            
            if boxes__[1][4] == 0{
                boxes__[1][4] = possible[0]
            }
            
            if boxes__[1][7] == 0{
                boxes__[1][7] = possible[0]
            }
            
            
            if boxes__[4][1] == 0{
                boxes__[4][1] = possible[0]
            }
            
            
            if boxes__[4][4] == 0{
                boxes__[4][4] = possible[0]
            }
            
            if boxes__[4][7] == 0{
                boxes__[4][7] = possible[0]
            }
            
            
            
            if boxes__[7][1] == 0{
                boxes__[7][1] = possible[0]
            }
            
            if boxes__[7][4] == 0{
                boxes__[7][4] = possible[0]
            }
            
            if boxes__[7][7] == 0{
                boxes__[7][7] = possible[0]
            }
            
            
            
        }
    }
    func Column6(){
        possible = [1,2,3,4,5,6,7,8,9]
        possible = possible.filter(){$0 != boxes__[1][2]}
        possible = possible.filter(){$0 != boxes__[1][5]}
        possible = possible.filter(){$0 != boxes__[1][8]}
        
        possible = possible.filter(){$0 != boxes__[4][2]}
        possible = possible.filter(){$0 != boxes__[4][5]}
        possible = possible.filter(){$0 != boxes__[4][8]}
        
        possible = possible.filter(){$0 != boxes__[7][2]}
        possible = possible.filter(){$0 != boxes__[7][5]}
        possible = possible.filter(){$0 != boxes__[7][8]}
        
        if possible.count == 1{
            if boxes__[1][2] == 0{
                boxes__[1][2] = possible[0]
            }
            
            if boxes__[1][5] == 0{
                boxes__[1][5] = possible[0]
            }
            
            if boxes__[1][8] == 0{
                boxes__[1][8] = possible[0]
            }
            
            
            if boxes__[4][2] == 0{
                boxes__[4][2] = possible[0]
            }
            
            if boxes__[4][5] == 0{
                boxes__[4][5] = possible[0]
            }
            
            if boxes__[4][8] == 0{
                boxes__[4][8] = possible[0]
            }
            
            
            
            if boxes__[7][2] == 0{
                boxes__[7][2] = possible[0]
            }
            
            if boxes__[7][5] == 0{
                boxes__[7][5] = possible[0]
            }
            
            if boxes__[7][8] == 0{
                boxes__[7][8] = possible[0]
            }
            
            
            
        }
    }
    func Column7(){
        possible = [1,2,3,4,5,6,7,8,9]
        possible = possible.filter(){$0 != boxes__[2][0]}
        possible = possible.filter(){$0 != boxes__[2][3]}
        possible = possible.filter(){$0 != boxes__[2][6]}
        
        possible = possible.filter(){$0 != boxes__[5][0]}
        possible = possible.filter(){$0 != boxes__[5][3]}
        possible = possible.filter(){$0 != boxes__[5][6]}
        
        possible = possible.filter(){$0 != boxes__[8][0]}
        possible = possible.filter(){$0 != boxes__[8][3]}
        possible = possible.filter(){$0 != boxes__[8][6]}
        
        if possible.count == 1{
            if boxes__[2][0] == 0{
                boxes__[2][0] = possible[0]
            }
            
            if boxes__[2][3] == 0{
                boxes__[2][3] = possible[0]
            }
            
            if boxes__[2][6] == 0{
                boxes__[2][6] = possible[0]
            }
            
            
            if boxes__[5][0] == 0{
                boxes__[5][0] = possible[0]
            }
            
            if boxes__[5][3] == 0{
                boxes__[5][3] = possible[0]
            }
            
            if boxes__[5][6] == 0{
                boxes__[5][6] = possible[0]
            }
            
            
            
            if boxes__[8][0] == 0{
                boxes__[8][0] = possible[0]
            }
            
            if boxes__[8][3] == 0{
                boxes__[8][3] = possible[0]
            }
            
            if boxes__[8][6] == 0{
                boxes__[8][6] = possible[0]
            }
            
            
            
        }
    }
    func Column8(){
        possible = [1,2,3,4,5,6,7,8,9]
        possible = possible.filter(){$0 != boxes__[2][1]}
        possible = possible.filter(){$0 != boxes__[2][4]}
        possible = possible.filter(){$0 != boxes__[2][7]}
        
        possible = possible.filter(){$0 != boxes__[5][1]}
        possible = possible.filter(){$0 != boxes__[5][4]}
        possible = possible.filter(){$0 != boxes__[5][7]}
        
        possible = possible.filter(){$0 != boxes__[8][1]}
        possible = possible.filter(){$0 != boxes__[8][4]}
        possible = possible.filter(){$0 != boxes__[8][7]}
        
        if possible.count == 1{
            if boxes__[2][1] == 0{
                boxes__[2][1] = possible[0]
            }
            
            if boxes__[2][4] == 0{
                boxes__[2][4] = possible[0]
            }
            
            if boxes__[2][7] == 0{
                boxes__[2][7] = possible[0]
            }
            
            
            if boxes__[5][1] == 0{
                boxes__[5][1] = possible[0]
            }
            
            if boxes__[5][4] == 0{
                boxes__[5][4] = possible[0]
            }
            
            if boxes__[5][7] == 0{
                boxes__[5][7] = possible[0]
            }
            
            
            
            if boxes__[8][1] == 0{
                boxes__[8][1] = possible[0]
            }
            
            if boxes__[8][4] == 0{
                boxes__[8][4] = possible[0]
            }
            
            if boxes__[8][7] == 0{
                boxes__[8][7] = possible[0]
            }
            
            
            
        }
    }
    func Column9(){
        possible = [1,2,3,4,5,6,7,8,9]
        possible = possible.filter(){$0 != boxes__[2][2]}
        possible = possible.filter(){$0 != boxes__[2][5]}
        possible = possible.filter(){$0 != boxes__[2][8]}
        
        possible = possible.filter(){$0 != boxes__[5][2]}
        possible = possible.filter(){$0 != boxes__[5][5]}
        possible = possible.filter(){$0 != boxes__[5][8]}
        
        possible = possible.filter(){$0 != boxes__[8][2]}
        possible = possible.filter(){$0 != boxes__[8][5]}
        possible = possible.filter(){$0 != boxes__[8][8]}
        
        if possible.count == 1{
            if boxes__[2][2] == 0{
                boxes__[2][2] = possible[0]
            }
            
            if boxes__[2][5] == 0{
                boxes__[2][5] = possible[0]
            }
            
            if boxes__[2][8] == 0{
                boxes__[2][8] = possible[0]
            }
            
            
            if boxes__[5][2] == 0{
                boxes__[5][2] = possible[0]
            }
            
            if boxes__[5][5] == 0{
                boxes__[5][5] = possible[0]
            }
            
            if boxes__[5][8] == 0{
                boxes__[5][8] = possible[0]
            }
            
            
            
            if boxes__[8][2] == 0{
                boxes__[8][2] = possible[0]
            }
            
            if boxes__[8][5] == 0{
                boxes__[8][5] = possible[0]
            }
            
            if boxes__[8][8] == 0{
                boxes__[8][8] = possible[0]
            }
            
            
            
        }
    }
    func row1(){
        
        possible = [1,2,3,4,5,6,7,8,9]
        possible = possible.filter(){$0 != box1[0]}
        possible = possible.filter(){$0 != box1[1]}
        possible = possible.filter(){$0 != box1[2]}
        
        possible = possible.filter(){$0 != box2[0]}
        possible = possible.filter(){$0 != box2[1]}
        possible = possible.filter(){$0 != box2[2]}
        
        possible = possible.filter(){$0 != box3[0]}
        possible = possible.filter(){$0 != box3[1]}
        possible = possible.filter(){$0 != box3[2]}
        
        if possible.count == 1{
           
        
            if box1[0] == 0{
                box1[0] = possible[0]
            }
            
            if box1[1] == 0{
                box1[1] = possible[0]
            }
            
            if box1[2] == 0{
                box1[2] = possible[0]
            }
            
            
            if box2[0] == 0{
                box2[0] = possible[0]
            }
            
            if box2[1] == 0{
                box2[1] = possible[0]
            }
            
            if box2[2] == 0{
                box2[2] = possible[0]
            }
            
            
            if box3[0] == 0{
                box3[0] = possible[0]
            }
            
            if box3[1] == 0{
                box3[1] = possible[0]
            }
            
            if box3[2] == 0{
                box3[2] = possible[0]
            }
                
        }
    }
    func row2(){
        
        possible = [1,2,3,4,5,6,7,8,9]
        possible = possible.filter(){$0 != box1[3]}
        possible = possible.filter(){$0 != box1[4]}
        possible = possible.filter(){$0 != box1[5]}
        
        possible = possible.filter(){$0 != box2[3]}
        possible = possible.filter(){$0 != box2[4]}
        possible = possible.filter(){$0 != box2[5]}
        
        possible = possible.filter(){$0 != box3[3]}
        possible = possible.filter(){$0 != box3[4]}
        possible = possible.filter(){$0 != box3[5]}
        
        if possible.count == 1{
            if box1[3] == 0{
                box1[3] = possible[0]
            }
            
            if box1[4] == 0{
                box1[4] = possible[0]
            }
            
            if box1[5] == 0{
                box1[5] = possible[0]
            }
            
            
            if box2[3] == 0{
                box2[3] = possible[0]
            }
            
            if box2[4] == 0{
                box2[4] = possible[0]
            }
            
            if box2[5] == 0{
                box2[5] = possible[0]
            }
            
            
            if box3[3] == 0{
                box3[3] = possible[0]
            }
            
            if box3[4] == 0{
                box3[4] = possible[0]
            }
            
            if box3[5] == 0{
                box3[5] = possible[0]
            }
                
        }
    }
    func row3(){
        
        possible = [1,2,3,4,5,6,7,8,9]
        possible = possible.filter(){$0 != box1[6]}
        possible = possible.filter(){$0 != box1[7]}
        possible = possible.filter(){$0 != box1[8]}
        
        possible = possible.filter(){$0 != box2[6]}
        possible = possible.filter(){$0 != box2[7]}
        possible = possible.filter(){$0 != box2[8]}
        
        possible = possible.filter(){$0 != box3[6]}
        possible = possible.filter(){$0 != box3[7]}
        possible = possible.filter(){$0 != box3[8]}
        
        if possible.count == 1{
            if box1[6] == 0{
                box1[6] = possible[0]
            }
            
            if box1[7] == 0{
                box1[7] = possible[0]
            }
            
            if box1[8] == 0{
                box1[8] = possible[0]
            }
            
            
            if box2[6] == 0{
                box2[6] = possible[0]
            }
            
            if box2[7] == 0{
                box2[7] = possible[0]
            }
            
            if box2[8] == 0{
                box2[8] = possible[0]
            }
            
            
            if box3[6] == 0{
                box3[6] = possible[0]
            }
            
            if box3[7] == 0{
                box3[7] = possible[0]
            }
            
            if box3[8] == 0{
                box3[8] = possible[0]
            }
                
        }
    }
    func row4(){
        
        possible = [1,2,3,4,5,6,7,8,9]
        possible = possible.filter(){$0 != box4[0]}
        possible = possible.filter(){$0 != box4[1]}
        possible = possible.filter(){$0 != box4[2]}
        
        possible = possible.filter(){$0 != box5[0]}
        possible = possible.filter(){$0 != box5[1]}
        possible = possible.filter(){$0 != box5[2]}
        
        possible = possible.filter(){$0 != box6[0]}
        possible = possible.filter(){$0 != box6[1]}
        possible = possible.filter(){$0 != box6[2]}
        
        if possible.count == 1{
            if box4[0] == 0{
                box4[0] = possible[0]
            }
            
            if box4[1] == 0{
                box4[1] = possible[0]
            }
            
            if box4[2] == 0{
                box4[2] = possible[0]
            }
            
            
            if box5[0] == 0{
                box5[0] = possible[0]
            }
            
            if box5[1] == 0{
                box5[1] = possible[0]
            }
            
            if box5[2] == 0{
                box5[2] = possible[0]
            }
            
            
            if box6[0] == 0{
                box6[0] = possible[0]
            }
            
            if box6[1] == 0{
                box6[1] = possible[0]
            }
            
            if box6[2] == 0{
                box6[2] = possible[0]
            }
                
        }
    }
    func row5(){
        
        possible = [1,2,3,4,5,6,7,8,9]
        possible = possible.filter(){$0 != box4[3]}
        possible = possible.filter(){$0 != box4[4]}
        possible = possible.filter(){$0 != box4[5]}
        
        possible = possible.filter(){$0 != box5[3]}
        possible = possible.filter(){$0 != box5[4]}
        possible = possible.filter(){$0 != box5[5]}
        
        possible = possible.filter(){$0 != box6[3]}
        possible = possible.filter(){$0 != box6[4]}
        possible = possible.filter(){$0 != box6[5]}
        
        if possible.count == 1{
            if box4[3] == 0{
                box4[3] = possible[0]
            }
            
            if box4[4] == 0{
                box4[4] = possible[0]
            }
            
            if box4[5] == 0{
                box4[5] = possible[0]
            }
            
            
            if box5[3] == 0{
                box5[3] = possible[0]
            }
            
            if box5[4] == 0{
                box5[4] = possible[0]
            }
            
            if box5[5] == 0{
                box5[5] = possible[0]
            }
            
            
            if box6[3] == 0{
                box6[3] = possible[0]
            }
            
            if box6[4] == 0{
                box6[4] = possible[0]
            }
            
            if box6[5] == 0{
                box6[5] = possible[0]
            }
                
        }
    }
    func row6(){
        
        possible = [1,2,3,4,5,6,7,8,9]
        possible = possible.filter(){$0 != box4[6]}
        possible = possible.filter(){$0 != box4[7]}
        possible = possible.filter(){$0 != box4[8]}
        
        possible = possible.filter(){$0 != box5[6]}
        possible = possible.filter(){$0 != box5[7]}
        possible = possible.filter(){$0 != box5[8]}
        
        possible = possible.filter(){$0 != box6[6]}
        possible = possible.filter(){$0 != box6[7]}
        possible = possible.filter(){$0 != box6[8]}
        
        if possible.count == 1{
            if box4[6] == 0{
                box4[6] = possible[0]
            }
            
            if box4[7] == 0{
                box4[7] = possible[0]
            }
            
            if box4[8] == 0{
                box4[8] = possible[0]
            }
            
            
            if box5[6] == 0{
                box5[6] = possible[0]
            }
            
            if box5[7] == 0{
                box5[7] = possible[0]
            }
            
            if box5[8] == 0{
                box5[8] = possible[0]
            }
            
            
            if box6[6] == 0{
                box6[6] = possible[0]
            }
            
            if box6[7] == 0{
                box6[7] = possible[0]
            }
            
            if box6[8] == 0{
                box6[8] = possible[0]
            }
                
        }
    }
    func row7(){
        
        possible = [1,2,3,4,5,6,7,8,9]
        possible = possible.filter(){$0 != box7[0]}
        possible = possible.filter(){$0 != box7[1]}
        possible = possible.filter(){$0 != box7[2]}
        
        possible = possible.filter(){$0 != box8[0]}
        possible = possible.filter(){$0 != box8[1]}
        possible = possible.filter(){$0 != box8[2]}
        
        possible = possible.filter(){$0 != box9[0]}
        possible = possible.filter(){$0 != box9[1]}
        possible = possible.filter(){$0 != box9[2]}
        
        if possible.count == 1{
            if box7[0] == 0{
                box7[0] = possible[0]
            }
            
            if box7[1] == 0{
                box7[1] = possible[0]
            }
            
            if box7[2] == 0{
                box7[2] = possible[0]
            }
            
            
            if box8[0] == 0{
                box8[0] = possible[0]
            }
            
            if box8[1] == 0{
                box8[1] = possible[0]
            }
            
            if box8[2] == 0{
                box8[2] = possible[0]
            }
            
            
            if box9[0] == 0{
                box9[0] = possible[0]
            }
            
            if box9[1] == 0{
                box9[1] = possible[0]
            }
            
            if box9[2] == 0{
                box9[2] = possible[0]
            }
                
        }
    }
    func row8(){
        
        possible = [1,2,3,4,5,6,7,8,9]
        possible = possible.filter(){$0 != box7[3]}
        possible = possible.filter(){$0 != box7[4]}
        possible = possible.filter(){$0 != box7[5]}
        
        possible = possible.filter(){$0 != box8[3]}
        possible = possible.filter(){$0 != box8[4]}
        possible = possible.filter(){$0 != box8[5]}
        
        possible = possible.filter(){$0 != box9[3]}
        possible = possible.filter(){$0 != box9[4]}
        possible = possible.filter(){$0 != box9[5]}
        
        if possible.count == 1{
            if box7[3] == 0{
                box7[3] = possible[0]
            }
            
            if box7[4] == 0{
                box7[4] = possible[0]
            }
            
            if box7[5] == 0{
                box7[5] = possible[0]
            }
            
            
            if box8[3] == 0{
                box8[3] = possible[0]
            }
            
            if box8[4] == 0{
                box8[4] = possible[0]
            }
            
            if box8[5] == 0{
                box8[5] = possible[0]
            }
            
            
            if box9[3] == 0{
                box9[3] = possible[0]
            }
            
            if box9[4] == 0{
                box9[4] = possible[0]
            }
            
            if box9[5] == 0{
                box9[5] = possible[0]
            }
                
        }
    }
    func row9(){
        
        possible = [1,2,3,4,5,6,7,8,9]
        possible = possible.filter(){$0 != box7[6]}
        possible = possible.filter(){$0 != box7[7]}
        possible = possible.filter(){$0 != box7[8]}
        
        possible = possible.filter(){$0 != box8[6]}
        possible = possible.filter(){$0 != box8[7]}
        possible = possible.filter(){$0 != box8[8]}
        
        possible = possible.filter(){$0 != box9[6]}
        possible = possible.filter(){$0 != box9[7]}
        possible = possible.filter(){$0 != box9[8]}
        
        if possible.count == 1{
            if box7[6] == 0{
                box7[6] = possible[0]
            }
            
            if box7[7] == 0{
                box7[7] = possible[0]
            }
            
            if box7[8] == 0{
                box7[8] = possible[0]
            }
            
            
            if box8[6] == 0{
                box8[6] = possible[0]
            }
            
            if box8[7] == 0{
                box8[7] = possible[0]
            }
            
            if box8[8] == 0{
                box8[8] = possible[0]
            }
            
            
            if box9[6] == 0{
                box9[6] = possible[0]
            }
            
            if box9[7] == 0{
                box9[7] = possible[0]
            }
            
            if box9[8] == 0{
                box9[8] = possible[0]
            }
                
        }
    }
    
    
    
    
    
    
    var body: some View{
        Group{
            
            ZStack{
                CustomColor.be.ignoresSafeArea()


                VStack(alignment: .center, spacing: 0, content:{
                    
                    Spacer()
                    
                    VStack{
                        Text((String(format: "%.0f", floor(stopWatchManager.secondsElapsed/60.0))) + ":" +
                        (String(format: "%.0f", floor(stopWatchManager.secondsElapsed.truncatingRemainder(dividingBy: 60)))))
                            .font(.custom("KGHAPPY",size:14))
                            .foregroundColor(Color.black)
                    HStack{
                        Text("")
                        Button("<"){appState.hasOnboared = 2}
                            .font(.custom("KGHAPPY",size:14))
                            .foregroundColor(Color.black)
                        Spacer()
                    
                    }
                    Text("  ")
                    HStack{
                        
                        Text("  ")
                        
                        
                        Button(String(game_state)){boxes()}
                            .font(.custom("KGHAPPY",size:14))
                            .foregroundColor(Color.black)
                            
                        
                            
                        Spacer()
                        Button("Check"){checker()}
                            .font(.custom("KGHAPPY",size:14))
                            .foregroundColor(Color.black.opacity(Double(l)))
                        Text("         ")
                        Spacer()
                        Button("Undo"){ Undo()}
                            .font(.custom("KGHAPPY",size:14))
                            .foregroundColor(Color.black)
                        Text("   ")
                    }}
                    Text("")
                    Rectangle()
                        .frame(width:408, height: 2)
                        .foregroundColor(Color.black)
                    
                    HStack(alignment: .center, spacing: 0, content:{
                    Rectangle()
                        .frame(width:2, height: 405)
                        .foregroundColor(Color.black)


                    HStack(alignment: .center, spacing: 0, content:{
                        //Column 1

                        HStack(alignment: .center, spacing: 0, content: {
                            VStack(alignment: .center, spacing: 0, content:{
                                VStack(alignment: .center, spacing: 0, content: {

                                    Button(String(box1[0])){box_check(d:1,e:0)}
                                        .frame(width: CGFloat(w), height: CGFloat(h))
                                        .background(Color.white.opacity(100))
                                        .border(CustomColor.be,width:1)
                                        .foregroundColor(Box1_col[0].opacity(Double(Box1_Op[0])))
                                        .font(.custom("KGHAPPY",size:CGFloat(s)))
                                    Button(String(box1[3])){box_check(d:1,e:3)}
                                        .frame(width: CGFloat(w), height: CGFloat(h))
                                        .background(Color.white.opacity(100))
                                        .border(CustomColor.be,width:1)
                                        .foregroundColor(Box1_col[3].opacity(Double(Box1_Op[3])))
                                        .font(.custom("KGHAPPY",size:CGFloat(s)))
                                    Button(String(box1[6])){box_check(d:1,e:6)}
                                        .frame(width: CGFloat(w), height: CGFloat(h))
                                        .background(Color.white.opacity(100))
                                        .border(CustomColor.be,width:1)
                                        .foregroundColor(Box1_col[6].opacity(Double(Box1_Op[6])))
                                        .font(.custom("KGHAPPY",size:CGFloat(s)))
                                })

                                Rectangle()
                                    .frame(width:44, height: 2)
                                    .foregroundColor(Color.black)





                                VStack(alignment: .center, spacing: 0, content: {
                                    Button(String(box4[0])){box_check(d:4,e:0)}
                                    .frame(width: CGFloat(w), height: CGFloat(h))
                                    .background(Color.white.opacity(100))
                                    .border(CustomColor.be,width:1)
                                    .foregroundColor(Box4_col[0].opacity(Double(Box4_Op[0])))
                                    .font(.custom("KGHAPPY",size:CGFloat(s)))
                                    Button(String(box4[3])){box_check(d:4,e:3)}
                                    .frame(width: CGFloat(w), height: CGFloat(h))
                                    .background(Color.white.opacity(100))
                                    .border(CustomColor.be,width:1)
                                    .foregroundColor(Box4_col[3].opacity(Double(Box4_Op[3])))
                                    .font(.custom("KGHAPPY",size:CGFloat(s)))
                                    Button(String(box4[6])){box_check(d:4,e:6)}
                                    .frame(width: CGFloat(w), height: CGFloat(h))
                                    .background(Color.white.opacity(100))
                                    .border(CustomColor.be,width:1)
                                    .foregroundColor(Box4_col[6].opacity(Double(Box4_Op[6])))
                                    .font(.custom("KGHAPPY",size:CGFloat(s)))
                                })


                                Rectangle()
                                    .frame(width:44, height: 2)
                                    .foregroundColor(Color.black)




                                VStack(alignment: .center, spacing: 0, content: {
                                    Button(String(box7[0])){box_check(d:7,e:0)}
                                    .frame(width: CGFloat(w), height: CGFloat(h))
                                    .background(Color.white.opacity(100))
                                    .border(CustomColor.be,width:1)
                                    .foregroundColor(Box7_col[0].opacity(Double(Box7_Op[0])))
                                    .font(.custom("KGHAPPY",size:CGFloat(s)))
                                    Button(String(box7[3])){box_check(d:7,e:3)}
                                    .frame(width: CGFloat(w), height: CGFloat(h))
                                    .background(Color.white.opacity(100))
                                    .border(CustomColor.be,width:1)
                                    .foregroundColor(Box7_col[3].opacity(Double(Box7_Op[3])))
                                    .font(.custom("KGHAPPY",size:CGFloat(s)))
                                    Button(String(box7[6])){box_check(d:7,e:6)}
                                    .frame(width: CGFloat(w), height: CGFloat(h))
                                    .background(Color.white.opacity(100))
                                    .border(CustomColor.be,width:1)
                                    .foregroundColor(Box7_col[6].opacity(Double(Box7_Op[6])))
                                    .font(.custom("KGHAPPY",size:CGFloat(s)))



                                })
                               })//VSTACK


                            //Column 2
                            VStack(alignment: .center, spacing: 0, content:{
                                VStack(alignment: .center, spacing: 0, content: {
                                    Button(String(box1[1])){box_check(d:1,e:1)}
                                    .frame(width: CGFloat(w), height: CGFloat(h))
                                    .background(Color.white.opacity(100))
                                    .border(CustomColor.be,width:1)
                                    .foregroundColor(Box1_col[1].opacity(Double(Box1_Op[1])))
                                    .font(.custom("KGHAPPY",size:CGFloat(s)))
                                    Button(String(box1[4])){box_check(d:1,e:4)}
                                    .frame(width: CGFloat(w), height: CGFloat(h))
                                    .background(Color.white.opacity(100))
                                    .border(CustomColor.be,width:1)
                                    .foregroundColor(Box1_col[4].opacity(Double(Box1_Op[4])))
                                    .font(.custom("KGHAPPY",size:CGFloat(s)))
                                    Button(String(box1[7])){box_check(d:1,e:7)}
                                    .frame(width: CGFloat(w), height: CGFloat(h))
                                    .background(Color.white.opacity(100))
                                    .border(CustomColor.be,width:1)
                                    .foregroundColor(Box1_col[7].opacity(Double(Box1_Op[7])))
                                    .font(.custom("KGHAPPY",size:CGFloat(s)))
                                })
                                Rectangle()
                                    .frame(width:44, height: 2)
                                    .foregroundColor(Color.black)

                                VStack(alignment: .center, spacing: 0, content: {
                                    Button(String(box4[1])){box_check(d:4,e:1)}
                                    .frame(width: CGFloat(w), height: CGFloat(h))
                                    .background(Color.white.opacity(100))
                                    .border(CustomColor.be,width:1)
                                    .foregroundColor(Box4_col[1].opacity(Double(Box4_Op[1])))
                                    .font(.custom("KGHAPPY",size:CGFloat(s)))
                                    Button(String(box4[4])){box_check(d:4,e:4)}
                                    .frame(width: CGFloat(w), height: CGFloat(h))
                                    .background(Color.white.opacity(100))
                                    .border(CustomColor.be,width:1)
                                    .foregroundColor(Box4_col[4].opacity(Double(Box4_Op[4])))
                                    .font(.custom("KGHAPPY",size:CGFloat(s)))
                                    Button(String(box4[7])){box_check(d:4,e:7)}
                                    .frame(width: CGFloat(w), height: CGFloat(h))
                                    .background(Color.white.opacity(100))
                                    .border(CustomColor.be,width:1)
                                    .foregroundColor(Box4_col[7].opacity(Double(Box4_Op[7])))
                                    .font(.custom("KGHAPPY",size:CGFloat(s)))
                                })
                                Rectangle()
                                    .frame(width:44, height: 2)
                                    .foregroundColor(Color.black)

                                VStack(alignment: .center, spacing: 0, content: {
                                    Button(String(box7[1])){box_check(d:7,e:1)}
                                    .frame(width: CGFloat(w), height: CGFloat(h))
                                    .background(Color.white.opacity(100))
                                    .border(CustomColor.be,width:1)
                                    .foregroundColor(Box7_col[1].opacity(Double(Box7_Op[1])))
                                    .font(.custom("KGHAPPY",size:CGFloat(s)))
                                    Button(String(box7[4])){box_check(d:7,e:4)}
                                    .frame(width: CGFloat(w), height: CGFloat(h))
                                    .background(Color.white.opacity(100))
                                    .border(CustomColor.be,width:1)
                                    .foregroundColor(Box7_col[4].opacity(Double(Box7_Op[4])))
                                    .font(.custom("KGHAPPY",size:CGFloat(s)))
                                    Button(String(box7[7])){box_check(d:7,e:7)}
                                    .frame(width: CGFloat(w), height: CGFloat(h))
                                    .background(Color.white.opacity(100))
                                    .border(CustomColor.be,width:1)
                                    .foregroundColor(Box7_col[7].opacity(Double(Box7_Op[7])))
                                    .font(.custom("KGHAPPY",size:CGFloat(s)))
                                })
                               })//VSTACK


                            //Column 3
                            VStack(alignment: .center, spacing: 0, content:{
                                VStack(alignment: .center, spacing: 0, content: {
                                    Button(String(box1[2])){box_check(d:1,e:2)}
                                    .frame(width: CGFloat(w), height: CGFloat(h))
                                    .background(Color.white.opacity(100))
                                    .border(CustomColor.be,width:1)
                                    .foregroundColor(Box1_col[2].opacity(Double(Box1_Op[2])))
                                    .font(.custom("KGHAPPY",size:CGFloat(s)))
                                    Button(String(box1[5])){box_check(d:1,e:5)}
                                    .frame(width: CGFloat(w), height: CGFloat(h))
                                    .background(Color.white.opacity(100))
                                    .border(CustomColor.be,width:1)
                                    .foregroundColor(Box1_col[5].opacity(Double(Box1_Op[5])))
                                    .font(.custom("KGHAPPY",size:CGFloat(s)))
                                    Button(String(box1[8])){box_check(d:1,e:8)}
                                    .frame(width: CGFloat(w), height: CGFloat(h))
                                    .background(Color.white.opacity(100))
                                    .border(CustomColor.be,width:1)
                                    .foregroundColor(Box1_col[8].opacity(Double(Box1_Op[8])))
                                    .font(.custom("KGHAPPY",size:CGFloat(s)))
                                })
                                Rectangle()
                                    .frame(width:44, height: 2)
                                    .foregroundColor(Color.black)

                                VStack(alignment: .center, spacing: 0, content: {
                                    Button(String(box4[2])){box_check(d:4,e:2)}
                                    .frame(width: CGFloat(w), height: CGFloat(h))
                                    .background(Color.white.opacity(100))
                                    .border(CustomColor.be,width:1)
                                    .foregroundColor(Box4_col[2].opacity(Double(Box4_Op[2])))
                                    .font(.custom("KGHAPPY",size:CGFloat(s)))
                                    Button(String(box4[5])){box_check(d:4,e:5)}
                                    .frame(width: CGFloat(w), height: CGFloat(h))
                                    .background(Color.white.opacity(100))
                                    .border(CustomColor.be,width:1)
                                    .foregroundColor(Box4_col[5].opacity(Double(Box4_Op[5])))
                                    .font(.custom("KGHAPPY",size:CGFloat(s)))
                                    Button(String(box4[8])){box_check(d:4,e:8)}
                                    .frame(width: CGFloat(w), height: CGFloat(h))
                                    .background(Color.white.opacity(100))
                                    .border(CustomColor.be,width:1)
                                    .foregroundColor(Box4_col[8].opacity(Double(Box4_Op[8])))
                                    .font(.custom("KGHAPPY",size:CGFloat(s)))
                                })
                                Rectangle()
                                    .frame(width:44, height: 2)
                                    .foregroundColor(Color.black)

                                VStack(alignment: .center, spacing: 0, content: {
                                    Button(String(box7[2])){box_check(d:7,e:2)}
                                    .frame(width: CGFloat(w), height: CGFloat(h))
                                    .background(Color.white.opacity(100))
                                    .border(CustomColor.be,width:1)
                                    .foregroundColor(Box7_col[2].opacity(Double(Box7_Op[2])))
                                    .font(.custom("KGHAPPY",size:CGFloat(s)))
                                    Button(String(box7[5])){box_check(d:7,e:5)}
                                    .frame(width: CGFloat(w), height: CGFloat(h))
                                    .background(Color.white.opacity(100))
                                    .border(CustomColor.be,width:1)
                                    .foregroundColor(Box7_col[5].opacity(Double(Box7_Op[5])))
                                    .font(.custom("KGHAPPY",size:CGFloat(s)))
                                    Button(String(box7[8])){box_check(d:7,e:8)}
                                    .frame(width: CGFloat(w), height: CGFloat(h))
                                    .background(Color.white.opacity(100))
                                    .border(CustomColor.be,width:1)
                                    .foregroundColor(Box7_col[8].opacity(Double(Box7_Op[8])))
                                    .font(.custom("KGHAPPY",size:CGFloat(s)))
                                })
                               })//VSTACK
                            })

                        })//HSTACK 1





                    Rectangle()
                        .frame(width:2, height: 405)
                        .foregroundColor(Color.black)







                    HStack{
                        //Column 1
                        HStack(alignment: .center, spacing: 0, content: {
                            VStack(alignment: .center, spacing: 0, content:{
                                VStack(alignment: .center, spacing: 0, content: {

                                    Button(String(box2[0])){box_check(d:2,e:0)}
                                        .frame(width: CGFloat(w), height: CGFloat(h))
                                        .background(Color.white.opacity(100))
                                        .border(CustomColor.be,width:1)
                                        .foregroundColor(Box2_col[0].opacity(Double(Box2_Op[0])))
                                        .font(.custom("KGHAPPY",size:CGFloat(s)))
                                    Button(String(box2[3])){box_check(d:2,e:3)}
                                        .frame(width: CGFloat(w), height: CGFloat(h))
                                        .background(Color.white.opacity(100))
                                        .border(CustomColor.be,width:1)
                                        .foregroundColor(Box2_col[3].opacity(Double(Box2_Op[3])))
                                        .font(.custom("KGHAPPY",size:CGFloat(s)))
                                    Button(String(box2[6])){box_check(d:2,e:6)}
                                        .frame(width: CGFloat(w), height: CGFloat(h))
                                        .background(Color.white.opacity(100))
                                        .border(CustomColor.be,width:1)
                                        .foregroundColor(Box2_col[6].opacity(Double(Box2_Op[6])))
                                        .font(.custom("KGHAPPY",size:CGFloat(s)))

                                })
                                Rectangle()
                                    .frame(width:44, height: 2)
                                    .foregroundColor(Color.black)





                                VStack(alignment: .center, spacing: 0, content: {
                                    Button(String(box5[0])){box_check(d:5,e:0)}
                                    .frame(width: CGFloat(w), height: CGFloat(h))
                                    .background(Color.white.opacity(100))
                                    .border(CustomColor.be,width:1)
                                    .foregroundColor(Box5_col[0].opacity(Double(Box5_Op[0])))
                                    .font(.custom("KGHAPPY",size:CGFloat(s)))
                                    Button(String(box5[3])){box_check(d:5,e:3)}
                                    .frame(width: CGFloat(w), height: CGFloat(h))
                                    .background(Color.white.opacity(100))
                                    .border(CustomColor.be,width:1)
                                    .foregroundColor(Box5_col[3].opacity(Double(Box5_Op[3])))
                                    .font(.custom("KGHAPPY",size:CGFloat(s)))
                                    Button(String(box5[6])){box_check(d:5,e:6)}
                                    .frame(width: CGFloat(w), height: CGFloat(h))
                                    .background(Color.white.opacity(100))
                                    .border(CustomColor.be,width:1)
                                    .foregroundColor(Box5_col[6].opacity(Double(Box5_Op[6])))
                                    .font(.custom("KGHAPPY",size:CGFloat(s)))
                                })


                                Rectangle()
                                    .frame(width:44, height: 2)
                                    .foregroundColor(Color.black)




                                VStack(alignment: .center, spacing: 0, content: {
                                    Button(String(box8[0])){box_check(d:8,e:0)}
                                    .frame(width: CGFloat(w), height: CGFloat(h))
                                    .background(Color.white.opacity(100))
                                    .border(CustomColor.be,width:1)
                                    .foregroundColor(Box8_col[0].opacity(Double(Box8_Op[0])))
                                    .font(.custom("KGHAPPY",size:CGFloat(s)))
                                    Button(String(box8[3])){box_check(d:8,e:3)}
                                    .frame(width: CGFloat(w), height: CGFloat(h))
                                    .background(Color.white.opacity(100))
                                    .border(CustomColor.be,width:1)
                                    .foregroundColor(Box8_col[3].opacity(Double(Box8_Op[3])))
                                    .font(.custom("KGHAPPY",size:CGFloat(s)))
                                    Button(String(box8[6])){box_check(d:8,e:6)}
                                    .frame(width: CGFloat(w), height: CGFloat(h))
                                    .background(Color.white.opacity(100))
                                    .border(CustomColor.be,width:1)
                                    .foregroundColor(Box8_col[6].opacity(Double(Box8_Op[6])))
                                    .font(.custom("KGHAPPY",size:CGFloat(s)))


                                })
                               })//VSTACK






                            //Column 2
                            VStack(alignment: .center, spacing: 0, content:{
                                VStack(alignment: .center, spacing: 0, content: {
                                    Button(String(box2[1])){box_check(d:2,e:1)}
                                    .frame(width: CGFloat(w), height: CGFloat(h))
                                    .background(Color.white.opacity(100))
                                    .border(CustomColor.be,width:1)
                                    .foregroundColor(Box2_col[1].opacity(Double(Box2_Op[1])))
                                    .font(.custom("KGHAPPY",size:CGFloat(s)))
                                    Button(String(box2[4])){box_check(d:2,e:4)}
                                    .frame(width: CGFloat(w), height: CGFloat(h))
                                    .background(Color.white.opacity(100))
                                    .border(CustomColor.be,width:1)
                                    .foregroundColor(Box2_col[4].opacity(Double(Box2_Op[4])))
                                    .font(.custom("KGHAPPY",size:CGFloat(s)))
                                    Button(String(box2[7]) ){box_check(d:2,e:7)}
                                    .frame(width: CGFloat(w), height: CGFloat(h))
                                    .background(Color.white.opacity(100))
                                    .border(CustomColor.be,width:1)
                                    .foregroundColor(Box2_col[7].opacity(Double(Box2_Op[7])))
                                    .font(.custom("KGHAPPY",size:CGFloat(s)))
                                })

                                Rectangle()
                                    .frame(width:44, height: 2)
                                    .foregroundColor(Color.black)

                                VStack(alignment: .center, spacing: 0, content: {
                                    Button(String(box5[1])){box_check(d:5,e:1)}
                                    .frame(width: CGFloat(w), height: CGFloat(h))
                                    .background(Color.white.opacity(100))
                                    .border(CustomColor.be,width:1)
                                    .foregroundColor(Box5_col[1].opacity(Double(Box5_Op[1])))
                                    .font(.custom("KGHAPPY",size:CGFloat(s)))
                                    Button(String(box5[4])){box_check(d:5,e:4)}
                                    .frame(width: CGFloat(w), height: CGFloat(h))
                                    .background(Color.white.opacity(100))
                                    .border(CustomColor.be,width:1)
                                    .foregroundColor(Box5_col[4].opacity(Double(Box5_Op[4])))
                                    .font(.custom("KGHAPPY",size:CGFloat(s)))
                                    Button(String(box5[7])){box_check(d:5,e:7)}
                                    .frame(width: CGFloat(w), height: CGFloat(h))
                                    .background(Color.white.opacity(100))
                                    .border(CustomColor.be,width:1)
                                    .foregroundColor(Box5_col[7].opacity(Double(Box5_Op[7])))
                                    .font(.custom("KGHAPPY",size:CGFloat(s)))
                                })

                                Rectangle()
                                    .frame(width:44, height: 2)
                                    .foregroundColor(Color.black)

                                VStack(alignment: .center, spacing: 0, content: {
                                    Button(String(box8[1])){box_check(d:8,e:1)}
                                    .frame(width: CGFloat(w), height: CGFloat(h))
                                    .background(Color.white.opacity(100))
                                    .border(CustomColor.be,width:1)
                                    .foregroundColor(Box8_col[1].opacity(Double(Box8_Op[1])))
                                    .font(.custom("KGHAPPY",size:CGFloat(s)))
                                    Button(String(box8[4])){box_check(d:8,e:4)}
                                    .frame(width: CGFloat(w), height: CGFloat(h))
                                    .background(Color.white.opacity(100))
                                    .border(CustomColor.be,width:1)
                                    .foregroundColor(Box8_col[4].opacity(Double(Box8_Op[4])))
                                    .font(.custom("KGHAPPY",size:CGFloat(s)))
                                    Button(String(box8[7])){box_check(d:8,e:7)}
                                    .frame(width: CGFloat(w), height: CGFloat(h))
                                    .background(Color.white.opacity(100))
                                    .border(CustomColor.be,width:1)
                                    .foregroundColor(Box8_col[7].opacity(Double(Box8_Op[7])))
                                    .font(.custom("KGHAPPY",size:CGFloat(s)))
                                })
                               })//VSTACK







                            //Column 3
                            VStack(alignment: .center, spacing: 0, content:{
                                VStack(alignment: .center, spacing: 0, content: {
                                    Button(String(box2[2])){box_check(d:2,e:2)}
                                    .frame(width: CGFloat(w), height: CGFloat(h))
                                    .background(Color.white.opacity(100))
                                    .border(CustomColor.be,width:1)
                                    .foregroundColor(Box2_col[2].opacity(Double(Box2_Op[2])))
                                    .font(.custom("KGHAPPY",size:CGFloat(s)))
                                    Button(String(box2[5])){box_check(d:2,e:5)}
                                    .frame(width: CGFloat(w), height: CGFloat(h))
                                    .background(Color.white.opacity(100))
                                    .border(CustomColor.be,width:1)
                                    .foregroundColor(Box2_col[5].opacity(Double(Box2_Op[5])))
                                    .font(.custom("KGHAPPY",size:CGFloat(s)))
                                    Button(String(box2[8])){box_check(d:2,e:8)}
                                    .frame(width: CGFloat(w), height: CGFloat(h))
                                    .background(Color.white.opacity(100))
                                    .border(CustomColor.be,width:1)
                                    .foregroundColor(Box2_col[8].opacity(Double(Box2_Op[8])))
                                    .font(.custom("KGHAPPY",size:CGFloat(s)))
                                })
                                Rectangle()
                                    .frame(width:44, height: 2)
                                    .foregroundColor(Color.black)

                                VStack(alignment: .center, spacing: 0, content: {
                                    Button(String(box5[2])){box_check(d:5,e:2)}
                                    .frame(width: CGFloat(w), height: CGFloat(h))
                                    .background(Color.white.opacity(100))
                                    .border(CustomColor.be,width:1)
                                    .foregroundColor(Box5_col[2].opacity(Double(Box5_Op[2])))
                                    .font(.custom("KGHAPPY",size:CGFloat(s)))
                                    Button(String(box5[5])){box_check(d:5,e:5)}
                                    .frame(width: CGFloat(w), height: CGFloat(h))
                                    .background(Color.white.opacity(100))
                                    .border(CustomColor.be,width:1)
                                    .foregroundColor(Box5_col[5].opacity(Double(Box5_Op[5])))
                                    .font(.custom("KGHAPPY",size:CGFloat(s)))
                                    Button(String(box5[8])){box_check(d:5,e:8)}
                                    .frame(width: CGFloat(w), height: CGFloat(h))
                                    .background(Color.white.opacity(100))
                                    .border(CustomColor.be,width:1)
                                    .foregroundColor(Box5_col[8].opacity(Double(Box5_Op[8])))
                                    .font(.custom("KGHAPPY",size:CGFloat(s)))
                                })
                                Rectangle()
                                    .frame(width:44, height: 2)
                                    .foregroundColor(Color.black)

                                VStack(alignment: .center, spacing: 0, content: {
                                    Button(String(box8[2])){box_check(d:8,e:2)}
                                    .frame(width: CGFloat(w), height: CGFloat(h))
                                    .background(Color.white.opacity(100))
                                    .border(CustomColor.be,width:1)
                                    .foregroundColor(Box8_col[2].opacity(Double(Box8_Op[2])))
                                    .font(.custom("KGHAPPY",size:CGFloat(s)))
                                    Button(String(box8[5])){box_check(d:8,e:5)}
                                    .frame(width: CGFloat(w), height: CGFloat(h))
                                    .background(Color.white.opacity(100))
                                    .border(CustomColor.be,width:1)
                                    .foregroundColor(Box8_col[5].opacity(Double(Box8_Op[5])))
                                    .font(.custom("KGHAPPY",size:CGFloat(s)))
                                    Button(String(box8[8])){box_check(d:8,e:8)}
                                    .frame(width: CGFloat(w), height: CGFloat(h))
                                    .background(Color.white.opacity(100))
                                    .border(CustomColor.be,width:1)
                                    .foregroundColor(Box8_col[8].opacity(Double(Box8_Op[8])))
                                    .font(.custom("KGHAPPY",size:CGFloat(s)))
                                })


                               })//VSTACK
                            Rectangle()
                                .frame(width:2, height: 405)
                                .foregroundColor(Color.black)
                            })

                        }//HSTACK 1











                    HStack{
                        //Column 1
                        HStack(alignment: .center, spacing: 0, content: {
                            VStack(alignment: .center, spacing: 0, content:{
                                VStack(alignment: .center, spacing: 0, content: {

                                    Button(String(box3[0])){box_check(d:3,e:0)}
                                        .frame(width: CGFloat(w), height: CGFloat(h))
                                        .background(Color.white.opacity(100))
                                        .border(CustomColor.be,width:1)
                                        .foregroundColor(Box3_col[0].opacity(Double(Box3_Op[0])))
                                        .font(.custom("KGHAPPY",size:CGFloat(s)))
                                    Button(String(box3[3])){box_check(d:3,e:3)}
                                        .frame(width: CGFloat(w), height: CGFloat(h))
                                        .background(Color.white.opacity(100))
                                        .border(CustomColor.be,width:1)
                                        .foregroundColor(Box3_col[3].opacity(Double(Box3_Op[3])))
                                        .font(.custom("KGHAPPY",size:CGFloat(s)))
                                    Button(String(box3[6])){box_check(d:3,e:6)}
                                        .frame(width: CGFloat(w), height: CGFloat(h))
                                        .background(Color.white.opacity(100))
                                        .border(CustomColor.be,width:1)
                                        .foregroundColor(Box3_col[6].opacity(Double(Box3_Op[6])))
                                        .font(.custom("KGHAPPY",size:CGFloat(s)))

                                })
                                Rectangle()
                                    .frame(width:44, height: 2)
                                    .foregroundColor(Color.black)




                                VStack(alignment: .center, spacing: 0, content: {
                                    Button(String(box6[0])){box_check(d:6,e:0)}
                                    .frame(width: CGFloat(w), height: CGFloat(h))
                                    .background(Color.white.opacity(100))
                                    .border(CustomColor.be,width:1)
                                    .foregroundColor(Box6_col[0].opacity(Double(Box6_Op[0])))
                                    .font(.custom("KGHAPPY",size:CGFloat(s)))
                                    Button(String(box6[3])){box_check(d:6,e:3)}
                                    .frame(width: CGFloat(w), height: CGFloat(h))
                                    .background(Color.white.opacity(100))
                                    .border(CustomColor.be,width:1)
                                    .foregroundColor(Box6_col[3].opacity(Double(Box6_Op[3])))
                                    .font(.custom("KGHAPPY",size:CGFloat(s)))
                                    Button(String(box6[6])){box_check(d:6,e:6)}
                                    .frame(width: CGFloat(w), height: CGFloat(h))
                                    .background(Color.white.opacity(100))
                                    .border(CustomColor.be,width:1)
                                    .foregroundColor(Box6_col[6].opacity(Double(Box6_Op[6])))
                                    .font(.custom("KGHAPPY",size:CGFloat(s)))
                                })



                                Rectangle()
                                    .frame(width:44, height: 2)
                                    .foregroundColor(Color.black)



                                VStack(alignment: .center, spacing: 0, content: {
                                    Button(String(box9[0])){box_check(d:9,e:0)}
                                    .frame(width: CGFloat(w), height: CGFloat(h))
                                    .background(Color.white.opacity(100))
                                    .border(CustomColor.be,width:1)
                                    .foregroundColor(Box9_col[0].opacity(Double(Box9_Op[0])))
                                    .font(.custom("KGHAPPY",size:CGFloat(s)))
                                    Button(String(box9[3])){box_check(d:9,e:3)}
                                    .frame(width: CGFloat(w), height: CGFloat(h))
                                    .background(Color.white.opacity(100))
                                    .border(CustomColor.be,width:1)
                                    .foregroundColor(Box9_col[3].opacity(Double(Box9_Op[3])))
                                    .font(.custom("KGHAPPY",size:CGFloat(s)))
                                    Button(String(box9[6])){box_check(d:9,e:6)}
                                    .frame(width: CGFloat(w), height: CGFloat(h))
                                    .background(Color.white.opacity(100))
                                    .border(CustomColor.be,width:1)
                                    .foregroundColor(Box9_col[6].opacity(Double(Box9_Op[6])))
                                    .font(.custom("KGHAPPY",size:CGFloat(s)))

                                })
                               })//VSTACK




                            //Column 2
                            VStack(alignment: .center, spacing: 0, content:{
                                VStack(alignment: .center, spacing: 0, content: {
                                    Button(String(box3[1])){box_check(d:3,e:1)}
                                    .frame(width: CGFloat(w), height: CGFloat(h))
                                    .background(Color.white.opacity(100))
                                    .border(CustomColor.be,width:1)
                                    .foregroundColor(Box3_col[1].opacity(Double(Box3_Op[1])))
                                    .font(.custom("KGHAPPY",size:CGFloat(s)))
                                    Button(String(box3[4])){box_check(d:3,e:4)}
                                    .frame(width: CGFloat(w), height: CGFloat(h))
                                    .background(Color.white.opacity(100))
                                    .foregroundColor(Box3_col[4].opacity(Double(Box3_Op[4])))
                                    .font(.custom("KGHAPPY",size:CGFloat(s)))
                                    .border(CustomColor.be,width:1)
                                    Button(String(box3[7])){box_check(d:3,e:7)}
                                    .frame(width: CGFloat(w), height: CGFloat(h))
                                    .background(Color.white.opacity(100))
                                    .foregroundColor(Box3_col[7].opacity(Double(Box3_Op[7])))
                                    .font(.custom("KGHAPPY",size:CGFloat(s)))
                                    .border(CustomColor.be,width:1)
                                })
                                Rectangle()
                                    .frame(width:44, height: 2)
                                    .foregroundColor(Color.black)

                                VStack(alignment: .center, spacing: 0, content: {
                                    Button(String(box6[1])){box_check(d:6,e:1)}
                                    .frame(width: CGFloat(w), height: CGFloat(h))
                                    .background(Color.white.opacity(100))
                                    .border(CustomColor.be,width:1)
                                    .foregroundColor(Box6_col[1].opacity(Double(Box6_Op[1])))
                                    .font(.custom("KGHAPPY",size:CGFloat(s)))
                                    Button(String(box6[4])){box_check(d:6,e:4)}
                                    .frame(width: CGFloat(w), height: CGFloat(h))
                                    .background(Color.white.opacity(100))
                                    .foregroundColor(Box6_col[4].opacity(Double(Box6_Op[4])))
                                    .font(.custom("KGHAPPY",size:CGFloat(s)))
                                    .border(CustomColor.be,width:1)
                                    Button(String(box6[7])){box_check(d:6,e:7)}
                                    .frame(width: CGFloat(w), height: CGFloat(h))
                                    .background(Color.white.opacity(100))
                                    .foregroundColor(Box6_col[7].opacity(Double(Box6_Op[7])))
                                    .font(.custom("KGHAPPY",size:CGFloat(s)))
                                    .border(CustomColor.be,width:1)
                                })
                                Rectangle()
                                    .frame(width:44, height: 2)
                                    .foregroundColor(Color.black)

                                VStack(alignment: .center, spacing: 0, content: {
                                    Button(String(box9[1])){box_check(d:9,e:1)}
                                    .frame(width: CGFloat(w), height: CGFloat(h))
                                    .background(Color.white.opacity(100))
                                    .border(CustomColor.be,width:1)
                                    .foregroundColor(Box9_col[1].opacity(Double(Box9_Op[1])))
                                    .font(.custom("KGHAPPY",size:CGFloat(s)))
                                    Button(String(box9[4])){box_check(d:9,e:4)}
                                    .frame(width: CGFloat(w), height: CGFloat(h))
                                    .background(Color.white.opacity(100))
                                    .border(CustomColor.be,width:1)
                                    .foregroundColor(Box9_col[4].opacity(Double(Box9_Op[4])))
                                    .font(.custom("KGHAPPY",size:CGFloat(s)))
                                    Button(String(box9[7])){box_check(d:9,e:7)}
                                    .frame(width: CGFloat(w), height: CGFloat(h))
                                    .background(Color.white.opacity(100))
                                    .border(CustomColor.be,width:1)
                                    .foregroundColor(Box9_col[7].opacity(Double(Box9_Op[7])))
                                    .font(.custom("KGHAPPY",size:CGFloat(s)))
                                })
                               })//VSTACK


                            //Column 3
                            VStack(alignment: .center, spacing: 0, content:{
                                VStack(alignment: .center, spacing: 0, content: {
                                    Button(String(box3[2])){box_check(d:3,e:2)}
                                    .frame(width: CGFloat(w), height: CGFloat(h))
                                    .background(Color.white.opacity(100))
                                    .border(CustomColor.be,width:1)
                                    .foregroundColor(Box3_col[2].opacity(Double(Box3_Op[2])))
                                    .font(.custom("KGHAPPY",size:CGFloat(s)))
                                    Button(String(box3[5])){box_check(d:3,e:5)}
                                    .frame(width: CGFloat(w), height: CGFloat(h))
                                    .background(Color.white.opacity(100))
                                    .border(CustomColor.be,width:1)
                                    .foregroundColor(Box3_col[5].opacity(Double(Box3_Op[5])))
                                    .font(.custom("KGHAPPY",size:CGFloat(s)))
                                    Button(String(box3[8])){box_check(d:3,e:8)}
                                    .frame(width: CGFloat(w), height: CGFloat(h))
                                    .background(Color.white.opacity(100))
                                    .border(CustomColor.be,width:1)
                                    .foregroundColor(Box3_col[8].opacity(Double(Box3_Op[8])))
                                    .font(.custom("KGHAPPY",size:CGFloat(s)))
                                })
                                Rectangle()
                                    .frame(width:44, height: 2)
                                    .foregroundColor(Color.black)

                                VStack(alignment: .center, spacing: 0, content: {
                                    Button(String(box6[2])){box_check(d:6,e:2)}
                                    .frame(width: CGFloat(w), height: CGFloat(h))
                                    .background(Color.white.opacity(100))
                                    .border(CustomColor.be,width:1)
                                    .foregroundColor(Box6_col[2].opacity(Double(Box6_Op[2])))
                                    .font(.custom("KGHAPPY",size:CGFloat(s)))
                                    Button(String(box6[5])){box_check(d:6,e:5)}
                                    .frame(width: CGFloat(w), height: CGFloat(h))
                                    .background(Color.white.opacity(100))
                                    .border(CustomColor.be,width:1)
                                    .foregroundColor(Box6_col[5].opacity(Double(Box6_Op[5])))
                                    .font(.custom("KGHAPPY",size:CGFloat(s)))
                                    Button(String(box6[8])){box_check(d:6,e:8)}
                                    .frame(width: CGFloat(w), height: CGFloat(h))
                                    .background(Color.white.opacity(100))
                                    .border(CustomColor.be,width:1)
                                    .foregroundColor(Box6_col[8].opacity(Double(Box6_Op[8])))
                                    .font(.custom("KGHAPPY",size:CGFloat(s)))
                                })
                                Rectangle()
                                    .frame(width:44, height: 2)
                                    .foregroundColor(Color.black)

                                VStack(alignment: .center, spacing: 0, content: {
                                    Button(String(box9[2])){box_check(d:9,e:2)}
                                    .frame(width: CGFloat(w), height: CGFloat(h))
                                    .background(Color.white.opacity(100))
                                    .border(CustomColor.be,width:1)
                                    .foregroundColor(Box9_col[2].opacity(Double(Box9_Op[2])))
                                    .font(.custom("KGHAPPY",size:CGFloat(s)))
                                    Button(String(box9[5])){box_check(d:9,e:5)}
                                    .frame(width: CGFloat(w), height: CGFloat(h))
                                    .background(Color.white.opacity(100))
                                    .border(CustomColor.be,width:1)
                                    .foregroundColor(Box9_col[5].opacity(Double(Box9_Op[5])))
                                    .font(.custom("KGHAPPY",size:CGFloat(s)))
                                    Button(String(box9[8])){box_check(d:9,e:8)}
                                    .frame(width: CGFloat(w), height: CGFloat(h))
                                    .background(Color.white.opacity(100))
                                    .border(CustomColor.be,width:1)
                                    .foregroundColor(Box9_col[8].opacity(Double(Box9_Op[8])))
                                    .font(.custom("KGHAPPY",size:CGFloat(s)))
                                })
                               })//VSTACK
                            Rectangle()
                                .frame(width:2, height: 405)
                                .foregroundColor(Color.black)

                            })


                    }
                        })//HSTACK 1
                    Rectangle()
                        .frame(width:408, height: 2)
                        .foregroundColor(Color.black)
                    
                    
                    Text(" ")
                    HStack(alignment: .center, spacing: 1.5 , content: {
                        Button("1"){Select(a:0)}
                            .frame(width: CGFloat(w), height: CGFloat(h))
                            .background(selected[0].opacity(100))
                            .foregroundColor(.black)
                            .border(Color.black,width:2)
                            .font(.custom("KGHAPPY",size:CGFloat(22)))
                        Button("2"){Select(a:1)}
                            .frame(width: CGFloat(w), height: CGFloat(h))
                            .background(selected[1].opacity(100))
                            .foregroundColor(.black)
                            .border(Color.black,width:2)
                            .font(.custom("KGHAPPY",size:CGFloat(22)))
                        Button("3"){Select(a:2)}
                            .frame(width: CGFloat(w), height: CGFloat(h))
                            .background(selected[2].opacity(100))
                            .foregroundColor(.black)
                            .border(Color.black,width:2)
                            .font(.custom("KGHAPPY",size:CGFloat(22)))
                        Button("4"){Select(a:3)}
                            .frame(width: CGFloat(w), height: CGFloat(h))
                            .background(selected[3].opacity(100))
                            .foregroundColor(.black)
                            .border(Color.black,width:2)
                            .font(.custom("KGHAPPY",size:CGFloat(22)))
                        Button("5"){Select(a:4)}
                            .frame(width: CGFloat(w), height: CGFloat(h))
                            .background(selected[4].opacity(100))
                            .foregroundColor(.black)
                            .border(Color.black,width:2)
                            .font(.custom("KGHAPPY",size:CGFloat(22)))
                        Button("6"){Select(a:5)}
                            .frame(width: CGFloat(w), height: CGFloat(h))
                            .background(selected[5].opacity(100))
                            .foregroundColor(.black)
                            .border(Color.black,width:2)
                            .font(.custom("KGHAPPY",size:CGFloat(22)))
                        Button("7"){Select(a:6)}
                            .frame(width: CGFloat(w), height: CGFloat(h))
                            .background(selected[6].opacity(100))
                            .foregroundColor(.black)
                            .border(Color.black,width:2)
                            .font(.custom("KGHAPPY",size:CGFloat(22)))
                        Button("8"){Select(a:7)}
                            .frame(width: CGFloat(w), height: CGFloat(h))
                            .background(selected[7].opacity(100))
                            .foregroundColor(.black)
                            .border(Color.black,width:2)
                            .font(.custom("KGHAPPY",size:CGFloat(22)))
                        Button("9"){Select(a:8)}
                            .frame(width: CGFloat(w), height: CGFloat(h))
                            .background(selected[8].opacity(100))
                            .foregroundColor(.black)
                            .border(Color.black,width:2)
                            .font(.custom("KGHAPPY",size:CGFloat(22)))
                        
                    })
                    
                    VStack{
                        Text("")
                        HStack{
                            Text(correct)
                                .font(.custom("KGHAPPY",size:CGFloat(n)))
                                .foregroundColor(.black.opacity(Double(b)))
                            Text(wrong_text)
                                .font(.custom("KGHAPPY",size:CGFloat(n)))
                                .foregroundColor(.black.opacity(Double(b)))
                        }
                        
                    }
                    Spacer()
                })


            } //ZSTACK
            
            
            

        } // GROUP

    }
}


struct Sudoku_Previews: PreviewProvider {
    static var previews: some View {
        Sudoku()
    }
}
