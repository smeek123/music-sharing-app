//
//  ContentView.swift
//  MusicSharing
//
//  Created by Sean P. Meek on 10/7/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
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
                    Label("Me", systemImage: "person")
                })
                .tag(4)
        }
    }
}
