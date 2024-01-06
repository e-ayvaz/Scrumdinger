//
//  MeetingView.swift
//  Scrumdinger
//
//  Created by Enes Ayvaz on 6.01.2024.
//

import SwiftUI

struct MeetingView: View {
    var body: some View {
        VStack {
            // MARK: Progress View -
            ProgressView(value: 5, total: 15)
            // MARK: Text View -
            HStack {
                VStack(alignment: .trailing) {
                    Text("Second Elapsed")
                        .font(.caption)
                    Label("300", systemImage: "hourglass.tophalf.fill")
                }
                Spacer()
                VStack(alignment: .trailing) {
                    Text("Second Elapsed")
                        .font(.caption)
                    Label("300", systemImage: "hourglass.tophalf.fill")
                }
            }
            .accessibilityElement(children: .ignore)
            .accessibilityLabel("Time remaining")
            .accessibilityValue("10 minutes")

            // MARK: CircleView -
            Circle()
                .strokeBorder(lineWidth: 24, antialiased: true)
            // MARK: SpeakerView -
            HStack {
                Text("Speaker 1 of 3")
                Spacer()
                Button(action: {}) {
                    Image(systemName: "forward.fill")
                }
                .accessibilityLabel("Next speaeker")
            }
        }.padding()
    }
}

#Preview {
    MeetingView()
}
