//
//  SearchView.swift
//  MusicSharing
//
//  Created by Sean P. Meek on 10/7/22.
//

import SwiftUI

struct SearchView: View {
    @State private var selection: Int = 0
    @Namespace var pickerTabs
    @State private var search: String = ""
    @State private var prompt: String = "Search by username..."
    
    var body: some View {
        NavigationStack {
            VStack {
                HStack {
                    Image(systemName: "magnifyingglass")
                        .foregroundColor(.secondary)
                    
                    TextField("Search", text: $search, prompt: Text(prompt))
                        .submitLabel(.search)
                    
                    Spacer()
                    
                    if search != "" {
                        Button {
                            search = ""
                        } label: {
                            Image(systemName: "xmark.circle")
                                .foregroundColor(.secondary)
                        }
                    }
                }
                .padding(20)
                .background(Color(UIColor.secondarySystemBackground))
                .cornerRadius(10)
                .padding(.horizontal)
                .padding(.vertical, 10)
                
                HStack {
                    Spacer()
                    
                    Button {
                        withAnimation(.linear) {
                            selection = 0
                            prompt = "Search by username..."
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
                            
                            Label("People", systemImage: "person.2.fill")
                                .foregroundColor(.primary)
                                .font(.caption)
                                .padding(5)
                                .padding(.horizontal, 10)
                        }
                    }
                    
                    Spacer()
                    
                    Button {
                        withAnimation(.linear) {
                            selection = 1
                            prompt = "Search by track title..."
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
                            
                            Label("Music", systemImage: "headphones")
                                .foregroundColor(.primary)
                                .font(.caption)
                                .padding(5)
                                .padding(.horizontal, 10)
                        }
                    }
                    
                    Spacer()
                }
                .padding()
                .frame(maxHeight: 50)
                .background(Color(UIColor.secondarySystemBackground))
                .clipShape(Capsule())
                .padding(.horizontal)
                
                ScrollView(showsIndicators: false) {
                    VStack {
                        if selection == 0 {
                            SearchUsersView()
                        } else if selection == 1 {
                            SearchTracksView()
                        }
                    }
                }
                .scrollDismissesKeyboard(.interactively)
            }
        }
    }
}

struct SearchView_Previews: PreviewProvider {
    static var previews: some View {
        SearchView()
    }
}
