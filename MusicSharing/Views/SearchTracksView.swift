//
//  SearchTracksView.swift
//  MusicSharing
//
//  Created by Sean P. Meek on 10/13/22.
//

import SwiftUI

struct SearchTracksView: View {
    let columns = [
        GridItem(.flexible()),
        GridItem(.flexible())
    ]
    
    var body: some View {
        VStack {
            VStack {
                ZStack {
                    RoundedRectangle(cornerRadius: 15)
                        .foregroundColor(.red)
                        .frame(width: UIScreen.main.bounds.width * 0.95, height: UIScreen.main.bounds.width * 0.45)
                    
                    Text("Tracks you'll love")
                        .foregroundColor(.primary)
                        .font(.title)
                        .bold()
                        .lineLimit(2)
                    
                    RoundedRectangle(cornerRadius: 15)
                        .foregroundColor(Color.black.opacity(0.25))
                        .frame(width: UIScreen.main.bounds.width * 0.95, height: UIScreen.main.bounds.width * 0.45)
                }
                
                LazyVGrid(columns: columns, spacing: 20) {
                    ForEach(1..<15, id: \.self) { item in
                        ZStack {
                            RoundedRectangle(cornerRadius: 15)
                                .foregroundColor(.red)
                                .frame(width: UIScreen.main.bounds.width * 0.45, height: UIScreen.main.bounds.width * 0.45)
                            
                            VStack {
                                HStack {
                                    Text("Zoo York")
                                        .foregroundColor(.primary)
                                        .font(.title3)
                                        .bold()
                                        .lineLimit(2)
                                    
                                    Spacer()
                                }
                                
                                Spacer()
                            }
                            .padding(.vertical, 12)
                            .padding(.horizontal, 25)
                            
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
}

struct SearchTracksView_Previews: PreviewProvider {
    static var previews: some View {
        SearchTracksView()
    }
}
