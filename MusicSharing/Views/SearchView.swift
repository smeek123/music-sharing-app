//
//  SearchView.swift
//  MusicSharing
//
//  Created by Sean P. Meek on 10/7/22.
//

import SwiftUI

struct SearchView: View {
    var body: some View {
        NavigationStack {
            VStack {
                Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
            }
            .toolbar {
                ToolbarItemGroup(placement: .navigationBarLeading) {
                    NavigationLink {
                        Text("Hello")
                    } label: {
                        Image(systemName: "bell")
                            .foregroundColor(.primary)
                    }
                }
                
                ToolbarItemGroup(placement: .navigationBarLeading) {
                    NavigationLink {
                        Text("Hello")
                    } label: {
                        Image(systemName: "message")
                            .foregroundColor(.primary)
                    }
                }
            }
        }
    }
}

struct SearchView_Previews: PreviewProvider {
    static var previews: some View {
        SearchView()
    }
}
