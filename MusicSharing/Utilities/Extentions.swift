//
//  Extentions.swift
//  MusicSharing
//
//  Created by Sean P. Meek on 10/10/22.
//

import Foundation
import SwiftUI

extension Date: RawRepresentable {
    public var rawValue: String {
        self.timeIntervalSinceReferenceDate.description
    }
    
    public init?(rawValue: String) {
        self = Date(timeIntervalSinceReferenceDate: Double(rawValue) ?? 0.0)
    }
}
