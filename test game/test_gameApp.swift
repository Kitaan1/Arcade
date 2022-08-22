import SwiftUI


class AppState: ObservableObject {
    @Published var hasOnboared: Int
    
    init(hasOnboared: Int){
        self.hasOnboared = hasOnboared
    }
    
    
    
    
}



final class settings: ObservableObject {
    //TIC TAC TOE
    @Published var Rounds = 0
    @Published var X_col = Color.black
    @Published var O_col = Color.black
    
    
    //SUDOKU
    @Published var mode = "Easy"
    
    
    //BIGBRAIN
    @Published var Bigbrain_p = 0
    @Published var Multiplayer_code = [Color.white,Color.white,Color.white,Color.white]
    @Published var current_player = 1 
}

enum stopWatchMode {
    case running
    case stopped
    case paused
}


class StopWatchManager: ObservableObject{
    @Published var mode: stopWatchMode = .stopped
    @Published var secondsElapsed = 0.0
    
    var timer = Timer()
    
    func start() {
           
            timer = Timer.scheduledTimer(withTimeInterval: 0.1, repeats: true) { timer in
                self.secondsElapsed += 0.1
                
                    
                
                
                
            }
        }
    
    
    func stop() {
            timer.invalidate()
        secondsElapsed = 0.0
            mode = .stopped
        }
    
    func pause(){
        timer.invalidate()
        mode = .stopped
    }
}







@main

struct testApp: App {
    @ObservedObject var appState = AppState(hasOnboared: 1)
    @StateObject var Settings = settings()
    let userDefaults = UserDefaults.standard
    var body: some Scene {
        WindowGroup {
            if appState.hasOnboared % 2 == 0{
               
                if appState.hasOnboared == 2 {
                    game_choice()
                        .environmentObject(appState)
                }
                
                
                if appState.hasOnboared == 4 {
                    Sudoku_choice()
                        .environmentObject(appState)
                        .environmentObject(Settings)

                }
                
                
                if appState.hasOnboared == 10 {
                    Sudoku()
                        .environmentObject(appState)
                        .environmentObject(Settings)

              
                    
                }
                
                if appState.hasOnboared == 8 {
                    WordGuess_5()
                        .environmentObject(appState)

              
                    
                }
                
                if appState.hasOnboared == 12 {
                    Word_guess()
                        .environmentObject(appState)

              
                    
                }
            }
            
            
            if appState.hasOnboared % 2 == 1{
            
            
            if appState.hasOnboared == 1{
                ContentView()
                    .environmentObject(appState)
                
            }
            
          
            if appState.hasOnboared == 3 {
                tic_tac_toe_player_choice()
                    .environmentObject(appState)
                    .environmentObject(Settings)
                
          
                
            }
            
            
            
            
            
            if appState.hasOnboared == 5 {
                tictactoe()
                    .environmentObject(appState)
                    .environmentObject(Settings)

          
                
            }
            
            if appState.hasOnboared == 6 {
                tictactoe_bot()
                    .environmentObject(appState)
                    .environmentObject(Settings)

          
                
            }
            
            if appState.hasOnboared == 7 {
                big_brain()
                    .environmentObject(appState)
                    .environmentObject(Settings)
            }
                
            if appState.hasOnboared == 9 {
                bigbrain_choice()
                .environmentObject(appState)
                .environmentObject(Settings)
                
            }
            
            if appState.hasOnboared == 11 {
                Serpents_stairs()
                .environmentObject(appState)
                .environmentObject(Settings)
            }
            
            if appState.hasOnboared == 13 {
                sudoku_howtoplay()
                .environmentObject(appState)
                .environmentObject(Settings)
            }
            
            
                
            
            if appState.hasOnboared == 99 {
                BigBrain_code()
                .environmentObject(appState)
                .environmentObject(Settings)
                
            }
            
            if appState.hasOnboared == 101 {
                WordGuess_choice()
                .environmentObject(appState)
                .environmentObject(Settings)
                
            }
            
            }
            
            
        }
        
    }
}

