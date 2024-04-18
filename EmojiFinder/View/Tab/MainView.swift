//
//  MainView.swift
//  EmojiFinder
//
//  Created by MacBook Pro on 18/04/24.
//

import SwiftUI

struct MainView: View {
    var body: some View {
        TabView {
            ContentView()
                .tabItem {
                    Label("Emoji", systemImage: "ev.plug.dc.nacs")
                }
            
            Text("Map View")
                .tabItem {
                    Label("Locatian", systemImage: "binoculars")
                }
                .badge(4)
            
            Text("Setting Page")
                .tabItem {
                    Label("Settings", systemImage: "gear")
                }
        }
        .tint(.primary)
    }
}

#Preview {
    MainView()
}
