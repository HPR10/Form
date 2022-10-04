import Foundation
import SwiftUI
import Lottie


struct LottieImageView: UIViewRepresentable {
    let animationName: String
    
    func makeUIView(context: Context) -> some UIView {
        let view = UIView(frame: .zero)
        
        let animationView = AnimationView()
        let animation = Animation.named(animationName)
        animationView.animation = animation
        animationView.contentMode = .scaleToFill
        animationView.loopMode = .loop
        animationView.play()
        
        animationView.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(animationView)
        
        NSLayoutConstraint.activate([
            animationView.heightAnchor.constraint(equalTo: view.heightAnchor),
            animationView.widthAnchor.constraint(equalTo: view.widthAnchor)
        ])
        
        return view
        
    }
    func updateUIView(_ uiView: UIViewType, context: Context) { }
    
}
