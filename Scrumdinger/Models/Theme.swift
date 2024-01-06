//
//  Theme.swift
//  Scrumdinger
//
//  Created by Enes Ayvaz on 6.01.2024.
//

import SwiftUI

enum Theme: String, Identifiable, Codable, CaseIterable {
    case bubblegum
    case buttercup
    case indigo
    case lavender
    case magenta
    case navy
    case orange
    case oxblood
    case periwinkle
    case poppy
    case purple
    case seafoam
    case sky
    case tan
    case teal
    case yellow
    case green
    
    var accentColor: Color {
        switch self {
        case .green, .bubblegum, .buttercup, .lavender, .orange, .periwinkle, .poppy, .seafoam, .sky, .tan, .teal, .yellow: return .black
        case .indigo, .magenta, .navy, .oxblood, .purple: return .white
        }
    }
    var mainColor: Color {
        Color(rawValue)
    }
    
    var name: String {
        rawValue.capitalized
    }

    var id: String {
        name
    }
}
