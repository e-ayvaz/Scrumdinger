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
    var attendees: [Attendee]
    var lengthInMinutes: Int
    var lengthInMinutesAsDouble: Double {
        get {
            Double(lengthInMinutes)
        }
        set {
            lengthInMinutes = Int(newValue)
        }
    }
    var theme: Theme
    
    init(id: UUID = UUID(), title: String, attendees: [String], lengthInMinutes: Int, theme: Theme) {
        self.id = id
        self.title = title
        self.attendees = attendees.map {Attendee(name: $0)}
        self.lengthInMinutes = lengthInMinutes
        self.theme = theme
    }
}

extension DailyScrum {
    struct Attendee: Identifiable {
        let id: UUID
        let name: String
        
        init(id: UUID = UUID(), name: String) {
            self.id = id
            self.name = name
        }
    }
    
    static var emptyScrum: DailyScrum {
        DailyScrum(title: "", attendees: [], lengthInMinutes: 5, theme: .sky)
    }
}


// MARK: MockData
extension DailyScrum {
    static let sampleData: [DailyScrum] =
    [
        DailyScrum(title: "Analysist", attendees: ["Emin", "Onat", "Ecem"], lengthInMinutes: 5, theme: .yellow),
        DailyScrum(title: "iOS", attendees: ["Ali", "Enes"], lengthInMinutes: 5, theme: .orange),
        DailyScrum(title: "Android", attendees: ["Gizem", "Oğuzhan"], lengthInMinutes: 5, theme: .green),
        DailyScrum(title: "Backend", attendees: ["Hamdi", "Kadir"], lengthInMinutes: 5, theme: .magenta),
        DailyScrum(title: "Product Owner", attendees: ["Ozan"], lengthInMinutes: 5, theme: .indigo)
        
    
    ]
}
