//
//  Serpents_stairs.swift
//  test game
//
//  Created by Reddy Kitaan on 20/6/22.
//

import SwiftUI



struct Serpents_stairs: View {
    @State var w = 60
    @State var h = 60
    @State var s = 19
    @State var i = 19
    
    @State var dice_o = [100,100,100,100,100,100,100,100,100]
    @State var dice = [0,0,0,0,0,0,0,0,0,0]
    @State var One = [0,0,0,0,17,0,0,0,0]
    @State var Two = [13,0,13,13,0,13,13,0,13]
    @State var Thr = [17,0,0,0,17,0,0,0,17]
    @State var For = [13,0,13,0,0,0,13,0,13]
    @State var Fiv = [17,0,17,0,17,0,17,0,17]
    @State var Six = [13,0,13,13,0,13,13,0,13]
    
    @State var rolled = "Thr"
    @State var r_num = 1
    
    @State var count = 0
    
    @State var player1pos = 0
    @State var player2pos = 0
    
    @State var player = 1
    @State var game_status = "ig"
    @State var same_pos = false
    @State var roll_op = 100
    
    @State var ladder = [2,5,9,17,20,28,34,41]
    @State var snakes = [7,25,32,33,42,49]
    
    @State var beige_nums = [CustomColor.beige_d,CustomColor.beige_d,CustomColor.beige_d,CustomColor.beige_d,CustomColor.beige_d,CustomColor.beige_d,CustomColor.beige_d,CustomColor.beige_d,CustomColor.beige_d,CustomColor.beige_d,CustomColor.beige_d,CustomColor.beige_d,CustomColor.beige_d,CustomColor.beige_d,CustomColor.beige_d,CustomColor.beige_d,CustomColor.beige_d,CustomColor.beige_d,CustomColor.beige_d,CustomColor.beige_d,CustomColor.beige_d,CustomColor.beige_d,CustomColor.beige_d,CustomColor.beige_d,CustomColor.beige_d]
    
    @State var white_nums = [CustomColor.white,CustomColor.white,CustomColor.white,CustomColor.white,CustomColor.white,CustomColor.white,CustomColor.white,CustomColor.white,CustomColor.white,CustomColor.white,CustomColor.white,CustomColor.white,CustomColor.white,CustomColor.white,CustomColor.white,CustomColor.white,CustomColor.white,CustomColor.white,CustomColor.white,CustomColor.white,CustomColor.white,CustomColor.white,CustomColor.white,CustomColor.white,CustomColor.white]
    
    
     
    
    func dice_change(){
        
        if game_status == "ig" {
            dice = [13,13,13,13,13,13,13,13,13]
            dice_o = [100,100,100,100,100,100,100,100,100]
            r_num = Int.random(in: 1...6)
            
            if r_num == 1 {
                dice = One
                rolled = "One"
            }
            
            if r_num == 2 {
                dice = Two
                rolled = "Two"
                dice_o[2] = 0
                
            }
            
            if r_num == 3 {
                dice = Thr
                rolled = "Thr"
            }
            
            if r_num == 4 {
                dice = For
                rolled = "For"
            }
            
            if r_num == 5 {
                dice = Fiv
                rolled = "Fiv"
            }
            
            if r_num == 6 {
                dice = Six
                rolled = "Six"
            }
            
            
            s = 19
            
            if rolled == "One" || rolled == "Thr" || rolled == "Fiv" || rolled == "Two"{
                for i in 0...8{
                    if dice[i] == 0{
                        dice_o[i] = 0
                    }
                
                    dice[i] = 13
                    if rolled == "Two"{
                        dice_o[2] = 0
                        dice_o[3] = 0
                        dice_o[5] = 0
                        dice_o[6] = 0
                        dice_o[7] = 0
                    }
                    
                    if rolled == "Fiv"{
                        dice[i] = 13
                    }
                }
            
            }
            play()
        }
    }
    
