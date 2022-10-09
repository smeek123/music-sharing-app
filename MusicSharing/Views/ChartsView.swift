//
//  ChartsView.swift
//  MusicSharing
//
//  Created by Sean P. Meek on 10/7/22.
//

import SwiftUI

struct ChartsView: View {
    var body: some View {
        NavigationView {
            VStack {
                ScrollView(.horizontal, showsIndicators: false) {
                    HStack {
                        Text("All")
                            .foregroundColor(.primary)
                        
                        Text("Pop")
                            .foregroundColor(.primary)
                        
                        Text("Hip-Hop")
                            .foregroundColor(.primary)
                        
                        Text("Rock")
                            .foregroundColor(.primary)
                        
                        Text("Country")
                            .foregroundColor(.primary)
                    }
                }
                
                List {
                    ForEach(1..<16) { index in
                        Grid {
                            GridRow {
                                ZStack {
                                    Rectangle()
                                        .foregroundColor(Color(UIColor.systemBackground))
                                        .frame(width: 30, height: 30)
                                        .padding(.horizontal, 8)
                                    
                                    Text("\(index). ")
                                }
                                .gridCellColumns(1)
                                
                                Rectangle()
                                    .foregroundColor(.primary)
                                    .frame(width: 50, height: 50)
                                    .padding(.horizontal, 8)
                                    .gridCellColumns(1)
                                    .gridColumnAlignment(.center)
                                
                                VStack(alignment: .leading) {
                                    Text("Song Name")
                                        .foregroundColor(.primary)
                                        .font(.headline)
                                    Text("Artist Name")
                                        .foregroundColor(.secondary)
                                        .font(.callout)
                                }
                                .gridCellColumns(2)
                            }
                        }
                    }
                }
                .listStyle(.plain)
            }
            .navigationTitle("Top Charts")
//            .toolbar {
//                ToolbarItem(placement: .navigationBarLeading) {
//                    NavigationLink {
//                        Text("Bell")
//                    } label: {
//                        Image(systemName: "bell")
//                            .foregroundColor(.primary)
//                    }
//                }
//
//                ToolbarItem(placement: .navigationBarTrailing) {
//                    NavigationLink {
//                        Text("Messages")
//                    } label: {
//                        Image(systemName: "message")
//                            .foregroundColor(.primary)
//                    }
//                }
//            }
        }
    }
}

struct ChartsView_Previews: PreviewProvider {
    static var previews: some View {
        ChartsView()
    }
}
