//
//  ContentView.swift
//  MusicSharing
//
//  Created by Sean P. Meek on 10/7/22.
//

import SwiftUI

struct ContentView: View {
    @AppStorage("signedIn") var isSignedIn: Bool = false
    
    var body: some View {
        if isSignedIn {
            TabView {
                HomeView()
                    .tabItem({
                        Label("Home", systemImage: "house")
                    })
                    .tag(0)
                
                ChartsView()
                    .tabItem({
                        Label("Charts", systemImage: "list.number")
                    })
                    .tag(1)
                
                SearchView()
                    .tabItem({
                        Label("Search", systemImage: "magnifyingglass")
                    })
                    .tag(2)
                
                FavoritesView()
                    .tabItem({
                        Label("Favorites", systemImage: "star")
                    })
                    .tag(3)
                
                ProfileView()
                    .tabItem({
                        Label("Me", systemImage: "person.circle")
                    })
                    .tag(4)
            }
        } else {
            SignUpView()
        }
    }
}
