//
//  ContentView.swift
//  Scrumdinger
//
//  Created by Enes Ayvaz on 6.01.2024.
//

import SwiftUI

struct ContentView: View {
    let scrum: DailyScrum
    var body: some View {
        CardView(scrum: scrum)
            .padding()
    }
}

#Preview {
    ContentView(scrum: DailyScrum(title: "", attendees: ["String"], lengthMinutes: 1, theme: .bubblegum))
}