    func play(){
        
        if player == 1{
            
            if player1pos%2 == 0{
                if same_pos == true{
                    beige_nums[(player1pos-1)/2] = Color.red
                }
                
                else{
                    beige_nums[(player1pos-1)/2] = CustomColor.beige_d
                    
                }
            }
            if player1pos%2 == 1{
                if same_pos == true{
                    white_nums[(player1pos-1)/2] = Color.red
                }
                
                else{
                    white_nums[(player1pos-1)/2] = CustomColor.white
                    
                }
            }
            
            player1pos = player1pos + r_num
            
            if player1pos<51{
                
                
                if player1pos%2 == 0{
                    
                    beige_nums[(player1pos-1)/2] = Color.green
                    
                    
                }
                if player1pos%2 == 1{
                    white_nums[(player1pos-1)/2] = Color.green
                }
                
                
                
                
            }
            
            else{
                beige_nums[24] = Color.green
                game_status = "won"
            }
            
            
            
            
        }
        
        if player == 2{
            if player2pos%2 == 0{
                if same_pos == true{
                    beige_nums[(player2pos-1)/2] = Color.green
                }
                
                else{
                    beige_nums[(player2pos-1)/2] = CustomColor.beige_d
                    
                }
            }
            if player2pos%2 == 1{
                if same_pos == true{
                    white_nums[(player2pos-1)/2] = Color.green
                }
                
                else{
                    white_nums[(player2pos-1)/2] = CustomColor.white
                    
                }
            }
            
            player2pos = player2pos + r_num
            
            
            if player2pos<51{
                if player2pos%2 == 0{
                    beige_nums[(player2pos-1)/2] = Color.red
                }
                if player2pos%2 == 1{
                    white_nums[(player2pos-1)/2] = Color.red
                }
            }
            
            else{
                beige_nums[24] = Color.red
                game_status = "won"
            }
           
        }
        
        if player1pos == player2pos{
            same_pos = true
        }
        else{
            same_pos = false
        }
        
        if player == 1{
            player = 2
        }
        
        else{
            player = 1
        }
        
        snake_update()
        
        
        
    }
    
    func snake_update(){
        if snakes.contains(player1pos) == true{
            for i in 0...5{
                if player1pos == snakes[i]{
                    if snakes[i] == 7{
                        count = 5
                    }
                    
                    if snakes[i] == 25{
                        count = 10
                    }
                    
                    if snakes[i] == 32{
                        count = 15
                    }
                    
                    if snakes[i] == 33{
                        count = 14
                    }
                    
                    if snakes[i] == 42{
                        count = 2
                    }
                    if snakes[i] == 49{
                        count = 12
                }
            }
        }
            for _ in 1...count{
                
                    if player1pos%2 == 0{
                        if same_pos == true{
                            beige_nums[(player1pos-1)/2] = Color.red
                        }
                        
                        else{
                            beige_nums[(player1pos-1)/2] = CustomColor.beige_d
                            
                        }
                    }
                    if player1pos%2 == 1{
                        if same_pos == true{
                            white_nums[(player1pos-1)/2] = Color.red
                        }
                        
                        else{
                            white_nums[(player1pos-1)/2] = CustomColor.white
                            
                        }
                    }
                             player1pos = player1pos - 1
                    if player1pos%2 == 0{
                        beige_nums[(player1pos-1)/2] = Color.green
                        
                        
                    }
                    if player1pos%2 == 1{
                        white_nums[(player1pos-1)/2] = Color.green
                    }
                            
            }
            
        }
        
        if snakes.contains(player2pos) == true{
            for i in 0...5{
                if player2pos == snakes[i]{
                    if snakes[i] == 7{
                        count = 5
                    }
                    
                    if snakes[i] == 25{
                        count = 10
                    }
                    
                    if snakes[i] == 32{
                        count = 15
                    }
                    
                    if snakes[i] == 33{
                        count = 14
                    }
                    
                    if snakes[i] == 42{
                        count = 2
                    }
                    if snakes[i] == 49{
                        count = 12
                }
            }
        }
            for _ in 1...count{
                
                    if player2pos%2 == 0{
                        if same_pos == true{
                            beige_nums[(player2pos-1)/2] = Color.green
                        }
                        
                        else{
                            beige_nums[(player2pos-1)/2] = CustomColor.beige_d
                            
                        }
                    }
                    if player2pos%2 == 1{
                        if same_pos == true{
                            white_nums[(player2pos-1)/2] = Color.green
                        }
                        
                        else{
                            white_nums[(player2pos-1)/2] = CustomColor.white
                            
                        }
                    }
                             player2pos = player2pos - 1
                    if player2pos%2 == 0{
                        beige_nums[(player2pos-1)/2] = Color.red
                        
                    }
                    if player2pos%2 == 1{
                        white_nums[(player2pos-1)/2] = Color.red
                    }
                            
            }
            
        }
    }
    
    
    
