//
//  ContentView.swift
//  Animations
//
//  Created by Khalid Kamil on 08/08/2023.
//

import SwiftUI

struct ContentView: View {
  @State private var animationAmount = 1.0

  var body: some View {
    print(animationAmount)

    return VStack {
      Spacer()

      Button("Tap me") {
        animationAmount += 1
      }
      .padding(50)
      .background(.red)
      .foregroundColor(.white)
      .clipShape(Circle())
      .scaleEffect(animationAmount)

      Spacer()

      Stepper("Scale amount", value: $animationAmount.animation(), in: 1...10)
    }
    .padding()
  }
}

struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    ContentView()
  }
}
