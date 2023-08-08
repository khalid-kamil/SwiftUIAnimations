// Controlling the animation stack

import SwiftUI

struct ContentView: View {
  @State private var enabled = false

  var body: some View {
    VStack {
      Button("Tap me") {
        enabled.toggle()
      }
      .frame(width: 200, height: 200)
      .background(enabled ? .blue : .red)
      .animation(.default, value: enabled)
      .foregroundColor(.white)
      .clipShape(RoundedRectangle(cornerRadius: enabled ? 60 : 0))
      .animation(.interpolatingSpring(stiffness: 10, damping: 1), value: enabled)
    }
    .padding()
  }
}

struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    ContentView()
  }
}
