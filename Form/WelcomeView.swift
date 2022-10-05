import SwiftUI
import Lottie

struct WelcomeView: View {
    
    let gradient = Gradient(colors: [.orange, .purple])
    @State var show = false
    
    var body: some View {
        NavigationView {
            ZStack {
                LinearGradient(gradient: gradient, startPoint: .top, endPoint: .bottom)
                
                VStack {
                    Text("WELCOME")
                        .foregroundColor(.purple)
                        .font(.system(size: 40, weight: .bold, design: .rounded))
                        .offset(y: -20)
                    Text("ON BOARD")
                        .foregroundColor(.white)
                        .font(.system(size: 30, weight: .medium))
                        .offset(y: -20)
                    Text("All the fun starts here! \n Wanna fell these happy vibes? \n Create an account and \n you all set to go!")
                        .foregroundColor(.white)
                        .multilineTextAlignment(.center)
                        .offset(y: -10)
                    
                    LottieImage(animationName: "Bee")
                        .frame(width: 350, height: 350)
                    
                    
                    Button {
                        // login in
                    } label: {
                        NavigationLink("SIGN UP", destination: LoginView())
                            .bold()
                            .frame(width: 300, height: 70)
                            .foregroundColor(.purple)
                            .background(
                                RoundedRectangle(cornerRadius: 30, style: .continuous)
                                    .fill(Color.white)
                            )
                    }
                    .padding(.top)
                    .offset(y: 10)
                    
                    Button {
                        // register in
                    } label: {
                        NavigationLink("Have an account? Cool! \n Log in then!", destination: RegisterView())
                            .bold()
                            .foregroundColor(.white)
                    }
                    .padding(.top)
                    .offset(y: 30)
                }
            }
            .ignoresSafeArea()
        }
    }
}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
       WelcomeView()
  }
}

