//
//  ContentView.swift
//  TabBar
//
//  Created by Rahul Mahendru on 10/15/20.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            // Tab 1
            HomeView()
                .tabItem {
                    Image(systemName: "house.fill")
                    Text("Home")
                }
            // Tab 2
            ProfileView()
                .tabItem {
                    Image(systemName: "person.fill")
                    Text("Profile")
                }
            // Tab 3
            SettingsView()
                .tabItem {
                    Image(systemName: "gear")
                    Text("Settings")
                }
        }
        .accentColor(.green)              // Use this to change color of selected item
    }
}
