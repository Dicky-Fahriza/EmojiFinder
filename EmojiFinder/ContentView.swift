//
//  ContentView.swift
//  EmojiFinder
//
//  Created by MacBook Pro on 17/04/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Image(systemName: "person")
                .resizable()
                .scaledToFit()
                .frame(height: 200)
                .foregroundStyle(.black)
            Text("Hello, world!")

        }
        .padding()
    }
}

#Preview {
    ContentView()
}
