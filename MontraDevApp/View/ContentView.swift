//
//  ContentView.swift
//  MontraDevApp
//
//  Created by Macbook Pro on 18/04/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text("Hello, world!")
                .font(.system(size: 26, design: .rounded))
            Text("Hello, World!")
                .font(.custom("Inter", size: 26))
                .fontWeight(.bold)
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
