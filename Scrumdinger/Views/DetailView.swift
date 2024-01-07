//
//  DetailView.swift
//  Scrumdinger
//
//  Created by Enes Ayvaz on 6.01.2024.
//

import SwiftUI

struct DetailView: View {
    let scrum: DailyScrum
    
    @State private var isPresentingEditView = false
    
    var body: some View {
        List {
            Section(header: Text("Meeting Info")) {
                NavigationLink(destination: MeetingView()) {
                    Label("Start Meeting", systemImage: "timer")
                        .font(.headline)
                        .foregroundColor(.accentColor)
                }
                HStack {
                    Label("Length", systemImage: "clock")
                    Spacer()
                    Text("\(scrum.lengthInMinutes) minutes")
                }
                .accessibilityElement(children: .combine)
                HStack {
                    Label("Theme", systemImage: "paintpalette")
                    Spacer()
                    Text(scrum.theme.name)
                        .padding(4)
                        .foregroundColor(scrum.theme.accentColor)
                        .background(scrum.theme.mainColor)
                        .cornerRadius(4)
                }
                .accessibilityElement(children: .combine)
            }
            Section(header: Text("Attendees")) {
                ForEach(scrum.attendees) { attendee in
                    Label(attendee.name, systemImage: "person")
                }
            }
        }
        .navigationTitle(scrum.title)
        .sheet(isPresented: $isPresentingEditView, content: {
            NavigationStack {
                DetailEditView()
                    .navigationTitle(scrum.title)
                    .toolbar(content: {
                        ToolbarItem(placement: .cancellationAction) {
                            Button(action: {
                                isPresentingEditView = false
                            }, label: {
                                Image(systemName: "x.circle.fill")
                            })
                        }
                        ToolbarItem(placement: .confirmationAction) {
                            Button(action: {
                                isPresentingEditView = false
                            }, label: {
                                Text("Done")
                            })
                        }
                    })
            }
        })
        .toolbar(content: {
            Button(action: {
                isPresentingEditView = true
            }, label: {
                Text("Edit")
            })
            
        })
    }
}

#Preview {
    NavigationStack {
        DetailView(scrum: DailyScrum.sampleData[0])
    }
}
