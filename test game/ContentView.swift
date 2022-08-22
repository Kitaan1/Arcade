import SwiftUI


var screen:String = "home"

struct CustomColor {
    static let be = Color("Beige")
    static let blue = Color("Blue")
    static let blue_l = Color("l_blue")
    static let black = Color("Black")
    static let pink = Color("Pink")
    static let yellow = Color("yellow")
    static let Off_white = Color("off_white")
    static let red = Color("Red")
    static let red_D = Color("Red-1")
    static let beige_d = Color("Beige_dark2")
    static let beige_d2 = Color("Beige_dark")
    static let white = Color("white")
}

struct ContentView: View {
    @EnvironmentObject var appState:
    AppState
    
    var body: some View {
        
        ZStack{
            CustomColor.be.ignoresSafeArea()
            Button("Arcade"){
                appState.hasOnboared = 2
            }
            .foregroundColor(. black)
            .frame(width: 1000, height: 2000)
            .font(.custom("KGHAPPY",size:65))
            .padding()

          
            
            
        
        }
                
        }
        
        
    }






struct ContentView_Previews:
    PreviewProvider {
        static var previews: some View {
            ContentView()
                    
        }
    }
