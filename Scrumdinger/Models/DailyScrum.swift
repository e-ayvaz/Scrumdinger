//
//  DailyScrum.swift
//  Scrumdinger
//
//  Created by Enes Ayvaz on 6.01.2024.
//

import Foundation

struct DailyScrum: Identifiable {
    var id: UUID
    var title: String
    var attendees: [String]
    var lengthMinutes: Int
    var theme: Theme
    
    init(id: UUID = UUID(), title: String, attendees: [String], lengthMinutes: Int, theme: Theme) {
        self.id = id
        self.title = title
        self.attendees = attendees
        self.lengthMinutes = lengthMinutes
        self.theme = theme
    }
}


// MARK: MockData
extension DailyScrum {
    static let sampleData: [DailyScrum] =
    [
        DailyScrum(title: "Analysist", attendees: ["Emin", "Onat", "Ecem"], lengthMinutes: 5, theme: .yellow),
        DailyScrum(title: "iOS", attendees: ["Ali", "Enes"], lengthMinutes: 5, theme: .orange),
        DailyScrum(title: "Android", attendees: ["Gizem", "Oğuzhan"], lengthMinutes: 5, theme: .green),
        DailyScrum(title: "Backend", attendees: ["Hamdi", "Kadir"], lengthMinutes: 5, theme: .magenta),
        DailyScrum(title: "Product Owner", attendees: ["Ozan"], lengthMinutes: 5, theme: .indigo)
        
    
    ]
}
