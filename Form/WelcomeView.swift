import SwiftUI

struct WelcomeView: View {
    
    let gradient = Gradient(colors: [.orange, .purple])
    
    var body: some View {
        ZStack {
                LinearGradient(gradient: gradient, startPoint: .top, endPoint: .bottom)
                
            VStack {
                Text("WELCOME")
                    .foregroundColor(.purple)
                    .font(.system(size: 40, weight: .bold, design: .rounded))
                    .offset(y: -280)
                Text("ON BOARD")
                    .foregroundColor(.white)
                    .font(.system(size: 30, weight: .medium))
                    .offset(y: -280)
                Text("All the fun starts here! \n Wanna fell these happy vibes? \n Create an account and \n you all set to go!")
                    .foregroundColor(.white)
                    .multilineTextAlignment(.center)
                    .offset(y: -250)
                
                Button("SIGN UP") {
                    .offset(y: 200)
                }
                
                }
            }
        .ignoresSafeArea()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        WelcomeView()
    }
}
