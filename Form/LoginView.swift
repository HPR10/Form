import SwiftUI

struct LoginView: View {
    var body: some View {
        VStack {
            Text("LOGIN")
                .foregroundColor(.purple)
                .font(.system(size: 40, weight: .bold, design: .rounded))
                .offset(y: -20)
            Text("TO CONTINUE")
                .foregroundColor(.red)
            
        }
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
