//
//  SearchUsersView.swift
//  MusicSharing
//
//  Created by Sean P. Meek on 10/13/22.
//

import SwiftUI

struct SearchUsersView: View {
    let columns = [
        GridItem(.flexible()),
        GridItem(.flexible())
    ]
    
    var body: some View {
        VStack {
            LazyVGrid(columns: columns, spacing: 20) {
                ForEach(1..<15, id: \.self) { item in
                    ZStack {
                        RoundedRectangle(cornerRadius: 15)
                            .foregroundColor(.blue)
                            .frame(width: UIScreen.main.bounds.width * 0.45, height: UIScreen.main.bounds.width * 0.45)
                        
                        VStack {
                            HStack {
                                Text("Sean Meek")
                                    .foregroundColor(.primary)
                                    .font(.title3)
                                    .bold()
                                    .lineLimit(2)
                                
                                Spacer()
                            }
                            
                            Spacer()
                        }
                        .padding(25)
                        
                        RoundedRectangle(cornerRadius: 15)
                            .foregroundColor(Color.black.opacity(0.25))
                            .frame(width: UIScreen.main.bounds.width * 0.45, height: UIScreen.main.bounds.width * 0.45)
                    }
                }
            }
            .padding(.vertical, 10)
        }
    }
}

struct SearchUsersView_Previews: PreviewProvider {
    static var previews: some View {
        SearchUsersView()
    }
}
