import SwiftUI

struct ContentView: View {

    let gradient = Gradient(colors: [.orange, .purple])
    
    var body: some View {

        LinearGradient(gradient: gradient, startPoint: .top, endPoint: .bottom)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
