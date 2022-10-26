//
//  LongButtonView.swift
//  MusicSharing
//
//  Created by Sean P. Meek on 10/23/22.
//

import SwiftUI

struct LongButtonView: View {
    var title: String
    var fillColor: Color
    var textColor: Color
    
    var body: some View {
        VStack {
            Text(title)
                .font(.headline)
                .foregroundColor(textColor)
                .frame(height: 55)
                .frame(maxWidth: .infinity)
                .background(fillColor)
                .cornerRadius(10)
        }
    }
}
