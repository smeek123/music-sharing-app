//
//  ProfileView.swift
//  MusicSharing
//
//  Created by Sean P. Meek on 10/7/22.
//

import SwiftUI

struct ProfileView: View {
    @State private var selection: Int = 0
    @Namespace private var pickerTabs
    
    var body: some View {
        //Profile pic should look like an album artwork
        //possible premium feature: allow pictures to look like there favorite album covers but costomised to ther name or face
        NavigationView {
            ScrollView(showsIndicators: false) {
                VStack {
                    Rectangle()
                        .frame(width: 100, height: 100)
                        .foregroundColor(.blue)
                        .padding(.vertical)
                    
                    VStack(spacing: 10) {
                        Text("Sean Meek")
                            .foregroundColor(.primary)
                            .font(.title3)
                            .bold()
                        
                        Text("I love fire beats and sick flows!!!\nTjay for the hype vibes and LAROI for the feeling")
                            .foregroundColor(.secondary)
                            .font(.body)
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
                                .font(.title3)
                        }
                        .buttonStyle(.bordered)
                        
                        Spacer()
                        
                        Button {
                            
                        } label: {
                            NavigationLink {
                                StreamingProfileView()
                            } label: {
                                Label("Stream", systemImage: "headphones")
                                    .padding(.horizontal)
                                    .foregroundColor(.primary)
                                    .font(.title3)
                            }

                        }
                        .buttonStyle(.borderedProminent)
                        
                        Spacer()
                    }
                    .padding(.vertical)
                    
                    HStack {
                        Spacer()
                        
                        Button {
                            withAnimation(.linear) {
                                selection = 0
                            }
                        } label: {
                            ZStack {
                                if selection == 0 {
                                    RoundedRectangle(cornerRadius: 15)
                                        .foregroundColor(.blue )
                                        .matchedGeometryEffect(id: "tabs", in: pickerTabs)
                                } else {
                                    RoundedRectangle(cornerRadius: 15)
                                        .foregroundColor(Color(UIColor.secondarySystemBackground))
                                }
                                
                                Image(systemName: "camera.fill")
                                    .foregroundColor(.primary)
                                    .font(.title3)
                                    .padding(10)
                                    .padding(.horizontal, 10)
                            }
                        }
                        
                        Spacer()
                        
                        Button {
                            withAnimation(.linear) {
                                selection = 1
                            }
                        } label: {
                            ZStack {
                                if selection == 1 {
                                    RoundedRectangle(cornerRadius: 15)
                                        .foregroundColor(.blue )
                                        .matchedGeometryEffect(id: "tabs", in: pickerTabs)
                                } else {
                                    RoundedRectangle(cornerRadius: 15)
                                        .foregroundColor(Color(UIColor.secondarySystemBackground))
                                }
                                
                                Image(systemName: "bookmark.fill")
                                    .foregroundColor(.primary)
                                    .font(.title3)
                                    .padding(10)
                                    .padding(.horizontal, 10)
                            }
                        }
                        
                        Spacer()
                        
                        Button {
                            withAnimation(.linear) {
                                selection = 2
                            }
                        } label: {
                            ZStack {
                                if selection == 2 {
                                    RoundedRectangle(cornerRadius: 15)
                                        .foregroundColor(.blue )
                                        .matchedGeometryEffect(id: "tabs", in: pickerTabs)
                                } else {
                                    RoundedRectangle(cornerRadius: 15)
                                        .foregroundColor(Color(UIColor.secondarySystemBackground))
                                }
                                
                                Image(systemName: "headphones")
                                    .foregroundColor(.primary)
                                    .font(.title3)
                                    .padding(10)
                                    .padding(.horizontal, 10)
                            }
                        }
                        
                        Spacer()
                        
                        Button {
                            withAnimation(.linear) {
                                selection = 3
                            }
                        } label: {
                            ZStack {
                                if selection == 3 {
                                    RoundedRectangle(cornerRadius: 15)
                                        .foregroundColor(.blue )
                                        .matchedGeometryEffect(id: "tabs", in: pickerTabs)
                                } else {
                                    RoundedRectangle(cornerRadius: 15)
                                        .foregroundColor(Color(UIColor.secondarySystemBackground))
                                }
                                
                                Image(systemName: "person.2.fill")
                                    .foregroundColor(.primary)
                                    .font(.title3)
                                    .padding(10)
                                    .padding(.horizontal, 10)
                            }
                        }
                        
                        Spacer()
                    }
                    .padding()
                    .background(Color(UIColor.secondarySystemBackground))
                    .clipShape(Capsule())
                    .padding()
                }
            }
            .navigationTitle("Sean Meek")
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                ToolbarItemGroup(placement: .navigationBarLeading) {
                    NavigationLink {
                        Text("Messages")
                    } label: {
                        Label("message", systemImage: "message")
                            .foregroundColor(.primary)
                    }
                    
                    NavigationLink {
                        Text("post")
                    } label: {
                        Label("post", systemImage: "plus.app")
                            .foregroundColor(.primary)
                    }
                }
                
                ToolbarItemGroup(placement: .navigationBarTrailing) {
                    NavigationLink {
                        Text("Settings")
                    } label: {
                        Label("settings", systemImage: "gearshape")
                            .foregroundColor(.primary)
                    }
                    
                    NavigationLink {
                        Text("notifications")
                    } label: {
                        Label("notifications", systemImage: "bell")
                            .foregroundColor(.primary)
                    }
                }
            }
        }
    }
}

