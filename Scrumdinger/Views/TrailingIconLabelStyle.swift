//
//  TrailingIconLabelStyle.swift
//  Scrumdinger
//
//  Created by Enes Ayvaz on 6.01.2024.
//

import SwiftUI

struct TrailingIconLabelStyle: LabelStyle {
    func makeBody(configuration: Configuration) -> some View {
        HStack {
            configuration.icon
            configuration.title
        }
    }
}

extension LabelStyle where Self == TrailingIconLabelStyle {
    static var trailingIcon: Self { Self() }
}
