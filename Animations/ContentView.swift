// Creating explicit animations

import SwiftUI

struct ContentView: View {
  @State private var animationAmount = 0.0

  var body: some View {
    VStack {
      Button("Tap me") {
        withAnimation(.interpolatingSpring(stiffness: 5, damping: 1)) {
          animationAmount += 360
        }
      }
      .padding(50)
      .background(.red)
      .foregroundColor(.white)
      .clipShape(Circle())
      .rotation3DEffect(.degrees(animationAmount), axis: (x: 0, y: 1, z: 0))
    }
    .padding()
  }
}

struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    ContentView()
  }
}
