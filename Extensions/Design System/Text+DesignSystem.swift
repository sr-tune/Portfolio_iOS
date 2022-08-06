//
//  Text+DesignSystem.swift
//  PortfolioProject (iOS)
//
//  Created by Romain Boyer on 05/08/2022.
//

import SwiftUI

extension Text {
    func appLabel() -> some View {
        self.modifier(AppLabel())
    }
}

struct AppLabel: ViewModifier {

    let labelFont = Font.custom("Zilla Slab", size: 14).weight(.regular)

    func body(content: Content) -> some View {
        content
            .padding()
            .foregroundColor(.red)
            .font(labelFont)
    }
}
