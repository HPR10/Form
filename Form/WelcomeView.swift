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
                    .offset(y: -190)
                Text("ON BOARD")
                    .foregroundColor(.white)
                    .font(.system(size: 30, weight: .medium))
                    .offset(y: -190)
                Text("All the fun starts here! \n Wanna fell these happy vibes? \n Create an account and \n you all set to go!")
                    .foregroundColor(.white)
                    .multilineTextAlignment(.center)
                    .offset(y: -150)
                
                Button {
                    // sign up
                } label: {
                    Text("SIGN UP")
                        .bold()
                        .frame(width: 300, height: 70)
                        .foregroundColor(.purple)
                        .background(
                            RoundedRectangle(cornerRadius: 30, style: .continuous)
                                .fill(Color.white)
                        )
                    }
                .padding(.top)
                .offset(y: 240)
                
                Button {
                    // login in
                } label: {
                    Text("Have an account? Cool! \n Log in then!")
                        .bold()
                        .foregroundColor(.white)
                    }
                .padding(.top)
                .offset(y: 240)
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
