//
//  ChartsView.swift
//  MusicSharing
//
//  Created by Sean P. Meek on 10/7/22.
//

import SwiftUI

struct ChartsView: View {
    var body: some View {
        VStack {
            List {
                ForEach(1..<16) { index in
                    HStack(alignment: .center) {
                        Text("\(index). ")
                        
                        Rectangle()
                            .foregroundColor(.primary)
                            .frame(width: 50, height: 50)
                            .padding(.horizontal, 8)
                        
                        VStack(alignment: .leading) {
                            Text("Song Name")
                                .foregroundColor(.primary)
                                .font(.headline)
                            Text("Artist Name")
                                .foregroundColor(.secondary)
                                .font(.callout)
                        }
                    }
                }
            }
            .listStyle(.plain)
        }
        .toolbar {
            ToolbarItem(placement: .navigationBarLeading) {
                Button {
                    
                } label: {
                    Image(systemName: "bell")
                }
            }
            
            ToolbarItem(placement: .navigationBarTrailing) {
                Button {
                    
                } label: {
                    Image(systemName: "message")
                }
            }
        }
    }
}

struct ChartsView_Previews: PreviewProvider {
    static var previews: some View {
        ChartsView()
    }
}
