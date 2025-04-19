//
//  ContentView.swift
//  GestureAnimatorDemoApp
//
//  Created by Syed Zia ur Rehman on 19/04/2025.
//

import SwiftUI
import GestureAnimator

struct ContentView: View {
    var body: some View {
        NavigationStack {
                   GestureShowcaseView()
                       .navigationTitle("Gesture Animator Demo")
               }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
