//
//  ProfileView.swift
//  MusicSharing
//
//  Created by Sean P. Meek on 10/7/22.
//

import SwiftUI

struct ProfileView: View {
    @State private var selection: Int = 0
    
    var body: some View {
        //Profile pic should look like an album artwork
        //possible premium feature: allow pictures to look like there favorite album covers but costomised to ther name or face
        ScrollView(showsIndicators: false) {
            VStack {
                Rectangle()
                    .frame(width: 150, height: 150)
                    .foregroundColor(.blue)
                    .padding(.vertical)
                
                VStack(spacing: 10) {
                    Text("Sean Meek")
                        .foregroundColor(.primary)
                        .font(.title)
                        .bold()
                    
                    Text("I love fire beats and sick flows!!!\nTjay for the hype vibes and LAROI for the feeling")
                        .foregroundColor(.secondary)
                        .font(.headline)
                        .multilineTextAlignment(.center)
                        .lineLimit(3)
                        .padding(.horizontal)
                }
                .padding(.bottom)
                
                HStack {
                    Spacer()
                    
                    VStack(spacing: 5) {
                        Text("10.4k")
                            .foregroundColor(.primary)
                            .font(.title3)
                            .bold()
                        
                        Text("Following")
                            .foregroundColor(.secondary)
                            .font(.subheadline)
                    }
                    
                    Spacer()
                    
                    VStack(spacing: 5) {
                        Text("10.2k")
                            .foregroundColor(.primary)
                            .font(.title3)
                            .bold()
                        
                        Text("Followers")
                            .foregroundColor(.secondary)
                            .font(.subheadline)
                    }
                    
                    Spacer()
                }
                
                HStack {
                    Spacer()
                    
                    Button {
                        
                    } label: {
                        Label("Edit", systemImage: "pencil")
                            .padding(.horizontal)
                            .foregroundColor(.primary)
                            .font(.title)
                    }
                    .buttonStyle(.bordered)
                    
                    Spacer()
                    
                    Button {
                        
                    } label: {
                        Label("Stream", systemImage: "headphones")
                            .padding(.horizontal)
                            .foregroundColor(.primary)
                            .font(.title)
                    }
                    .buttonStyle(.borderedProminent)
                    
                    Spacer()
                }
                .padding(.vertical)
                
                HStack {
                    Spacer()
                    
                    Button {
                        selection = 0
                    } label: {
                        Image(systemName: "camera.fill")
                            .padding(10)
                            .padding(.horizontal, 10)
                            .foregroundColor(.primary)
                            .font(.title3)
                            .background(selection == 0 ? Color.blue : Color(UIColor.secondarySystemBackground))
                            .clipShape(RoundedRectangle(cornerRadius: 15))
                    }
                    
                    Spacer()
                    
                    Button {
                        selection = 1
                    } label: {
                        Image(systemName: "bookmark.fill")
                            .foregroundColor(.primary)
                            .font(.title3)
                            .padding(10)
                            .padding(.horizontal, 10)
                            .background(selection == 1 ? Color.blue : Color(UIColor.secondarySystemBackground))
                            .clipShape(RoundedRectangle(cornerRadius: 15))
                    }
                    
                    Spacer()
                    
                    Button {
                        selection = 2
                    } label: {
                        Image(systemName: "headphones")
                            .foregroundColor(.primary)
                            .font(.title3)
                            .padding(10)
                            .padding(.horizontal, 10)
                            .background(selection == 2 ? Color.blue : Color(UIColor.secondarySystemBackground))
                            .clipShape(RoundedRectangle(cornerRadius: 15))
                    }
                    
                    Spacer()
                    
                    Button {
                        selection = 3
                    } label: {
                        Image(systemName: "person.2.fill")
                            .foregroundColor(.primary)
                            .font(.title3)
                            .padding(10)
                            .padding(.horizontal, 10)
                            .background(selection == 3 ? Color.blue : Color(UIColor.secondarySystemBackground))
                            .clipShape(RoundedRectangle(cornerRadius: 15))
                    }
                    
                    Spacer()
                }
                .padding()
                .background(Color(UIColor.secondarySystemBackground))
                .clipShape(Capsule())
                .padding()
            }
        }
    }
}

