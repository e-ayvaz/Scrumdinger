//
//  ContentView.swift
//  Scrumdinger
//
//  Created by Enes Ayvaz on 6.01.2024.
//

import SwiftUI

struct ContentView: View {
    let scrum = DailyScrum.sampleData
    var body: some View {
//        CardView(scrum: scrum)
//            .padding()
        ScrumsView(scrums: scrum)
    }
}

#Preview {
    ContentView()
}