    var body: some View {
        ZStack{
            CustomColor.be.ignoresSafeArea()
            ZStack{
                
                   
            VStack{
                HStack{
                    VStack{
                        
                        Button("50"){}
                            .frame(width: CGFloat(w), height: CGFloat(h))
                            .background(beige_nums[24])
                            .font(.custom("KG HAPPY",size:CGFloat(s)))
                            .foregroundColor(Color.black)
                           
                        Button("41"){}
                            .frame(width: CGFloat(w), height: CGFloat(h))
                            .background(white_nums[20])
                            .font(.custom("KG HAPPY",size:CGFloat(s)))
                            .foregroundColor(Color.black)

                        Button("40"){}
                            .frame(width: CGFloat(w), height: CGFloat(h))
                            .background(beige_nums[19])
                            .font(.custom("KG HAPPY",size:CGFloat(s)))
                            .foregroundColor(Color.black)
                        Button("31"){}
                            .frame(width: CGFloat(w), height: CGFloat(h))
                            .background(white_nums[15])
                            .font(.custom("KG HAPPY",size:CGFloat(s)))
                            .foregroundColor(Color.black)
                        Button("30"){}
                            .frame(width: CGFloat(w), height: CGFloat(h))
                            .background(beige_nums[14])
                            .font(.custom("KG HAPPY",size:CGFloat(s)))
                            .foregroundColor(Color.black)
                        Button("21"){}
                            .frame(width: CGFloat(w), height: CGFloat(h))
                            .background(white_nums[10])
                            .font(.custom("KG HAPPY",size:CGFloat(s)))
                            .foregroundColor(Color.black)

                        Button("20"){}
                            .frame(width: CGFloat(w), height: CGFloat(h))
                            .background(beige_nums[9])
                            .font(.custom("KG HAPPY",size:CGFloat(s)))
                            .foregroundColor(Color.black)
                        Button("11"){}
                            .frame(width: CGFloat(w), height: CGFloat(h))
                            .background(white_nums[5])
                            .font(.custom("KG HAPPY",size:CGFloat(s)))
                            .foregroundColor(Color.black)

                        Button("10"){}
                            .frame(width: CGFloat(w), height: CGFloat(h))
                            .background(beige_nums[4])
                            .font(.custom("KG HAPPY",size:CGFloat(s)))
                            .foregroundColor(Color.black)
                        Button("1"){}
                            .frame(width: CGFloat(w), height: CGFloat(h))
                            .background(white_nums[0])
                            .font(.custom("KG HAPPY",size:CGFloat(s)))
                            .foregroundColor(Color.black)
                    }

                    VStack{
                        Button("49"){}
                            .frame(width: CGFloat(w), height: CGFloat(h))
                            .background(white_nums[24])
                            .font(.custom("KG HAPPY",size:CGFloat(s)))
                            .foregroundColor(Color.black)
                        Button("42"){}
                            .frame(width: CGFloat(w), height: CGFloat(h))
                            .background(beige_nums[20])
                            .font(.custom("KG HAPPY",size:CGFloat(s)))
                            .foregroundColor(Color.black)
                        Button("39"){}
                            .frame(width: CGFloat(w), height: CGFloat(h))
                            .background(white_nums[19])
                            .font(.custom("KG HAPPY",size:CGFloat(s)))
                            .foregroundColor(Color.black)
                        Button("32"){}
                            .frame(width: CGFloat(w), height: CGFloat(h))
                            .background(beige_nums[15])
                            .font(.custom("KG HAPPY",size:CGFloat(s)))
                            .foregroundColor(Color.black)
                        Button("29"){}
                            .frame(width: CGFloat(w), height: CGFloat(h))
                            .background(white_nums[14])
                            .font(.custom("KG HAPPY",size:CGFloat(s)))
                            .foregroundColor(Color.black)
                        Button("22"){}
                            .frame(width: CGFloat(w), height: CGFloat(h))
                            .background(beige_nums[10])
                            .font(.custom("KG HAPPY",size:CGFloat(s)))
                            .foregroundColor(Color.black)

                        Button("19"){}
                            .frame(width: CGFloat(w), height: CGFloat(h))
                            .background(white_nums[9])
                            .font(.custom("KG HAPPY",size:CGFloat(s)))
                            .foregroundColor(Color.black)
                        Button("12"){}
                            .frame(width: CGFloat(w), height: CGFloat(h))
                            .background(beige_nums[5])
                            .font(.custom("KG HAPPY",size:CGFloat(s)))
                            .foregroundColor(Color.black)

                        Button("9"){}
                            .frame(width: CGFloat(w), height: CGFloat(h))
                            .background(white_nums[4])
                            .font(.custom("KG HAPPY",size:CGFloat(s)))
                            .foregroundColor(Color.black)
                        Button("2"){}
                            .frame(width: CGFloat(w), height: CGFloat(h))
                            .background(beige_nums[0])
                            .font(.custom("KG HAPPY",size:CGFloat(s)))
                            .foregroundColor(Color.black)
                    }


                    VStack{
                        Button("48"){}
                            .frame(width: CGFloat(w), height: CGFloat(h))
                            .background(beige_nums[23])
                            .font(.custom("KG HAPPY",size:CGFloat(s)))
                            .foregroundColor(Color.black)

                        Button("43"){}
                            .frame(width: CGFloat(w), height: CGFloat(h))
                            .background(white_nums[21])
                            .font(.custom("KG HAPPY",size:CGFloat(s)))
                            .foregroundColor(Color.black)
                        Button("38"){}
                            .frame(width: CGFloat(w), height: CGFloat(h))
                            .background(beige_nums[18])
                            .font(.custom("KG HAPPY",size:CGFloat(s)))
                            .foregroundColor(Color.black)
                        Button("33"){}
                            .frame(width: CGFloat(w), height: CGFloat(h))
                            .background(white_nums[16])
                            .font(.custom("KG HAPPY",size:CGFloat(s)))
                            .foregroundColor(Color.black)
                            .foregroundColor(Color.black)

                        Button("28"){}
                            .frame(width: CGFloat(w), height: CGFloat(h))
                            .background(beige_nums[13])
                            .font(.custom("KG HAPPY",size:CGFloat(s)))
                            .foregroundColor(Color.black)
                        Button("23"){}
                            .frame(width: CGFloat(w), height: CGFloat(h))
                            .background(white_nums[11])
                            .font(.custom("KG HAPPY",size:CGFloat(s)))
                            .foregroundColor(Color.black)

                        Button("18"){}
                            .frame(width: CGFloat(w), height: CGFloat(h))
                            .background(beige_nums[8])
                            .font(.custom("KG HAPPY",size:CGFloat(s)))
                            .foregroundColor(Color.black)
                        Button("13"){}
                            .frame(width: CGFloat(w), height: CGFloat(h))
                            .background(white_nums[6])
                            .font(.custom("KG HAPPY",size:CGFloat(s)))
                            .foregroundColor(Color.black)

                        Button("8"){}
                            .frame(width: CGFloat(w), height: CGFloat(h))
                            .background(beige_nums[3])
                            .font(.custom("KG HAPPY",size:CGFloat(s)))
                            .foregroundColor(Color.black)
                        Button("3"){}
                            .frame(width: CGFloat(w), height: CGFloat(h))
                            .background(white_nums[1])
                            .font(.custom("KG HAPPY",size:CGFloat(s)))
                            .foregroundColor(Color.black)
                    }


                    VStack{
                        Button("47"){}
                            .frame(width: CGFloat(w), height: CGFloat(h))
                            .background(white_nums[23])
                            .font(.custom("KG HAPPY",size:CGFloat(s)))
                            .foregroundColor(Color.black)
                        Button("44"){}
                            .frame(width: CGFloat(w), height: CGFloat(h))
                            .background(beige_nums[21])
                            .font(.custom("KG HAPPY",size:CGFloat(s)))
                            .foregroundColor(Color.black)
                        Button("37"){}
                            .frame(width: CGFloat(w), height: CGFloat(h))
                            .background(white_nums[18])
                            .font(.custom("KG HAPPY",size:CGFloat(s)))
                            .foregroundColor(Color.black)
                        Button("34"){}
                            .frame(width: CGFloat(w), height: CGFloat(h))
                            .background(beige_nums[16])
                            .font(.custom("KG HAPPY",size:CGFloat(s)))
                            .foregroundColor(Color.black)
                        Button("27"){}
                            .frame(width: CGFloat(w), height: CGFloat(h))
                            .background(white_nums[13])
                            .font(.custom("KG HAPPY",size:CGFloat(s)))
                            .foregroundColor(Color.black)
                        Button("24"){}
                            .frame(width: CGFloat(w), height: CGFloat(h))
                            .background(beige_nums[11])
                            .font(.custom("KG HAPPY",size:CGFloat(s)))
                            .foregroundColor(Color.black)

                        Button("17"){}
                            .frame(width: CGFloat(w), height: CGFloat(h))
                            .background(white_nums[8])
                            .font(.custom("KG HAPPY",size:CGFloat(s)))
                            .foregroundColor(Color.black)
                        Button("14"){}
                            .frame(width: CGFloat(w), height: CGFloat(h))
                            .background(beige_nums[6])
                            .font(.custom("KG HAPPY",size:CGFloat(s)))
                            .foregroundColor(Color.black)

                        Button("7"){}
                            .frame(width: CGFloat(w), height: CGFloat(h))
                            .background(white_nums[3])
                            .font(.custom("KG HAPPY",size:CGFloat(s)))
                            .foregroundColor(Color.black)
                        Button("4"){}
                            .frame(width: CGFloat(w), height: CGFloat(h))
                            .background(beige_nums[1])
                            .font(.custom("KG HAPPY",size:CGFloat(s)))
                            .foregroundColor(Color.black)
                    }


                    VStack{
                        Button("46"){}
                            .frame(width: CGFloat(w), height: CGFloat(h))
                            .background(beige_nums[22])
                            .font(.custom("KG HAPPY",size:CGFloat(s)))
                            .foregroundColor(Color.black)
                        Button("45"){}
                            .frame(width: CGFloat(w), height: CGFloat(h))
                            .background(white_nums[22])
                            .font(.custom("KG HAPPY",size:CGFloat(s)))
                            .foregroundColor(Color.black)
                        Button("36"){}
                            .frame(width: CGFloat(w), height: CGFloat(h))
                            .background(beige_nums[17])
                            .font(.custom("KG HAPPY",size:CGFloat(s)))
                            .foregroundColor(Color.black)
                        Button("35"){}
                            .frame(width: CGFloat(w), height: CGFloat(h))
                            .background(white_nums[17])
                            .font(.custom("KG HAPPY",size:CGFloat(s)))
                            .foregroundColor(Color.black)
                        Button("26"){}
                            .frame(width: CGFloat(w), height: CGFloat(h))
                            .background(beige_nums[12])
                            .font(.custom("KG HAPPY",size:CGFloat(s)))
                            .foregroundColor(Color.black)
                        Button("25"){}
                            .frame(width: CGFloat(w), height: CGFloat(h))
                            .background(white_nums[12])
                            .font(.custom("KG HAPPY",size:CGFloat(s)))
                            .foregroundColor(Color.black)

                        Button("16"){}
                            .frame(width: CGFloat(w), height: CGFloat(h))
                            .background(beige_nums[7])
                            .font(.custom("KG HAPPY",size:CGFloat(s)))
                            .foregroundColor(Color.black)
                        Button("15"){}
                            .frame(width: CGFloat(w), height: CGFloat(h))
                            .background(white_nums[7])
                            .font(.custom("KG HAPPY",size:CGFloat(s)))
                            .foregroundColor(Color.black)

                        Button("6"){}
                            .frame(width: CGFloat(w), height: CGFloat(h))
                            .background(beige_nums[2])
                            .font(.custom("KG HAPPY",size:CGFloat(s)))
                            .foregroundColor(Color.black)
                        Button("5"){}
                            .frame(width: CGFloat(w), height: CGFloat(h))
                            .background(white_nums[2])
                            .font(.custom("KG HAPPY",size:CGFloat(s)))
                            .foregroundColor(Color.black)
                    }

                    
                }
                VStack{
                    HStack{
                        Text("Player 1")
                            .font(.custom("KG HAPPY",size:CGFloat(15)))
                            .foregroundColor(Color.black)
                        Text("   ")
                        Button("Roll"){}
                            .font(.custom("KG HAPPY",size:CGFloat(20)))
                            .foregroundColor(Color.black)
                            .frame(width: 70, height: 30)
                            .background(Color.white)

                        Text("   ")
                        Text("Player 2")
                            .font(.custom("KG HAPPY",size:CGFloat(15)))
                            .foregroundColor(Color.black)

                    }
                    
                    
                    VStack{
                        Text("")
                        Text("")
                        
                        
                    }
                    
                }
            }
                ZStack{
                    ZStack{
                Image("First_Snake")
                    .resizable()
                    .frame(width: 330, height: 230)
                    .position(x: 230, y: 670)
                
                Image("Second_Snake")
                    .resizable()
                    .frame(width: 350, height: 220)
                    .position(x: 176, y: 175)
                
                Image("Third_snake")
                    .resizable()
                    .frame(width: 350, height: 500)
                    .position(x: 275, y: 585)
                
                Image("forth_snake")
                    .resizable()
                    .frame(width: 200, height: 300)
                        .position(x: 170, y: 390)
                
                Image("fifth_snake")
                    .resizable()
                    .frame(width: 370, height: 270)
                    .position(x: 190, y: 405)
                
                
                Image("First_ladder")
                    .resizable()
                    .frame(width: 100, height: 100)
                    .position(x: 70, y: 115)
                
                
                Image("First_ladder")
                    .resizable()
                        .frame(width: 100, height: 100)
                    .position(x: 350, y: 655)
                    }
                    ZStack{
                Image("Second_ladder")
                    .resizable()
                    .frame(width: 80, height: 160)
                    .position(x: 107, y: 540)
                    
                
                    
                    Image("First_ladder")
                        .resizable()
                            .frame(width: 100, height: 100)
                        .position(x: 160, y: 655)
                    
                    Image("First_ladder")
                        .resizable()
                            .frame(width: 100, height: 100)
                        .position(x: 170, y: 623)
                    
                    Image("First_ladder")
                        .resizable()
                            .frame(width: 100, height: 100)
                        .position(x: 180, y: 591)
                    
                    Image("First_ladder")
                        .resizable()
                            .frame(width: 100, height: 100)
                        .position(x: 190, y: 559)
                    
                    Image("First_ladder")
                        .resizable()
                            .frame(width: 100, height: 100)
                        .position(x: 200, y: 527)
                    
                    Image("Second_ladder")
                        .resizable()
                        .frame(width: 80, height: 160)
                        .position(x: 235, y: 200)
                    }
                    ZStack{
                        Image("Second_ladder")
                        .resizable()
                        .frame(width: 80, height: 160)
                        .position(x: 254, y: 300)
                    
                    Image("Second_ladder")
                        .resizable()
                        .frame(width: 80, height: 160)
                        .position(x: 273, y: 400)
                    
                    Image("First_ladder")
                        .resizable()
                            .frame(width: 100, height: 100)
                        .position(x: 80, y: 457)
                    
                    Image("Second_ladder")
                        .resizable()
                            .frame(width: 80, height: 160)
                        .position(x: 175, y: 277)
                
                    Image("First_ladder")
                        .resizable()
                            .frame(width: 100, height: 100)
                        .position(x: 309, y: 257)
                    Image("First_ladder")
                        .resizable()
                            .frame(width: 100, height: 100)
                        .position(x: 318, y: 227)}
                    
                    Image("First_ladder")
                        .resizable()
                            .frame(width: 100, height: 100)
                        .position(x: 318, y: 227)
                    
                    Image("First_Snake")
                        .resizable()
                            .frame(width: 200, height: 200)
                        .position(x: 127, y: 197)
                    
                } // MARK: Snakes And Ladders
                
                ZStack{
                    Text("")
                    VStack{
                        Spacer()
                        Spacer()
                        
                        HStack{
                        Button(""){}
                            .frame(width: 20, height: 20)
                            .background(Color.green)
                            
                        Text("                                   ")
                               
                        Button(""){}
                                .frame(width: 20, height: 20)
                                .background(Color.red)
                        
                        }
                        
                        VStack{
                            Text("")
                            Text("")
                            Text("")
                            
                        }
                    }
                }
                
                
                
                
                
                VStack{
                    Spacer()
                    Spacer()
                   
                    
                    
                    VStack{
                    HStack{
                        Text("")
                            .frame(width: CGFloat(dice[0]), height: CGFloat(dice[0]))
                            .background(Color.black.opacity(Double(dice_o[0])).cornerRadius(CGFloat(100)))
                        Text("")
                            .frame(width: CGFloat(dice[1]), height: CGFloat(dice[1]))
                            .background(Color.black.opacity(Double(dice_o[1])).cornerRadius(CGFloat(100)))
                        Text("")
                            .frame(width: CGFloat(dice[2]), height: CGFloat(dice[2]))
                            .background(Color.black.opacity(Double(dice_o[2])).cornerRadius(CGFloat(100)))

                    }
                    HStack{
                        Text("")
                            .frame(width: CGFloat(dice[3]), height: CGFloat(dice[3]))
                            .background(Color.black.opacity(Double(dice_o[3])).cornerRadius(CGFloat(100)))
                        Text("")
                            .frame(width: CGFloat(dice[4]), height: CGFloat(dice[4]))
                            .background(Color.black.opacity(Double(dice_o[4])).cornerRadius(CGFloat(100)))
                        Text("")
                            .frame(width: CGFloat(dice[5]), height: CGFloat(dice[5]))
                            .background(Color.black.opacity(Double(dice_o[5])).cornerRadius(CGFloat(100)))

                    }
                    HStack{
                        Text("")
                            .frame(width: CGFloat(dice[6]), height: CGFloat(dice[6]))
                            .background(Color.black.opacity(Double(dice_o[6])).cornerRadius(CGFloat(100)))
                        Text("")
                            .frame(width: CGFloat(dice[7]), height: CGFloat(dice[7]))
                            .background(Color.black.opacity(Double(dice_o[7])).cornerRadius(CGFloat(100)))
                        Text("")
                            .frame(width: CGFloat(dice[8]), height: CGFloat(dice[8]))
                            .background(Color.black.opacity(Double(dice_o[8])).cornerRadius(CGFloat(100)))

                    }
                    }
                    
                    
                    
                }
                VStack{
                    Spacer()
                    Spacer()
                    VStack{
                       Text("")
                        Text("")
                        Text("")
                        Text("")
                        Text("")
                        Text("")
                        Text("")
                        Text("")
                        Text("")
                        Text("")
                    }
                    VStack{
                       Text("")
                        Text("")
                        Text("")
                        Text("")
                        Text("")
                        Text("")
                        Text("")
                        Text("")
                        Text("")
                        Text("")
                    }
                    VStack{
                       Text("")
                        Text("")
                        Text("")
                        Text("")
                        Text("")
                        Text("")
                        Text("")
                        Text("")
                        Text("")
                        Text("")
                    }
                    VStack{
                       Text("")
                        Text("")
                        Text("")
                        Text("")
                        Text("")
                        Text("")
                        Text("")
                        Text("")
                        Text("")
                        Text("")
                    }
                    VStack{
                       Text("")
                        Text("")
                    }
                    HStack{
                        Text("Player 1")
                            .font(.custom("KG HAPPY",size:CGFloat(15)))
                            .foregroundColor(Color.black)
                        Text("   ")
                        Button("Roll"){dice_change()
                            
                        }
                            .font(.custom("KG HAPPY",size:CGFloat(20)))
                            .foregroundColor(Color.black)
                            .frame(width: 70, height: 30)
                            .background(Color.white)

                        Text("   ")
                        Text("Player 2")
                            .font(.custom("KG HAPPY",size:CGFloat(15)))
                            .foregroundColor(Color.black)

                    }
                    Spacer()
                    
                }

                
            }
        }
    }
}

struct Serpents_stairs_Previews: PreviewProvider {
    static var previews: some View {
        Serpents_stairs()
    }
}
