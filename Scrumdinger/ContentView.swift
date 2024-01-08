//
//  ContentView.swift
//  Scrumdinger
//
//  Created by Enes Ayvaz on 6.01.2024.
//

import SwiftUI

struct ContentView: View {
    @State var scrum = DailyScrum.sampleData
    var body: some View {
        ScrumsView(scrums: $scrum)
    }
}

#Preview {
    ContentView()
}
